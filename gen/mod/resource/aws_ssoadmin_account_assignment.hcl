resource "aws_ssoadmin_account_assignment" "aws_ssoadmin_account_assignment" {
  instance_arn       = var.instance_arn
  permission_set_arn = var.permission_set_arn
  principal_id       = var.principal_id
  principal_type     = var.principal_type
  target_id          = var.target_id
  target_type        = var.target_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "permission_set_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to."
  type        = string
}
variable "principal_id" {
  description = "(Required, Forces new resource) An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6)."
  type        = string
}
variable "principal_type" {
  description = "(Required, Forces new resource) The entity type for which the assignment will be created. Valid values: USER, GROUP."
  type        = string
}
variable "target_id" {
  description = "(Required, Forces new resource) An AWS account identifier, typically a 10-12 digit string."
  type        = string
}
variable "target_type" {
  description = "(Optional, Forces new resource) The entity type for which the assignment will be created. Valid values: AWS_ACCOUNT.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance."
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
output "target_type" {
  description = "(Optional, Forces new resource) The entity type for which the assignment will be created. Valid values: AWS_ACCOUNT.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.target_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the SSO Instance."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.instance_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permission_set_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Permission Set that the admin wants to grant the principal access to."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.permission_set_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "principal_id" {
  description = "(Required, Forces new resource) An identifier for an object in SSO, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6)."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.principal_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "principal_type" {
  description = "(Required, Forces new resource) The entity type for which the assignment will be created. Valid values: USER, GROUP."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.principal_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_id" {
  description = "(Required, Forces new resource) An AWS account identifier, typically a 10-12 digit string."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.target_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier of the Account Assignment i.e., principal_id, principal_type, target_id, target_type, permission_set_arn, instance_arn separated by commas (,)."
  value       = aws_ssoadmin_account_assignment.aws_ssoadmin_account_assignment.id
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
      "kind/name"                   = "aws_ssoadmin_account_assignment"
      "kind/version"                = "v0.1.0"
    }
  }
}
