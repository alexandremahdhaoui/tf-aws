resource "aws_api_gateway_method_settings" "aws_api_gateway_method_settings" {
  cache_data_encrypted                    = var.cache_data_encrypted
  cache_ttl_in_seconds                    = var.cache_ttl_in_seconds
  logging_level                           = var.logging_level
  settings                                = var.settings
  throttling_burst_limit                  = var.throttling_burst_limit
  caching_enabled                         = var.caching_enabled
  data_trace_enabled                      = var.data_trace_enabled
  method_path                             = var.method_path
  metrics_enabled                         = var.metrics_enabled
  require_authorization_for_cache_control = var.require_authorization_for_cache_control
  rest_api_id                             = var.rest_api_id
  stage_name                              = var.stage_name
  throttling_rate_limit                   = var.throttling_rate_limit
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "caching_enabled" {
  description = "(Optional) Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached."
  type        = string
  default     = ""
}
variable "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs."
  type        = string
  default     = ""
}
variable "method_path" {
  description = "(Required) Method path defined as {resource_path}/{http_method} for an individual method override, or */* for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., trimprefix(aws_api_gateway_resource.example.path, \"/\"))."
  type        = string
}
variable "metrics_enabled" {
  description = "(Optional) Whether Amazon CloudWatch metrics are enabled for this method."
  type        = string
  default     = ""
}
variable "require_authorization_for_cache_control" {
  description = "(Optional) Whether authorization is required for a cache invalidation request."
  type        = string
  default     = ""
}
variable "rest_api_id" {
  description = "(Required) ID of the REST API"
  type        = string
}
variable "stage_name" {
  description = "(Required) Name of the stage"
  type        = string
}
variable "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit. Default: -1 (throttling disabled)."
  type        = string
  default     = ""
}
variable "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit. Default: -1 (throttling disabled)."
  type        = string
  default     = ""
}
variable "cache_data_encrypted" {
  description = "(Optional) Whether the cached responses are encrypted."
  type        = string
  default     = ""
}
variable "cache_ttl_in_seconds" {
  description = "(Optional) Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached."
  type        = string
  default     = ""
}
variable "logging_level" {
  description = "(Optional) Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO."
  type        = string
  default     = ""
}
variable "settings" {
  description = "(Required) Settings block, see below.settings"
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
output "stage_name" {
  description = "(Required) Name of the stage"
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.stage_name
}
output "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit. Default: -1 (throttling disabled)."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.throttling_burst_limit
}
output "caching_enabled" {
  description = "(Optional) Whether responses should be cached and returned for requests. A cache cluster must be enabled on the stage for responses to be cached."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.caching_enabled
}
output "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for this method, which effects the log entries pushed to Amazon CloudWatch Logs."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.data_trace_enabled
}
output "method_path" {
  description = "(Required) Method path defined as {resource_path}/{http_method} for an individual method override, or */* for overriding all methods in the stage. Ensure to trim any leading forward slashes in the path (e.g., trimprefix(aws_api_gateway_resource.example.path, \"/\"))."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.method_path
}
output "metrics_enabled" {
  description = "(Optional) Whether Amazon CloudWatch metrics are enabled for this method."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.metrics_enabled
}
output "require_authorization_for_cache_control" {
  description = "(Optional) Whether authorization is required for a cache invalidation request."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.require_authorization_for_cache_control
}
output "rest_api_id" {
  description = "(Required) ID of the REST API"
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.rest_api_id
}
output "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit. Default: -1 (throttling disabled)."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.throttling_rate_limit
}
output "cache_data_encrypted" {
  description = "(Optional) Whether the cached responses are encrypted."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.cache_data_encrypted
}
output "cache_ttl_in_seconds" {
  description = "(Optional) Time to live (TTL), in seconds, for cached responses. The higher the TTL, the longer the response will be cached."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.cache_ttl_in_seconds
}
output "logging_level" {
  description = "(Optional) Logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO."
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.logging_level
}
output "settings" {
  description = "(Required) Settings block, see below.settings"
  value       = aws_api_gateway_method_settings.aws_api_gateway_method_settings.settings
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
      "kind/name"                   = "aws_api_gateway_method_settings"
      "kind/version"                = "v0.1.0"
    }
  }
}
