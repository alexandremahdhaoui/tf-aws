package apis

// ===================================================== Customize =====================================================

func customizeTerraformConfig(source, custom *TerraformConfig) *TerraformConfig {
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
	return &Metadata{
		Name:        source.Name,
		Label:       extendMap(source.Label, custom.Label),
		Annotations: extendMap(source.Annotations, custom.Annotations),
	}
}

func customizeSpec(source, custom *Spec) *Spec {
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
	if custom == nil {
		return source
	}
	// completely trivial, but would make sense in the future if we had entries to this struct.
	return &Lifecycle{
		IgnoreChanges: custom.IgnoreChanges,
	}
}

func customizeTerraformProvider(source, custom *TerraformProvider) *TerraformProvider {
	return &TerraformProvider{
		AssumeRole:  false,
		Name:        customString(source.Name, custom.Name),
		Source:      customString(source.Source, custom.Source),
		Version:     customString(source.Version, custom.Version),
		DefaultTags: customizeDefaultTags(source.DefaultTags, custom.DefaultTags),
	}
}

func customizeDefaultTags(source, custom *DefaultTags) *DefaultTags {
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
