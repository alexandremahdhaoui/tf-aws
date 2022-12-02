resource "aws_licensemanager_license_configuration.markdown" "aws_licensemanager_license_configuration.markdown" {
  allowedTenancy           = var.allowedTenancy
  maximumCores             = var.maximumCores
  minimumSockets           = var.minimumSockets
  id                       = var.id
  license_counting_type    = var.license_counting_type
  tags                     = var.tags
  arn                      = var.arn
  description              = var.description
  maximumSockets           = var.maximumSockets
  maximumVcpus             = var.maximumVcpus
  minimumCores             = var.minimumCores
  name                     = var.name
  license_count            = var.license_count
  license_count_hard_limit = var.license_count_hard_limit
  license_rules            = var.license_rules
  minimumVcpus             = var.minimumVcpus
  owner_account_id         = var.owner_account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "license_count_hard_limit" {
  description = "(Optional) Sets the number of available licenses as a hard limit."
  type        = string
  default     = ""
}
variable "license_rules" {
  description = "(Optional) Array of configured License Manager rules."
  type        = string
  default     = ""
}
variable "minimumVcpus" {
  description = "Resource must have minimum vCPU count in order to use the license. Default: 1"
  type        = string
}
variable "owner_account_id" {
  description = "Account ID of the owner of the license configuration."
  type        = string
}
variable "license_count" {
  description = "(Optional) Number of licenses managed by the license configuration."
  type        = string
  default     = ""
}
variable "maximumCores" {
  description = "Resource must have maximum core count in order to use the license. Default: unbounded, limit: 10000"
  type        = string
}
variable "minimumSockets" {
  description = "Resource must have minimum socket count in order to use the license. Default: 1"
  type        = string
}
variable "allowedTenancy" {
  description = "Defines where the license can be used. If set, restricts license usage to selected tenancies. Specify a comma delimited list of EC2-Default, EC2-DedicatedHost, EC2-DedicatedInstanceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "license_counting_type" {
  description = "(Required) Dimension to use to track license inventory. Specify either vCPU, Instance, Core or Socket."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.RulesLicense rules should be in the format of #RuleType=RuleValue. Supported rule types:"
  type        = string
  default     = ""
}
variable "id" {
  description = "The license configuration ARN."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the license configuration."
  type        = string
  default     = ""
}
variable "maximumSockets" {
  description = "Resource must have maximum socket count in order to use the license. Default: unbounded, limit: 10000"
  type        = string
}
variable "maximumVcpus" {
  description = "Resource must have maximum vCPU count in order to use the license. Default: unbounded, limit: 10000"
  type        = string
}
variable "minimumCores" {
  description = "Resource must have minimum core count in order to use the license. Default: 1"
  type        = string
}
variable "name" {
  description = "(Required) Name of the license configuration."
  type        = string
}
variable "arn" {
  description = "The license configuration ARN."
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
output "id" {
  description = "The license configuration ARN."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.id
}
output "license_counting_type" {
  description = "(Required) Dimension to use to track license inventory. Specify either vCPU, Instance, Core or Socket."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.license_counting_type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.RulesLicense rules should be in the format of #RuleType=RuleValue. Supported rule types:"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.tags
}
output "name" {
  description = "(Required) Name of the license configuration."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.name
}
output "arn" {
  description = "The license configuration ARN."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.arn
}
output "description" {
  description = "(Optional) Description of the license configuration."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.description
}
output "maximumSockets" {
  description = "Resource must have maximum socket count in order to use the license. Default: unbounded, limit: 10000"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.maximumSockets
}
output "maximumVcpus" {
  description = "Resource must have maximum vCPU count in order to use the license. Default: unbounded, limit: 10000"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.maximumVcpus
}
output "minimumCores" {
  description = "Resource must have minimum core count in order to use the license. Default: 1"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.minimumCores
}
output "license_count" {
  description = "(Optional) Number of licenses managed by the license configuration."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.license_count
}
output "license_count_hard_limit" {
  description = "(Optional) Sets the number of available licenses as a hard limit."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.license_count_hard_limit
}
output "license_rules" {
  description = "(Optional) Array of configured License Manager rules."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.license_rules
}
output "minimumVcpus" {
  description = "Resource must have minimum vCPU count in order to use the license. Default: 1"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.minimumVcpus
}
output "owner_account_id" {
  description = "Account ID of the owner of the license configuration."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.owner_account_id
}
output "allowedTenancy" {
  description = "Defines where the license can be used. If set, restricts license usage to selected tenancies. Specify a comma delimited list of EC2-Default, EC2-DedicatedHost, EC2-DedicatedInstanceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.allowedTenancy
}
output "maximumCores" {
  description = "Resource must have maximum core count in order to use the license. Default: unbounded, limit: 10000"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.maximumCores
}
output "minimumSockets" {
  description = "Resource must have minimum socket count in order to use the license. Default: 1"
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.minimumSockets
}
output "arn" {
  description = "The license configuration ARN."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.arn
}
output "id" {
  description = "The license configuration ARN."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.id
}
output "owner_account_id" {
  description = "Account ID of the owner of the license configuration."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.owner_account_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_licensemanager_license_configuration.markdown.aws_licensemanager_license_configuration.markdown.tags_all
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
      "kind/name"                   = "aws_licensemanager_license_configuration.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
