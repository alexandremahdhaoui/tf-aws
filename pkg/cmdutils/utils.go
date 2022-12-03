package cmdutils

import (
	"fmt"
	log "github.com/sirupsen/logrus"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
	"io/fs"
	"os"
	"strings"
)

// TODO: Document functions in this file

const (
	EnvVarPrefix = "TF_AWS_GEN_MOD"

	InputDir              = "gen/src"
	InputDirKey           = "INPUT_DIR"
	InputFileExtension    = ".yaml"
	InputFileExtensionKey = "INPUT_FILE_EXTENSION"

	OutputDir              = "gen/mod"
	OutputDirKey           = "OUTPUT_DIR"
	OutputFileExtension    = ".hcl"
	OutputFileExtensionKey = "OUTPUT_FILE_EXTENSION"

	CustomizeDir    = "customize"
	CustomizeDirKey = "CUSTOMIZE_DIR"

	CustomizeFileExtension    = ".yaml"
	CustomizeFileExtensionKey = "CUSTOMIZE_FILE_EXTENSION"

	Pretty    = "false"
	PrettyKey = "PRETTY"
)

func WalkSource(path string, info fs.FileInfo, err error) error {
	sf, ef := logger.Trace("walk", "through", path)
	defer sf()
	logger.Panic(err, ef)

	if info.IsDir() {
		log.Tracef("`walkSource` identified `%s` as a directory", path)
		return nil
	}

	mod, _ := apis.FromPath(path)
	logger.Panic(err, ef)

	if custom := GetCustom(path); custom != nil {
		log.Tracef("found custom configuration for %s", path)
		mod = apis.Customize(mod, custom)
	}

	hcl := mod.ToHCL()
	SaveMod(path, hcl)
	return nil
}

func SaveMod(path string, b []byte) {
	sf, ef := logger.Trace("save", "TerraformModule to", path)
	defer sf()
	path = strings.Replace(
		path,
		EnvOr(InputFileExtensionKey, InputFileExtension),
		EnvOr(OutputFileExtensionKey, OutputFileExtension),
		1,
	)
	path = strings.Replace(
		path,
		fmt.Sprintf("%s/", EnvOr(InputDirKey, InputDir)),
		fmt.Sprintf("%s/", EnvOr(OutputDirKey, OutputDir)),
		1,
	)
	err := os.WriteFile(path, b, 0644)
	logger.Panic(err, ef)
}

func GetCustom(path string) *apis.TerraformModuleDefinition {
	sf, ef := logger.Trace("deserialize", "TerraformModule from file")
	defer sf()
	path = strings.Replace(
		path,
		EnvOr(InputDirKey, InputDir),
		EnvOr(CustomizeDirKey, CustomizeDir),
		1,
	)
	path = strings.Replace(
		path,
		EnvOr(InputFileExtensionKey, InputFileExtension),
		EnvOr(CustomizeFileExtensionKey, CustomizeFileExtension),
		1,
	)
	// please do not panic following error as custom file may not exist by purpose.
	mod, err := apis.FromPath(path)
	if os.IsNotExist(err) {
		ef()
	}
	return mod
}

// EnvOr formats the given key, get environment variable equal to the key.
// If key is empty returns the specified default value.
func EnvOr(key, def string) string {
	if value := os.Getenv(FormatEnvKey(key)); value != "" {
		return value
	}
	return def
}

// SetEnvFromOsArgs sets the value of the current spotted flag to a formated key.
// Uses the value of the given arg index.
func SetEnvFromOsArgs(key string, i int) {
	if err := os.Setenv(FormatEnvKey(key), os.Args[i+1]); err != nil {
		log.Panicln(err)
	}
}

func FormatEnvKey(key string) string {
	return fmt.Sprintf("%s_%s", EnvVarPrefix, key)
}
