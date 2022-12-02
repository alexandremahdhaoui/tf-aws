resource "aws_timestreamwrite_table" "aws_timestreamwrite_table" {
  encryption_option                       = var.encryption_option
  magnetic_store_rejected_data_location   = var.magnetic_store_rejected_data_location
  tags                                    = var.tags
  kms_key_id                              = var.kms_key_id
  magnetic_store_retention_period_in_days = var.magnetic_store_retention_period_in_days
  retention_properties                    = var.retention_properties
  table_name                              = var.table_name
  database_name                           = var.database_name
  enable_magnetic_store_writes            = var.enable_magnetic_store_writes
  magnetic_store_write_properties         = var.magnetic_store_write_properties
  memory_store_retention_period_in_hours  = var.memory_store_retention_period_in_hours
  object_key_prefix                       = var.object_key_prefix
  s3_configuration                        = var.s3_configuration
  arn                                     = var.arn
  bucket_name                             = var.bucket_name
  id                                      = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enable_magnetic_store_writes" {
  description = "(Required) A flag to enable magnetic store writes."
  type        = string
}
variable "magnetic_store_write_properties" {
  description = "(Optional) Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details."
  type        = string
  default     = ""
}
variable "memory_store_retention_period_in_hours" {
  description = "(Required) The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "object_key_prefix" {
  description = "(Optional) Object key prefix for the customer S3 location.Retention PropertiesThe retention_properties block supports the following arguments:"
  type        = string
  default     = ""
}
variable "s3_configuration" {
  description = "(Optional) Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes. See S3 Configuration below for more details.S3 ConfigurationThe s3_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "database_name" {
  description = " – (Required) The name of the Timestream database."
  type        = string
}
variable "bucket_name" {
  description = "(Optional) Bucket name of the customer S3 bucket."
  type        = string
  default     = ""
}
variable "id" {
  description = "The table_name and database_name separated by a colon (:)."
  type        = string
}
variable "arn" {
  description = "The ARN that uniquely identifies this table."
  type        = string
}
variable "magnetic_store_rejected_data_location" {
  description = "(Optional) The location to write error reports for records rejected asynchronously during magnetic store writes. See Magnetic Store Rejected Data Location below for more details.Magnetic Store Rejected Data LocationThe magnetic_store_rejected_data_location block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Magnetic Store Write PropertiesThe magnetic_store_write_properties block supports the following arguments:"
  type        = string
  default     = ""
}
variable "encryption_option" {
  description = "(Optional) Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key. Valid values are SSE_KMS and SSE_S3."
  type        = string
  default     = ""
}
variable "magnetic_store_retention_period_in_days" {
  description = "(Required) The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000."
  type        = string
}
variable "retention_properties" {
  description = "(Optional) The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, magnetic_store_retention_period_in_days default to 73000 and memory_store_retention_period_in_hours defaults to 6."
  type        = string
  default     = ""
}
variable "table_name" {
  description = "(Required) The name of the Timestream table."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) KMS key arn for the customer s3 location when encrypting with a KMS managed key."
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
output "magnetic_store_retention_period_in_days" {
  description = "(Required) The duration for which data must be stored in the magnetic store. Minimum value of 1. Maximum value of 73000."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.magnetic_store_retention_period_in_days
}
output "retention_properties" {
  description = "(Optional) The retention duration for the memory store and magnetic store. See Retention Properties below for more details. If not provided, magnetic_store_retention_period_in_days default to 73000 and memory_store_retention_period_in_hours defaults to 6."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.retention_properties
}
output "table_name" {
  description = "(Required) The name of the Timestream table."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.table_name
}
output "kms_key_id" {
  description = "(Optional) KMS key arn for the customer s3 location when encrypting with a KMS managed key."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.kms_key_id
}
output "enable_magnetic_store_writes" {
  description = "(Required) A flag to enable magnetic store writes."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.enable_magnetic_store_writes
}
output "magnetic_store_write_properties" {
  description = "(Optional) Contains properties to set on the table when enabling magnetic store writes. See Magnetic Store Write Properties below for more details."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.magnetic_store_write_properties
}
output "memory_store_retention_period_in_hours" {
  description = "(Required) The duration for which data must be stored in the memory store. Minimum value of 1. Maximum value of 8766.In addition to all arguments above, the following attributes are exported:"
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.memory_store_retention_period_in_hours
}
output "object_key_prefix" {
  description = "(Optional) Object key prefix for the customer S3 location.Retention PropertiesThe retention_properties block supports the following arguments:"
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.object_key_prefix
}
output "s3_configuration" {
  description = "(Optional) Configuration of an S3 location to write error reports for records rejected, asynchronously, during magnetic store writes. See S3 Configuration below for more details.S3 ConfigurationThe s3_configuration block supports the following arguments:"
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.s3_configuration
}
output "database_name" {
  description = " – (Required) The name of the Timestream database."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.database_name
}
output "bucket_name" {
  description = "(Optional) Bucket name of the customer S3 bucket."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.bucket_name
}
output "id" {
  description = "The table_name and database_name separated by a colon (:)."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.id
}
output "arn" {
  description = "The ARN that uniquely identifies this table."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.arn
}
output "magnetic_store_rejected_data_location" {
  description = "(Optional) The location to write error reports for records rejected asynchronously during magnetic store writes. See Magnetic Store Rejected Data Location below for more details.Magnetic Store Rejected Data LocationThe magnetic_store_rejected_data_location block supports the following arguments:"
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.magnetic_store_rejected_data_location
}
output "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Magnetic Store Write PropertiesThe magnetic_store_write_properties block supports the following arguments:"
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.tags
}
output "encryption_option" {
  description = "(Optional) Encryption option for the customer s3 location. Options are S3 server side encryption with an S3-managed key or KMS managed key. Valid values are SSE_KMS and SSE_S3."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.encryption_option
}
output "arn" {
  description = "The ARN that uniquely identifies this table."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.arn
}
output "id" {
  description = "The table_name and database_name separated by a colon (:)."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_timestreamwrite_table.aws_timestreamwrite_table.tags_all
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
      "kind/name"                   = "aws_timestreamwrite_table"
      "kind/version"                = "v0.1.0"
    }
  }
}
