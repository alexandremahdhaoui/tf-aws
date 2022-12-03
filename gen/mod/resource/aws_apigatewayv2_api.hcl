resource "aws_apigatewayv2_api" "aws_apigatewayv2_api" {
  description                  = var.description
  execution_arn                = var.execution_arn
  route_selection_expression   = var.route_selection_expression
  tags                         = var.tags
  allow_credentials            = var.allow_credentials
  allow_methods                = var.allow_methods
  body                         = var.body
  api_key_selection_expression = var.api_key_selection_expression
  aws_apigatewayv2_route       = var.aws_apigatewayv2_route
  credentials_arn              = var.credentials_arn
  disable_execute_api_endpoint = var.disable_execute_api_endpoint
  id                           = var.id
  allow_headers                = var.allow_headers
  allow_origins                = var.allow_origins
  api_endpoint                 = var.api_endpoint
  route_key                    = var.route_key
  name                         = var.name
  protocol_type                = var.protocol_type
  target                       = var.target
  aws_apigatewayv2_integration = var.aws_apigatewayv2_integration
  cors_configuration           = var.cors_configuration
  fail_on_warnings             = var.fail_on_warnings
  version                      = var.version
  arn                          = var.arn
  expose_headers               = var.expose_headers
  max_age                      = var.max_age
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the API."
  type        = string
}
variable "expose_headers" {
  description = "(Optional) Set of exposed HTTP headers."
  type        = string
  default     = ""
}
variable "max_age" {
  description = "(Optional) Number of seconds that the browser should cache preflight request results.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) Version identifier for the API. Must be between 1 and 64 characters in length."
  type        = string
  default     = ""
}
variable "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  type        = string
}
variable "route_selection_expression" {
  description = "(Optional) The route selection expression$request.method $request.path."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the API. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "allow_credentials" {
  description = "(Optional) Whether credentials are included in the CORS request."
  type        = string
  default     = ""
}
variable "allow_methods" {
  description = "(Optional) Set of allowed HTTP methods."
  type        = string
  default     = ""
}
variable "body" {
  description = "(Optional) An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the API. Must be less than or equal to 1024 characters in length."
  type        = string
  default     = ""
}
variable "aws_apigatewayv2_route" {
  description = "Further more, the name, description, cors_configuration, tags and version fields should be specified in the Terraform configuration and the values will override any values specified in the OpenAPI document.The cors_configuration object supports the following:"
  type        = string
}
variable "credentials_arn" {
  description = "(Optional) Part of emquick create. Specifies any credentials required for the integration. Applicable for HTTP APIs."
  type        = string
  default     = ""
}
variable "disable_execute_api_endpoint" {
  description = "(Optional) Whether clients can invoke the API by using the default execute-api{api_id}.execute-api.{region}.amazonaws.com endpoint"
  type        = string
  default     = ""
}
variable "id" {
  description = "API identifier."
  type        = string
}
variable "allow_headers" {
  description = "(Optional) Set of allowed HTTP headers."
  type        = string
  default     = ""
}
variable "allow_origins" {
  description = "(Optional) Set of allowed origins."
  type        = string
  default     = ""
}
variable "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  type        = string
}
variable "api_key_selection_expression" {
  description = "(Optional) An API key selection expression$context.authorizer.usageIdentifierKey, $request.header.x-api-key. Defaults to $request.header.x-api-key"
  type        = string
  default     = ""
}
variable "route_key" {
  description = "(Optional) Part of emquick create. Specifies any route key. Applicable for HTTP APIs."
  type        = string
  default     = ""
}
variable "protocol_type" {
  description = "(Required) API protocol. Valid values: HTTP, WEBSOCKET."
  type        = string
}
variable "target" {
  description = "(Optional) Part of emquick createHTTP_PROXY or AWS_PROXY, respectively. Applicable for HTTP APIs."
  type        = string
  default     = ""
}
variable "aws_apigatewayv2_integration" {
  description = ""
  type        = string
}
variable "cors_configuration" {
  description = "(Optional) Cross-origin resource sharing (CORS) configuration. Applicable for HTTP APIs."
  type        = string
  default     = ""
}
variable "fail_on_warnings" {
  description = "(Optional) Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to false. Applicable for HTTP APIs.strongNote: If the body argument is provided, the OpenAPI specification will be used to configure the integrations and route for the HTTP API. If this argument is provided, the following resources should not be managed as separate ones, as updates may cause manual resource updates to be overwritten:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the API. Must be less than or equal to 128 characters in length."
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
output "version" {
  description = "(Optional) Version identifier for the API. Must be between 1 and 64 characters in length."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.version
}
output "arn" {
  description = "ARN of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.arn
}
output "expose_headers" {
  description = "(Optional) Set of exposed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.expose_headers
}
output "max_age" {
  description = "(Optional) Number of seconds that the browser should cache preflight request results.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.max_age
}
output "description" {
  description = "(Optional) Description of the API. Must be less than or equal to 1024 characters in length."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.description
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.execution_arn
}
output "route_selection_expression" {
  description = "(Optional) The route selection expression$request.method $request.path."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.route_selection_expression
}
output "tags" {
  description = "(Optional) Map of tags to assign to the API. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.tags
}
output "allow_credentials" {
  description = "(Optional) Whether credentials are included in the CORS request."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_credentials
}
output "allow_methods" {
  description = "(Optional) Set of allowed HTTP methods."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_methods
}
output "body" {
  description = "(Optional) An OpenAPI specification that defines the set of routes and integrations to create as part of the HTTP APIs. Supported only for HTTP APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.body
}
output "api_key_selection_expression" {
  description = "(Optional) An API key selection expression$context.authorizer.usageIdentifierKey, $request.header.x-api-key. Defaults to $request.header.x-api-key"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_key_selection_expression
}
output "aws_apigatewayv2_route" {
  description = "Further more, the name, description, cors_configuration, tags and version fields should be specified in the Terraform configuration and the values will override any values specified in the OpenAPI document.The cors_configuration object supports the following:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.aws_apigatewayv2_route
}
output "credentials_arn" {
  description = "(Optional) Part of emquick create. Specifies any credentials required for the integration. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.credentials_arn
}
output "disable_execute_api_endpoint" {
  description = "(Optional) Whether clients can invoke the API by using the default execute-api{api_id}.execute-api.{region}.amazonaws.com endpoint"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.disable_execute_api_endpoint
}
output "id" {
  description = "API identifier."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.id
}
output "allow_headers" {
  description = "(Optional) Set of allowed HTTP headers."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_headers
}
output "allow_origins" {
  description = "(Optional) Set of allowed origins."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.allow_origins
}
output "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_endpoint
}
output "route_key" {
  description = "(Optional) Part of emquick create. Specifies any route key. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.route_key
}
output "name" {
  description = "(Required) Name of the API. Must be less than or equal to 128 characters in length."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.name
}
output "protocol_type" {
  description = "(Required) API protocol. Valid values: HTTP, WEBSOCKET."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.protocol_type
}
output "target" {
  description = "(Optional) Part of emquick createHTTP_PROXY or AWS_PROXY, respectively. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.target
}
output "aws_apigatewayv2_integration" {
  description = ""
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.aws_apigatewayv2_integration
}
output "cors_configuration" {
  description = "(Optional) Cross-origin resource sharing (CORS) configuration. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.cors_configuration
}
output "fail_on_warnings" {
  description = "(Optional) Whether warnings should return an error while API Gateway is creating or updating the resource using an OpenAPI specification. Defaults to false. Applicable for HTTP APIs.strongNote: If the body argument is provided, the OpenAPI specification will be used to configure the integrations and route for the HTTP API. If this argument is provided, the following resources should not be managed as separate ones, as updates may cause manual resource updates to be overwritten:"
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.fail_on_warnings
}
output "arn" {
  description = "ARN of the API."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.arn
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.execution_arn
}
output "id" {
  description = "API identifier."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.tags_all
}
output "api_endpoint" {
  description = "URI of the API, of the form https://{api-id}.execute-api.{region}.amazonaws.com for HTTP APIs and wss://{api-id}.execute-api.{region}.amazonaws.com for WebSocket APIs."
  value       = aws_apigatewayv2_api.aws_apigatewayv2_api.api_endpoint
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
      "kind/name"                   = "aws_apigatewayv2_api"
      "kind/version"                = "v0.1.0"
    }
  }
}
