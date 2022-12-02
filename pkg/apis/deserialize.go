package apis

import (
	"encoding/json"
	"fmt"
	log "github.com/sirupsen/logrus"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
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
	sf, ef := logger.Debug("deserialize", "TerraformModuleDefinition from path", path)
	defer sf()
	b, err := os.ReadFile(path)
	if err != nil {
		log.Errorf("failed to read file `%s`", path)
		return nil, err
	}
	switch {
	case strings.HasSuffix(path, ".json"):
		return FromDeserializer(b, json.Unmarshal)
	case strings.HasSuffix(path, ".yaml"), strings.HasSuffix(path, ".yml"):
		return FromDeserializer(b, yaml.Unmarshal)
	default:
		logger.Panic(fmt.Errorf("could not deserialize `%s`; file extension should be equal to `.json`, `.yml` or `.yaml`", path), ef)
		return nil, nil
	}
}
