package apis

import (
	"fmt"
	"gitlab.com/alexandre.mahdhaoui/tf-aws/pkg/logger"
)

func Customize(source, custom *TerraformModuleDefinition) *TerraformModuleDefinition {
	sf, ef := logger.Debug("customize", "", source.Metadata.Name, string(source.Kind), source.ApiVersion)
	defer sf()
	switch {
	case source.ApiVersion != custom.ApiVersion:
		logger.Panic(notEqual("ApiVersion"), ef)
	case source.Kind != custom.Kind:
		logger.Panic(notEqual("Kind"), ef)
	case source.Metadata.Name != custom.Metadata.Name:
		logger.Panic(notEqual("Metadata.Name"), ef)
	}
	return &TerraformModuleDefinition{
		ApiVersion: source.ApiVersion,
		Kind:       source.Kind,
		Metadata:   customizeMetadata(source.Metadata, custom.Metadata),
		Spec:       customizeSpec(source.Spec, custom.Spec),
	}
}

func notEqual(field string) error {
	return fmt.Errorf("custom.%s should be equal to source.%s", field, field)
}

// ===================================================== Customize =====================================================

func customizeTerraformConfig(source, custom *TerraformConfig) *TerraformConfig {
	sf, _ := logger.Debug("customize", "", "TerraformConfig")
	defer sf()
	if custom == nil {
		return source
	}
	return &TerraformConfig{
		Backend:  customString(source.Backend, custom.Backend),
		Version:  customString(source.Version, custom.Version),
		Provider: customizeTerraformProvider(source.Provider, custom.Provider),
	}
}

func customizeMetadata(source, custom *Metadata) *Metadata {
	sf, _ := logger.Debug("customize", "", "Metadata")
	defer sf()
	return &Metadata{
		Name:        source.Name,
		Label:       extendMap(source.Label, custom.Label),
		Annotations: extendMap(source.Annotations, custom.Annotations),
	}
}

func customizeSpec(source, custom *Spec) *Spec {
	sf, _ := logger.Debug("customize", "", "Spec")
	defer sf()
	if custom == nil {
		return source
	}
	return &Spec{
		Args:      extendArgumentOrAttributeMap(source.Args, custom.Args),
		Attrs:     extendArgumentOrAttributeMap(source.Attrs, custom.Attrs),
		Lifecycle: customizeLifecycle(source.Lifecycle, custom.Lifecycle),
		Terraform: customizeTerraformConfig(source.Terraform, custom.Terraform),
	}
}

// customizeArgumentOrAttribute takes a struct as input. It's not a pointer which could be `nil`.
// When calling this function, it was assumed the ArgumentOrAttribute was safely "dereferenced" by range-ing over a map.
func customizeArgumentOrAttribute(source, custom ArgumentOrAttribute) ArgumentOrAttribute {
	sf, _ := logger.Debug("customize", "", "ArgumentOrAttribute")
	defer sf()
	return ArgumentOrAttribute{
		Default:     customString(source.Default, custom.Default),
		Description: customString(source.Description, custom.Description),
		NoExport:    custom.NoExport,
		Optional:    custom.Optional,
		Sensitive:   custom.Sensitive,
		Type:        customString(source.Type, custom.Type),
	}
}

func customizeLifecycle(source, custom *Lifecycle) *Lifecycle {
	sf, _ := logger.Debug("customize", "", "Lifecycle")
	defer sf()
	if custom == nil {
		return source
	}
	// completely trivial, but would make sense in the future if we had entries to this struct.
	return &Lifecycle{
		IgnoreChanges: custom.IgnoreChanges,
	}
}

func customizeTerraformProvider(source, custom *TerraformProvider) *TerraformProvider {
	sf, _ := logger.Debug("customize", "", "TerraformProvider")
	defer sf()
	return &TerraformProvider{
		AssumeRole:  false,
		Name:        customString(source.Name, custom.Name),
		Source:      customString(source.Source, custom.Source),
		Version:     customString(source.Version, custom.Version),
		DefaultTags: customizeDefaultTags(source.DefaultTags, custom.DefaultTags),
	}
}

func customizeDefaultTags(source, custom *DefaultTags) *DefaultTags {
	sf, _ := logger.Debug("customize", "", "DefaultTags")
	defer sf()
	if custom == nil {
		return source
	}
	return &DefaultTags{
		Enabled: custom.Enabled,
	}
}

func extendArgumentOrAttributeMap(source, custom map[string]ArgumentOrAttribute) map[string]ArgumentOrAttribute {
	if custom != nil {
		for k, v := range custom {
			source[k] = customizeArgumentOrAttribute(source[k], v)
		}
	}
	return source
}

func extendMap(source, custom map[string]string) map[string]string {
	if custom != nil {
		for k, v := range custom {
			source[k] = v
		}
	}
	return source
}

func customString(source, custom string) string {
	if custom == "" {
		return source
	}
	return custom
}
