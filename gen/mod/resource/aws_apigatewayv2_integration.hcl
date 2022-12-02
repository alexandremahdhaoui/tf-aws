resource "aws_apigatewayv2_integration" "aws_apigatewayv2_integration" {
  integration_method            = var.integration_method
  passthrough_behavior          = var.passthrough_behavior
  template_selection_expression = var.template_selection_expression
  tls_config                    = var.tls_config
  connection_id                 = var.connection_id
  content_handling_strategy     = var.content_handling_strategy
  description                   = var.description
  mappings                      = var.mappings
  integration_subtype           = var.integration_subtype
  request_parameters            = var.request_parameters
  api_id                        = var.api_id
  connection_type               = var.connection_type
  credentials_arn               = var.credentials_arn
  id                            = var.id
  response_parameters           = var.response_parameters
  server_name_to_verify         = var.server_name_to_verify
  status_code                   = var.status_code
  timeout_milliseconds          = var.timeout_milliseconds
  integration_type              = var.integration_type
  integration_uri               = var.integration_uri
  payload_format_version        = var.payload_format_version
  request_templates             = var.request_templates
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "integration_method" {
  description = "(Optional) Integration's HTTP method. Must be specified if integration_type is not MOCK."
  type        = string
  default     = ""
}
variable "template_selection_expression" {
  description = "(Optional) The template selection expression for the integration."
  type        = string
  default     = ""
}
variable "tls_config" {
  description = "(Optional) TLS configuration for a private integration. Supported only for HTTP APIs.The response_parameters object supports the following:"
  type        = string
  default     = ""
}
variable "connection_id" {
  description = "(Optional) ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length."
  type        = string
  default     = ""
}
variable "content_handling_strategy" {
  description = "(Optional) How to handle response payload content type conversions. Valid values: CONVERT_TO_BINARY, CONVERT_TO_TEXT. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the integration."
  type        = string
  default     = ""
}
variable "mappings" {
  description = "(Required) Key-value map. The key of this map identifies the location of the request parameter to change, and how to change it. The corresponding value specifies the new data for the parameter.\nSee the Amazon API Gateway Developer Guide for details.The tls_config object supports the following:"
  type        = string
}
variable "passthrough_behavior" {
  description = "(Optional) Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the request_templatesWHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER. Default is WHEN_NO_MATCH. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "request_parameters" {
  description = "(Optional) For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.\nFor HTTP APIs with a specified integration_subtype, a key-value map specifying parameters that are passed to AWS_PROXYintegration_subtypeAmazon API Gateway Developer Guide for details."
  type        = string
  default     = ""
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "connection_type" {
  description = "(Optional) Type of the network connection to the integration endpoint. Valid values: INTERNET, VPC_LINK. Default is INTERNET."
  type        = string
  default     = ""
}
variable "credentials_arn" {
  description = "(Optional) Credentials required for the integration, if any."
  type        = string
  default     = ""
}
variable "id" {
  description = "Integration identifier."
  type        = string
}
variable "integration_subtype" {
  description = "(Optional) AWS service action to invoke. Supported only for HTTP APIs when integration_type is AWS_PROXY. See the AWS service integration reference documentation for supported values. Must be between 1 and 128 characters in length."
  type        = string
  default     = ""
}
variable "server_name_to_verify" {
  description = "(Optional) If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "status_code" {
  description = "(Required) HTTP status code in the range 200-599."
  type        = string
}
variable "timeout_milliseconds" {
  description = ""
  type        = string
}
variable "integration_type" {
  description = "AWS (supported only for WebSocket APIs), AWS_PROXY, HTTP (supported only for WebSocket APIs), HTTP_PROXY, MOCK (supported only for WebSocket APIs). For an HTTP API private integration, use HTTP_PROXY."
  type        = string
}
variable "integration_uri" {
  description = "(Optional) URI of the Lambda function for a Lambda proxy integration, when integration_type is AWS_PROXYHTTP integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service."
  type        = string
  default     = ""
}
variable "payload_format_version" {
  description = "(Optional) The format of the payload sent to an integration. Valid values: 1.0, 2.0. Default is 1.0."
  type        = string
  default     = ""
}
variable "request_templates" {
  description = "(Optional) Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "response_parameters" {
  description = "(Optional) Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs."
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
output "connection_type" {
  description = "(Optional) Type of the network connection to the integration endpoint. Valid values: INTERNET, VPC_LINK. Default is INTERNET."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.connection_type
}
output "credentials_arn" {
  description = "(Optional) Credentials required for the integration, if any."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.credentials_arn
}
output "id" {
  description = "Integration identifier."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.id
}
output "integration_subtype" {
  description = "(Optional) AWS service action to invoke. Supported only for HTTP APIs when integration_type is AWS_PROXY. See the AWS service integration reference documentation for supported values. Must be between 1 and 128 characters in length."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.integration_subtype
}
output "request_parameters" {
  description = "(Optional) For WebSocket APIs, a key-value map specifying request parameters that are passed from the method request to the backend.\nFor HTTP APIs with a specified integration_subtype, a key-value map specifying parameters that are passed to AWS_PROXYintegration_subtypeAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.request_parameters
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.api_id
}
output "integration_uri" {
  description = "(Optional) URI of the Lambda function for a Lambda proxy integration, when integration_type is AWS_PROXYHTTP integration, specify a fully-qualified URL. For an HTTP API private integration, specify the ARN of an Application Load Balancer listener, Network Load Balancer listener, or AWS Cloud Map service."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.integration_uri
}
output "payload_format_version" {
  description = "(Optional) The format of the payload sent to an integration. Valid values: 1.0, 2.0. Default is 1.0."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.payload_format_version
}
output "request_templates" {
  description = "(Optional) Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.request_templates
}
output "response_parameters" {
  description = "(Optional) Mappings to transform the HTTP response from a backend integration before returning the response to clients. Supported only for HTTP APIs."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.response_parameters
}
output "server_name_to_verify" {
  description = "(Optional) If you specify a server name, API Gateway uses it to verify the hostname on the integration's certificate. The server name is also included in the TLS handshake to support Server Name Indication (SNI) or virtual hosting.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.server_name_to_verify
}
output "status_code" {
  description = "(Required) HTTP status code in the range 200-599."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.status_code
}
output "timeout_milliseconds" {
  description = ""
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.timeout_milliseconds
}
output "integration_type" {
  description = "AWS (supported only for WebSocket APIs), AWS_PROXY, HTTP (supported only for WebSocket APIs), HTTP_PROXY, MOCK (supported only for WebSocket APIs). For an HTTP API private integration, use HTTP_PROXY."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.integration_type
}
output "integration_method" {
  description = "(Optional) Integration's HTTP method. Must be specified if integration_type is not MOCK."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.integration_method
}
output "content_handling_strategy" {
  description = "(Optional) How to handle response payload content type conversions. Valid values: CONVERT_TO_BINARY, CONVERT_TO_TEXT. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.content_handling_strategy
}
output "description" {
  description = "(Optional) Description of the integration."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.description
}
output "mappings" {
  description = "(Required) Key-value map. The key of this map identifies the location of the request parameter to change, and how to change it. The corresponding value specifies the new data for the parameter.\nSee the Amazon API Gateway Developer Guide for details.The tls_config object supports the following:"
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.mappings
}
output "passthrough_behavior" {
  description = "(Optional) Pass-through behavior for incoming requests based on the Content-Type header in the request, and the available mapping templates specified as the request_templatesWHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER. Default is WHEN_NO_MATCH. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.passthrough_behavior
}
output "template_selection_expression" {
  description = "(Optional) The template selection expression for the integration."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.template_selection_expression
}
output "tls_config" {
  description = "(Optional) TLS configuration for a private integration. Supported only for HTTP APIs.The response_parameters object supports the following:"
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.tls_config
}
output "connection_id" {
  description = "(Optional) ID of the VPC link for a private integration. Supported only for HTTP APIs. Must be between 1 and 1024 characters in length."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.connection_id
}
output "id" {
  description = "Integration identifier."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.id
}
output "integration_response_selection_expression" {
  description = "The integration response selection expression for the integration."
  value       = aws_apigatewayv2_integration.aws_apigatewayv2_integration.integration_response_selection_expression
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
      "kind/name"                   = "aws_apigatewayv2_integration"
      "kind/version"                = "v0.1.0"
    }
  }
}
