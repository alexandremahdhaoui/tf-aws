resource "aws_ses_event_destination" "aws_ses_event_destination" {
  sns_destination        = var.sns_destination
  value_source           = var.value_source
  default_value          = var.default_value
  enabled                = var.enabled
  id                     = var.id
  stream_arn             = var.stream_arn
  cloudwatch_destination = var.cloudwatch_destination
  role_arn               = var.role_arn
  configuration_set_name = var.configuration_set_name
  dimension_name         = var.dimension_name
  kinesis_destination    = var.kinesis_destination
  matching_types         = var.matching_types
  name                   = var.name
  topic_arn              = var.topic_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "sns_destination" {
  description = "(Optional) Send the events to an SNS Topic destination~> strongNOTE: You can specify \"cloudwatch_destination\" or \"kinesis_destination\" but not bothcloudwatch_destination Argument Reference"
  type        = string
}
variable "value_source" {
  description = "(Required) The source for the value. May be any of \"messageTag\", \"emailHeader\" or \"linkTag\".kinesis_destination Argument Reference"
  type        = string
}
variable "stream_arn" {
  description = "(Required) The ARN of the Kinesis Stream"
  type        = string
}
variable "default_value" {
  description = "(Required) The default value for the event"
  type        = string
}
variable "enabled" {
  description = "(Optional) If true, the event destination will be enabled"
  type        = string
}
variable "id" {
  description = "The SES event destination name."
  type        = string
}
variable "cloudwatch_destination" {
  description = "(Optional) CloudWatch destination for the events"
  type        = string
}
variable "role_arn" {
  description = "(Required) The ARN of the role that has permissions to access the Kinesis Streamsns_destination Argument Reference"
  type        = string
}
variable "matching_types" {
  description = "(Required) A list of matching types. May be any of \"send\", \"reject\", \"bounce\", \"complaint\", \"delivery\", \"open\", \"click\", or \"renderingFailure\"."
  type        = string
}
variable "name" {
  description = "(Required) The name of the event destination"
  type        = string
}
variable "topic_arn" {
  description = "(Required) The ARN of the SNS topicIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "configuration_set_name" {
  description = "(Required) The name of the configuration set"
  type        = string
}
variable "dimension_name" {
  description = "(Required) The name for the dimension"
  type        = string
}
variable "kinesis_destination" {
  description = "(Optional) Send the events to a kinesis firehose destination"
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
output "sns_destination" {
  description = "(Optional) Send the events to an SNS Topic destination~> strongNOTE: You can specify \"cloudwatch_destination\" or \"kinesis_destination\" but not bothcloudwatch_destination Argument Reference"
  value       = aws_ses_event_destination.aws_ses_event_destination.sns_destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value_source" {
  description = "(Required) The source for the value. May be any of \"messageTag\", \"emailHeader\" or \"linkTag\".kinesis_destination Argument Reference"
  value       = aws_ses_event_destination.aws_ses_event_destination.value_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_value" {
  description = "(Required) The default value for the event"
  value       = aws_ses_event_destination.aws_ses_event_destination.default_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) If true, the event destination will be enabled"
  value       = aws_ses_event_destination.aws_ses_event_destination.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The SES event destination name."
  value       = aws_ses_event_destination.aws_ses_event_destination.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_arn" {
  description = "(Required) The ARN of the Kinesis Stream"
  value       = aws_ses_event_destination.aws_ses_event_destination.stream_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_destination" {
  description = "(Optional) CloudWatch destination for the events"
  value       = aws_ses_event_destination.aws_ses_event_destination.cloudwatch_destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The ARN of the role that has permissions to access the Kinesis Streamsns_destination Argument Reference"
  value       = aws_ses_event_destination.aws_ses_event_destination.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic_arn" {
  description = "(Required) The ARN of the SNS topicIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ses_event_destination.aws_ses_event_destination.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_set_name" {
  description = "(Required) The name of the configuration set"
  value       = aws_ses_event_destination.aws_ses_event_destination.configuration_set_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension_name" {
  description = "(Required) The name for the dimension"
  value       = aws_ses_event_destination.aws_ses_event_destination.dimension_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_destination" {
  description = "(Optional) Send the events to a kinesis firehose destination"
  value       = aws_ses_event_destination.aws_ses_event_destination.kinesis_destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "matching_types" {
  description = "(Required) A list of matching types. May be any of \"send\", \"reject\", \"bounce\", \"complaint\", \"delivery\", \"open\", \"click\", or \"renderingFailure\"."
  value       = aws_ses_event_destination.aws_ses_event_destination.matching_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the event destination"
  value       = aws_ses_event_destination.aws_ses_event_destination.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The SES event destination ARN."
  value       = aws_ses_event_destination.aws_ses_event_destination.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The SES event destination name."
  value       = aws_ses_event_destination.aws_ses_event_destination.id
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
      "kind/name"                   = "aws_ses_event_destination"
      "kind/version"                = "v0.1.0"
    }
  }
}
