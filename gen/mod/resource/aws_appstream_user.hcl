resource "aws_appstream_user" "aws_appstream_user" {
  arn                     = var.arn
  authentication_type     = var.authentication_type
  first_name              = var.first_name
  last_name               = var.last_name
  status                  = var.status
  user_name               = var.user_name
  created_time            = var.created_time
  enabled                 = var.enabled
  id                      = var.id
  send_email_notification = var.send_email_notification
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "Status of the user in the user pool."
  type        = string
  default     = ""
}
variable "user_name" {
  description = "(Required) Email address of the user."
  type        = string
}
variable "arn" {
  description = "ARN of the appstream user."
  type        = string
  default     = ""
}
variable "authentication_type" {
  description = "(Required) Authentication type for the user. You must specify USERPOOL. Valid values: API, SAML, USERPOOL"
  type        = string
}
variable "first_name" {
  description = "(Optional) First name, or given name, of the user."
  type        = string
  default     = ""
}
variable "last_name" {
  description = "(Optional) Last name, or surname, of the user."
  type        = string
  default     = ""
}
variable "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the user was created."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Whether the user in the user pool is enabled."
  type        = string
  default     = ""
}
variable "id" {
  description = "Unique ID of the appstream user."
  type        = string
  default     = ""
}
variable "send_email_notification" {
  description = "(Optional) Send an email notification.In addition to all arguments above, the following attributes are exported:"
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
output "user_name" {
  description = "(Required) Email address of the user."
  value       = aws_appstream_user.aws_appstream_user.user_name
}
output "arn" {
  description = "ARN of the appstream user."
  value       = aws_appstream_user.aws_appstream_user.arn
}
output "authentication_type" {
  description = "(Required) Authentication type for the user. You must specify USERPOOL. Valid values: API, SAML, USERPOOL"
  value       = aws_appstream_user.aws_appstream_user.authentication_type
}
output "first_name" {
  description = "(Optional) First name, or given name, of the user."
  value       = aws_appstream_user.aws_appstream_user.first_name
}
output "last_name" {
  description = "(Optional) Last name, or surname, of the user."
  value       = aws_appstream_user.aws_appstream_user.last_name
}
output "status" {
  description = "Status of the user in the user pool."
  value       = aws_appstream_user.aws_appstream_user.status
}
output "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the user was created."
  value       = aws_appstream_user.aws_appstream_user.created_time
}
output "enabled" {
  description = "(Optional) Whether the user in the user pool is enabled."
  value       = aws_appstream_user.aws_appstream_user.enabled
}
output "id" {
  description = "Unique ID of the appstream user."
  value       = aws_appstream_user.aws_appstream_user.id
}
output "send_email_notification" {
  description = "(Optional) Send an email notification.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appstream_user.aws_appstream_user.send_email_notification
}
output "arn" {
  description = "ARN of the appstream user."
  value       = aws_appstream_user.aws_appstream_user.arn
}
output "created_time" {
  description = "Date and time, in UTC and extended RFC 3339 format, when the user was created."
  value       = aws_appstream_user.aws_appstream_user.created_time
}
output "id" {
  description = "Unique ID of the appstream user."
  value       = aws_appstream_user.aws_appstream_user.id
}
output "status" {
  description = "Status of the user in the user pool."
  value       = aws_appstream_user.aws_appstream_user.status
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
      "kind/name"                   = "aws_appstream_user"
      "kind/version"                = "v0.1.0"
    }
  }
}
