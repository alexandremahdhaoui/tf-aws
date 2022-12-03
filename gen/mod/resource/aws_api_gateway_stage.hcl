resource "aws_api_gateway_stage" "aws_api_gateway_stage" {
  client_certificate_id    = var.client_certificate_id
  description              = var.description
  execution_arn            = var.execution_arn
  percent_traffic          = var.percent_traffic
  tags_all                 = var.tags_all
  xray_tracing_enabled     = var.xray_tracing_enabled
  arn                      = var.arn
  canary_settings          = var.canary_settings
  id                       = var.id
  tags                     = var.tags
  variables                = var.variables
  destination_arn          = var.destination_arn
  documentation_version    = var.documentation_version
  stage_name               = var.stage_name
  stage_variable_overrides = var.stage_variable_overrides
  use_stage_cache          = var.use_stage_cache
  format                   = var.format
  invoke_url               = var.invoke_url
  cache_cluster_size       = var.cache_cluster_size
  deployment_id            = var.deployment_id
  rest_api_id              = var.rest_api_id
  access_log_settings      = var.access_log_settings
  cache_cluster_enabled    = var.cache_cluster_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with amazon-apigateway-. Automatically removes trailing :* if present."
  type        = string
}
variable "documentation_version" {
  description = "(Optional) Version of the associated API documentation"
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the stage"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "variables" {
  description = "(Optional) Map that defines the stage variables"
  type        = string
  default     = ""
}
variable "format" {
  description = "documentationCanary Settings"
  type        = string
}
variable "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  type        = string
}
variable "stage_name" {
  description = "(Required) Name of the stage"
  type        = string
}
variable "stage_variable_overrides" {
  description = "(Optional) Map of overridden stage variables (including new variables) for the canary deployment."
  type        = string
  default     = ""
}
variable "use_stage_cache" {
  description = "(Optional) Whether the canary deployment uses the stage cache. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "access_log_settings" {
  description = "(Optional) Enables access logs for the API stage. See Access Log Settings below."
  type        = string
  default     = ""
}
variable "cache_cluster_enabled" {
  description = "(Optional) Whether a cache cluster is enabled for the stage"
  type        = string
  default     = ""
}
variable "cache_cluster_size" {
  description = "(Optional) Size of the cache cluster for the stage, if enabled. Allowed values include 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237."
  type        = string
  default     = ""
}
variable "deployment_id" {
  description = "(Required) ID of the deployment that the stage points to"
  type        = string
}
variable "rest_api_id" {
  description = "(Required) ID of the associated REST API"
  type        = string
}
variable "percent_traffic" {
  description = "(Optional) Percent 0.0100.0 of traffic to divert to the canary deployment."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "xray_tracing_enabled" {
  description = "(Optional) Whether active tracing with X-ray is enabled. Defaults to false.Access Log Settings"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN"
  type        = string
}
variable "canary_settings" {
  description = "(Optional) Configuration settings of a canary deployment. See Canary Settings below."
  type        = string
  default     = ""
}
variable "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the stage."
  type        = string
  default     = ""
}
variable "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
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
output "cache_cluster_size" {
  description = "(Optional) Size of the cache cluster for the stage, if enabled. Allowed values include 0.5, 1.6, 6.1, 13.5, 28.4, 58.2, 118 and 237."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.cache_cluster_size
}
output "deployment_id" {
  description = "(Required) ID of the deployment that the stage points to"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.deployment_id
}
output "rest_api_id" {
  description = "(Required) ID of the associated REST API"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.rest_api_id
}
output "access_log_settings" {
  description = "(Optional) Enables access logs for the API stage. See Access Log Settings below."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.access_log_settings
}
output "cache_cluster_enabled" {
  description = "(Optional) Whether a cache cluster is enabled for the stage"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.cache_cluster_enabled
}
output "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.client_certificate_id
}
output "description" {
  description = "(Optional) Description of the stage."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.description
}
output "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.execution_arn
}
output "percent_traffic" {
  description = "(Optional) Percent 0.0100.0 of traffic to divert to the canary deployment."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.percent_traffic
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.tags_all
}
output "xray_tracing_enabled" {
  description = "(Optional) Whether active tracing with X-ray is enabled. Defaults to false.Access Log Settings"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.xray_tracing_enabled
}
output "arn" {
  description = "ARN"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.arn
}
output "canary_settings" {
  description = "(Optional) Configuration settings of a canary deployment. See Canary Settings below."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.canary_settings
}
output "id" {
  description = "ID of the stage"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.id
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.tags
}
output "variables" {
  description = "(Optional) Map that defines the stage variables"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.variables
}
output "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group or Kinesis Data Firehose delivery stream to receive access logs. If you specify a Kinesis Data Firehose delivery stream, the stream name must begin with amazon-apigateway-. Automatically removes trailing :* if present."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.destination_arn
}
output "documentation_version" {
  description = "(Optional) Version of the associated API documentation"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.documentation_version
}
output "stage_name" {
  description = "(Required) Name of the stage"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.stage_name
}
output "stage_variable_overrides" {
  description = "(Optional) Map of overridden stage variables (including new variables) for the canary deployment."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.stage_variable_overrides
}
output "use_stage_cache" {
  description = "(Optional) Whether the canary deployment uses the stage cache. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.use_stage_cache
}
output "format" {
  description = "documentationCanary Settings"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.format
}
output "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.invoke_url
}
output "web_acl_arn" {
  description = "ARN of the WebAcl associated with the Stage."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.web_acl_arn
}
output "arn" {
  description = "ARN"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.arn
}
output "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.execution_arn
}
output "id" {
  description = "ID of the stage"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.id
}
output "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  value       = aws_api_gateway_stage.aws_api_gateway_stage.invoke_url
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_api_gateway_stage.aws_api_gateway_stage.tags_all
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
      "kind/name"                   = "aws_api_gateway_stage"
      "kind/version"                = "v0.1.0"
    }
  }
}
