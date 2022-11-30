resource "aws_apigatewayv2_stage" "aws_apigatewayv2_stage" {
  name                     = var.name
  route_key                = var.route_key
  stage_variables          = var.stage_variables
  throttling_rate_limit    = var.throttling_rate_limit
  deployment_id            = var.deployment_id
  id                       = var.id
  format                   = var.format
  invoke_url               = var.invoke_url
  access_log_settings      = var.access_log_settings
  execution_arn            = var.execution_arn
  description              = var.description
  destination_arn          = var.destination_arn
  logging_level            = var.logging_level
  route_settings           = var.route_settings
  tags                     = var.tags
  throttling_burst_limit   = var.throttling_burst_limit
  arn                      = var.arn
  auto_deploy              = var.auto_deploy
  data_trace_enabled       = var.data_trace_enabled
  default_route_settings   = var.default_route_settings
  detailed_metrics_enabled = var.detailed_metrics_enabled
  api_id                   = var.api_id
  client_certificate_id    = var.client_certificate_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "format" {
  description = "(Required) Single line format of the access logs of data, as specified by selected $context variables.The default_route_settings object supports the following:"
  type        = string
}
variable "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  type        = string
}
variable "access_log_settings" {
  description = "(Optional) Settings for logging access in this stage.\nUse the aws_api_gateway_account resource to configure permissions for CloudWatch Logging."
  type        = string
}
variable "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  type        = string
}
variable "description" {
  description = "(Optional) Description for the stage. Must be less than or equal to 1024 characters in length."
  type        = string
}
variable "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group to receive access logs. Any trailing :* is trimmed from the ARN."
  type        = string
}
variable "logging_level" {
  description = "ERROR, INFO, OFF. Defaults to OFF. Supported only for WebSocket APIs. Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
}
variable "route_settings" {
  description = "(Optional) Route settings for the stage."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the stage. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The access_log_settings object supports the following:"
  type        = string
}
variable "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit for the route."
  type        = string
}
variable "arn" {
  description = "ARN of the stage."
  type        = string
}
variable "auto_deploy" {
  description = "(Optional) Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs."
  type        = string
}
variable "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.\nDefaults to false. Supported only for WebSocket APIs."
  type        = string
}
variable "default_route_settings" {
  description = "(Optional) Default route settings for the stage."
  type        = string
}
variable "detailed_metrics_enabled" {
  description = "(Optional) Whether detailed metrics are enabled for the route. Defaults to false."
  type        = string
}
variable "api_id" {
  description = "(Required) API identifier."
  type        = string
}
variable "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage. Use the aws_api_gateway_client_certificate"
  type        = string
}
variable "name" {
  description = "(Required) Name of the stage. Must be between 1 and 128 characters in length."
  type        = string
}
variable "route_key" {
  description = "(Required) Route key."
  type        = string
}
variable "stage_variables" {
  description = "(Optional) Map that defines the stage variables for the stage."
  type        = string
}
variable "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit for the route.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "deployment_id" {
  description = "(Optional) Deployment identifier of the stage. Use the aws_apigatewayv2_deployment resource to configure a deployment."
  type        = string
}
variable "id" {
  description = "Stage identifier."
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
output "deployment_id" {
  description = "(Optional) Deployment identifier of the stage. Use the aws_apigatewayv2_deployment resource to configure a deployment."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.deployment_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Stage identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the stage. Must be between 1 and 128 characters in length."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_key" {
  description = "(Required) Route key."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.route_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stage_variables" {
  description = "(Optional) Map that defines the stage variables for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.stage_variables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throttling_rate_limit" {
  description = "(Optional) Throttling rate limit for the route.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.throttling_rate_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_log_settings" {
  description = "(Optional) Settings for logging access in this stage.\nUse the aws_api_gateway_account resource to configure permissions for CloudWatch Logging."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.access_log_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.execution_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "format" {
  description = "(Required) Single line format of the access logs of data, as specified by selected $context variables.The default_route_settings object supports the following:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.invoke_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throttling_burst_limit" {
  description = "(Optional) Throttling burst limit for the route."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.throttling_burst_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_deploy" {
  description = "(Optional) Whether updates to an API automatically trigger a new deployment. Defaults to false. Applicable for HTTP APIs."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.auto_deploy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description for the stage. Must be less than or equal to 1024 characters in length."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_arn" {
  description = "(Required) ARN of the CloudWatch Logs log group to receive access logs. Any trailing :* is trimmed from the ARN."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.destination_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging_level" {
  description = "ERROR, INFO, OFF. Defaults to OFF. Supported only for WebSocket APIs. Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.logging_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_settings" {
  description = "(Optional) Route settings for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.route_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the stage. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The access_log_settings object supports the following:"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "api_id" {
  description = "(Required) API identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.api_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_certificate_id" {
  description = "(Optional) Identifier of a client certificate for the stage. Use the aws_api_gateway_client_certificate"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.client_certificate_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_trace_enabled" {
  description = "(Optional) Whether data trace logging is enabled for the route. Affects the log entries pushed to Amazon CloudWatch Logs.\nDefaults to false. Supported only for WebSocket APIs."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.data_trace_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_route_settings" {
  description = "(Optional) Default route settings for the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.default_route_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "detailed_metrics_enabled" {
  description = "(Optional) Whether detailed metrics are enabled for the route. Defaults to false."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.detailed_metrics_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the stage."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_arn" {
  description = "ARN prefix to be used in an aws_lambda_permission's source_arnaws_iam_policy to authorize access to the @connections APIAmazon API Gateway Developer Guide for details."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.execution_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Stage identifier."
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_url" {
  description = "wss://z4675bid1j.execute-api.eu-west-2.amazonaws.com/example-stage, or https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/"
  value       = aws_apigatewayv2_stage.aws_apigatewayv2_stage.invoke_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
