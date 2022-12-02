resource "aws_appsync_resolver" "aws_appsync_resolver" {
  conflict_detection             = var.conflict_detection
  lambda_conflict_handler_arn    = var.lambda_conflict_handler_arn
  pipeline_config                = var.pipeline_config
  response_template              = var.response_template
  caching_keys                   = var.caching_keys
  kind                           = var.kind
  max_batch_size                 = var.max_batch_size
  request_template               = var.request_template
  ttl                            = var.ttl
  type                           = var.type
  lambda_conflict_handler_config = var.lambda_conflict_handler_config
  sync_config                    = var.sync_config
  api_id                         = var.api_id
  caching_config                 = var.caching_config
  conflict_handler               = var.conflict_handler
  data_source                    = var.data_source
  field                          = var.field
  functions                      = var.functions
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "caching_keys" {
  description = "(Optional) List of caching key."
  type        = string
  default     = ""
}
variable "kind" {
  description = "  - (Optional) Resolver type. Valid values are UNIT and PIPELINE."
  type        = string
  default     = ""
}
variable "max_batch_size" {
  description = "(Optional) Maximum batching size for a resolver. Valid values are between 0 and 2000."
  type        = string
  default     = ""
}
variable "request_template" {
  description = "(Optional) Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers."
  type        = string
  default     = ""
}
variable "ttl" {
  description = "(Optional) TTL in seconds.Sync Config"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type name from the schema defined in the GraphQL API."
  type        = string
}
variable "lambda_conflict_handler_config" {
  description = "(Optional) Lambda Conflict Handler Config when configuring LAMBDA as the Conflict Handler. See Lambda Conflict Handler Config.Lambda Conflict Handler Config"
  type        = string
  default     = ""
}
variable "sync_config" {
  description = "(Optional) Describes a Sync configuration for a resolver. See Sync Config."
  type        = string
  default     = ""
}
variable "api_id" {
  description = "(Required) API ID for the GraphQL API."
  type        = string
}
variable "caching_config" {
  description = ""
  type        = string
}
variable "conflict_handler" {
  description = "(Optional) Conflict Resolution strategy to perform in the event of a conflict. Valid values are NONE, OPTIMISTIC_CONCURRENCY, AUTOMERGE, and LAMBDA."
  type        = string
  default     = ""
}
variable "data_source" {
  description = "(Optional) Data source name."
  type        = string
  default     = ""
}
variable "field" {
  description = "(Required) Field name from the schema defined in the GraphQL API."
  type        = string
}
variable "functions" {
  description = "(Required) List of Function ID."
  type        = string
}
variable "conflict_detection" {
  description = "(Optional) Conflict Detection strategy to use. Valid values are NONE and VERSION."
  type        = string
  default     = ""
}
variable "lambda_conflict_handler_arn" {
  description = "(Optional) ARN for the Lambda function to use as the Conflict Handler.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "pipeline_config" {
  description = ""
  type        = string
}
variable "response_template" {
  description = "(Optional) Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers."
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
output "conflict_detection" {
  description = "(Optional) Conflict Detection strategy to use. Valid values are NONE and VERSION."
  value       = aws_appsync_resolver.aws_appsync_resolver.conflict_detection
}
output "lambda_conflict_handler_arn" {
  description = "(Optional) ARN for the Lambda function to use as the Conflict Handler.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appsync_resolver.aws_appsync_resolver.lambda_conflict_handler_arn
}
output "pipeline_config" {
  description = ""
  value       = aws_appsync_resolver.aws_appsync_resolver.pipeline_config
}
output "response_template" {
  description = "(Optional) Response mapping template for UNIT resolver or 'after mapping template' for PIPELINE resolver. Required for non-Lambda resolvers."
  value       = aws_appsync_resolver.aws_appsync_resolver.response_template
}
output "type" {
  description = "(Required) Type name from the schema defined in the GraphQL API."
  value       = aws_appsync_resolver.aws_appsync_resolver.type
}
output "caching_keys" {
  description = "(Optional) List of caching key."
  value       = aws_appsync_resolver.aws_appsync_resolver.caching_keys
}
output "kind" {
  description = "  - (Optional) Resolver type. Valid values are UNIT and PIPELINE."
  value       = aws_appsync_resolver.aws_appsync_resolver.kind
}
output "max_batch_size" {
  description = "(Optional) Maximum batching size for a resolver. Valid values are between 0 and 2000."
  value       = aws_appsync_resolver.aws_appsync_resolver.max_batch_size
}
output "request_template" {
  description = "(Optional) Request mapping template for UNIT resolver or 'before mapping template' for PIPELINE resolver. Required for non-Lambda resolvers."
  value       = aws_appsync_resolver.aws_appsync_resolver.request_template
}
output "ttl" {
  description = "(Optional) TTL in seconds.Sync Config"
  value       = aws_appsync_resolver.aws_appsync_resolver.ttl
}
output "functions" {
  description = "(Required) List of Function ID."
  value       = aws_appsync_resolver.aws_appsync_resolver.functions
}
output "lambda_conflict_handler_config" {
  description = "(Optional) Lambda Conflict Handler Config when configuring LAMBDA as the Conflict Handler. See Lambda Conflict Handler Config.Lambda Conflict Handler Config"
  value       = aws_appsync_resolver.aws_appsync_resolver.lambda_conflict_handler_config
}
output "sync_config" {
  description = "(Optional) Describes a Sync configuration for a resolver. See Sync Config."
  value       = aws_appsync_resolver.aws_appsync_resolver.sync_config
}
output "api_id" {
  description = "(Required) API ID for the GraphQL API."
  value       = aws_appsync_resolver.aws_appsync_resolver.api_id
}
output "caching_config" {
  description = ""
  value       = aws_appsync_resolver.aws_appsync_resolver.caching_config
}
output "conflict_handler" {
  description = "(Optional) Conflict Resolution strategy to perform in the event of a conflict. Valid values are NONE, OPTIMISTIC_CONCURRENCY, AUTOMERGE, and LAMBDA."
  value       = aws_appsync_resolver.aws_appsync_resolver.conflict_handler
}
output "data_source" {
  description = "(Optional) Data source name."
  value       = aws_appsync_resolver.aws_appsync_resolver.data_source
}
output "field" {
  description = "(Required) Field name from the schema defined in the GraphQL API."
  value       = aws_appsync_resolver.aws_appsync_resolver.field
}
output "arn" {
  description = "ARN"
  value       = aws_appsync_resolver.aws_appsync_resolver.arn
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
      "kind/name"                   = "aws_appsync_resolver"
      "kind/version"                = "v0.1.0"
    }
  }
}
