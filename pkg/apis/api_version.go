package apis

import (
	"fmt"
	"github.com/hashicorp/hcl/v2/hclwrite"
)

type Kind string

const (
	Resource   Kind = "TerraformResource"
	Datasource      = "TerraformDatasource"

	Api                = "aws.terraform"
	Issuer             = "alexandre.mahdhaoui.com"
	ApiVersionTemplate = "%s.%s/%s"
	CurrentVersion     = "v0.1.0"
)

type ResourceDefinition interface {
	Debug(i int)
	ToHcl() *hclwrite.File
	OverwriteValues() *ResourceDefinition
}

func ApiVersion() string {
	return fmt.Sprintf(ApiVersionTemplate, Api, Issuer, CurrentVersion)
}

func KindSlug(kind Kind) string {
	switch kind {
	case Resource:
		return "resource"
	case Datasource:
		return "datasource"
	default:
		panic("kind should be `apis.Resource` or `apis.Datasource`")
	}
}
