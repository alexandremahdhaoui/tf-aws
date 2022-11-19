package apis

import (
	"fmt"
	"strings"
)

const IndentCharacter = "  "

// ArgumentOrAttribute specifies the input arguments of a terraform module specification.
type ArgumentOrAttribute struct {
	Description, Type string
	// NoExport declares if an argument,attribute should be exported as an attribute,output.
	NoExport bool `yaml:"no_export,omitempty"`
	// Optional declares if an argument is optional or not. Has no effect on attributes
	Optional bool `yaml:"optional,omitempty"`
	// Sensitive declares if an argument,attribute should be redacted in terraform outputs.
	Sensitive bool `yaml:"sensitive,omitempty"`
}

func (t *ArgumentOrAttribute) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "ArgumentOrAttribute")
	i += 1
	debugString("Description", t.Description, i)
	debugString("NoExport", fmt.Sprint(t.NoExport), i)
	debugString("Optional", fmt.Sprint(t.Optional), i)
	debugString("Type", t.Type, i)
	debugString("Sensitive", fmt.Sprint(t.Sensitive), i)
}

// Lifecycle specifies the Lifecycle rules of a terraform resource.
type Lifecycle struct {
	IgnoreChanges []string `yaml:"ignore_changes"`
}

func (t *Lifecycle) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Lifecycle")
	i += 1
	debugString("IgnoreChanges", fmt.Sprint(t.IgnoreChanges), i)
}

// DefaultTags specifies if setting default tags at the provider level should be enabled for this
// module.
// It is expected that more customization will be added in the future.
type DefaultTags struct {
	Enabled bool
}

func (t *DefaultTags) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "DefaultTags")
	i += 1
	debugString("Enabled", fmt.Sprint(t.Enabled), i)
}

type TerraformProvider struct {
	// AssumeRole specifies if a role should be assumed.
	// if set to true: expects `var.provider_aws_role_arn`.
	AssumeRole bool `yaml:"assume_role"`
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
	DefaultTags DefaultTags `yaml:"default_tags"`
}

func (t *TerraformProvider) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformProvider")
	i += 1
	debugString("Enabled", fmt.Sprint(t.AssumeRole), i)
	debugString("Name", t.Name, i)
	debugString("Region", t.Region, i)
	debugString("Source", t.Source, i)
	debugString("Version", t.Version, i)
	t.DefaultTags.Debug(i)
}

// TerraformConfig specifies the different Terraform related options like the provider, the backend or
// the minimal Terraform version itself.
type TerraformConfig struct {
	Backend, Version string
	Provider         TerraformProvider
}

func (t *TerraformConfig) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformConfig")
	i += 1
	debugString("Backend", t.Backend, i)
	debugString("Version", t.Version, i)
	t.Provider.Debug(i)
}

type Spec struct {
	Args      map[string]ArgumentOrAttribute
	Attrs     map[string]ArgumentOrAttribute
	Lifecycle Lifecycle       `yaml:"lifecycle,omitempty"`
	Terraform TerraformConfig `yaml:"terraform,omitempty"`
}

func (t *Spec) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Spec")
	i += 1
	debugArgumentOrAttribute("Args", t.Args, i)
	debugArgumentOrAttribute("Attrs", t.Attrs, i)
	t.Lifecycle.Debug(i)
	t.Terraform.Debug(i)
}

type Metadata struct {
	Name        string
	Label       map[string]string `yaml:"label,omitempty"`
	Annotations map[string]string `yaml:"annotations,omitempty"`
}

func (m *Metadata) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Metadata")

	i += 1
	debugString("Name", m.Name, i)
	debugString("Label", fmt.Sprint(m.Label), i)
	debugString("Annotations", fmt.Sprint(m.Annotations), i)
}

type TerraformModuleDefinition struct {
	ApiVersion string `yaml:"apiVersion"`
	Kind       string
	Metadata   Metadata
	Spec       Spec
}

func (t *TerraformModuleDefinition) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformModuleDefinition")
	i += 1
	debugString("ApiVersion", t.ApiVersion, i)
	debugString("Kind", t.Kind, i)
	t.Metadata.Debug(i)
	t.Spec.Debug(i)
}

func debugString(field, value string, i int) {
	fmt.Printf("%s %s: %s\n", strings.Repeat(IndentCharacter, i), field, value)
}

func debugArgumentOrAttribute(field string, value map[string]ArgumentOrAttribute, i int) {
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
