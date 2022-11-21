package apis

import (
	"fmt"
	"strings"
)

const IndentCharacter = "  "

type TerraformModuleDefinition struct {
	ApiVersion string   `yaml:"apiVersion" json:"apiVersion"`
	Kind       Kind     `yaml:"kind"       json:"kind"`
	Metadata   Metadata `yaml:"metadata"   json:"metadata"`
	Spec       Spec     `yaml:"spec"       json:"spec"`
}

type Metadata struct {
	Name        string            `yaml:"name"                  json:"name"`
	Label       map[string]string `yaml:"label,omitempty"       json:"label,omitempty"`
	Annotations map[string]string `yaml:"annotations,omitempty" json:"annotations,omitempty"`
}

type Spec struct {
	Args      map[string]ArgumentOrAttribute `yaml:"args"                json:"args"`
	Attrs     map[string]ArgumentOrAttribute `yaml:"attrs"               json:"attrs"`
	Lifecycle Lifecycle                      `yaml:"lifecycle,omitempty" json:"lifecycle"`
	Terraform TerraformConfig                `yaml:"terraform,omitempty" json:"terraform"`
}

// ArgumentOrAttribute specifies the input arguments of a terraform module specification.
type ArgumentOrAttribute struct {
	// Default sets a default value for a specified field.
	// Only used by `customize`.
	// Field cannot be generated yet
	Default     string `yaml:"default,omitempty" json:"default,omitempty"`
	Description string `yaml:"description" json:"description"`
	// IsDefault asserts if `Default` is set.
	// Use case: user wants to set an empty string as a default. And default value of the optional arg/attr is not `""`.
	IsDefaultSet bool `yaml:"is_default_set,omitempty" json:"is_default_set,omitempty"`
	// NoExport declares if an argument,attribute should be exported as an attribute,output.
	NoExport bool `yaml:"no_export,omitempty" json:"no_export,omitempty"`
	// Optional declares if an argument is optional or not.
	// Has no effect on attributes.
	// Is declarative.
	// "Optional" behavior requires `Default` to be non-null.
	Optional bool `yaml:"optional,omitempty" json:"optional,omitempty"`
	// Sensitive declares if an argument,attribute should be redacted in terraform outputs.
	Sensitive bool   `yaml:"sensitive,omitempty" json:"sensitive,omitempty"`
	Type      string `yaml:"type"                json:"type"`
}

type TerraformProvider struct {
	// AssumeRole specifies if a role should be assumed.
	// if set to true: expects `var.provider_aws_role_arn`.
	AssumeRole bool `yaml:"assume_role" json:"assume_role,omitempty"`
	// Name given to the provider in the terraform module.
	Name string `yaml:"name" json:"name"`
	// Source e.g. `hashicorp/aws`
	Source string `yaml:"source" json:"source"`
	// Version of the provider used
	Version string `yaml:"version" json:"version"`
	// DefaultTags specifies if setting default tags at the provider level should be enabled for this
	// module.
	DefaultTags DefaultTags `yaml:"default_tags" json:"default_tags"`
}

// DefaultTags specifies if setting default tags at the provider level should be enabled for this
// module.
// It is expected that more customization will be added in the future.
type DefaultTags struct {
	Enabled bool `yaml:"enabled" json:"enabled,omitempty"`
}

// Lifecycle specifies the Lifecycle rules of a terraform resource.
type Lifecycle struct {
	IgnoreChanges []string `yaml:"ignore_changes,omitempty" json:"ignore_changes,omitempty"`
}

// TerraformConfig specifies the different Terraform related options like the provider, the backend or
// the minimal Terraform version itself.
type TerraformConfig struct {
	Backend  string            `yaml:"backend"  json:"backend,omitempty"`
	Version  string            `yaml:"version"  json:"version"`
	Provider TerraformProvider `yaml:"provider" json:"provider"`
}

// ======================================================= Debug =======================================================

func (t *TerraformModuleDefinition) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformModuleDefinition")
	i += 1
	debugString("ApiVersion", t.ApiVersion, i)
	debugString("Kind", string(t.Kind), i)
	t.Metadata.Debug(i)
	t.Spec.Debug(i)
}

func (m *Metadata) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Metadata")

	i += 1
	debugString("Name", m.Name, i)
	debugString("Label", fmt.Sprint(m.Label), i)
	debugString("Annotations", fmt.Sprint(m.Annotations), i)
}

func (t *Spec) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Spec")
	i += 1
	debugArgumentOrAttribute("Args", t.Args, i)
	debugArgumentOrAttribute("Attrs", t.Attrs, i)
	t.Lifecycle.Debug(i)
	t.Terraform.Debug(i)
}

func (t *ArgumentOrAttribute) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "ArgumentOrAttribute")
	i += 1
	debugString("Default", t.Default, i)
	debugString("Description", t.Description, i)
	debugString("IsDefaultSet", fmt.Sprint(t.IsDefaultSet), i)
	debugString("NoExport", fmt.Sprint(t.NoExport), i)
	debugString("Optional", fmt.Sprint(t.Optional), i)
	debugString("Sensitive", fmt.Sprint(t.Sensitive), i)
	debugString("Type", t.Type, i)
}

func (t *DefaultTags) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "DefaultTags")
	i += 1
	debugString("Enabled", fmt.Sprint(t.Enabled), i)
}

func (t *TerraformProvider) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformProvider")
	i += 1
	debugString("Enabled", fmt.Sprint(t.AssumeRole), i)
	debugString("Name", t.Name, i)
	debugString("Source", t.Source, i)
	debugString("Version", t.Version, i)
	t.DefaultTags.Debug(i)
}

func (t *Lifecycle) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "Lifecycle")
	i += 1
	debugString("IgnoreChanges", fmt.Sprint(t.IgnoreChanges), i)
}

func (t *TerraformConfig) Debug(i int) {
	fmt.Printf("%s %s:\n", strings.Repeat(IndentCharacter, i), "TerraformConfig")
	i += 1
	debugString("Backend", t.Backend, i)
	debugString("Version", t.Version, i)
	t.Provider.Debug(i)
}

// ====================================================== Helpers ======================================================

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
