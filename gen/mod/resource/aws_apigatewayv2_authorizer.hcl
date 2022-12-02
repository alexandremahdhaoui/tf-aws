resource "aws_apigatewayv2_authorizer" "aws_apigatewayv2_authorizer" {
  jwt_configuration                 = var.jwt_configuration
  name                              = var.name
  api_id                            = var.api_id
  audience                          = var.audience
  authorizer_credentials_arn        = var.authorizer_credentials_arn
  authorizer_uri                    = var.authorizer_uri
  enable_simple_responses           = var.enable_simple_responses
  authorizer_payload_format_version = var.authorizer_payload_format_version
  authorizer_result_ttl_in_seconds  = var.authorizer_result_ttl_in_seconds
  authorizer_type                   = var.authorizer_type
  identity_sources                  = var.identity_sources
  issuer                            = var.issuer
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "identity_sources" {
  description = "REQUESTJWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests."
  type        = string
}
variable "issuer" {
  description = "(Optional) Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws_cognito_user_pool resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "authorizer_payload_format_version" {
  description = "1.0, 2.0."
  type        = string
}
variable "authorizer_result_ttl_in_seconds" {
  description = "300"
  type        = string
}
variable "authorizer_type" {
  description = "(Required) Authorizer type. Valid values: JWT, REQUESTREQUESTJWT to use JSON Web Tokens."
  type        = string
}
variable "authorizer_uri" {
  description = "(Optional) Authorizer's Uniform Resource Identifier (URI).\nFor REQUEST authorizers this must be a well-formed Lambda function URI, such as the invoke_arn attribute of the aws_lambda_functionREQUEST authorizers. Must be between 1 and 2048 characters in length."
  type        = string
  default     = ""
}
variable "enable_simple_responses" {
  description = "(Optional) Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.\nSupported only for HTTP APIs."
  type        = string
  default     = ""
}
variable "jwt_configuration" {
  description = "(Optional) Configuration of a JWT authorizer. Required for the JWTThe jwt_configuration object supports the following:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the authorizer. Must be between 1 and 128 characters in length."
  type        = string
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "audience" {
  description = "(Optional) List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list."
  type        = string
  default     = ""
}
variable "authorizer_credentials_arn" {
  description = "(Optional) Required credentials as an IAM role for API Gateway to invoke the authorizer.\nSupported only for REQUEST authorizers."
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
output "authorizer_credentials_arn" {
  description = "(Optional) Required credentials as an IAM role for API Gateway to invoke the authorizer.\nSupported only for REQUEST authorizers."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.authorizer_credentials_arn
}
output "authorizer_uri" {
  description = "(Optional) Authorizer's Uniform Resource Identifier (URI).\nFor REQUEST authorizers this must be a well-formed Lambda function URI, such as the invoke_arn attribute of the aws_lambda_functionREQUEST authorizers. Must be between 1 and 2048 characters in length."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.authorizer_uri
}
output "enable_simple_responses" {
  description = "(Optional) Whether a Lambda authorizer returns a response in a simple format. If enabled, the Lambda authorizer can return a boolean value instead of an IAM policy.\nSupported only for HTTP APIs."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.enable_simple_responses
}
output "jwt_configuration" {
  description = "(Optional) Configuration of a JWT authorizer. Required for the JWTThe jwt_configuration object supports the following:"
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.jwt_configuration
}
output "name" {
  description = "(Required) Name of the authorizer. Must be between 1 and 128 characters in length."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.name
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.api_id
}
output "audience" {
  description = "(Optional) List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.audience
}
output "authorizer_type" {
  description = "(Required) Authorizer type. Valid values: JWT, REQUESTREQUESTJWT to use JSON Web Tokens."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.authorizer_type
}
output "identity_sources" {
  description = "REQUESTJWT authorizers the single entry specifies where to extract the JSON Web Token (JWT) from inbound requests."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.identity_sources
}
output "issuer" {
  description = "(Optional) Base domain of the identity provider that issues JSON Web Tokens, such as the endpoint attribute of the aws_cognito_user_pool resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.issuer
}
output "authorizer_payload_format_version" {
  description = "1.0, 2.0."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.authorizer_payload_format_version
}
output "authorizer_result_ttl_in_seconds" {
  description = "300"
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.authorizer_result_ttl_in_seconds
}
output "id" {
  description = "Authorizer identifier."
  value       = aws_apigatewayv2_authorizer.aws_apigatewayv2_authorizer.id
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
      "kind/name"                   = "aws_apigatewayv2_authorizer"
      "kind/version"                = "v0.1.0"
    }
  }
}
