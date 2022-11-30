resource "aws_grafana_workspace_saml_configuration" "aws_grafana_workspace_saml_configuration" {
  groups_assertion        = var.groups_assertion
  idp_metadata_url        = var.idp_metadata_url
  editor_role_values      = var.editor_role_values
  email_assertion         = var.email_assertion
  idp_metadata_xml        = var.idp_metadata_xml
  org_assertion           = var.org_assertion
  admin_role_values       = var.admin_role_values
  name_assertion          = var.name_assertion
  workspace_id            = var.workspace_id
  allowed_organizations   = var.allowed_organizations
  login_validity_duration = var.login_validity_duration
  role_assertion          = var.role_assertion
  status                  = var.status
  login_assertion         = var.login_assertion
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "login_assertion" {
  description = "(Optional) The login assertion."
  type        = string
}
variable "login_validity_duration" {
  description = "(Optional) The login validity duration."
  type        = string
}
variable "role_assertion" {
  description = "(Optional) The role assertion.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status" {
  description = "The status of the SAML configuration."
  type        = string
}
variable "editor_role_values" {
  description = "(Required) The editor role values."
  type        = string
}
variable "groups_assertion" {
  description = "(Optional) The groups assertion."
  type        = string
}
variable "idp_metadata_url" {
  description = "(Optional) The IDP Metadata URL. Note that either idp_metadata_url or idp_metadata_xml (but not both) must be specified."
  type        = string
}
variable "admin_role_values" {
  description = "(Optional) The admin role values."
  type        = string
}
variable "email_assertion" {
  description = "(Optional) The email assertion."
  type        = string
}
variable "idp_metadata_xml" {
  description = "(Optional) The IDP Metadata XML. Note that either idp_metadata_url or idp_metadata_xml (but not both) must be specified."
  type        = string
}
variable "org_assertion" {
  description = "(Optional) The org assertion."
  type        = string
}
variable "allowed_organizations" {
  description = "(Optional) The allowed organizations."
  type        = string
}
variable "name_assertion" {
  description = "(Optional) The name assertion."
  type        = string
}
variable "workspace_id" {
  description = "(Required) The workspace id."
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "login_assertion" {
  description = "(Optional) The login assertion."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.login_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "login_validity_duration" {
  description = "(Optional) The login validity duration."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.login_validity_duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_assertion" {
  description = "(Optional) The role assertion.In addition to all arguments above, the following attributes are exported:"
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.role_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the SAML configuration."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "editor_role_values" {
  description = "(Required) The editor role values."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.editor_role_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "groups_assertion" {
  description = "(Optional) The groups assertion."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.groups_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idp_metadata_url" {
  description = "(Optional) The IDP Metadata URL. Note that either idp_metadata_url or idp_metadata_xml (but not both) must be specified."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.idp_metadata_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "admin_role_values" {
  description = "(Optional) The admin role values."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.admin_role_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_assertion" {
  description = "(Optional) The email assertion."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.email_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idp_metadata_xml" {
  description = "(Optional) The IDP Metadata XML. Note that either idp_metadata_url or idp_metadata_xml (but not both) must be specified."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.idp_metadata_xml
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "org_assertion" {
  description = "(Optional) The org assertion."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.org_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_organizations" {
  description = "(Optional) The allowed organizations."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.allowed_organizations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_assertion" {
  description = "(Optional) The name assertion."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.name_assertion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workspace_id" {
  description = "(Required) The workspace id."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.workspace_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the SAML configuration."
  value       = aws_grafana_workspace_saml_configuration.aws_grafana_workspace_saml_configuration.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
terraform {
  backend "local" {
  }
  required_providers {
    aws {
      source  = "hashicorp/aws"
      version = ">= 4.38.0"
    }
    required_version = ">= 1.3.4"
  }
}
provider "aws" {
  region = var.provider_region
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_grafana_workspace_saml_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
