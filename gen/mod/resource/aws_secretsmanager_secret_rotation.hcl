resource "aws_secretsmanager_secret_rotation" "aws_secretsmanager_secret_rotation" {
  rotation_lambda_arn      = var.rotation_lambda_arn
  rotation_rules           = var.rotation_rules
  secret_id                = var.secret_id
  arn                      = var.arn
  automatically_after_days = var.automatically_after_days
  id                       = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "rotation_rules" {
  description = "(Required) A structure that defines the rotation configuration for this secret. Defined below.rotation_rules"
  type        = string
}
variable "secret_id" {
  description = "(Required) Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the secret."
  type        = string
}
variable "automatically_after_days" {
  description = "(Required) Specifies the number of days between automatic scheduled rotations of the secret.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the secret."
  type        = string
}
variable "rotation_lambda_arn" {
  description = "(Required) Specifies the ARN of the Lambda function that can rotate the secret."
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
output "automatically_after_days" {
  description = "(Required) Specifies the number of days between automatic scheduled rotations of the secret.In addition to all arguments above, the following attributes are exported:"
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.automatically_after_days
}
output "id" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.id
}
output "rotation_lambda_arn" {
  description = "(Required) Specifies the ARN of the Lambda function that can rotate the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.rotation_lambda_arn
}
output "rotation_rules" {
  description = "(Required) A structure that defines the rotation configuration for this secret. Defined below.rotation_rules"
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.rotation_rules
}
output "secret_id" {
  description = "(Required) Specifies the secret to which you want to add a new version. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret. The secret must already exist."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.secret_id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.id
}
output "rotation_enabled" {
  description = "Specifies whether automatic rotation is enabled for this secret."
  value       = aws_secretsmanager_secret_rotation.aws_secretsmanager_secret_rotation.rotation_enabled
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
      "kind/name"                   = "aws_secretsmanager_secret_rotation"
      "kind/version"                = "v0.1.0"
    }
  }
}
