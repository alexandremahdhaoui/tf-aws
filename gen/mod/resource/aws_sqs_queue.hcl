resource "aws_sqs_queue" "aws_sqs_queue" {
  arn                               = var.arn
  kms_data_key_reuse_period_seconds = var.kms_data_key_reuse_period_seconds
  max_message_size                  = var.max_message_size
  content_based_deduplication       = var.content_based_deduplication
  deduplication_scope               = var.deduplication_scope
  message_retention_seconds         = var.message_retention_seconds
  receive_wait_time_seconds         = var.receive_wait_time_seconds
  tags                              = var.tags
  delay_seconds                     = var.delay_seconds
  fifo_queue                        = var.fifo_queue
  fifo_throughput_limit             = var.fifo_throughput_limit
  id                                = var.id
  policy                            = var.policy
  redrive_policy                    = var.redrive_policy
  kms_master_key_id                 = var.kms_master_key_id
  name                              = var.name
  name_prefix                       = var.name_prefix
  redrive_allow_policy              = var.redrive_allow_policy
  sqs_managed_sse_enabled           = var.sqs_managed_sse_enabled
  tags_all                          = var.tags_all
  visibility_timeout_seconds        = var.visibility_timeout_seconds
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "receive_wait_time_seconds" {
  description = "(Optional) The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the queue. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "content_based_deduplication" {
  description = "(Optional) Enables content-based deduplication for FIFO queues. For more information, see the related documentation"
  type        = string
}
variable "deduplication_scope" {
  description = "(Optional) Specifies whether message deduplication occurs at the message group or queue level. Valid values are messageGroup and queue (default)."
  type        = string
}
variable "message_retention_seconds" {
  description = "(Optional) The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
  type        = string
}
variable "id" {
  description = "The URL for the created Amazon SQS queue."
  type        = string
}
variable "policy" {
  description = "(Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}
variable "redrive_policy" {
  description = "(Optional) The JSON policy to set up the Dead Letter Queue, see AWS docs. strongNote: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string (\"5\")."
  type        = string
}
variable "delay_seconds" {
  description = "(Optional) The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
  type        = string
}
variable "fifo_queue" {
  description = "(Optional) Boolean designating a FIFO queue. If not set, it defaults to false making it standard."
  type        = string
}
variable "fifo_throughput_limit" {
  description = "(Optional) Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are perQueue (default) and perMessageGroupId."
  type        = string
}
variable "redrive_allow_policy" {
  description = "(Optional) The JSON policy to set up the Dead Letter Queue redrive permission, see AWS docs."
  type        = string
}
variable "sqs_managed_sse_enabled" {
  description = "(Optional) Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See Encryption at rest. Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "visibility_timeout_seconds" {
  description = "(Optional) The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see AWS docs."
  type        = string
}
variable "kms_master_key_id" {
  description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see Key Terms."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix"
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name"
  type        = string
}
variable "arn" {
  description = "The ARN of the SQS queue"
  type        = string
}
variable "kms_data_key_reuse_period_seconds" {
  description = "(Optional) The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes)."
  type        = string
}
variable "max_message_size" {
  description = "(Optional) The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
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
  description = "The ARN of the SQS queue"
  value       = aws_sqs_queue.aws_sqs_queue.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_data_key_reuse_period_seconds" {
  description = "(Optional) The length of time, in seconds, for which Amazon SQS can reuse a data key to encrypt or decrypt messages before calling AWS KMS again. An integer representing seconds, between 60 seconds (1 minute) and 86,400 seconds (24 hours). The default is 300 (5 minutes)."
  value       = aws_sqs_queue.aws_sqs_queue.kms_data_key_reuse_period_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_message_size" {
  description = "(Optional) The limit of how many bytes a message can contain before Amazon SQS rejects it. An integer from 1024 bytes (1 KiB) up to 262144 bytes (256 KiB). The default for this attribute is 262144 (256 KiB)."
  value       = aws_sqs_queue.aws_sqs_queue.max_message_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_based_deduplication" {
  description = "(Optional) Enables content-based deduplication for FIFO queues. For more information, see the related documentation"
  value       = aws_sqs_queue.aws_sqs_queue.content_based_deduplication
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deduplication_scope" {
  description = "(Optional) Specifies whether message deduplication occurs at the message group or queue level. Valid values are messageGroup and queue (default)."
  value       = aws_sqs_queue.aws_sqs_queue.deduplication_scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "message_retention_seconds" {
  description = "(Optional) The number of seconds Amazon SQS retains a message. Integer representing seconds, from 60 (1 minute) to 1209600 (14 days). The default for this attribute is 345600 (4 days)."
  value       = aws_sqs_queue.aws_sqs_queue.message_retention_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "receive_wait_time_seconds" {
  description = "(Optional) The time for which a ReceiveMessage call will wait for a message to arrive (long polling) before returning. An integer from 0 to 20 (seconds). The default for this attribute is 0, meaning that the call will return immediately."
  value       = aws_sqs_queue.aws_sqs_queue.receive_wait_time_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the queue. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sqs_queue.aws_sqs_queue.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delay_seconds" {
  description = "(Optional) The time in seconds that the delivery of all messages in the queue will be delayed. An integer from 0 to 900 (15 minutes). The default for this attribute is 0 seconds."
  value       = aws_sqs_queue.aws_sqs_queue.delay_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fifo_queue" {
  description = "(Optional) Boolean designating a FIFO queue. If not set, it defaults to false making it standard."
  value       = aws_sqs_queue.aws_sqs_queue.fifo_queue
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fifo_throughput_limit" {
  description = "(Optional) Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group. Valid values are perQueue (default) and perMessageGroupId."
  value       = aws_sqs_queue.aws_sqs_queue.fifo_throughput_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The URL for the created Amazon SQS queue."
  value       = aws_sqs_queue.aws_sqs_queue.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional) The JSON policy for the SQS queue. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  value       = aws_sqs_queue.aws_sqs_queue.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redrive_policy" {
  description = "(Optional) The JSON policy to set up the Dead Letter Queue, see AWS docs. strongNote: when specifying maxReceiveCount, you must specify it as an integer (5), and not a string (\"5\")."
  value       = aws_sqs_queue.aws_sqs_queue.redrive_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_master_key_id" {
  description = "(Optional) The ID of an AWS-managed customer master key (CMK) for Amazon SQS or a custom CMK. For more information, see Key Terms."
  value       = aws_sqs_queue.aws_sqs_queue.kms_master_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The name of the queue. Queue names must be made up of only uppercase and lowercase ASCII letters, numbers, underscores, and hyphens, and must be between 1 and 80 characters long. For a FIFO (first-in-first-out) queue, the name must end with the .fifo suffix. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix"
  value       = aws_sqs_queue.aws_sqs_queue.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name"
  value       = aws_sqs_queue.aws_sqs_queue.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redrive_allow_policy" {
  description = "(Optional) The JSON policy to set up the Dead Letter Queue redrive permission, see AWS docs."
  value       = aws_sqs_queue.aws_sqs_queue.redrive_allow_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sqs_managed_sse_enabled" {
  description = "(Optional) Boolean to enable server-side encryption (SSE) of message content with SQS-owned encryption keys. See Encryption at rest. Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_sqs_queue.aws_sqs_queue.sqs_managed_sse_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sqs_queue.aws_sqs_queue.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "visibility_timeout_seconds" {
  description = "(Optional) The visibility timeout for the queue. An integer from 0 to 43200 (12 hours). The default for this attribute is 30. For more information about visibility timeout, see AWS docs."
  value       = aws_sqs_queue.aws_sqs_queue.visibility_timeout_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the SQS queue"
  value       = aws_sqs_queue.aws_sqs_queue.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The URL for the created Amazon SQS queue."
  value       = aws_sqs_queue.aws_sqs_queue.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sqs_queue.aws_sqs_queue.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "url" {
  description = "Same as id: The URL for the created Amazon SQS queue."
  value       = aws_sqs_queue.aws_sqs_queue.url
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
      "kind/name"                   = "aws_sqs_queue"
      "kind/version"                = "v0.1.0"
    }
  }
}
