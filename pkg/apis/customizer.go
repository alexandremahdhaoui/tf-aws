package apis

import "fmt"

func Customize(source, custom *TerraformModuleDefinition) *TerraformModuleDefinition {
	switch {
	case source.ApiVersion != custom.ApiVersion:
		panicNotEqual("ApiVersion")
	case source.Kind != custom.Kind:
		panicNotEqual("Kind")
	case source.Metadata.Name != custom.Metadata.Name:
		panicNotEqual("Metadata.Name")
	}

	return &TerraformModuleDefinition{
		ApiVersion: source.ApiVersion,
		Kind:       source.Kind,
		Metadata:   customizeMetadata(source.Metadata, custom.Metadata),
		Spec:       customizeSpec(source.Spec, custom.Spec),
	}
}

func panicNotEqual(field string) {
	panic(fmt.Sprintf("custom.%s should be equal to source.%s", field, field))
}
