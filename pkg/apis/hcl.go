package apis

import (
	"fmt"
	"github.com/hashicorp/hcl/v2"
	"github.com/hashicorp/hcl/v2/hclwrite"
	"github.com/zclconf/go-cty/cty"
)

const (
	variableIdent           = "variable"
	outputIdent             = "output"
	providerIdent           = "provider"
	terraformIdent          = "terraform"
	backendIdent            = "backend"
	lifecycleIdent          = "lifecycle"
	assumeRoleIdent         = "assume_role"
	regionIdent             = "region"
	defaultBackendIdent     = "local"
	varIdent                = "var"
	providerAssumeRoleIdent = "provider_assume_role"
	providerRegionIdent     = "provider_region"
	roleArnIdent            = "role_arn"
	ignoreChangesIdent      = "ignore_changes"
	descriptionIdent        = "description"
	typeIdent               = "type"
	defaultIdent            = "default"
	valueIdent              = "value"
	defaultTagsIdent        = "default_tags"
	tagsIdent               = "tags"
	sensitiveIdent          = "sensitive"
	requiredProvidersIdent  = "required_providers"
	sourceIdent             = "source"
	versionIdent            = "version"
	requiredVersionIdent    = "required_version"

	providerAssumeRoleDescription = "Role the provider should assume to execute the module."
	providerRegionDescription     = "Region where the provider should be executed."
	SpecTagDescription            = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"

	versionConstraintFormat = ">= %s"
)

// ToHCL serializes struct to `hcl` format returning a slice of bytes.
func (t *TerraformModuleDefinition) ToHCL() []byte {
	f := hclwrite.NewEmptyFile()
	root := f.Body()

	t.
		hclKind(root).
		hclVariable(root).
		hclOutput(root).
		hclTerraform(root).
		hclProvider(root)
	return f.Bytes()
}

// hclKind conditionally serialize `resource`,`datasource` block.
func (t *TerraformModuleDefinition) hclKind(root *hclwrite.Body) *TerraformModuleDefinition {
	kind := root.AppendNewBlock(KindSlug(t.Kind), []string{t.Metadata.Name, t.Metadata.Name}).Body()

	for k, _ := range t.Spec.Args {
		kind.SetAttributeTraversal(k, hcl.Traversal{
			hcl.TraverseRoot{Name: varIdent},
			hcl.TraverseAttr{Name: k},
		})
	}

	// lifecycle.ignore_changes
	if toIgnore := t.Spec.Lifecycle.IgnoreChanges; t.Kind == Resource && len(toIgnore) > 0 {
		l := kind.AppendNewBlock(lifecycleIdent, nil).Body()
		var vals []cty.Value
		for _, s := range toIgnore {
			vals = append(vals, cty.StringVal(s))
		}
		l.SetAttributeValue(ignoreChangesIdent, cty.ListVal(vals))
	}
	return t
}

// hclVariable serialize variables for `args` & `default_tags`
func (t *TerraformModuleDefinition) hclVariable(root *hclwrite.Body) *TerraformModuleDefinition {
	// variable "provider_assume_role"
	if t.Spec.Terraform.Provider.AssumeRole {
		role := root.AppendNewBlock(variableIdent, []string{providerAssumeRoleIdent}).Body()
		role.SetAttributeValue(descriptionIdent, cty.StringVal(providerAssumeRoleDescription))
		setTypeString(role)
	}

	// variable "provider_region"
	region := root.AppendNewBlock(variableIdent, []string{providerRegionIdent}).Body()
	region.SetAttributeValue(descriptionIdent, cty.StringVal(providerRegionDescription))
	setTypeString(region)

	// variable "arg"
	for k, v := range t.Spec.Args {
		variable := root.AppendNewBlock(variableIdent, []string{k}).Body()
		variable.SetAttributeValue(descriptionIdent, cty.StringVal(v.Description))
		setTypeString(variable)

		if v.IsDefaultSet {
			variable.SetAttributeValue(defaultIdent, cty.StringVal(v.Default))
		}
	}
	// Specify `default_tags` only if `default_tags` are enabled && the `Kind` is not `api.Datasource`
	if t.Spec.Terraform.Provider.DefaultTags.Enabled && !(t.Kind == Datasource) {
		for _, tagStruct := range tags() {
			tagBlock := root.AppendNewBlock(variableIdent, []string{tagStruct.label}).Body()
			tagBlock.SetAttributeValue(descriptionIdent, cty.StringVal(SpecTagDescription))
			setTypeString(tagBlock)
		}
	}
	return t
}

// hclOutput serialize allowed `attrs` with `sensitive` + `tags_all` output.
func (t *TerraformModuleDefinition) hclOutput(root *hclwrite.Body) *TerraformModuleDefinition {
	// from `args`
	for k, v := range t.Spec.Args {
		t.hclOutputInternal(k, v, root)
	}
	// from `attrs`
	for k, v := range t.Spec.Attrs {
		t.hclOutputInternal(k, v, root)
	}

	return t
}

func (t *TerraformModuleDefinition) hclOutputInternal(k string, v ArgumentOrAttribute, root *hclwrite.Body) {
	if v.NoExport {
		return
	}
	o := root.AppendNewBlock(outputIdent, []string{k}).Body()
	o.SetAttributeValue(descriptionIdent, cty.StringVal(v.Description))
	o.SetAttributeTraversal(valueIdent, hcl.Traversal{
		hcl.TraverseRoot{Name: t.Metadata.Name},
		hcl.TraverseAttr{Name: t.Metadata.Name},
		hcl.TraverseAttr{Name: k},
	})

	if v.Sensitive {
		o.SetAttributeValue(sensitiveIdent, cty.True)
	}

	// output "provider_assume_role"
	if t.Spec.Terraform.Provider.AssumeRole {
		role := root.AppendNewBlock(outputIdent, []string{providerAssumeRoleIdent}).Body()
		role.SetAttributeValue(descriptionIdent, cty.StringVal(providerAssumeRoleDescription))
		setTypeString(role)
	}

	// output "provider_region"
	region := root.AppendNewBlock(outputIdent, []string{providerRegionIdent}).Body()
	region.SetAttributeValue(descriptionIdent, cty.StringVal(providerRegionDescription))
	setTypeString(region)
}

// hclTerraform serialize `terraform` block
func (t *TerraformModuleDefinition) hclTerraform(root *hclwrite.Body) *TerraformModuleDefinition {
	tf := root.AppendNewBlock(terraformIdent, nil).Body()

	// terraform.required_providers.backend
	if backend := t.Spec.Terraform.Backend; backend != "" {
		tf.AppendNewBlock(backendIdent, []string{backend})
	} else {
		tf.AppendNewBlock(backendIdent, []string{defaultBackendIdent})
	}

	// terraform.required_providers
	requiredProvider := tf.AppendNewBlock(requiredProvidersIdent, nil).Body()

	// terraform.required_providers.aws
	providerDefinition := requiredProvider.AppendNewBlock(t.Spec.Terraform.Provider.Name, nil).Body()
	providerDefinition.SetAttributeValue(sourceIdent, cty.StringVal(t.Spec.Terraform.Provider.Source))
	providerDefinition.SetAttributeValue(
		versionIdent,
		cty.StringVal(fmt.Sprintf(versionConstraintFormat, t.Spec.Terraform.Provider.Version)),
	)

	// terraform.required_version
	requiredProvider.SetAttributeValue(
		requiredVersionIdent,
		cty.StringVal(fmt.Sprintf(versionConstraintFormat, t.Spec.Terraform.Version)),
	)

	return t
}

// hclTerraform serialize `provider` block
func (t *TerraformModuleDefinition) hclProvider(root *hclwrite.Body) *TerraformModuleDefinition {
	provider := root.AppendNewBlock(providerIdent, []string{t.Spec.Terraform.Provider.Name}).Body()

	// provider "aws".assume_role
	if t.Spec.Terraform.Provider.AssumeRole {
		role := root.AppendNewBlock(assumeRoleIdent, nil).Body()
		role.SetAttributeTraversal(roleArnIdent, hcl.Traversal{
			hcl.TraverseRoot{Name: varIdent},
			hcl.TraverseAttr{Name: providerAssumeRoleIdent},
		})
	}

	// provider "aws".region
	provider.SetAttributeTraversal(regionIdent, hcl.Traversal{
		hcl.TraverseRoot{Name: varIdent},
		hcl.TraverseAttr{Name: providerRegionIdent},
	})

	// provider "aws".default_tags
	t.hclDefaultTags(provider)
	return t
}

// hclDefaultTags serialize `default_tags` block inside the `provider` block.
func (t *TerraformModuleDefinition) hclDefaultTags(provider *hclwrite.Body) *TerraformModuleDefinition {
	// We don't specify any default tags for datasource
	if t.Kind == Datasource {
		return t
	}

	defaultTags := provider.
		AppendNewBlock(defaultTagsIdent, nil).Body().
		AppendNewBlock(tagsIdent, nil).Body()

	if t.Spec.Terraform.Provider.DefaultTags.Enabled {
		for _, tagStruct := range tags() {
			defaultTags.SetAttributeTraversal(tagStruct.ident, hcl.Traversal{
				hcl.TraverseRoot{Name: varIdent},
				hcl.TraverseAttr{Name: tagStruct.label},
			})
		}
	}

	// Specify `kind/api`, `kind/issuer`, `kind/name` && `kind/version`
	defaultTags.SetAttributeValue("\"kind/api\"", cty.StringVal(Api))
	defaultTags.SetAttributeValue("\"kind/issuer\"", cty.StringVal(Issuer))
	defaultTags.SetAttributeValue("\"kind/kind\"", cty.StringVal(string(t.Kind)))
	defaultTags.SetAttributeValue("\"kind/name\"", cty.StringVal(t.Metadata.Name))
	defaultTags.SetAttributeValue("\"kind/version\"", cty.StringVal(CurrentVersion))

	return t
}

// ====================================================== Helpers ======================================================

func setTypeString(body *hclwrite.Body) {
	body.SetAttributeTraversal(typeIdent, hcl.Traversal{hcl.TraverseRoot{Name: "string"}})
}
