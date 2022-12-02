resource "aws_s3control_storage_lens_configuration" "aws_s3control_storage_lens_configuration" {
  sse_s3                       = var.sse_s3
  encryption                   = var.encryption
  min_storage_bytes_percentage = var.min_storage_bytes_percentage
  bucket_level                 = var.bucket_level
  enabled                      = var.enabled
  key_id                       = var.key_id
  max_depth                    = var.max_depth
  selection_criteria           = var.selection_criteria
  sse_kms                      = var.sse_kms
  aws_org                      = var.aws_org
  exclude                      = var.exclude
  account_id                   = var.account_id
  activity_metrics             = var.activity_metrics
  prefix                       = var.prefix
  regions                      = var.regions
  s3_bucket_destination        = var.s3_bucket_destination
  storage_metrics              = var.storage_metrics
  cloud_watch_metrics          = var.cloud_watch_metrics
  delimiter                    = var.delimiter
  tags                         = var.tags
  buckets                      = var.buckets
  config_id                    = var.config_id
  data_export                  = var.data_export
  format                       = var.format
  output_schema_version        = var.output_schema_version
  storage_lens_configuration   = var.storage_lens_configuration
  account_level                = var.account_level
  arn                          = var.arn
  include                      = var.include
  prefix_level                 = var.prefix_level
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "max_depth" {
  description = " (Optional) The max depth of the selection criteria."
  type        = string
  default     = ""
}
variable "selection_criteria" {
  description = " (Optional) Selection criteria. See Selection Criteria below for more details.Selection CriteriaThe selection_criteria block supports the following:"
  type        = string
  default     = ""
}
variable "sse_kms" {
  description = " (Optional) SSE-KMS encryption. See SSE KMS below for more details."
  type        = string
  default     = ""
}
variable "aws_org" {
  description = " (Optional) The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details."
  type        = string
  default     = ""
}
variable "exclude" {
  description = " (Optional) What is excluded in this configuration. Conflicts with include. See Exclude below for more details."
  type        = string
  default     = ""
}
variable "key_id" {
  description = " (Required) KMS key ARN.ExcludeThe exclude block supports the following:"
  type        = string
}
variable "account_id" {
  description = " (Required) The account ID of the owner of the S3 Storage Lens metrics export bucket."
  type        = string
}
variable "activity_metrics" {
  description = " (Optional) S3 Storage Lens activity metrics. See Activity Metrics above for more details."
  type        = string
  default     = ""
}
variable "regions" {
  description = " (Optional) List of AWS Regions.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "s3_bucket_destination" {
  description = " (Optional) The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.Cloud Watch MetricsThe cloud_watch_metrics block supports the following:"
  type        = string
  default     = ""
}
variable "storage_metrics" {
  description = " (Required) Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.Prefix Level Storage MetricsThe storage_metrics block supports the following:"
  type        = string
}
variable "cloud_watch_metrics" {
  description = " (Optional) Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details."
  type        = string
  default     = ""
}
variable "delimiter" {
  description = " (Optional) The delimiter of the selection criteria being used."
  type        = string
  default     = ""
}
variable "prefix" {
  description = " (Optional) The prefix of the destination bucket where the metrics export will be delivered.EncryptionThe encryption block supports the following:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Storage Lens ConfigurationThe storage_lens_configuration block supports the following:"
  type        = string
  default     = ""
}
variable "config_id" {
  description = "(Required) The ID of the S3 Storage Lens configuration."
  type        = string
}
variable "data_export" {
  description = " (Optional) Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details."
  type        = string
  default     = ""
}
variable "format" {
  description = " (Required) The export format. Valid values: CSV, Parquet."
  type        = string
}
variable "output_schema_version" {
  description = " (Required) The schema version of the export file. Valid values: V_1."
  type        = string
}
variable "storage_lens_configuration" {
  description = "(Required) The S3 Storage Lens configuration. See Storage Lens Configuration below for more details."
  type        = string
}
variable "account_level" {
  description = " (Required) The account-level configurations of the S3 Storage Lens configuration. See Account Level below for more details."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Storage Lens configuration."
  type        = string
}
variable "buckets" {
  description = " (Optional) List of S3 bucket ARNs."
  type        = string
  default     = ""
}
variable "include" {
  description = " (Optional) What is included in this configuration. Conflicts with exclude. See Include below for more details.Account LevelThe account_level block supports the following:"
  type        = string
  default     = ""
}
variable "prefix_level" {
  description = " (Optional) Prefix-level metrics for S3 Storage Lens. See Prefix Level below for more details.Prefix LevelThe prefix_level block supports the following:"
  type        = string
  default     = ""
}
variable "sse_s3" {
  description = " (Optional) SSE-S3 encryption. An empty configuration block {} should be used.SSE KMSThe sse_kms block supports the following:"
  type        = string
  default     = ""
}
variable "min_storage_bytes_percentage" {
  description = " (Optional) The minimum number of storage bytes percentage whose metrics will be selected.AWS OrgThe aws_org block supports the following:"
  type        = string
  default     = ""
}
variable "bucket_level" {
  description = " (Required) S3 Storage Lens bucket-level configuration. See Bucket Level below for more details.Activity MetricsThe activity_metrics block supports the following:"
  type        = string
}
variable "enabled" {
  description = " (Required) Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.S3 Bucket DestinationThe s3_bucket_destination block supports the following:"
  type        = string
}
variable "encryption" {
  description = " (Optional) Encryption of the metrics exports in this bucket. See Encryption below for more details."
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
output "account_id" {
  description = " (Required) The account ID of the owner of the S3 Storage Lens metrics export bucket."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.account_id
}
output "activity_metrics" {
  description = " (Optional) S3 Storage Lens activity metrics. See Activity Metrics above for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.activity_metrics
}
output "cloud_watch_metrics" {
  description = " (Optional) Amazon CloudWatch publishing for S3 Storage Lens metrics. See Cloud Watch Metrics below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.cloud_watch_metrics
}
output "delimiter" {
  description = " (Optional) The delimiter of the selection criteria being used."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.delimiter
}
output "prefix" {
  description = " (Optional) The prefix of the destination bucket where the metrics export will be delivered.EncryptionThe encryption block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.prefix
}
output "regions" {
  description = " (Optional) List of AWS Regions.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.regions
}
output "s3_bucket_destination" {
  description = " (Optional) The bucket where the S3 Storage Lens metrics export will be located. See S3 Bucket Destination below for more details.Cloud Watch MetricsThe cloud_watch_metrics block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.s3_bucket_destination
}
output "storage_metrics" {
  description = " (Required) Prefix-level storage metrics for S3 Storage Lens. See Prefix Level Storage Metrics below for more details.Prefix Level Storage MetricsThe storage_metrics block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.storage_metrics
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Storage Lens ConfigurationThe storage_lens_configuration block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.tags
}
output "storage_lens_configuration" {
  description = "(Required) The S3 Storage Lens configuration. See Storage Lens Configuration below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.storage_lens_configuration
}
output "account_level" {
  description = " (Required) The account-level configurations of the S3 Storage Lens configuration. See Account Level below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.account_level
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Storage Lens configuration."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.arn
}
output "buckets" {
  description = " (Optional) List of S3 bucket ARNs."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.buckets
}
output "config_id" {
  description = "(Required) The ID of the S3 Storage Lens configuration."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.config_id
}
output "data_export" {
  description = " (Optional) Properties of S3 Storage Lens metrics export including the destination, schema and format. See Data Export below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.data_export
}
output "format" {
  description = " (Required) The export format. Valid values: CSV, Parquet."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.format
}
output "output_schema_version" {
  description = " (Required) The schema version of the export file. Valid values: V_1."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.output_schema_version
}
output "include" {
  description = " (Optional) What is included in this configuration. Conflicts with exclude. See Include below for more details.Account LevelThe account_level block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.include
}
output "prefix_level" {
  description = " (Optional) Prefix-level metrics for S3 Storage Lens. See Prefix Level below for more details.Prefix LevelThe prefix_level block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.prefix_level
}
output "sse_s3" {
  description = " (Optional) SSE-S3 encryption. An empty configuration block {} should be used.SSE KMSThe sse_kms block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.sse_s3
}
output "bucket_level" {
  description = " (Required) S3 Storage Lens bucket-level configuration. See Bucket Level below for more details.Activity MetricsThe activity_metrics block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.bucket_level
}
output "enabled" {
  description = " (Required) Whether CloudWatch publishing for S3 Storage Lens metrics is enabled.S3 Bucket DestinationThe s3_bucket_destination block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.enabled
}
output "encryption" {
  description = " (Optional) Encryption of the metrics exports in this bucket. See Encryption below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.encryption
}
output "min_storage_bytes_percentage" {
  description = " (Optional) The minimum number of storage bytes percentage whose metrics will be selected.AWS OrgThe aws_org block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.min_storage_bytes_percentage
}
output "aws_org" {
  description = " (Optional) The Amazon Web Services organization for the S3 Storage Lens configuration. See AWS Org below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.aws_org
}
output "exclude" {
  description = " (Optional) What is excluded in this configuration. Conflicts with include. See Exclude below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.exclude
}
output "key_id" {
  description = " (Required) KMS key ARN.ExcludeThe exclude block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.key_id
}
output "max_depth" {
  description = " (Optional) The max depth of the selection criteria."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.max_depth
}
output "selection_criteria" {
  description = " (Optional) Selection criteria. See Selection Criteria below for more details.Selection CriteriaThe selection_criteria block supports the following:"
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.selection_criteria
}
output "sse_kms" {
  description = " (Optional) SSE-KMS encryption. See SSE KMS below for more details."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.sse_kms
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Storage Lens configuration."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3control_storage_lens_configuration.aws_s3control_storage_lens_configuration.tags_all
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
      "kind/name"                   = "aws_s3control_storage_lens_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
