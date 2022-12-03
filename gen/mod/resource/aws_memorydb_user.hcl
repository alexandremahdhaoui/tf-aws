resource "aws_memorydb_user" "aws_memorydb_user" {
  tags_all               = var.tags_all
  id                     = var.id
  minimum_engine_version = var.minimum_engine_version
  passwords              = var.passwords
  password_count         = var.password_count
  tags                   = var.tags
  type                   = var.type
  user_name              = var.user_name
  access_string          = var.access_string
  arn                    = var.arn
  authentication_mode    = var.authentication_mode
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "access_string" {
  description = "(Required) The access permissions string used for this user."
  type        = string
}
variable "arn" {
  description = "The ARN of the user."
  type        = string
  default     = ""
}
variable "authentication_mode" {
  description = ""
  type        = string
  default     = ""
}
variable "password_count" {
  description = "The number of passwords belonging to the user."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.authentication_mode Configuration Block"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Indicates whether the user requires a password to authenticate. Must be set to password.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "user_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB user. Up to 40 characters."
  type        = string
}
variable "id" {
  description = "Same as user_name."
  type        = string
  default     = ""
}
variable "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  type        = string
  default     = ""
}
variable "passwords" {
  description = "(Required) The set of passwords used for authentication. You can create up to two passwords for each user."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
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
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
}
output "passwords" {
  description = "(Required) The set of passwords used for authentication. You can create up to two passwords for each user."
  value       = aws_memorydb_user.aws_memorydb_user.passwords
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_memorydb_user.aws_memorydb_user.tags_all
}
output "id" {
  description = "Same as user_name."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "arn" {
  description = "The ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "authentication_mode" {
  description = ""
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.authentication_mode Configuration Block"
  value       = aws_memorydb_user.aws_memorydb_user.tags
}
output "type" {
  description = "(Required) Indicates whether the user requires a password to authenticate. Must be set to password.In addition to all arguments above, the following attributes are exported:"
  value       = aws_memorydb_user.aws_memorydb_user.type
}
output "user_name" {
  description = "(Required, Forces new resource) Name of the MemoryDB user. Up to 40 characters."
  value       = aws_memorydb_user.aws_memorydb_user.user_name
}
output "access_string" {
  description = "(Required) The access permissions string used for this user."
  value       = aws_memorydb_user.aws_memorydb_user.access_string
}
output "password_count" {
  description = "The number of passwords belonging to the user."
  value       = aws_memorydb_user.aws_memorydb_user.password_count
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_memorydb_user.aws_memorydb_user.tags_all
}
output "arn" {
  description = "The ARN of the user."
  value       = aws_memorydb_user.aws_memorydb_user.arn
}
output "authentication_mode" {
  description = ""
  value       = aws_memorydb_user.aws_memorydb_user.authentication_mode
}
output "id" {
  description = "Same as user_name."
  value       = aws_memorydb_user.aws_memorydb_user.id
}
output "minimum_engine_version" {
  description = "The minimum engine version supported for the user."
  value       = aws_memorydb_user.aws_memorydb_user.minimum_engine_version
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
      "kind/name"                   = "aws_memorydb_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
