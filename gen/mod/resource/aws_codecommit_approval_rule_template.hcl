resource "aws_codecommit_approval_rule_template" "aws_codecommit_approval_rule_template" {
  name                      = var.name
  approval_rule_template_id = var.approval_rule_template_id
  content                   = var.content
  creation_date             = var.creation_date
  description               = var.description
  last_modified_date        = var.last_modified_date
  last_modified_user        = var.last_modified_user
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "last_modified_user" {
  description = "The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template."
  type        = string
}
variable "name" {
  description = "(Required) The name for the approval rule template. Maximum of 100 characters."
  type        = string
}
variable "approval_rule_template_id" {
  description = "The ID of the approval rule template"
  type        = string
}
variable "content" {
  description = "(Required) The content of the approval rule template. Maximum of 3000 characters."
  type        = string
}
variable "creation_date" {
  description = "The date the approval rule template was created, in RFC3339 format."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the approval rule template. Maximum of 1000 characters.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "last_modified_date" {
  description = "The date the approval rule template was most recently changed, in RFC3339 format."
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
output "content" {
  description = "(Required) The content of the approval rule template. Maximum of 3000 characters."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date the approval rule template was created, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description of the approval rule template. Maximum of 1000 characters.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_date" {
  description = "The date the approval rule template was most recently changed, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_user" {
  description = "The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_user
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name for the approval rule template. Maximum of 100 characters."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approval_rule_template_id" {
  description = "The ID of the approval rule template"
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.approval_rule_template_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "approval_rule_template_id" {
  description = "The ID of the approval rule template"
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.approval_rule_template_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date the approval rule template was created, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_date" {
  description = "The date the approval rule template was most recently changed, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_user" {
  description = "The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_user
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_content_sha256" {
  description = "The SHA-256 hash signature for the content of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.rule_content_sha256
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
      "kind/name"                   = "aws_codecommit_approval_rule_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
