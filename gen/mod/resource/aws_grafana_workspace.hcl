resource "aws_grafana_workspace" "aws_grafana_workspace" {
  authentication_providers  = var.authentication_providers
  notification_destinations = var.notification_destinations
  name                      = var.name
  description               = var.description
  endpoint                  = var.endpoint
  grafana_version           = var.grafana_version
  organizational_units      = var.organizational_units
  permission_type           = var.permission_type
  role_arn                  = var.role_arn
  stack_set_name            = var.stack_set_name
  tags                      = var.tags
  account_access_type       = var.account_access_type
  arn                       = var.arn
  data_sources              = var.data_sources
  tags_all                  = var.tags_all
  organization_role_name    = var.organization_role_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "authentication_providers" {
  description = "(Required) The authentication providers for the workspace. Valid values are AWS_SSO, SAML, or both."
  type        = string
}
variable "notification_destinations" {
  description = "(Optional) The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to SNS."
  type        = string
}
variable "description" {
  description = "(Optional) The workspace description."
  type        = string
}
variable "endpoint" {
  description = "The endpoint of the Grafana workspace."
  type        = string
}
variable "grafana_version" {
  description = "The version of Grafana running on the workspace."
  type        = string
}
variable "name" {
  description = "(Optional) The Grafana workspace name."
  type        = string
}
variable "account_access_type" {
  description = "(Required) The type of account access for the workspace. Valid values are CURRENT_ACCOUNT and ORGANIZATION. If ORGANIZATION is specified, then organizational_units must also be present."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Grafana workspace."
  type        = string
}
variable "data_sources" {
  description = "(Optional) The data sources for the workspace. Valid values are AMAZON_OPENSEARCH_SERVICE, ATHENA, CLOUDWATCH, PROMETHEUS, REDSHIFT, SITEWISE, TIMESTREAM, XRAY"
  type        = string
}
variable "organizational_units" {
  description = "(Optional) The Amazon Organizations organizational units that the workspace is authorized to use data sources from."
  type        = string
}
variable "permission_type" {
  description = "(Required) The permission type of the workspace. If SERVICE_MANAGED is specified, the IAM roles and IAM policy attachments are generated automatically. If CUSTOMER_MANAGED is specified, the IAM roles and IAM policy attachments will not be created."
  type        = string
}
variable "role_arn" {
  description = "(Optional) The IAM role ARN that the workspace assumes."
  type        = string
}
variable "stack_set_name" {
  description = "(Optional) The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "organization_role_name" {
  description = "(Optional) The role name that the workspace uses to access resources through Amazon Organizations."
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
output "description" {
  description = "(Optional) The workspace description."
  value       = aws_grafana_workspace.aws_grafana_workspace.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grafana_version" {
  description = "The version of Grafana running on the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.grafana_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The Grafana workspace name."
  value       = aws_grafana_workspace.aws_grafana_workspace.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stack_set_name" {
  description = "(Optional) The AWS CloudFormation stack set name that provisions IAM roles to be used by the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.stack_set_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_grafana_workspace.aws_grafana_workspace.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_access_type" {
  description = "(Required) The type of account access for the workspace. Valid values are CURRENT_ACCOUNT and ORGANIZATION. If ORGANIZATION is specified, then organizational_units must also be present."
  value       = aws_grafana_workspace.aws_grafana_workspace.account_access_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_sources" {
  description = "(Optional) The data sources for the workspace. Valid values are AMAZON_OPENSEARCH_SERVICE, ATHENA, CLOUDWATCH, PROMETHEUS, REDSHIFT, SITEWISE, TIMESTREAM, XRAY"
  value       = aws_grafana_workspace.aws_grafana_workspace.data_sources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organizational_units" {
  description = "(Optional) The Amazon Organizations organizational units that the workspace is authorized to use data sources from."
  value       = aws_grafana_workspace.aws_grafana_workspace.organizational_units
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permission_type" {
  description = "(Required) The permission type of the workspace. If SERVICE_MANAGED is specified, the IAM roles and IAM policy attachments are generated automatically. If CUSTOMER_MANAGED is specified, the IAM roles and IAM policy attachments will not be created."
  value       = aws_grafana_workspace.aws_grafana_workspace.permission_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Optional) The IAM role ARN that the workspace assumes."
  value       = aws_grafana_workspace.aws_grafana_workspace.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_grafana_workspace.aws_grafana_workspace.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organization_role_name" {
  description = "(Optional) The role name that the workspace uses to access resources through Amazon Organizations."
  value       = aws_grafana_workspace.aws_grafana_workspace.organization_role_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_providers" {
  description = "(Required) The authentication providers for the workspace. Valid values are AWS_SSO, SAML, or both."
  value       = aws_grafana_workspace.aws_grafana_workspace.authentication_providers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_destinations" {
  description = "(Optional) The notification destinations. If a data source is specified here, Amazon Managed Grafana will create IAM roles and permissions needed to use these destinations. Must be set to SNS."
  value       = aws_grafana_workspace.aws_grafana_workspace.notification_destinations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grafana_version" {
  description = "The version of Grafana running on the workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.grafana_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_grafana_workspace.aws_grafana_workspace.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Grafana workspace."
  value       = aws_grafana_workspace.aws_grafana_workspace.arn
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
      "kind/name"                   = "aws_grafana_workspace"
      "kind/version"                = "v0.1.0"
    }
  }
}
