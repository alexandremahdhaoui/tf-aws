resource "aws_medialive_input_security_group" "aws_medialive_input_security_group" {
  tags            = var.tags
  delete          = var.delete
  id              = var.id
  create          = var.create
  inputs          = var.inputs
  update          = var.update
  whitelist_rules = var.whitelist_rules
  arn             = var.arn
  cidr            = var.cidr
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "whitelist_rules" {
  description = "(Required) Whitelist rules. See Whitelist Rules for more details."
  type        = string
}
variable "arn" {
  description = "ARN of the InputSecurityGroup."
  type        = string
  default     = ""
}
variable "cidr" {
  description = " (Required) - The IPv4 CIDR that's whitelisted.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "inputs" {
  description = "The list of inputs currently using this InputSecurityGroup.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "InputSecurityGroup Id."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the InputSecurityGroup. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Whitelist Rules"
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
output "arn" {
  description = "ARN of the InputSecurityGroup."
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.arn
}
output "cidr" {
  description = " (Required) - The IPv4 CIDR that's whitelisted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.cidr
}
output "create" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.create
}
output "inputs" {
  description = "The list of inputs currently using this InputSecurityGroup.TimeoutsConfiguration options:"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.inputs
}
output "update" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.update
}
output "whitelist_rules" {
  description = "(Required) Whitelist rules. See Whitelist Rules for more details."
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.whitelist_rules
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.delete
}
output "id" {
  description = "InputSecurityGroup Id."
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the InputSecurityGroup. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Whitelist Rules"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.tags
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.delete
}
output "id" {
  description = "InputSecurityGroup Id."
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.id
}
output "inputs" {
  description = "The list of inputs currently using this InputSecurityGroup.TimeoutsConfiguration options:"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.inputs
}
output "update" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.update
}
output "arn" {
  description = "ARN of the InputSecurityGroup."
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_medialive_input_security_group.aws_medialive_input_security_group.create
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
      "kind/name"                   = "aws_medialive_input_security_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
