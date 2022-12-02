resource "aws_lambda_function_event_invoke_config" "aws_lambda_function_event_invoke_config" {
  id                           = var.id
  destination_config           = var.destination_config
  function_name                = var.function_name
  maximum_event_age_in_seconds = var.maximum_event_age_in_seconds
  maximum_retry_attempts       = var.maximum_retry_attempts
  on_failure                   = var.on_failure
  on_success                   = var.on_success
  qualifier                    = var.qualifier
  destination                  = var.destination
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Fully qualified Lambda Function name or Amazon Resource Name (ARN)"
  type        = string
  default     = ""
}
variable "function_name" {
  description = "(Required) Name or Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier."
  type        = string
}
variable "maximum_event_age_in_seconds" {
  description = "(Optional) Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600."
  type        = string
  default     = ""
}
variable "maximum_retry_attempts" {
  description = "(Optional) Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2."
  type        = string
  default     = ""
}
variable "on_failure" {
  description = "(Optional) Configuration block with destination configuration for failed asynchronous invocations. See below for details."
  type        = string
  default     = ""
}
variable "on_success" {
  description = "(Optional) Configuration block with destination configuration for successful asynchronous invocations. See below for details.destination_config on_failure Configuration Block"
  type        = string
  default     = ""
}
variable "qualifier" {
  description = "(Optional) Lambda Function published version, $LATEST, or Lambda Alias name.destination_config Configuration Block~> strongNOTE: At least one of on_failure or on_success must be configured when using this configuration block, otherwise remove it completely to prevent perpetual differences in Terraform runs."
  type        = string
  default     = ""
}
variable "destination" {
  description = "(Required) Amazon Resource Name (ARN) of the destination resource. See the Lambda Developer Guide for acceptable resource types and associated IAM permissions.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "destination_config" {
  description = "(Optional) Configuration block with destination configuration. See below for details."
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
output "qualifier" {
  description = "(Optional) Lambda Function published version, $LATEST, or Lambda Alias name.destination_config Configuration Block~> strongNOTE: At least one of on_failure or on_success must be configured when using this configuration block, otherwise remove it completely to prevent perpetual differences in Terraform runs."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.qualifier
}
output "destination" {
  description = "(Required) Amazon Resource Name (ARN) of the destination resource. See the Lambda Developer Guide for acceptable resource types and associated IAM permissions.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.destination
}
output "destination_config" {
  description = "(Optional) Configuration block with destination configuration. See below for details."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.destination_config
}
output "function_name" {
  description = "(Required) Name or Amazon Resource Name (ARN) of the Lambda Function, omitting any version or alias qualifier."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.function_name
}
output "maximum_event_age_in_seconds" {
  description = "(Optional) Maximum age of a request that Lambda sends to a function for processing in seconds. Valid values between 60 and 21600."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.maximum_event_age_in_seconds
}
output "maximum_retry_attempts" {
  description = "(Optional) Maximum number of times to retry when the function returns an error. Valid values between 0 and 2. Defaults to 2."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.maximum_retry_attempts
}
output "on_failure" {
  description = "(Optional) Configuration block with destination configuration for failed asynchronous invocations. See below for details."
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.on_failure
}
output "on_success" {
  description = "(Optional) Configuration block with destination configuration for successful asynchronous invocations. See below for details.destination_config on_failure Configuration Block"
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.on_success
}
output "id" {
  description = "Fully qualified Lambda Function name or Amazon Resource Name (ARN)"
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.id
}
output "id" {
  description = "Fully qualified Lambda Function name or Amazon Resource Name (ARN)"
  value       = aws_lambda_function_event_invoke_config.aws_lambda_function_event_invoke_config.id
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
      "kind/name"                   = "aws_lambda_function_event_invoke_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
