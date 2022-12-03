package main

import (
	log "github.com/sirupsen/logrus"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/cmdutils"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
	"os"
	"path/filepath"
)

// Generates terraform modules from the terraform resource definitions located in `gen/src/`
func main() {
	parseFlags()
	log.SetFormatter(&log.JSONFormatter{
		PrettyPrint: cmdutils.EnvOr(cmdutils.PrettyKey, cmdutils.Pretty) == "true",
	})
	sf, ef := logger.Debug("run", "filepath.Walk through", cmdutils.EnvOr(cmdutils.InputDirKey, cmdutils.InputDir))
	defer sf()
	err := filepath.Walk(cmdutils.InputDir, cmdutils.WalkSource)
	logger.Panic(err, ef)
}

func parseFlags() {
	for i, arg := range os.Args {
		switch arg {
		case "-v":
			log.SetLevel(log.DebugLevel)
		case "-vv":
			log.SetLevel(log.TraceLevel)
		case "-i", "--input":
			cmdutils.SetEnvFromOsArgs(cmdutils.InputDirKey, i)
		case "--input-file-extension":
			cmdutils.SetEnvFromOsArgs(cmdutils.InputFileExtensionKey, i)
		case "-o", "--output":
			cmdutils.SetEnvFromOsArgs(cmdutils.OutputDirKey, i)
		case "--output-file-extension":
			cmdutils.SetEnvFromOsArgs(cmdutils.OutputFileExtensionKey, i)
		case "-C", "--customize":
			cmdutils.SetEnvFromOsArgs(cmdutils.CustomizeDirKey, i)
		case "--customize-file-extension":
			cmdutils.SetEnvFromOsArgs(cmdutils.CustomizeFileExtensionKey, i)
		case "--pretty":
			if err := os.Setenv(cmdutils.PrettyKey, "true"); err != nil {
				log.Panicln(err)
			}
		}
	}
}
