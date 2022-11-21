package apis

import (
	"encoding/json"
	"fmt"
	"gopkg.in/yaml.v3"
	"os"
	"strings"
)

func FromDeserializer(b []byte, f func([]byte, interface{}) error) (*TerraformModuleDefinition, error) {
	var t TerraformModuleDefinition
	err := f(b, &t)
	if err != nil {
		return nil, err
	}
	return &t, nil
}

// FromPath only supports json & yaml yet
func FromPath(path string) (*TerraformModuleDefinition, error) {
	b, err := os.ReadFile(path)
	if err != nil {
		return nil, err
	}
	switch {
	case strings.HasSuffix(path, ".json"):
		return FromDeserializer(b, json.Unmarshal)
	case strings.HasSuffix(path, ".yaml"), strings.HasSuffix(path, ".yml"):
		return FromDeserializer(b, yaml.Unmarshal)
	default:
		panic(fmt.Sprintf("could not deserialize `%s`; file extension should be equal to `.json`, `.yml` or `.yaml`", path))
	}
}
