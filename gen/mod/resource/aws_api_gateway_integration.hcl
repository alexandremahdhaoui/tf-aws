resource "aws_api_gateway_integration" "aws_api_gateway_integration" {
  connection_id           = var.connection_id
  integration_http_method = var.integration_http_method
  timeout_milliseconds    = var.timeout_milliseconds
  cache_key_parameters    = var.cache_key_parameters
  connection_type         = var.connection_type
  rest_api_id             = var.rest_api_id
  tls_config              = var.tls_config
  passthrough_behavior    = var.passthrough_behavior
  type                    = var.type
  resource_id             = var.resource_id
  uri                     = var.uri
  cache_namespace         = var.cache_namespace
  content_handling        = var.content_handling
  credentials             = var.credentials
  http_method             = var.http_method
  request_parameters      = var.request_parameters
  request_templates       = var.request_templates
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "request_parameters" {
  description = "(Optional) Map of request query string parameters and headers that should be passed to the backend responder.\nFor example: request_parameters = { \"integration.request.header.X-Some-Other-Header\" = \"method.request.header.X-Some-Header\" }"
  type        = string
  default     = ""
}
variable "request_templates" {
  description = "(Optional) Map of the integration's request templates."
  type        = string
  default     = ""
}
variable "resource_id" {
  description = "(Required) API resource ID."
  type        = string
}
variable "uri" {
  description = "(Optional) Input's URI. strongRequired if type is AWS, AWS_PROXY, HTTP or HTTP_PROXYarn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}. region, subdomain and servicearn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:012345678901:function:my-func/invocations. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation."
  type        = string
  default     = ""
}
variable "cache_namespace" {
  description = "(Optional) Integration's cache namespace."
  type        = string
  default     = ""
}
variable "content_handling" {
  description = "(Optional) How to handle request payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through."
  type        = string
  default     = ""
}
variable "credentials" {
  description = "(Optional) Credentials required for the integration. For AWS integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::\\*:user/\\*."
  type        = string
  default     = ""
}
variable "http_method" {
  description = "(Required) HTTP method (GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  type        = string
}
variable "connection_id" {
  description = "(Optional) ID of the VpcLink used for the integration. strongRequired if connection_type is VPC_LINK"
  type        = string
  default     = ""
}
variable "integration_http_method" {
  description = "GET, POST, PUT, DELETE, HEAD, OPTIONs, ANY, PATCHstrongRequired if type is AWS, AWS_PROXY, HTTP or HTTP_PROXYAWScan only be invoked via POST."
  type        = string
}
variable "timeout_milliseconds" {
  description = "(Optional) Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds."
  type        = string
  default     = ""
}
variable "cache_key_parameters" {
  description = "(Optional) List of cache key parameters for the integration."
  type        = string
  default     = ""
}
variable "connection_type" {
  description = "(Optional) Integration input's connectionType. Valid values are INTERNET (default for connections through the public routable internet), and VPC_LINK (for private connections between API Gateway and a network load balancer in a VPC)."
  type        = string
  default     = ""
}
variable "rest_api_id" {
  description = "(Required) ID of the associated REST API."
  type        = string
}
variable "tls_config" {
  description = "(Optional) TLS configuration. See below.tls_config Configuration BlockThe tls_config configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "passthrough_behavior" {
  description = "(Optional) Integration passthrough behavior (WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER).  strongRequired if request_templates is used."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Integration input's type. Valid values are HTTP (for HTTP backends), MOCK (not calling any real backend), AWS (for AWS services), AWS_PROXY (for Lambda proxy integration) and HTTP_PROXY (for HTTP proxy integration). An HTTP or HTTP_PROXY integration with a connection_type of VPC_LINK is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC."
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
output "cache_key_parameters" {
  description = "(Optional) List of cache key parameters for the integration."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.cache_key_parameters
}
output "connection_type" {
  description = "(Optional) Integration input's connectionType. Valid values are INTERNET (default for connections through the public routable internet), and VPC_LINK (for private connections between API Gateway and a network load balancer in a VPC)."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.connection_type
}
output "rest_api_id" {
  description = "(Required) ID of the associated REST API."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.rest_api_id
}
output "tls_config" {
  description = "(Optional) TLS configuration. See below.tls_config Configuration BlockThe tls_config configuration block supports the following arguments:"
  value       = aws_api_gateway_integration.aws_api_gateway_integration.tls_config
}
output "passthrough_behavior" {
  description = "(Optional) Integration passthrough behavior (WHEN_NO_MATCH, WHEN_NO_TEMPLATES, NEVER).  strongRequired if request_templates is used."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.passthrough_behavior
}
output "type" {
  description = "(Required) Integration input's type. Valid values are HTTP (for HTTP backends), MOCK (not calling any real backend), AWS (for AWS services), AWS_PROXY (for Lambda proxy integration) and HTTP_PROXY (for HTTP proxy integration). An HTTP or HTTP_PROXY integration with a connection_type of VPC_LINK is referred to as a private integration and uses a VpcLink to connect API Gateway to a network load balancer of a VPC."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.type
}
output "request_parameters" {
  description = "(Optional) Map of request query string parameters and headers that should be passed to the backend responder.\nFor example: request_parameters = { \"integration.request.header.X-Some-Other-Header\" = \"method.request.header.X-Some-Header\" }"
  value       = aws_api_gateway_integration.aws_api_gateway_integration.request_parameters
}
output "request_templates" {
  description = "(Optional) Map of the integration's request templates."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.request_templates
}
output "resource_id" {
  description = "(Required) API resource ID."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.resource_id
}
output "uri" {
  description = "(Optional) Input's URI. strongRequired if type is AWS, AWS_PROXY, HTTP or HTTP_PROXYarn:aws:apigateway:{region}:{subdomain.service|service}:{path|action}/{service_api}. region, subdomain and servicearn:aws:apigateway:eu-west-1:lambda:path/2015-03-31/functions/arn:aws:lambda:eu-west-1:012345678901:function:my-func/invocations. For private integrations, the URI parameter is not used for routing requests to your endpoint, but is used for setting the Host header and for certificate validation."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.uri
}
output "cache_namespace" {
  description = "(Optional) Integration's cache namespace."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.cache_namespace
}
output "content_handling" {
  description = "(Optional) How to handle request payload content type conversions. Supported values are CONVERT_TO_BINARY and CONVERT_TO_TEXT. If this property is not defined, the request payload will be passed through from the method request to integration request without modification, provided that the passthroughBehaviors is configured to support payload pass-through."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.content_handling
}
output "credentials" {
  description = "(Optional) Credentials required for the integration. For AWS integrations, 2 options are available. To specify an IAM Role for Amazon API Gateway to assume, use the role's ARN. To require that the caller's identity be passed through from the request, specify the string arn:aws:iam::\\*:user/\\*."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.credentials
}
output "http_method" {
  description = "(Required) HTTP method (GET, POST, PUT, DELETE, HEAD, OPTION, ANY"
  value       = aws_api_gateway_integration.aws_api_gateway_integration.http_method
}
output "connection_id" {
  description = "(Optional) ID of the VpcLink used for the integration. strongRequired if connection_type is VPC_LINK"
  value       = aws_api_gateway_integration.aws_api_gateway_integration.connection_id
}
output "integration_http_method" {
  description = "GET, POST, PUT, DELETE, HEAD, OPTIONs, ANY, PATCHstrongRequired if type is AWS, AWS_PROXY, HTTP or HTTP_PROXYAWScan only be invoked via POST."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.integration_http_method
}
output "timeout_milliseconds" {
  description = "(Optional) Custom timeout between 50 and 29,000 milliseconds. The default value is 29,000 milliseconds."
  value       = aws_api_gateway_integration.aws_api_gateway_integration.timeout_milliseconds
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
      "kind/name"                   = "aws_api_gateway_integration"
      "kind/version"                = "v0.1.0"
    }
  }
}
