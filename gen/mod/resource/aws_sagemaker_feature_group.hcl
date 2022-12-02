resource "aws_sagemaker_feature_group" "aws_sagemaker_feature_group" {
  disable_glue_table_creation    = var.disable_glue_table_creation
  enable_online_store            = var.enable_online_store
  feature_definition             = var.feature_definition
  kms_key_id                     = var.kms_key_id
  offline_store_config           = var.offline_store_config
  database                       = var.database
  description                    = var.description
  event_time_feature_name        = var.event_time_feature_name
  name                           = var.name
  record_identifier_feature_name = var.record_identifier_feature_name
  role_arn                       = var.role_arn
  s3_uri                         = var.s3_uri
  arn                            = var.arn
  feature_group_name             = var.feature_group_name
  s3_storage_config              = var.s3_storage_config
  security_config                = var.security_config
  catalog                        = var.catalog
  feature_name                   = var.feature_name
  feature_type                   = var.feature_type
  online_store_config            = var.online_store_config
  table_name                     = var.table_name
  tags                           = var.tags
  data_catalog_config            = var.data_catalog_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "offline_store_config" {
  description = " (Optional) - The Offline Feature Store Configuration. See Offline Store Config Below."
  type        = string
  default     = ""
}
variable "database" {
  description = "(Optional) The name of the Glue table database."
  type        = string
  default     = ""
}
variable "disable_glue_table_creation" {
  description = "(Optional) Set to true to turn Online Store On."
  type        = string
  default     = ""
}
variable "enable_online_store" {
  description = "(Optional) Set to true to disable the automatic creation of an AWS Glue table when configuring an OfflineStore."
  type        = string
  default     = ""
}
variable "feature_definition" {
  description = " (Optional) - A list of Feature names and types. See Feature Definition Below."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The ID of the AWS Key Management Service (AWS KMS) key that SageMaker Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "role_arn" {
  description = " (Required) - The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an offline_store_config is provided."
  type        = string
}
variable "s3_uri" {
  description = "(Required) The S3 URI, or location in Amazon S3, of OfflineStore.Data Catalog Config"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this feature_group."
  type        = string
}
variable "description" {
  description = " (Optional) - A free-form description of a Feature Group."
  type        = string
  default     = ""
}
variable "event_time_feature_name" {
  description = "(Required) The name of the feature that stores the EventTime of a Record in a Feature Group."
  type        = string
}
variable "name" {
  description = "The name of the Feature Group."
  type        = string
}
variable "record_identifier_feature_name" {
  description = "(Required) The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store."
  type        = string
}
variable "catalog" {
  description = "(Optional) The name of the Glue table catalog."
  type        = string
  default     = ""
}
variable "feature_group_name" {
  description = "(Required) The name of the Feature Group. The name must be unique within an AWS Region in an AWS account."
  type        = string
}
variable "s3_storage_config" {
  description = "(Required) The Amazon Simple Storage (Amazon S3) location of OfflineStore. See S3 Storage Config Below."
  type        = string
}
variable "security_config" {
  description = "(Required) Security config for at-rest encryption of your OnlineStore. See Security Config Below.S3 Storage Config"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of resource tags for the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Feature Definition"
  type        = string
  default     = ""
}
variable "data_catalog_config" {
  description = "(Optional) The meta data of the Glue table that is autogenerated when an OfflineStore is created. See Data Catalog Config Below.Online Store Config"
  type        = string
  default     = ""
}
variable "feature_name" {
  description = "(Required) The name of a feature. feature_name cannot be any of the following: is_deleted, write_time, api_invocation_time."
  type        = string
}
variable "feature_type" {
  description = "(Required) The value type of a feature. Valid values are Integral, Fractional, or String.Offline Store Config"
  type        = string
}
variable "online_store_config" {
  description = " (Optional) - The Online Feature Store Configuration. See Online Store Config Below."
  type        = string
  default     = ""
}
variable "table_name" {
  description = "(Optional) The name of the Glue table.Security Config"
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
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this feature_group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.arn
}
output "description" {
  description = " (Optional) - A free-form description of a Feature Group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.description
}
output "event_time_feature_name" {
  description = "(Required) The name of the feature that stores the EventTime of a Record in a Feature Group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.event_time_feature_name
}
output "name" {
  description = "The name of the Feature Group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.name
}
output "record_identifier_feature_name" {
  description = "(Required) The name of the Feature whose value uniquely identifies a Record defined in the Feature Store. Only the latest record per identifier value will be stored in the Online Store."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.record_identifier_feature_name
}
output "role_arn" {
  description = " (Required) - The Amazon Resource Name (ARN) of the IAM execution role used to persist data into the Offline Store if an offline_store_config is provided."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.role_arn
}
output "s3_uri" {
  description = "(Required) The S3 URI, or location in Amazon S3, of OfflineStore.Data Catalog Config"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.s3_uri
}
output "catalog" {
  description = "(Optional) The name of the Glue table catalog."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.catalog
}
output "feature_group_name" {
  description = "(Required) The name of the Feature Group. The name must be unique within an AWS Region in an AWS account."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.feature_group_name
}
output "s3_storage_config" {
  description = "(Required) The Amazon Simple Storage (Amazon S3) location of OfflineStore. See S3 Storage Config Below."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.s3_storage_config
}
output "security_config" {
  description = "(Required) Security config for at-rest encryption of your OnlineStore. See Security Config Below.S3 Storage Config"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.security_config
}
output "data_catalog_config" {
  description = "(Optional) The meta data of the Glue table that is autogenerated when an OfflineStore is created. See Data Catalog Config Below.Online Store Config"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.data_catalog_config
}
output "feature_name" {
  description = "(Required) The name of a feature. feature_name cannot be any of the following: is_deleted, write_time, api_invocation_time."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.feature_name
}
output "feature_type" {
  description = "(Required) The value type of a feature. Valid values are Integral, Fractional, or String.Offline Store Config"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.feature_type
}
output "online_store_config" {
  description = " (Optional) - The Online Feature Store Configuration. See Online Store Config Below."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.online_store_config
}
output "table_name" {
  description = "(Optional) The name of the Glue table.Security Config"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.table_name
}
output "tags" {
  description = "(Optional) Map of resource tags for the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Feature Definition"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.tags
}
output "database" {
  description = "(Optional) The name of the Glue table database."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.database
}
output "disable_glue_table_creation" {
  description = "(Optional) Set to true to turn Online Store On."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.disable_glue_table_creation
}
output "enable_online_store" {
  description = "(Optional) Set to true to disable the automatic creation of an AWS Glue table when configuring an OfflineStore."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.enable_online_store
}
output "feature_definition" {
  description = " (Optional) - A list of Feature names and types. See Feature Definition Below."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.feature_definition
}
output "kms_key_id" {
  description = "(Optional) The ID of the AWS Key Management Service (AWS KMS) key that SageMaker Feature Store uses to encrypt the Amazon S3 objects at rest using Amazon S3 server-side encryption.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.kms_key_id
}
output "offline_store_config" {
  description = " (Optional) - The Offline Feature Store Configuration. See Offline Store Config Below."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.offline_store_config
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this feature_group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.arn
}
output "name" {
  description = "The name of the Feature Group."
  value       = aws_sagemaker_feature_group.aws_sagemaker_feature_group.name
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
      "kind/name"                   = "aws_sagemaker_feature_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
