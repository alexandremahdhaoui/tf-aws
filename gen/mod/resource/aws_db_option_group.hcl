resource "aws_db_option_group" "aws_db_option_group" {
  tags                           = var.tags
  option_name                    = var.option_name
  port                           = var.port
  option                         = var.option
  tags_all                       = var.tags_all
  name_prefix                    = var.name_prefix
  option_settings                = var.option_settings
  value                          = var.value
  db_security_group_memberships  = var.db_security_group_memberships
  name                           = var.name
  id                             = var.id
  major_engine_version           = var.major_engine_version
  option_group_description       = var.option_group_description
  version                        = var.version
  vpc_security_group_memberships = var.vpc_security_group_memberships
  arn                            = var.arn
  engine_name                    = var.engine_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_security_group_memberships" {
  description = "(Optional) A list of VPC Security Groups for which the option is enabled.Option Settings blocks support the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the db option group."
  type        = string
}
variable "engine_name" {
  description = "(Required) Specifies the name of the engine that this option group should be associated with."
  type        = string
}
variable "id" {
  description = "The db option group name."
  type        = string
}
variable "major_engine_version" {
  description = "(Required) Specifies the major version of the engine that this option group should be associated with."
  type        = string
}
variable "option_group_description" {
  description = "(Optional) The description of the option group. Defaults to \"Managed by Terraform\"."
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) The version of the option (e.g., 13.1.0.0)."
  type        = string
  default     = ""
}
variable "option_name" {
  description = "(Required) The Name of the Option (e.g., MEMCACHED)."
  type        = string
}
variable "port" {
  description = "(Optional) The Port number when connecting to the Option (e.g., 11211)."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Option blocks support the following:"
  type        = string
  default     = ""
}
variable "option" {
  description = "(Optional) A list of Options to apply."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "db_security_group_memberships" {
  description = "(Optional) A list of DB Security Groups for which the option is enabled."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) The Name of the setting."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name. Must be lowercase, to match as it is stored in AWS."
  type        = string
}
variable "option_settings" {
  description = "(Optional) A list of option settings to apply."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) The Value of the setting.In addition to all arguments above, the following attributes are exported:"
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
output "db_security_group_memberships" {
  description = "(Optional) A list of DB Security Groups for which the option is enabled."
  value       = aws_db_option_group.aws_db_option_group.db_security_group_memberships
}
output "name" {
  description = "(Optional) The Name of the setting."
  value       = aws_db_option_group.aws_db_option_group.name
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name. Must be lowercase, to match as it is stored in AWS."
  value       = aws_db_option_group.aws_db_option_group.name_prefix
}
output "option_settings" {
  description = "(Optional) A list of option settings to apply."
  value       = aws_db_option_group.aws_db_option_group.option_settings
}
output "value" {
  description = "(Optional) The Value of the setting.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_option_group.aws_db_option_group.value
}
output "arn" {
  description = "The ARN of the db option group."
  value       = aws_db_option_group.aws_db_option_group.arn
}
output "engine_name" {
  description = "(Required) Specifies the name of the engine that this option group should be associated with."
  value       = aws_db_option_group.aws_db_option_group.engine_name
}
output "id" {
  description = "The db option group name."
  value       = aws_db_option_group.aws_db_option_group.id
}
output "major_engine_version" {
  description = "(Required) Specifies the major version of the engine that this option group should be associated with."
  value       = aws_db_option_group.aws_db_option_group.major_engine_version
}
output "option_group_description" {
  description = "(Optional) The description of the option group. Defaults to \"Managed by Terraform\"."
  value       = aws_db_option_group.aws_db_option_group.option_group_description
}
output "version" {
  description = "(Optional) The version of the option (e.g., 13.1.0.0)."
  value       = aws_db_option_group.aws_db_option_group.version
}
output "vpc_security_group_memberships" {
  description = "(Optional) A list of VPC Security Groups for which the option is enabled.Option Settings blocks support the following:"
  value       = aws_db_option_group.aws_db_option_group.vpc_security_group_memberships
}
output "option_name" {
  description = "(Required) The Name of the Option (e.g., MEMCACHED)."
  value       = aws_db_option_group.aws_db_option_group.option_name
}
output "port" {
  description = "(Optional) The Port number when connecting to the Option (e.g., 11211)."
  value       = aws_db_option_group.aws_db_option_group.port
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Option blocks support the following:"
  value       = aws_db_option_group.aws_db_option_group.tags
}
output "option" {
  description = "(Optional) A list of Options to apply."
  value       = aws_db_option_group.aws_db_option_group.option
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_db_option_group.aws_db_option_group.tags_all
}
output "arn" {
  description = "The ARN of the db option group."
  value       = aws_db_option_group.aws_db_option_group.arn
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_db_option_group.aws_db_option_group.delete
}
output "id" {
  description = "The db option group name."
  value       = aws_db_option_group.aws_db_option_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_db_option_group.aws_db_option_group.tags_all
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
      "kind/name"                   = "aws_db_option_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
