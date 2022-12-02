package main

import (
	"fmt"
	log "github.com/sirupsen/logrus"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
	"io/fs"
	"os"
	"path/filepath"
	"strings"
)

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

// Generates terraform modules from the terraform resource definitions located in `gen/src/`
func main() {
	log.SetFormatter(&log.JSONFormatter{
		PrettyPrint: getEnvOr(PrettyKey, Pretty) == "true",
	})
	parseFlags()
	sf, ef := logger.Debug("run", "filepath.Walk through", getEnvOr(InputDirKey, InputDir))
	defer sf()
	err := filepath.Walk(InputDir, walkSource)
	logger.Panic(err, ef)
}

func walkSource(path string, info fs.FileInfo, err error) error {
	sf, ef := logger.Trace("walk", "through", path)
	defer sf()
	logger.Panic(err, ef)

	if info.IsDir() {
		log.Tracef("`walkSource` identified `%s` as a directory", path)
		return nil
	}

	mod, _ := apis.FromPath(path)
	logger.Panic(err, ef)

	if custom := getCustom(path); custom != nil {
		log.Tracef("found custom configuration for %s", path)
		mod = apis.Customize(mod, custom)
	}

	hcl := mod.ToHCL()
	saveMod(path, hcl)
	return nil
}

func saveMod(path string, b []byte) {
	sf, ef := logger.Trace("save", "TerraformModule to", path)
	defer sf()
	path = strings.Replace(
		path,
		getEnvOr(InputFileExtensionKey, InputFileExtension),
		getEnvOr(OutputFileExtensionKey, OutputFileExtension),
		1,
	)
	path = strings.Replace(
		path,
		fmt.Sprintf("%s/", getEnvOr(InputDirKey, InputDir)),
		fmt.Sprintf("%s/", getEnvOr(OutputDirKey, OutputDir)),
		1,
	)
	err := os.WriteFile(path, b, 0644)
	logger.Panic(err, ef)
}

func getCustom(path string) *apis.TerraformModuleDefinition {
	sf, ef := logger.Trace("deserialize", "TerraformModule from file")
	defer sf()
	path = strings.Replace(
		path,
		getEnvOr(InputDirKey, InputDir),
		getEnvOr(CustomizeDirKey, CustomizeDir),
		1,
	)
	path = strings.Replace(
		path,
		getEnvOr(InputFileExtensionKey, InputFileExtension),
		getEnvOr(CustomizeFileExtensionKey, CustomizeFileExtension),
		1,
	)
	// please do not panic following error as custom file may not exist by purpose.
	mod, err := apis.FromPath(path)
	if os.IsNotExist(err) {
		ef()
	}
	return mod
}

func parseFlags() {
	for i, arg := range os.Args {
		switch arg {
		case "-v":
			log.SetLevel(log.DebugLevel)
		case "-vv":
			log.SetLevel(log.TraceLevel)
		case "-i", "--input":
			envFromFlag(InputDirKey, i)
		case "--input-file-extension":
			envFromFlag(InputFileExtensionKey, i)
		case "-o", "--output":
			envFromFlag(OutputDirKey, i)
		case "--output-file-extension":
			envFromFlag(OutputFileExtensionKey, i)
		case "-C", "--customize":
			envFromFlag(CustomizeDirKey, i)
		case "--customize-file-extension":
			envFromFlag(CustomizeFileExtensionKey, i)
		case "--pretty":
			if err := os.Setenv(PrettyKey, "true"); err != nil {
				log.Panicln(err)
			}
		}
	}
}

// getEnvOr formats the given key, get environment variable equal to the key.
// If key is empty returns the specified default value.
func getEnvOr(key, def string) string {
	if value := os.Getenv(formatEnvKey(key)); value != "" {
		return value
	}
	return def
}

// envFromFlag sets the value of the current spotted flag to a formated key.
// Uses the value of the given arg index.
func envFromFlag(key string, i int) {
	if err := os.Setenv(formatEnvKey(key), os.Args[i+1]); err != nil {
		log.Panicln(err)
	}
}

func formatEnvKey(key string) string {
	return fmt.Sprintf("%s_%s", EnvVarPrefix, key)
}
