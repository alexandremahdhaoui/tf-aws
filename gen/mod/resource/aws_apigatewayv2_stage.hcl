resource "aws_apigatewayv2_stage" "aws_apigatewayv2_stage" {
  auto_deploy              = var.auto_deploy
  data_trace_enabled       = var.data_trace_enabled
  description              = var.description
  route_settings           = var.route_settings
  invoke_url               = var.invoke_url
  name                     = var.name
  stage_variables          = var.stage_variables
  access_log_settings      = var.access_log_settings
  api_id                   = var.api_id
  default_route_settings   = var.default_route_settings
  execution_arn            = var.execution_arn
  id                       = var.id
  throttling_burst_limit   = var.throttling_burst_limit
  throttling_rate_limit    = var.throttling_rate_limit
  destination_arn          = var.destination_arn
  detailed_metrics_enabled = var.detailed_metrics_enabled
  format                   = var.format
  route_key                = var.route_key
  arn                      = var.arn
  client_certificate_id    = var.client_certificate_id
  deployment_id            = var.deployment_id
  logging_level            = var.logging_level
  tags                     = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the stage."
  type        = string
}
variable "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage. Use the aws_api_gateway_client_certificate"
  type        = string
  default     = ""
}
variable "deployment_id" {
  description = "(Optional) Deployment identifier of the stage. Use the aws_apigatewayv2_deployment resource to configure a deployment."
  type        = string
  default     = ""
}
variable "logging_level" {
  description = "ERROR, INFO, OFF. Defaults to OFF. Supported only for WebSocket APIs. Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the stage. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The access_log_settings object supports the following:"
  type        = string
  default     = ""
}
variable "auto_deploy" {
  description = "(Optional) Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs."
  type        = string
  default     = ""
}
variable "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.\nDefaults to false. Supported only for WebSocket APIs."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description for the stage. Must be less than or equal to 1024 characters in length."
  type        = string
  default     = ""
}
variable "route_settings" {
  description = "(Optional) Route settings for the stage."
  type        = string
  default     = ""
}
variable "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  type        = string
}
variable "name" {
  description = "(Required) Name of the stage. Must be between 1 and 128 characters in length."
  type        = string
}
variable "stage_variables" {
  description = "(Optional) Map that defines the stage variables for the stage."
  type        = string
  default     = ""
}
variable "access_log_settings" {
  description = "(Optional) Settings for logging access in this stage.\nUse the aws_api_gateway_account resource to configure permissions for CloudWatch Logging."
  type        = string
  default     = ""
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "default_route_settings" {
  description = "(Optional) Default route settings for the stage."
  type        = string
  default     = ""
}
variable "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  type        = string
}
variable "id" {
  description = "Stage identifier."
  type        = string
}
variable "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit for the route."
  type        = string
  default     = ""
}
variable "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit for the route.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group to receive access logs. Any trailing :* is trimmed from the ARN."
  type        = string
}
variable "detailed_metrics_enabled" {
  description = "(Optional) Whether detailed metrics are enabled for the route. Defaults to false."
  type        = string
  default     = ""
}
variable "format" {
  description = "(Required) Single line format of the access logs of data, as specified by selected $context variables.The default_route_settings object supports the following:"
  type        = string
}
variable "route_key" {
  description = "(Required) Route key."
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
output "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group to receive access logs. Any trailing :* is trimmed from the ARN."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.destination_arn
}
output "detailed_metrics_enabled" {
  description = "(Optional) Whether detailed metrics are enabled for the route. Defaults to false."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.detailed_metrics_enabled
}
output "format" {
  description = "(Required) Single line format of the access logs of data, as specified by selected $context variables.The default_route_settings object supports the following:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.format
}
output "route_key" {
  description = "(Required) Route key."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.route_key
}
output "arn" {
  description = "ARN of the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.arn
}
output "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage. Use the aws_api_gateway_client_certificate"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.client_certificate_id
}
output "deployment_id" {
  description = "(Optional) Deployment identifier of the stage. Use the aws_apigatewayv2_deployment resource to configure a deployment."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.deployment_id
}
output "logging_level" {
  description = "ERROR, INFO, OFF. Defaults to OFF. Supported only for WebSocket APIs. Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.logging_level
}
output "tags" {
  description = "(Optional) Map of tags to assign to the stage. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The access_log_settings object supports the following:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.tags
}
output "auto_deploy" {
  description = "(Optional) Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.auto_deploy
}
output "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.\nDefaults to false. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.data_trace_enabled
}
output "description" {
  description = "(Optional) Description for the stage. Must be less than or equal to 1024 characters in length."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.description
}
output "route_settings" {
  description = "(Optional) Route settings for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.route_settings
}
output "name" {
  description = "(Required) Name of the stage. Must be between 1 and 128 characters in length."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.name
}
output "stage_variables" {
  description = "(Optional) Map that defines the stage variables for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.stage_variables
}
output "access_log_settings" {
  description = "(Optional) Settings for logging access in this stage.\nUse the aws_api_gateway_account resource to configure permissions for CloudWatch Logging."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.access_log_settings
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.api_id
}
output "default_route_settings" {
  description = "(Optional) Default route settings for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.default_route_settings
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.execution_arn
}
output "id" {
  description = "Stage identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.id
}
output "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.invoke_url
}
output "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit for the route."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.throttling_burst_limit
}
output "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit for the route.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.throttling_rate_limit
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.tags_all
}
output "arn" {
  description = "ARN of the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.arn
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.execution_arn
}
output "id" {
  description = "Stage identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.id
}
output "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.invoke_url
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
      "kind/name"                   = "aws_apigatewayv2_stage"
      "kind/version"                = "v0.1.0"
    }
  }
}
