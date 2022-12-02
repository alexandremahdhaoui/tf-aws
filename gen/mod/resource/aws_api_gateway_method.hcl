resource "aws_api_gateway_method" "aws_api_gateway_method" {
  authorization_scopes = var.authorization_scopes
  http_method          = var.http_method
  resource_id          = var.resource_id
  operation_name       = var.operation_name
  request_models       = var.request_models
  request_validator_id = var.request_validator_id
  rest_api_id          = var.rest_api_id
  api_key_required     = var.api_key_required
  authorization        = var.authorization
  authorizer_id        = var.authorizer_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "operation_name" {
  description = "(Optional) Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb."
  type        = string
  default     = ""
}
variable "request_models" {
  description = "application/jsonError, Empty (built-in models) or aws_api_gateway_model's name."
  type        = string
}
variable "request_validator_id" {
  description = "(Optional) ID of a aws_api_gateway_request_validator"
  type        = string
  default     = ""
}
variable "rest_api_id" {
  description = "(Required) ID of the associated REST API"
  type        = string
}
variable "api_key_required" {
  description = "(Optional) Specify if the method requires an API key"
  type        = string
  default     = ""
}
variable "authorization" {
  description = "(Required) Type of authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS)"
  type        = string
}
variable "authorizer_id" {
  description = "(Optional) Authorizer id to be used when the authorization is CUSTOM or COGNITO_USER_POOLS"
  type        = string
  default     = ""
}
variable "authorization_scopes" {
  description = "(Optional) Authorization scopes used when the authorization is COGNITO_USER_POOLS"
  type        = string
  default     = ""
}
variable "http_method" {
  description = "(Required) HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  type        = string
}
variable "resource_id" {
  description = "(Required) API resource ID"
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
output "resource_id" {
  description = "(Required) API resource ID"
  value       = aws_api_gateway_method.aws_api_gateway_method.resource_id
}
output "authorization_scopes" {
  description = "(Optional) Authorization scopes used when the authorization is COGNITO_USER_POOLS"
  value       = aws_api_gateway_method.aws_api_gateway_method.authorization_scopes
}
output "http_method" {
  description = "(Required) HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)"
  value       = aws_api_gateway_method.aws_api_gateway_method.http_method
}
output "authorizer_id" {
  description = "(Optional) Authorizer id to be used when the authorization is CUSTOM or COGNITO_USER_POOLS"
  value       = aws_api_gateway_method.aws_api_gateway_method.authorizer_id
}
output "operation_name" {
  description = "(Optional) Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb."
  value       = aws_api_gateway_method.aws_api_gateway_method.operation_name
}
output "request_models" {
  description = "application/jsonError, Empty (built-in models) or aws_api_gateway_model's name."
  value       = aws_api_gateway_method.aws_api_gateway_method.request_models
}
output "request_validator_id" {
  description = "(Optional) ID of a aws_api_gateway_request_validator"
  value       = aws_api_gateway_method.aws_api_gateway_method.request_validator_id
}
output "rest_api_id" {
  description = "(Required) ID of the associated REST API"
  value       = aws_api_gateway_method.aws_api_gateway_method.rest_api_id
}
output "api_key_required" {
  description = "(Optional) Specify if the method requires an API key"
  value       = aws_api_gateway_method.aws_api_gateway_method.api_key_required
}
output "authorization" {
  description = "(Required) Type of authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS)"
  value       = aws_api_gateway_method.aws_api_gateway_method.authorization
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
      "kind/name"                   = "aws_api_gateway_method"
      "kind/version"                = "v0.1.0"
    }
  }
}
