resource "aws_lambda_layer_version_permission" "aws_lambda_layer_version_permission" {
  layer_name      = var.layer_name
  organization_id = var.organization_id
  principal       = var.principal
  revision_id     = var.revision_id
  statement_id    = var.statement_id
  version_number  = var.version_number
  action          = var.action
  id              = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "statement_id" {
  description = "(Required) The name of Lambda Layer Permission, for example dev-accounthuman readable note about what is this permission for."
  type        = string
}
variable "version_number" {
  description = " (Required) Version of Lambda Layer, which you want to grant access to. Note: permissions only apply to a single version of a layer.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "action" {
  description = "(Required) Action, which will be allowed. lambda:GetLayerVersion value is suggested by AWS documantation."
  type        = string
}
variable "id" {
  description = "The layer_name and version_number, separated by a comma (,)."
  type        = string
}
variable "layer_name" {
  description = " (Required) The name or ARN of the Lambda Layer, which you want to grant access to."
  type        = string
}
variable "organization_id" {
  description = "(Optional) An identifier of AWS Organization, which should be able to use your Lambda Layer. principal should be equal to * if organization_id provided."
  type        = string
  default     = ""
}
variable "principal" {
  description = "(Required) AWS account ID which should be able to use your Lambda Layer. * can be used here, if you want to share your Lambda Layer widely."
  type        = string
}
variable "revision_id" {
  description = "A unique identifier for the current revision of the policy."
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
output "version_number" {
  description = " (Required) Version of Lambda Layer, which you want to grant access to. Note: permissions only apply to a single version of a layer.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.version_number
}
output "action" {
  description = "(Required) Action, which will be allowed. lambda:GetLayerVersion value is suggested by AWS documantation."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.action
}
output "id" {
  description = "The layer_name and version_number, separated by a comma (,)."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.id
}
output "layer_name" {
  description = " (Required) The name or ARN of the Lambda Layer, which you want to grant access to."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.layer_name
}
output "organization_id" {
  description = "(Optional) An identifier of AWS Organization, which should be able to use your Lambda Layer. principal should be equal to * if organization_id provided."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.organization_id
}
output "principal" {
  description = "(Required) AWS account ID which should be able to use your Lambda Layer. * can be used here, if you want to share your Lambda Layer widely."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.principal
}
output "revision_id" {
  description = "A unique identifier for the current revision of the policy."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.revision_id
}
output "statement_id" {
  description = "(Required) The name of Lambda Layer Permission, for example dev-accounthuman readable note about what is this permission for."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.statement_id
}
output "policy" {
  description = "Full Lambda Layer Permission policy."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.policy
}
output "revision_id" {
  description = "A unique identifier for the current revision of the policy."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.revision_id
}
output "id" {
  description = "The layer_name and version_number, separated by a comma (,)."
  value       = aws_lambda_layer_version_permission.aws_lambda_layer_version_permission.id
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
      "kind/name"                   = "aws_lambda_layer_version_permission"
      "kind/version"                = "v0.1.0"
    }
  }
}
