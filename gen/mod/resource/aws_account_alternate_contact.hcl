resource "aws_account_alternate_contact" "aws_account_alternate_contact" {
  alternate_contact_type = var.alternate_contact_type
  create                 = var.create
  email_address          = var.email_address
  name                   = var.name
  phone_number           = var.phone_number
  title                  = var.title
  update                 = var.update
  account_id             = var.account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "phone_number" {
  description = "(Required) Phone number for the alternate contact."
  type        = string
}
variable "title" {
  description = "(Required) Title for the alternate contact.No additional attributes are exported.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "account_id" {
  description = "(Optional) ID of the target account when managing member accounts. Will manage current user's account by default if omitted."
  type        = string
  default     = ""
}
variable "alternate_contact_type" {
  description = "(Required) Type of the alternate contact. Allowed values are: BILLING, OPERATIONS, SECURITY."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "email_address" {
  description = "(Required) An email address for the alternate contact."
  type        = string
}
variable "name" {
  description = "(Required) Name of the alternate contact."
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
output "phone_number" {
  description = "(Required) Phone number for the alternate contact."
  value       = aws_account_alternate_contact.aws_account_alternate_contact.phone_number
}
output "title" {
  description = "(Required) Title for the alternate contact.No additional attributes are exported.TimeoutsConfiguration options:"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.title
}
output "update" {
  description = "(Default 5m)"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.update
}
output "account_id" {
  description = "(Optional) ID of the target account when managing member accounts. Will manage current user's account by default if omitted."
  value       = aws_account_alternate_contact.aws_account_alternate_contact.account_id
}
output "alternate_contact_type" {
  description = "(Required) Type of the alternate contact. Allowed values are: BILLING, OPERATIONS, SECURITY."
  value       = aws_account_alternate_contact.aws_account_alternate_contact.alternate_contact_type
}
output "create" {
  description = "(Default 5m)"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.create
}
output "email_address" {
  description = "(Required) An email address for the alternate contact."
  value       = aws_account_alternate_contact.aws_account_alternate_contact.email_address
}
output "name" {
  description = "(Required) Name of the alternate contact."
  value       = aws_account_alternate_contact.aws_account_alternate_contact.name
}
output "update" {
  description = "(Default 5m)"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.update
}
output "create" {
  description = "(Default 5m)"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.create
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_account_alternate_contact.aws_account_alternate_contact.delete
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
      "kind/name"                   = "aws_account_alternate_contact"
      "kind/version"                = "v0.1.0"
    }
  }
}
