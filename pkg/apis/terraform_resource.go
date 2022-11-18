package apis

import (
	"fmt"
	"strings"
)

const IndentCharacter = "|-"

// TerraformResourceArgumentAttribute specifies the input arguments of a terraform module specification.
type TerraformResourceArgumentAttribute struct {
	Description, Type string
	// NoExport declares if an argument,attribute should be exported as an attribute,output.
	NoExport bool
	// Optional declares if an argument is optional or not. Has no effect on attributes
	Optional bool
	// Sensitive declares if an argument,attribute should be redacted in terraform outputs.
	Sensitive bool
}

func (t *TerraformResourceArgumentAttribute) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceArgumentAttribute")
	i += 1
	debugString("Description", t.Description, i)
	debugString("NoExport", fmt.Sprint(t.NoExport), i)
	debugString("Optional", fmt.Sprint(t.Optional), i)
	debugString("Type", t.Type, i)
	debugString("Sensitive", fmt.Sprint(t.Sensitive), i)
}

// TerraformResourceLifecycle specifies the Lifecycle rules of a terraform resource.
type TerraformResourceLifecycle struct {
	IgnoreChanges []string
}

func (t *TerraformResourceLifecycle) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceLifecycle")
	i += 1
	debugString("IgnoreChanges", fmt.Sprint(t.IgnoreChanges), i)
}

// TerraformResourceDefaultTags specifies if setting default tags at the provider level should be enabled for this
// module.
// It is expected that more customization will be added in the future.
type TerraformResourceDefaultTags struct {
	Enabled bool
}

func (t *TerraformResourceDefaultTags) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceDefaultTags")
	i += 1
	debugString("Enabled", fmt.Sprint(t.Enabled), i)
}

type TerraformResourceProvider struct {
	// AssumeRole specifies if a role should be assumed.
	// if set to true: expects `var.provider_aws_role_arn`.
	AssumeRole bool
	// Name given to the provider in the terraform module.
	Name string
	// Region e.g. us-east-1.
	Region string
	// Source e.g. `hashicorp/aws`
	Source string
	// Version of the provider used
	Version string
	// DefaultTags specifies if setting default tags at the provider level should be enabled for this
	// module.
	DefaultTags TerraformResourceDefaultTags
}

func (t *TerraformResourceProvider) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceProvider")
	i += 1
	debugString("Enabled", fmt.Sprint(t.AssumeRole), i)
	debugString("Name", t.Name, i)
	debugString("Region", t.Region, i)
	debugString("Source", t.Source, i)
	debugString("Version", t.Version, i)
	t.DefaultTags.Debug(i)
}

// TerraformResourceTerraform specifies the different Terraform related options like the provider, the backend or
// the minimal Terraform version itself.
type TerraformResourceTerraform struct {
	Backend, Version string
	Provider         TerraformResourceProvider
}

func (t *TerraformResourceTerraform) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceTerraform")
	i += 1
	debugString("Backend", t.Backend, i)
	debugString("Version", t.Version, i)
	t.Provider.Debug(i)
}

type TerraformResourceSpec struct {
	Args      map[string]TerraformResourceArgumentAttribute
	Attrs     map[string]TerraformResourceArgumentAttribute
	Lifecycle TerraformResourceLifecycle
	Terraform TerraformResourceTerraform
}

func (t *TerraformResourceSpec) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResourceSpec")
	i += 1
	debugTerraformResourceArgumentAttribute("Args", t.Args, i)
	debugTerraformResourceArgumentAttribute("Attrs", t.Attrs, i)
	t.Lifecycle.Debug(i)
	t.Terraform.Debug(i)
}

type Metadata struct {
	Name               string
	Label, Annotations map[string]string
}

func (m *Metadata) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Metadata")

	i += 1
	debugString("Name", m.Name, i)
	debugString("Label", fmt.Sprint(m.Label), i)
	debugString("Annotations", fmt.Sprint(m.Annotations), i)
}

type TerraformResource struct {
	ApiVersion, Kind string
	Metadata         Metadata
	Spec             TerraformResourceSpec
}

func (t *TerraformResource) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformResource")
	i += 1
	debugString("ApiVersion", t.ApiVersion, i)
	debugString("Kind", t.Kind, i)
	t.Metadata.Debug(i)
	t.Spec.Debug(i)
}

func debugString(field, value string, i int) {
	fmt.Printf("%s %s: %s\n", strings.Repeat(IndentCharacter, i), field, value)
}

func debugTerraformResourceArgumentAttribute(field string, value map[string]TerraformResourceArgumentAttribute, i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), field)
	i += 1
	for k, v := range value {
		fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), k)
		v.Debug(i)
	}
}

type Debug interface {
	Debug(i int)
}
