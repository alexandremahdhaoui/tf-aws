resource "aws_kinesis_stream" "aws_kinesis_stream" {
  shard_level_metrics       = var.shard_level_metrics
  stream_mode               = var.stream_mode
  stream_mode_details       = var.stream_mode_details
  create                    = var.create
  encryption_type           = var.encryption_type
  enforce_consumer_deletion = var.enforce_consumer_deletion
  retention_period          = var.retention_period
  arn                       = var.arn
  id                        = var.id
  tags                      = var.tags
  tags_all                  = var.tags_all
  update                    = var.update
  kms_key_id                = var.kms_key_id
  name                      = var.name
  shard_count               = var.shard_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encryption_type" {
  description = "(Optional) The encryption type to use. The only acceptable values are NONE or KMS. The default value is NONE."
  type        = string
}
variable "enforce_consumer_deletion" {
  description = "(Optional) A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is false."
  type        = string
}
variable "retention_period" {
  description = "(Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "id" {
  description = "The unique Stream id"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.stream_mode_details Configuration Block"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 120m)"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  type        = string
}
variable "name" {
  description = "The unique Stream name"
  type        = string
}
variable "shard_count" {
  description = "The count of Shards for this Stream"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis."
  type        = string
}
variable "stream_mode" {
  description = "(Required) Specifies the capacity mode of the stream. Must be either PROVISIONED or ON_DEMAND.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "stream_mode_details" {
  description = "(Optional) Indicates the capacity mode of the data stream. Detailed below."
  type        = string
}
variable "shard_level_metrics" {
  description = "(Optional) A list of shard-level CloudWatch metrics which can be enabled for the stream. See Monitoring with CloudWatch for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable."
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
  description = "The unique Stream name"
  value       = aws_kinesis_stream.aws_kinesis_stream.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shard_count" {
  description = "The count of Shards for this Stream"
  value       = aws_kinesis_stream.aws_kinesis_stream.shard_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) The GUID for the customer-managed KMS key to use for encryption. You can also use a Kinesis-owned master key by specifying the alias alias/aws/kinesis."
  value       = aws_kinesis_stream.aws_kinesis_stream.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_mode" {
  description = "(Required) Specifies the capacity mode of the stream. Must be either PROVISIONED or ON_DEMAND.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesis_stream.aws_kinesis_stream.stream_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_mode_details" {
  description = "(Optional) Indicates the capacity mode of the data stream. Detailed below."
  value       = aws_kinesis_stream.aws_kinesis_stream.stream_mode_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shard_level_metrics" {
  description = "(Optional) A list of shard-level CloudWatch metrics which can be enabled for the stream. See Monitoring with CloudWatch for more. Note that the value ALL should not be used; instead you should provide an explicit list of metrics you wish to enable."
  value       = aws_kinesis_stream.aws_kinesis_stream.shard_level_metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_type" {
  description = "(Optional) The encryption type to use. The only acceptable values are NONE or KMS. The default value is NONE."
  value       = aws_kinesis_stream.aws_kinesis_stream.encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enforce_consumer_deletion" {
  description = "(Optional) A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error. The default value is false."
  value       = aws_kinesis_stream.aws_kinesis_stream.enforce_consumer_deletion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention_period" {
  description = "(Optional) Length of time data records are accessible after they are added to the stream. The maximum value of a stream's retention period is 8760 hours. Minimum value is 24. Default is 24."
  value       = aws_kinesis_stream.aws_kinesis_stream.retention_period
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_kinesis_stream.aws_kinesis_stream.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique Stream id"
  value       = aws_kinesis_stream.aws_kinesis_stream.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.stream_mode_details Configuration Block"
  value       = aws_kinesis_stream.aws_kinesis_stream.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesis_stream.aws_kinesis_stream.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 120m)"
  value       = aws_kinesis_stream.aws_kinesis_stream.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  value       = aws_kinesis_stream.aws_kinesis_stream.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique Stream id"
  value       = aws_kinesis_stream.aws_kinesis_stream.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The unique Stream name"
  value       = aws_kinesis_stream.aws_kinesis_stream.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shard_count" {
  description = "The count of Shards for this Stream"
  value       = aws_kinesis_stream.aws_kinesis_stream.shard_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesis_stream.aws_kinesis_stream.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 120m)"
  value       = aws_kinesis_stream.aws_kinesis_stream.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  value       = aws_kinesis_stream.aws_kinesis_stream.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_kinesis_stream.aws_kinesis_stream.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_kinesis_stream.aws_kinesis_stream.delete
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
      "kind/name"                   = "aws_kinesis_stream"
      "kind/version"                = "v0.1.0"
    }
  }
}
