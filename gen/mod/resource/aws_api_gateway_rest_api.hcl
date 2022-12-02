resource "aws_api_gateway_rest_api" "aws_api_gateway_rest_api" {
  aws_api_gateway_integration          = var.aws_api_gateway_integration
  aws_api_gateway_model                = var.aws_api_gateway_model
  policy                               = var.policy
  root_resource_id                     = var.root_resource_id
  arn                                  = var.arn
  aws_api_gateway_integration_response = var.aws_api_gateway_integration_response
  execution_arn                        = var.execution_arn
  put_rest_api_mode                    = var.put_rest_api_mode
  vpc_endpoint_ids                     = var.vpc_endpoint_ids
  aws_api_gateway_method_settings      = var.aws_api_gateway_method_settings
  created_date                         = var.created_date
  minimum_compression_size             = var.minimum_compression_size
  parameters                           = var.parameters
  tags                                 = var.tags
  binary_media_types                   = var.binary_media_types
  body                                 = var.body
  aws_api_gateway_method               = var.aws_api_gateway_method
  aws_api_gateway_method_response      = var.aws_api_gateway_method_response
  disable_execute_api_endpoint         = var.disable_execute_api_endpoint
  types                                = var.types
  aws_api_gateway_gateway_response     = var.aws_api_gateway_gateway_response
  name                                 = var.name
  endpoint_configuration               = var.endpoint_configuration
  id                                   = var.id
  api_key_source                       = var.api_key_source
  aws_api_gateway_resource             = var.aws_api_gateway_resource
  description                          = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "put_rest_api_mode" {
  description = "(Optional) Mode of the PutRestApi operation when importing an OpenAPI specification via the body argument (create or update operation). Valid values are merge and overwrite. If unspecificed, defaults to overwrite (for backwards compatibility). This corresponds to the x-amazon-apigateway-put-integration-method extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "vpc_endpoint_ids" {
  description = "(Optional) Set of VPC Endpoint identifiers. It is only supported for PRIVATE endpoint type. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-endpoint-configuration extension vpcEndpointIds property. If the argument value is provided and is different than the OpenAPI value, strongthe argument value will override the OpenAPI value.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN"
  type        = string
}
variable "aws_api_gateway_integration_response" {
  description = ""
  type        = string
}
variable "execution_arn" {
  description = "Execution ARN part to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
  type        = string
}
variable "parameters" {
  description = "(Optional) Map of customizations for importing the specification in the body argument. For example, to exclude DocumentationParts from an imported API, set ignore equal to documentation. Additional documentation, including other parameters such as basepath, can be found in the API Gateway Developer Guide."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongNote: If the body argument is provided, the OpenAPI specification will be used to configure the resources, methods and integrations for the Rest API. If this argument is provided, the following resources should not be managed as separate ones, as updates may cause manual resource updates to be overwritten:"
  type        = string
  default     = ""
}
variable "aws_api_gateway_method_settings" {
  description = ""
  type        = string
}
variable "created_date" {
  description = "Creation date of the REST API"
  type        = string
}
variable "minimum_compression_size" {
  description = "(Optional) Minimum response size to compress for the REST API. Integer between -1 and 10485760 (10MB). Setting a value greater than -1 will enable compression, -1 disables compression (default). If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-minimum-compression-size extension. If the argument value (emexcept -1) is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "body" {
  description = "(Optional) OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any aws_api_gateway_deployment creation. More information about REST API OpenAPI support can be found in the API Gateway Developer Guide."
  type        = string
  default     = ""
}
variable "binary_media_types" {
  description = "(Optional) List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-binary-media-types extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "types" {
  description = "(Required) List of endpoint types. This resource currently only supports managing a single value. Valid values: EDGE, REGIONAL or PRIVATE. If unspecified, defaults to EDGE. Must be declared as REGIONAL in non-Commercial partitions. If set to PRIVATE recommend to set put_rest_api_mode = merge to not cause the endpoints and associated Route53 records to be deleted. Refer to the documentation for more information on the difference between edge-optimized and regional APIs."
  type        = string
}
variable "aws_api_gateway_method" {
  description = ""
  type        = string
}
variable "aws_api_gateway_method_response" {
  description = ""
  type        = string
}
variable "disable_execute_api_endpoint" {
  description = "(Optional) Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to false. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-endpoint-configuration extension disableExecuteApiEndpoint property. If the argument value is true and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "aws_api_gateway_gateway_response" {
  description = ""
  type        = string
}
variable "name" {
  description = "(Required) Name of the REST API. If importing an OpenAPI specification via the body argument, this corresponds to the info.title field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the REST API. If importing an OpenAPI specification via the body argument, this corresponds to the info.description field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "endpoint_configuration" {
  description = "(Optional) Configuration block defining API endpoint configuration including endpoint type. Defined below."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the REST API"
  type        = string
}
variable "api_key_source" {
  description = "(Optional) Source of the API key for requests. Valid values are HEADER (default) and AUTHORIZER. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-api-key-source extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  type        = string
  default     = ""
}
variable "aws_api_gateway_resource" {
  description = ""
  type        = string
}
variable "root_resource_id" {
  description = "Resource ID of the REST API's root"
  type        = string
}
variable "aws_api_gateway_integration" {
  description = ""
  type        = string
}
variable "aws_api_gateway_model" {
  description = "endpoint_configuration"
  type        = string
}
variable "policy" {
  description = "(Optional) JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Terraform will only perform drift detection of its value when present in a configuration. We recommend using the aws_api_gateway_rest_api_policy resource instead. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-policy extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
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
output "aws_api_gateway_method" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_method
}
output "aws_api_gateway_method_response" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_method_response
}
output "disable_execute_api_endpoint" {
  description = "(Optional) Whether clients can invoke your API by using the default execute-api endpoint. By default, clients can invoke your API with the default https://{api_id}.execute-api.{region}.amazonaws.com endpoint. To require that clients use a custom domain name to invoke your API, disable the default endpoint. Defaults to false. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-endpoint-configuration extension disableExecuteApiEndpoint property. If the argument value is true and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.disable_execute_api_endpoint
}
output "types" {
  description = "(Required) List of endpoint types. This resource currently only supports managing a single value. Valid values: EDGE, REGIONAL or PRIVATE. If unspecified, defaults to EDGE. Must be declared as REGIONAL in non-Commercial partitions. If set to PRIVATE recommend to set put_rest_api_mode = merge to not cause the endpoints and associated Route53 records to be deleted. Refer to the documentation for more information on the difference between edge-optimized and regional APIs."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.types
}
output "aws_api_gateway_gateway_response" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_gateway_response
}
output "name" {
  description = "(Required) Name of the REST API. If importing an OpenAPI specification via the body argument, this corresponds to the info.title field. If the argument value is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.name
}
output "id" {
  description = "ID of the REST API"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.id
}
output "api_key_source" {
  description = "(Optional) Source of the API key for requests. Valid values are HEADER (default) and AUTHORIZER. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-api-key-source extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.api_key_source
}
output "aws_api_gateway_resource" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_resource
}
output "description" {
  description = "(Optional) Description of the REST API. If importing an OpenAPI specification via the body argument, this corresponds to the info.description field. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.description
}
output "endpoint_configuration" {
  description = "(Optional) Configuration block defining API endpoint configuration including endpoint type. Defined below."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.endpoint_configuration
}
output "aws_api_gateway_integration" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_integration
}
output "aws_api_gateway_model" {
  description = "endpoint_configuration"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_model
}
output "policy" {
  description = "(Optional) JSON formatted policy document that controls access to the API Gateway. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Terraform will only perform drift detection of its value when present in a configuration. We recommend using the aws_api_gateway_rest_api_policy resource instead. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-policy extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.policy
}
output "root_resource_id" {
  description = "Resource ID of the REST API's root"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.root_resource_id
}
output "arn" {
  description = "ARN"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.arn
}
output "aws_api_gateway_integration_response" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_integration_response
}
output "execution_arn" {
  description = "Execution ARN part to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.execution_arn
}
output "put_rest_api_mode" {
  description = "(Optional) Mode of the PutRestApi operation when importing an OpenAPI specification via the body argument (create or update operation). Valid values are merge and overwrite. If unspecificed, defaults to overwrite (for backwards compatibility). This corresponds to the x-amazon-apigateway-put-integration-method extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.put_rest_api_mode
}
output "vpc_endpoint_ids" {
  description = "(Optional) Set of VPC Endpoint identifiers. It is only supported for PRIVATE endpoint type. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-endpoint-configuration extension vpcEndpointIds property. If the argument value is provided and is different than the OpenAPI value, strongthe argument value will override the OpenAPI value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.vpc_endpoint_ids
}
output "aws_api_gateway_method_settings" {
  description = ""
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.aws_api_gateway_method_settings
}
output "created_date" {
  description = "Creation date of the REST API"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.created_date
}
output "minimum_compression_size" {
  description = "(Optional) Minimum response size to compress for the REST API. Integer between -1 and 10485760 (10MB). Setting a value greater than -1 will enable compression, -1 disables compression (default). If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-minimum-compression-size extension. If the argument value (emexcept -1) is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.minimum_compression_size
}
output "parameters" {
  description = "(Optional) Map of customizations for importing the specification in the body argument. For example, to exclude DocumentationParts from an imported API, set ignore equal to documentation. Additional documentation, including other parameters such as basepath, can be found in the API Gateway Developer Guide."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.parameters
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongNote: If the body argument is provided, the OpenAPI specification will be used to configure the resources, methods and integrations for the Rest API. If this argument is provided, the following resources should not be managed as separate ones, as updates may cause manual resource updates to be overwritten:"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.tags
}
output "binary_media_types" {
  description = "(Optional) List of binary media types supported by the REST API. By default, the REST API supports only UTF-8-encoded text payloads. If importing an OpenAPI specification via the body argument, this corresponds to the x-amazon-apigateway-binary-media-types extension. If the argument value is provided and is different than the OpenAPI value, the argument value will override the OpenAPI value."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.binary_media_types
}
output "body" {
  description = "(Optional) OpenAPI specification that defines the set of routes and integrations to create as part of the REST API. This configuration, and any updates to it, will replace all REST API configuration except values overridden in this resource configuration and other resource updates applied after this resource but before any aws_api_gateway_deployment creation. More information about REST API OpenAPI support can be found in the API Gateway Developer Guide."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.body
}
output "arn" {
  description = "ARN"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.arn
}
output "created_date" {
  description = "Creation date of the REST API"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.created_date
}
output "execution_arn" {
  description = "Execution ARN part to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j, which can be concatenated with allowed stage, method and resource path."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.execution_arn
}
output "id" {
  description = "ID of the REST API"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.id
}
output "root_resource_id" {
  description = "Resource ID of the REST API's root"
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.root_resource_id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_api_gateway_rest_api.aws_api_gateway_rest_api.tags_all
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
      "kind/name"                   = "aws_api_gateway_rest_api"
      "kind/version"                = "v0.1.0"
    }
  }
}
