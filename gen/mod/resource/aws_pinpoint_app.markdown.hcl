resource "aws_pinpoint_app.markdown" "aws_pinpoint_app.markdown" {
  application_id       = var.application_id
  daily                = var.daily
  limits               = var.limits
  messages_per_second  = var.messages_per_second
  quiet_time           = var.quiet_time
  start                = var.start
  lambda_function_name = var.lambda_function_name
  name_prefix          = var.name_prefix
  end                  = var.end
  mode                 = var.mode
  name                 = var.name
  tags                 = var.tags
  web_url              = var.web_url
  arn                  = var.arn
  campaign_hook        = var.campaign_hook
  maximum_duration     = var.maximum_duration
  total                = var.total
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "application_id" {
  description = "The Application ID of the Pinpoint App."
  type        = string
}
variable "daily" {
  description = "(Optional) The maximum number of messages that the campaign can send daily."
  type        = string
  default     = ""
}
variable "limits" {
  description = "(Optional) The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own"
  type        = string
  default     = ""
}
variable "messages_per_second" {
  description = "(Optional) The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000."
  type        = string
  default     = ""
}
variable "quiet_time" {
  description = "(Optional) The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own"
  type        = string
  default     = ""
}
variable "start" {
  description = "(Optional) The default start time for quiet time in ISO 8601 format. Required if end is setIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "lambda_function_name" {
  description = "(Optional) Lambda function name or ARN to be called for delivery. Conflicts with web_url"
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional) The name of the Pinpoint application. Conflicts with name"
  type        = string
  default     = ""
}
variable "end" {
  description = "(Optional) The default end time for quiet time in ISO 8601 format. Required if start is set"
  type        = string
  default     = ""
}
variable "mode" {
  description = "(Required if lambda_function_name or web_url are provided) What mode Lambda should be invoked in. Valid values for this parameter are DELIVERY, FILTER."
  type        = string
}
variable "name" {
  description = "(Optional) The application name. By default generated by Terraform"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.campaign_hook supports the following:"
  type        = string
  default     = ""
}
variable "web_url" {
  description = "(Optional) Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with lambda_function_namelimits supports the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the PinPoint Application"
  type        = string
}
variable "campaign_hook" {
  description = "(Optional) Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign"
  type        = string
  default     = ""
}
variable "maximum_duration" {
  description = "(Optional) The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60."
  type        = string
  default     = ""
}
variable "total" {
  description = "(Optional) The maximum total number of messages that the campaign can send.quiet_time supports the following:"
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
output "start" {
  description = "(Optional) The default start time for quiet time in ISO 8601 format. Required if end is setIn addition to all arguments above, the following attributes are exported:"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.start
}
output "application_id" {
  description = "The Application ID of the Pinpoint App."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.application_id
}
output "daily" {
  description = "(Optional) The maximum number of messages that the campaign can send daily."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.daily
}
output "limits" {
  description = "(Optional) The default campaign limits for the app. These limits apply to each campaign for the app, unless the campaign overrides the default with limits of its own"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.limits
}
output "messages_per_second" {
  description = "(Optional) The number of messages that the campaign can send per second. The minimum value is 50, and the maximum is 20000."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.messages_per_second
}
output "quiet_time" {
  description = "(Optional) The default quiet time for the app. Each campaign for this app sends no messages during this time unless the campaign overrides the default with a quiet time of its own"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.quiet_time
}
output "lambda_function_name" {
  description = "(Optional) Lambda function name or ARN to be called for delivery. Conflicts with web_url"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.lambda_function_name
}
output "name_prefix" {
  description = "(Optional) The name of the Pinpoint application. Conflicts with name"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.name_prefix
}
output "end" {
  description = "(Optional) The default end time for quiet time in ISO 8601 format. Required if start is set"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.end
}
output "mode" {
  description = "(Required if lambda_function_name or web_url are provided) What mode Lambda should be invoked in. Valid values for this parameter are DELIVERY, FILTER."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.mode
}
output "name" {
  description = "(Optional) The application name. By default generated by Terraform"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.campaign_hook supports the following:"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.tags
}
output "web_url" {
  description = "(Optional) Web URL to call for hook. If the URL has authentication specified it will be added as authentication to the request. Conflicts with lambda_function_namelimits supports the following:"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.web_url
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the PinPoint Application"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.arn
}
output "campaign_hook" {
  description = "(Optional) Specifies settings for invoking an AWS Lambda function that customizes a segment for a campaign"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.campaign_hook
}
output "maximum_duration" {
  description = "(Optional) The length of time (in seconds) that the campaign can run before it ends and message deliveries stop. This duration begins at the scheduled start time for the campaign. The minimum value is 60."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.maximum_duration
}
output "total" {
  description = "(Optional) The maximum total number of messages that the campaign can send.quiet_time supports the following:"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.total
}
output "application_id" {
  description = "The Application ID of the Pinpoint App."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.application_id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the PinPoint Application"
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_pinpoint_app.markdown.aws_pinpoint_app.markdown.tags_all
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
      "kind/name"                   = "aws_pinpoint_app.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
