resource "aws_s3_bucket_notification" "aws_s3_bucket_notification" {
  lambda_function_arn = var.lambda_function_arn
  queue               = var.queue
  eventbridge         = var.eventbridge
  filter_prefix       = var.filter_prefix
  filter_suffix       = var.filter_suffix
  id                  = var.id
  lambda_function     = var.lambda_function
  queue_arn           = var.queue_arn
  topic               = var.topic
  topic_arn           = var.topic_arn
  bucket              = var.bucket
  events              = var.events
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter_prefix" {
  description = "(Optional) Object key name prefix."
  type        = string
}
variable "lambda_function_arn" {
  description = "(Required) Lambda function ARN.queue"
  type        = string
}
variable "queue" {
  description = "(Optional) Notification configuration to SQS Queue. See below."
  type        = string
}
variable "eventbridge" {
  description = "(Optional) Whether to enable Amazon EventBridge notifications."
  type        = string
}
variable "events" {
  description = "(Required) Event for which to send notifications."
  type        = string
}
variable "filter_suffix" {
  description = "(Optional) Object key name suffix."
  type        = string
}
variable "id" {
  description = "(Optional) Unique identifier for each of the notification configurations."
  type        = string
}
variable "lambda_function" {
  description = "(Optional, Multiple) Used to configure notifications to a Lambda Function. See below."
  type        = string
}
variable "queue_arn" {
  description = "(Required) SQS queue ARN.topic"
  type        = string
}
variable "topic" {
  description = "(Optional) Notification configuration to SNS Topic. See below.lambda_function"
  type        = string
}
variable "topic_arn" {
  description = "(Required) SNS topic ARN.No additional attributes are exported."
  type        = string
}
variable "bucket" {
  description = "(Required) Name of the bucket for notification configuration."
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
output "topic_arn" {
  description = "(Required) SNS topic ARN.No additional attributes are exported."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) Name of the bucket for notification configuration."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "events" {
  description = "(Required) Event for which to send notifications."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.events
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter_suffix" {
  description = "(Optional) Object key name suffix."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.filter_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) Unique identifier for each of the notification configurations."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_function" {
  description = "(Optional, Multiple) Used to configure notifications to a Lambda Function. See below."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.lambda_function
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_arn" {
  description = "(Required) SQS queue ARN.topic"
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.queue_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic" {
  description = "(Optional) Notification configuration to SNS Topic. See below.lambda_function"
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.topic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "eventbridge" {
  description = "(Optional) Whether to enable Amazon EventBridge notifications."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.eventbridge
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter_prefix" {
  description = "(Optional) Object key name prefix."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.filter_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_function_arn" {
  description = "(Required) Lambda function ARN.queue"
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.lambda_function_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue" {
  description = "(Optional) Notification configuration to SQS Queue. See below."
  value       = aws_s3_bucket_notification.aws_s3_bucket_notification.queue
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
      "kind/name"                   = "aws_s3_bucket_notification"
      "kind/version"                = "v0.1.0"
    }
  }
}
