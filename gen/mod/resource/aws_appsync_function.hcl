resource "aws_appsync_function" "aws_appsync_function" {
  function_version               = var.function_version
  max_batch_size                 = var.max_batch_size
  name                           = var.name
  request_mapping_template       = var.request_mapping_template
  id                             = var.id
  lambda_conflict_handler_config = var.lambda_conflict_handler_config
  lambda_conflict_handler_arn    = var.lambda_conflict_handler_arn
  response_mapping_template      = var.response_mapping_template
  conflict_handler               = var.conflict_handler
  data_source                    = var.data_source
  conflict_detection             = var.conflict_detection
  description                    = var.description
  sync_config                    = var.sync_config
  api_id                         = var.api_id
  arn                            = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "(Optional) Function description."
  type        = string
  default     = ""
}
variable "sync_config" {
  description = "(Optional) Describes a Sync configuration for a resolver. See Sync Config."
  type        = string
  default     = ""
}
variable "api_id" {
  description = "(Required) ID of the associated AppSync API."
  type        = string
}
variable "arn" {
  description = "ARN of the Function object."
  type        = string
}
variable "conflict_detection" {
  description = "(Optional) Conflict Detection strategy to use. Valid values are NONE and VERSION."
  type        = string
  default     = ""
}
variable "function_version" {
  description = "(Optional) Version of the request mapping template. Currently the supported value is 2018-05-29.Sync Config"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Function name. The function name does not have to be unique."
  type        = string
}
variable "request_mapping_template" {
  description = "(Required) Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template."
  type        = string
}
variable "id" {
  description = "API Function ID (Formatted as ApiId-FunctionId)"
  type        = string
}
variable "lambda_conflict_handler_config" {
  description = "(Optional) Lambda Conflict Handler Config when configuring LAMBDA as the Conflict Handler. See Lambda Conflict Handler Config.Lambda Conflict Handler Config"
  type        = string
  default     = ""
}
variable "max_batch_size" {
  description = "(Optional) Maximum batching size for a resolver. Valid values are between 0 and 2000."
  type        = string
  default     = ""
}
variable "response_mapping_template" {
  description = "(Required) Function response mapping template."
  type        = string
}
variable "conflict_handler" {
  description = "(Optional) Conflict Resolution strategy to perform in the event of a conflict. Valid values are NONE, OPTIMISTIC_CONCURRENCY, AUTOMERGE, and LAMBDA."
  type        = string
  default     = ""
}
variable "data_source" {
  description = "(Required) Function data source name."
  type        = string
}
variable "lambda_conflict_handler_arn" {
  description = "(Optional) ARN for the Lambda function to use as the Conflict Handler.In addition to all arguments above, the following attributes are exported:"
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
output "lambda_conflict_handler_config" {
  description = "(Optional) Lambda Conflict Handler Config when configuring LAMBDA as the Conflict Handler. See Lambda Conflict Handler Config.Lambda Conflict Handler Config"
  value       = aws_appsync_function.aws_appsync_function.lambda_conflict_handler_config
}
output "max_batch_size" {
  description = "(Optional) Maximum batching size for a resolver. Valid values are between 0 and 2000."
  value       = aws_appsync_function.aws_appsync_function.max_batch_size
}
output "name" {
  description = "(Required) Function name. The function name does not have to be unique."
  value       = aws_appsync_function.aws_appsync_function.name
}
output "request_mapping_template" {
  description = "(Required) Function request mapping template. Functions support only the 2018-05-29 version of the request mapping template."
  value       = aws_appsync_function.aws_appsync_function.request_mapping_template
}
output "id" {
  description = "API Function ID (Formatted as ApiId-FunctionId)"
  value       = aws_appsync_function.aws_appsync_function.id
}
output "data_source" {
  description = "(Required) Function data source name."
  value       = aws_appsync_function.aws_appsync_function.data_source
}
output "lambda_conflict_handler_arn" {
  description = "(Optional) ARN for the Lambda function to use as the Conflict Handler.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appsync_function.aws_appsync_function.lambda_conflict_handler_arn
}
output "response_mapping_template" {
  description = "(Required) Function response mapping template."
  value       = aws_appsync_function.aws_appsync_function.response_mapping_template
}
output "conflict_handler" {
  description = "(Optional) Conflict Resolution strategy to perform in the event of a conflict. Valid values are NONE, OPTIMISTIC_CONCURRENCY, AUTOMERGE, and LAMBDA."
  value       = aws_appsync_function.aws_appsync_function.conflict_handler
}
output "arn" {
  description = "ARN of the Function object."
  value       = aws_appsync_function.aws_appsync_function.arn
}
output "conflict_detection" {
  description = "(Optional) Conflict Detection strategy to use. Valid values are NONE and VERSION."
  value       = aws_appsync_function.aws_appsync_function.conflict_detection
}
output "description" {
  description = "(Optional) Function description."
  value       = aws_appsync_function.aws_appsync_function.description
}
output "sync_config" {
  description = "(Optional) Describes a Sync configuration for a resolver. See Sync Config."
  value       = aws_appsync_function.aws_appsync_function.sync_config
}
output "api_id" {
  description = "(Required) ID of the associated AppSync API."
  value       = aws_appsync_function.aws_appsync_function.api_id
}
output "function_version" {
  description = "(Optional) Version of the request mapping template. Currently the supported value is 2018-05-29.Sync Config"
  value       = aws_appsync_function.aws_appsync_function.function_version
}
output "function_id" {
  description = "Unique ID representing the Function object."
  value       = aws_appsync_function.aws_appsync_function.function_id
}
output "id" {
  description = "API Function ID (Formatted as ApiId-FunctionId)"
  value       = aws_appsync_function.aws_appsync_function.id
}
output "arn" {
  description = "ARN of the Function object."
  value       = aws_appsync_function.aws_appsync_function.arn
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
      "kind/name"                   = "aws_appsync_function"
      "kind/version"                = "v0.1.0"
    }
  }
}
