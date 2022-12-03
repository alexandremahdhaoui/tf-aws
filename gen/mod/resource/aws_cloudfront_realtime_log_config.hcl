resource "aws_cloudfront_realtime_log_config" "aws_cloudfront_realtime_log_config" {
  endpoint              = var.endpoint
  id                    = var.id
  kinesis_stream_config = var.kinesis_stream_config
  name                  = var.name
  sampling_rate         = var.sampling_rate
  stream_arn            = var.stream_arn
  fields                = var.fields
  role_arn              = var.role_arn
  stream_type           = var.stream_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "fields" {
  description = "(Required) The fields that are included in each real-time log record. See the AWS documentation for supported values."
  type        = string
}
variable "role_arn" {
  description = "(Required) The ARN of an IAM roleAWS documentation for more information."
  type        = string
}
variable "stream_type" {
  description = "(Required) The type of data stream where real-time log data is sent. The only valid value is Kinesis.The kinesis_stream_config object supports the following:"
  type        = string
}
variable "name" {
  description = "(Required) The unique name to identify this real-time log configuration."
  type        = string
}
variable "sampling_rate" {
  description = "(Required) The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between 1 and 100, inclusive.The endpoint object supports the following:"
  type        = string
}
variable "stream_arn" {
  description = "(Required) The ARN of the Kinesis data stream.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "endpoint" {
  description = "(Required) The Amazon Kinesis data streams where real-time log data is sent."
  type        = string
}
variable "id" {
  description = "The ID of the CloudFront real-time log configuration."
  type        = string
}
variable "kinesis_stream_config" {
  description = "(Required) The Amazon Kinesis data stream configuration."
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
output "name" {
  description = "(Required) The unique name to identify this real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.name
}
output "sampling_rate" {
  description = "(Required) The sampling rate for this real-time log configuration. The sampling rate determines the percentage of viewer requests that are represented in the real-time log data. An integer between 1 and 100, inclusive.The endpoint object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.sampling_rate
}
output "stream_arn" {
  description = "(Required) The ARN of the Kinesis data stream.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.stream_arn
}
output "endpoint" {
  description = "(Required) The Amazon Kinesis data streams where real-time log data is sent."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.endpoint
}
output "id" {
  description = "The ID of the CloudFront real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.id
}
output "kinesis_stream_config" {
  description = "(Required) The Amazon Kinesis data stream configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.kinesis_stream_config
}
output "fields" {
  description = "(Required) The fields that are included in each real-time log record. See the AWS documentation for supported values."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.fields
}
output "role_arn" {
  description = "(Required) The ARN of an IAM roleAWS documentation for more information."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.role_arn
}
output "stream_type" {
  description = "(Required) The type of data stream where real-time log data is sent. The only valid value is Kinesis.The kinesis_stream_config object supports the following:"
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.stream_type
}
output "arn" {
  description = "The ARN (Amazon Resource Name) of the CloudFront real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.arn
}
output "id" {
  description = "The ID of the CloudFront real-time log configuration."
  value       = aws_cloudfront_realtime_log_config.aws_cloudfront_realtime_log_config.id
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
      "kind/name"                   = "aws_cloudfront_realtime_log_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
