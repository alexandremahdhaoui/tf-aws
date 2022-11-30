resource "aws_memorydb_user" "aws_memorydb_user" {
  type                   = var.type
  user_name              = var.user_name
  arn                    = var.arn
  authentication_mode    = var.authentication_mode
  id                     = var.id
  minimum_engine_version = var.minimum_engine_version
  password_count         = var.password_count
  passwords              = var.passwords
  tags                   = var.tags
  tags_all               = var.tags_all
  access_string          = var.access_string
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "type" {
  description = "(Required) Indicates whether the user requires a password to authenticate. Must be set to password.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "user_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB user. Up to 40 characters."
  type        = string
}
variable "arn" {
  description = "The ARN of the user."
  type        = string
}
variable "authentication_mode" {
  description = ""
  type        = string
}
variable "id" {
  description = "Same as user_name."
  type        = string
}
variable "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  type        = string
}
variable "password_count" {
  description = "The number of passwords belonging to the user."
  type        = string
}
variable "passwords" {
  description = "(Required) The set of passwords used for authentication. You can create up to two passwords for each user."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.authentication_mode Configuration Block"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "access_string" {
  description = "(Required) The access permissions string used for this user."
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
output "access_string" {
  description = "(Required) The access permissions string used for this user."
  value       = aws_memorydb_user.aws_memorydb_user.access_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_mode" {
  description = ""
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Same as user_name."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "passwords" {
  description = "(Required) The set of passwords used for authentication. You can create up to two passwords for each user."
  value       = aws_memorydb_user.aws_memorydb_user.passwords
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.authentication_mode Configuration Block"
  value       = aws_memorydb_user.aws_memorydb_user.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_memorydb_user.aws_memorydb_user.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Indicates whether the user requires a password to authenticate. Must be set to password.In addition to all arguments above, the following attributes are exported:"
  value       = aws_memorydb_user.aws_memorydb_user.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB user. Up to 40 characters."
  value       = aws_memorydb_user.aws_memorydb_user.user_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_mode" {
  description = ""
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Same as user_name."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_memorydb_user.aws_memorydb_user.tags_all
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
      "kind/name"                   = "aws_memorydb_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
