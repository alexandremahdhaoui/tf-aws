resource "aws_config_configuration_aggregator" "aws_config_configuration_aggregator" {
  account_ids                     = var.account_ids
  arn                             = var.arn
  name                            = var.name
  regions                         = var.regions
  account_aggregation_source      = var.account_aggregation_source
  all_regions                     = var.all_regions
  organization_aggregation_source = var.organization_aggregation_source
  role_arn                        = var.role_arn
  tags                            = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "account_ids" {
  description = "(Required) List of 12-digit account IDs of the account(s) being aggregated."
  type        = string
}
variable "arn" {
  description = "The ARN of the aggregator"
  type        = string
}
variable "name" {
  description = "(Required) The name of the configuration aggregator."
  type        = string
}
variable "regions" {
  description = "(Optional) List of source regions being aggregated."
  type        = string
  default     = ""
}
variable "account_aggregation_source" {
  description = "(Optional) The account(s) to aggregate config data from as documented below."
  type        = string
  default     = ""
}
variable "all_regions" {
  description = "(Optional) If true, aggregate existing AWS Config regions and future regions."
  type        = string
  default     = ""
}
variable "organization_aggregation_source" {
  description = "(Optional) The organization to aggregate config data from as documented below."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.Either regions or all_regions (as true) must be specified.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Either account_aggregation_source or organization_aggregation_source must be specified.account_aggregation_source"
  type        = string
  default     = ""
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
output "account_ids" {
  description = "(Required) List of 12-digit account IDs of the account(s) being aggregated."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.account_ids
}
output "arn" {
  description = "The ARN of the aggregator"
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.arn
}
output "name" {
  description = "(Required) The name of the configuration aggregator."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.name
}
output "regions" {
  description = "(Optional) List of source regions being aggregated."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.regions
}
output "account_aggregation_source" {
  description = "(Optional) The account(s) to aggregate config data from as documented below."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.account_aggregation_source
}
output "all_regions" {
  description = "(Optional) If true, aggregate existing AWS Config regions and future regions."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.all_regions
}
output "organization_aggregation_source" {
  description = "(Optional) The organization to aggregate config data from as documented below."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.organization_aggregation_source
}
output "role_arn" {
  description = "(Required) ARN of the IAM role used to retrieve AWS Organization details associated with the aggregator account.Either regions or all_regions (as true) must be specified.In addition to all arguments above, the following attributes are exported:"
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.role_arn
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Either account_aggregation_source or organization_aggregation_source must be specified.account_aggregation_source"
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.tags
}
output "arn" {
  description = "The ARN of the aggregator"
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_config_configuration_aggregator.aws_config_configuration_aggregator.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  value       = var.provider_region
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
      "kind/name"                   = "aws_config_configuration_aggregator"
      "kind/version"                = "v0.1.0"
    }
  }
}
