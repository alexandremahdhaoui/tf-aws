package main

import (
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/apis"
	"io/fs"
	"os"
	"path/filepath"
	"strings"
)

const SourceDir = "gen/src"
const CustomizeDir = "customize"

// Generates terraform modules from the terraform resource definitions located in `gen/src/`
func main() {
	err := filepath.Walk(SourceDir, walkSource)
	panicE(err)
}

func panicE(e error) {
	if e != nil {
		panic(e)
	}
}

func walkSource(path string, info fs.FileInfo, err error) error {
	panicE(err)
	if info.IsDir() {
		return nil
	}

	mod, err := apis.FromPath(path)
	panicE(err)

	if custom := getCustom(path); custom != nil {
		mod = apis.Customize(mod, custom)
	}

	hcl := mod.ToHCL()
	saveMod(path, hcl)
	return nil
}

func saveMod(path string, b []byte) {
	path = strings.Replace(strings.Replace(path, "/src/", "/mod/", 1), ".yaml", ".hcl", 1)
	err := os.WriteFile(path, b, 0644)
	panicE(err)
}

func getCustom(path string) *apis.TerraformModuleDefinition {
	path = strings.Replace(path, SourceDir, CustomizeDir, 1)
	mod, _ := apis.FromPath(path)
	return mod
}
