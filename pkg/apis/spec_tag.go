package apis

import (
	"fmt"
	"strings"
)

type tag struct {
	ident, label string
}

// tags returns a list of tag.
func tags() []tag {
	var sl []tag
	for _, t := range SpecTag() {
		label := strings.ReplaceAll(strings.ReplaceAll(t, "/", "_"), "-", "_")
		sl = append(sl, tag{
			ident: fmt.Sprintf("\"%s\"", t),
			label: fmt.Sprintf("tag_%s", label),
		})
	}
	return sl
}

func SpecTag() []string {
	return []string{
		"instance/id",
		"instance/name",
		"instance/version",
		"resource/domain",
		"resource/id",
		"resource/name",
		"resource/namespace",
		"resource/region",
		"resource/role",
		"resource/stage",
		"resource/created-by/domain",
		"resource/created-by/service",
		"service/name",
		"service/version",
		"service/parent/name",
		"service/parent/version",
		"business/owner",
		"business/project",
		"business/sla",
		"business/tenant",
		"business/unit",
		"automation/date-time",
		"automation/opt-in",
		"automation/opt-out",
		"automation/security",
		"mutex/author",
		"mutex/locked",
		"mutex/timestamp",
		"security/compliance",
		"security/confidentiality",

		//"kind/api"     = "aws.terraform"
		//"kind/issuer"  = "alexandre.mahdhaoui.com"
		//"kind/kind"    = "TerraformResource"
		//"kind/name"    = "aws_organizations_account"
		//"kind/version" = "v0.1.0"
	}
}
