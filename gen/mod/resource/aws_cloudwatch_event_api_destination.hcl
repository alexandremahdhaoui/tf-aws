resource "aws_cloudwatch_event_api_destination" "aws_cloudwatch_event_api_destination" {
  name                             = var.name
  connection_arn                   = var.connection_arn
  description                      = var.description
  http_method                      = var.http_method
  invocation_endpoint              = var.invocation_endpoint
  invocation_rate_limit_per_second = var.invocation_rate_limit_per_second
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "invocation_endpoint" {
  description = "(Required) URL endpoint to invoke as a target. This could be a valid endpoint generated by a partner service. You can include \"*\" as path parameters wildcards to be set from the Target HttpParameters."
  type        = string
}
variable "invocation_rate_limit_per_second" {
  description = "(Optional) Enter the maximum number of invocations per second to allow for this destination. Enter a value greater than 0 (default 300)."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the new API Destination. The name must be unique for your account. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_."
  type        = string
}
variable "connection_arn" {
  description = "(Required) ARN of the EventBridge Connection to use for the API Destination.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description" {
  description = "(Optional) The description of the new API Destination. Maximum of 512 characters."
  type        = string
  default     = ""
}
variable "http_method" {
  description = "(Required) Select the HTTP method used for the invocation endpoint, such as GET, POST, PUT, etc."
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
output "connection_arn" {
  description = "(Required) ARN of the EventBridge Connection to use for the API Destination.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.connection_arn
}
output "description" {
  description = "(Optional) The description of the new API Destination. Maximum of 512 characters."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.description
}
output "http_method" {
  description = "(Required) Select the HTTP method used for the invocation endpoint, such as GET, POST, PUT, etc."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.http_method
}
output "invocation_endpoint" {
  description = "(Required) URL endpoint to invoke as a target. This could be a valid endpoint generated by a partner service. You can include \"*\" as path parameters wildcards to be set from the Target HttpParameters."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.invocation_endpoint
}
output "invocation_rate_limit_per_second" {
  description = "(Optional) Enter the maximum number of invocations per second to allow for this destination. Enter a value greater than 0 (default 300)."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.invocation_rate_limit_per_second
}
output "name" {
  description = "(Required) The name of the new API Destination. The name must be unique for your account. Maximum of 64 characters consisting of numbers, lower/upper case letters, .,-,_."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the event API Destination."
  value       = aws_cloudwatch_event_api_destination.aws_cloudwatch_event_api_destination.arn
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
      "kind/name"                   = "aws_cloudwatch_event_api_destination"
      "kind/version"                = "v0.1.0"
    }
  }
}
