resource "aws_apigatewayv2_route" "aws_apigatewayv2_route" {
  authorization_type                  = var.authorization_type
  request_models                      = var.request_models
  request_parameter_key               = var.request_parameter_key
  api_key_required                    = var.api_key_required
  authorizer_id                       = var.authorizer_id
  model_selection_expression          = var.model_selection_expression
  api_id                              = var.api_id
  request_parameter                   = var.request_parameter
  route_key                           = var.route_key
  target                              = var.target
  authorization_scopes                = var.authorization_scopes
  operation_name                      = var.operation_name
  required                            = var.required
  route_response_selection_expression = var.route_response_selection_expression
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "api_key_required" {
  description = "(Optional) Boolean whether an API key is required for the route. Defaults to false. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "authorizer_id" {
  description = "(Optional) Identifier of the aws_apigatewayv2_authorizer resource to be associated with this route."
  type        = string
  default     = ""
}
variable "model_selection_expression" {
  description = "(Optional) The model selection expression for the route. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "request_parameter" {
  description = "(Optional) Request parameters for the route. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "route_key" {
  description = "(Required) Route key for the route. For HTTP APIs, the route key can be either $default, or a combination of an HTTP method and resource path, for example, GET /pets."
  type        = string
}
variable "target" {
  description = "(Optional) Target for the route, of the form integrations/emIntegrationID, where emIntegrationID is the identifier of an aws_apigatewayv2_integration resource.The request_parameter object supports the following:"
  type        = string
  default     = ""
}
variable "authorization_scopes" {
  description = "(Optional) Authorization scopes supported by this route. The scopes are used with a JWT authorizer to authorize the method invocation."
  type        = string
  default     = ""
}
variable "operation_name" {
  description = "(Optional) Operation name for the route. Must be between 1 and 64 characters in length."
  type        = string
  default     = ""
}
variable "required" {
  description = "(Required) Boolean whether or not the parameter is required.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "route_response_selection_expression" {
  description = "(Optional) The route response selection expression for the route. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "authorization_type" {
  description = "(Optional) Authorization type for the route.\nFor WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOMNONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOMNONE."
  type        = string
  default     = ""
}
variable "request_models" {
  description = "(Optional) Request models for the route. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "request_parameter_key" {
  description = "(Required) Request parameter key. This is a request data mapping parameter."
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
output "authorization_type" {
  description = "(Optional) Authorization type for the route.\nFor WebSocket APIs, valid values are NONE for open access, AWS_IAM for using AWS IAM permissions, and CUSTOMNONE for open access, JWT for using JSON Web Tokens, AWS_IAM for using AWS IAM permissions, and CUSTOMNONE."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.authorization_type
}
output "request_models" {
  description = "(Optional) Request models for the route. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.request_models
}
output "request_parameter_key" {
  description = "(Required) Request parameter key. This is a request data mapping parameter."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.request_parameter_key
}
output "api_key_required" {
  description = "(Optional) Boolean whether an API key is required for the route. Defaults to false. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.api_key_required
}
output "authorizer_id" {
  description = "(Optional) Identifier of the aws_apigatewayv2_authorizer resource to be associated with this route."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.authorizer_id
}
output "model_selection_expression" {
  description = "(Optional) The model selection expression for the route. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.model_selection_expression
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.api_id
}
output "request_parameter" {
  description = "(Optional) Request parameters for the route. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.request_parameter
}
output "route_key" {
  description = "(Required) Route key for the route. For HTTP APIs, the route key can be either $default, or a combination of an HTTP method and resource path, for example, GET /pets."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.route_key
}
output "target" {
  description = "(Optional) Target for the route, of the form integrations/emIntegrationID, where emIntegrationID is the identifier of an aws_apigatewayv2_integration resource.The request_parameter object supports the following:"
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.target
}
output "authorization_scopes" {
  description = "(Optional) Authorization scopes supported by this route. The scopes are used with a JWT authorizer to authorize the method invocation."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.authorization_scopes
}
output "operation_name" {
  description = "(Optional) Operation name for the route. Must be between 1 and 64 characters in length."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.operation_name
}
output "required" {
  description = "(Required) Boolean whether or not the parameter is required.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.required
}
output "route_response_selection_expression" {
  description = "(Optional) The route response selection expression for the route. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.route_response_selection_expression
}
output "id" {
  description = "Route identifier."
  value       = aws_apigatewayv2_route.aws_apigatewayv2_route.id
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
      "kind/name"                   = "aws_apigatewayv2_route"
      "kind/version"                = "v0.1.0"
    }
  }
}
