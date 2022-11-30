resource "aws_sns_topic" "aws_sns_topic" {
  firehose_success_feedback_sample_rate    = var.firehose_success_feedback_sample_rate
  sqs_failure_feedback_role_arn            = var.sqs_failure_feedback_role_arn
  application_failure_feedback_role_arn    = var.application_failure_feedback_role_arn
  application_success_feedback_sample_rate = var.application_success_feedback_sample_rate
  fifo_topic                               = var.fifo_topic
  owner                                    = var.owner
  sqs_success_feedback_role_arn            = var.sqs_success_feedback_role_arn
  http_success_feedback_role_arn           = var.http_success_feedback_role_arn
  kms_master_key_id                        = var.kms_master_key_id
  lambda_success_feedback_role_arn         = var.lambda_success_feedback_role_arn
  firehose_failure_feedback_role_arn       = var.firehose_failure_feedback_role_arn
  name                                     = var.name
  sqs_success_feedback_sample_rate         = var.sqs_success_feedback_sample_rate
  tags                                     = var.tags
  id                                       = var.id
  lambda_success_feedback_sample_rate      = var.lambda_success_feedback_sample_rate
  http_failure_feedback_role_arn           = var.http_failure_feedback_role_arn
  lambda_failure_feedback_role_arn         = var.lambda_failure_feedback_role_arn
  arn                                      = var.arn
  content_based_deduplication              = var.content_based_deduplication
  policy                                   = var.policy
  application_success_feedback_role_arn    = var.application_success_feedback_role_arn
  display_name                             = var.display_name
  firehose_success_feedback_role_arn       = var.firehose_success_feedback_role_arn
  name_prefix                              = var.name_prefix
  delivery_policy                          = var.delivery_policy
  http_success_feedback_sample_rate        = var.http_success_feedback_sample_rate
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "firehose_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name"
  type        = string
}
variable "delivery_policy" {
  description = "(Optional) The SNS delivery policy. More on AWS documentation"
  type        = string
}
variable "http_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  type        = string
}
variable "application_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  type        = string
}
variable "firehose_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  type        = string
}
variable "sqs_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  type        = string
}
variable "application_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  type        = string
}
variable "fifo_topic" {
  description = "(Optional) Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)."
  type        = string
}
variable "owner" {
  description = "The AWS Account ID of the SNS topic owner"
  type        = string
}
variable "sqs_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  type        = string
}
variable "firehose_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  type        = string
}
variable "http_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  type        = string
}
variable "kms_master_key_id" {
  description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see Key Terms"
  type        = string
}
variable "lambda_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  type        = string
}
variable "lambda_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  type        = string
}
variable "name" {
  description = "(Optional) The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix"
  type        = string
}
variable "sqs_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "The ARN of the SNS topic"
  type        = string
}
variable "content_based_deduplication" {
  description = "(Optional) Enables content-based deduplication for FIFO topics. For more information, see the related documentation"
  type        = string
}
variable "http_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  type        = string
}
variable "lambda_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  type        = string
}
variable "arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  type        = string
}
variable "display_name" {
  description = "(Optional) The display name for the topic"
  type        = string
}
variable "policy" {
  description = "(Optional) The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}
variable "application_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
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
output "arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  value       = aws_sns_topic.aws_sns_topic.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_based_deduplication" {
  description = "(Optional) Enables content-based deduplication for FIFO topics. For more information, see the related documentation"
  value       = aws_sns_topic.aws_sns_topic.content_based_deduplication
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  value       = aws_sns_topic.aws_sns_topic.http_failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  value       = aws_sns_topic.aws_sns_topic.lambda_failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  value       = aws_sns_topic.aws_sns_topic.application_success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "(Optional) The display name for the topic"
  value       = aws_sns_topic.aws_sns_topic.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional) The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  value       = aws_sns_topic.aws_sns_topic.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name"
  value       = aws_sns_topic.aws_sns_topic.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delivery_policy" {
  description = "(Optional) The SNS delivery policy. More on AWS documentation"
  value       = aws_sns_topic.aws_sns_topic.delivery_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  value       = aws_sns_topic.aws_sns_topic.firehose_success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  value       = aws_sns_topic.aws_sns_topic.http_success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  value       = aws_sns_topic.aws_sns_topic.application_failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  value       = aws_sns_topic.aws_sns_topic.application_success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  value       = aws_sns_topic.aws_sns_topic.firehose_success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sqs_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  value       = aws_sns_topic.aws_sns_topic.sqs_failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sqs_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  value       = aws_sns_topic.aws_sns_topic.sqs_success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fifo_topic" {
  description = "(Optional) Boolean indicating whether or not to create a FIFO (first-in-first-out) topic (default is false)."
  value       = aws_sns_topic.aws_sns_topic.fifo_topic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = aws_sns_topic.aws_sns_topic.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  value       = aws_sns_topic.aws_sns_topic.lambda_success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose_failure_feedback_role_arn" {
  description = "(Optional) IAM role for failure feedback"
  value       = aws_sns_topic.aws_sns_topic.firehose_failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_success_feedback_role_arn" {
  description = "(Optional) The IAM role permitted to receive success feedback for this topic"
  value       = aws_sns_topic.aws_sns_topic.http_success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_master_key_id" {
  description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information, see Key Terms"
  value       = aws_sns_topic.aws_sns_topic.kms_master_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.aws_sns_topic.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  value       = aws_sns_topic.aws_sns_topic.lambda_success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The name of the topic. Topic names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 256 characters long. For a FIFO (first-in-first-out) topic, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix"
  value       = aws_sns_topic.aws_sns_topic.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sqs_success_feedback_sample_rate" {
  description = "(Optional) Percentage of success to sample"
  value       = aws_sns_topic.aws_sns_topic.sqs_success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sns_topic.aws_sns_topic.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "The AWS Account ID of the SNS topic owner"
  value       = aws_sns_topic.aws_sns_topic.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sns_topic.aws_sns_topic.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the SNS topic, as a more obvious property (clone of id)"
  value       = aws_sns_topic.aws_sns_topic.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the SNS topic"
  value       = aws_sns_topic.aws_sns_topic.id
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
      "kind/name"                   = "aws_sns_topic"
      "kind/version"                = "v0.1.0"
    }
  }
}
