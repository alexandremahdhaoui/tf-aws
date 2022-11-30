resource "aws_athena_workgroup" "aws_athena_workgroup" {
  requester_pays_enabled             = var.requester_pays_enabled
  acl_configuration                  = var.acl_configuration
  bytes_scanned_cutoff_per_query     = var.bytes_scanned_cutoff_per_query
  configuration                      = var.configuration
  enforce_workgroup_configuration    = var.enforce_workgroup_configuration
  id                                 = var.id
  kms_key_arn                        = var.kms_key_arn
  name                               = var.name
  output_location                    = var.output_location
  arn                                = var.arn
  description                        = var.description
  expected_bucket_owner              = var.expected_bucket_owner
  force_destroy                      = var.force_destroy
  result_configuration               = var.result_configuration
  selected_engine_version            = var.selected_engine_version
  tags                               = var.tags
  effective_engine_version           = var.effective_engine_version
  encryption_option                  = var.encryption_option
  engine_version                     = var.engine_version
  s3_acl_option                      = var.s3_acl_option
  encryption_configuration           = var.encryption_configuration
  publish_cloudwatch_metrics_enabled = var.publish_cloudwatch_metrics_enabled
  state                              = var.state
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "effective_engine_version" {
  description = " The engine version on which the query runs. If selected_engine_version is set to AUTO, the effective engine version is chosen by Athena."
  type        = string
}
variable "encryption_option" {
  description = "(Required) Whether Amazon S3 server-side encryption with Amazon S3-managed keys (SSE_S3), server-side encryption with KMS-managed keys (SSE_KMS), or client-side encryption with KMS-managed keys (CSE_KMS) is used. If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used. It specifies whether query results must be encrypted, for all queries that run in this workgroup."
  type        = string
}
variable "engine_version" {
  description = "Configuration block for the Athena Engine Versioning\n"
  type        = string
}
variable "s3_acl_option" {
  description = "(Required) Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is BUCKET_OWNER_FULL_CONTROL.Encryption Configuration"
  type        = string
}
variable "encryption_configuration" {
  description = "(Optional) Configuration block with encryption settings. See Encryption Configuration below."
  type        = string
}
variable "publish_cloudwatch_metrics_enabled" {
  description = "(Optional) Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to true."
  type        = string
}
variable "state" {
  description = "(Optional) State of the workgroup. Valid values are DISABLED or ENABLED. Defaults to ENABLED."
  type        = string
}
variable "acl_configuration" {
  description = "(Optional) That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below."
  type        = string
}
variable "bytes_scanned_cutoff_per_query" {
  description = "(Optional) Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. Must be at least 10485760."
  type        = string
}
variable "configuration" {
  description = "Configuration block with various settings for the workgroup\n"
  type        = string
}
variable "enforce_workgroup_configuration" {
  description = "(Optional) Boolean whether the settings for the workgroup override client-side settings. For more information, see Workgroup Settings Override Client-Side Settings. Defaults to true."
  type        = string
}
variable "requester_pays_enabled" {
  description = "(Optional) If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to false , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is false . For more information about Requester Pays buckets, see Requester Pays Buckets in the Amazon Simple Storage Service Developer Guide.Engine Version"
  type        = string
}
variable "arn" {
  description = "ARN of the workgroup"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the workgroup."
  type        = string
}
variable "expected_bucket_owner" {
  description = "(Optional) AWS account ID that you expect to be the owner of the Amazon S3 bucket."
  type        = string
}
variable "force_destroy" {
  description = "(Optional) Option to delete the workgroup and its contents even if the workgroup contains any named queries.Configuration"
  type        = string
}
variable "id" {
  description = "Workgroup name"
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) For SSE_KMS and CSE_KMS, this is the KMS key ARN.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the workgroup."
  type        = string
}
variable "output_location" {
  description = "(Optional) Location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/. For more information, see Queries and Query Result Files.ACL Configuration"
  type        = string
}
variable "result_configuration" {
  description = "(Optional) Configuration block with result settings. See Result Configuration below."
  type        = string
}
variable "selected_engine_version" {
  description = "(Optional) Requested engine version. Defaults to AUTO.Result Configuration"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the workgroup. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "publish_cloudwatch_metrics_enabled" {
  description = "(Optional) Boolean whether Amazon CloudWatch metrics are enabled for the workgroup. Defaults to true."
  value       = aws_athena_workgroup.aws_athena_workgroup.publish_cloudwatch_metrics_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "(Optional) State of the workgroup. Valid values are DISABLED or ENABLED. Defaults to ENABLED."
  value       = aws_athena_workgroup.aws_athena_workgroup.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = "(Optional) Configuration block with encryption settings. See Encryption Configuration below."
  value       = aws_athena_workgroup.aws_athena_workgroup.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bytes_scanned_cutoff_per_query" {
  description = "(Optional) Integer for the upper data usage limit (cutoff) for the amount of bytes a single query in a workgroup is allowed to scan. Must be at least 10485760."
  value       = aws_athena_workgroup.aws_athena_workgroup.bytes_scanned_cutoff_per_query
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration" {
  description = "Configuration block with various settings for the workgroup\n"
  value       = aws_athena_workgroup.aws_athena_workgroup.configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enforce_workgroup_configuration" {
  description = "(Optional) Boolean whether the settings for the workgroup override client-side settings. For more information, see Workgroup Settings Override Client-Side Settings. Defaults to true."
  value       = aws_athena_workgroup.aws_athena_workgroup.enforce_workgroup_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester_pays_enabled" {
  description = "(Optional) If set to true , allows members assigned to a workgroup to reference Amazon S3 Requester Pays buckets in queries. If set to false , workgroup members cannot query data from Requester Pays buckets, and queries that retrieve data from Requester Pays buckets cause an error. The default is false . For more information about Requester Pays buckets, see Requester Pays Buckets in the Amazon Simple Storage Service Developer Guide.Engine Version"
  value       = aws_athena_workgroup.aws_athena_workgroup.requester_pays_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acl_configuration" {
  description = "(Optional) That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below."
  value       = aws_athena_workgroup.aws_athena_workgroup.acl_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the workgroup."
  value       = aws_athena_workgroup.aws_athena_workgroup.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expected_bucket_owner" {
  description = "(Optional) AWS account ID that you expect to be the owner of the Amazon S3 bucket."
  value       = aws_athena_workgroup.aws_athena_workgroup.expected_bucket_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_destroy" {
  description = "(Optional) Option to delete the workgroup and its contents even if the workgroup contains any named queries.Configuration"
  value       = aws_athena_workgroup.aws_athena_workgroup.force_destroy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Workgroup name"
  value       = aws_athena_workgroup.aws_athena_workgroup.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) For SSE_KMS and CSE_KMS, this is the KMS key ARN.In addition to all arguments above, the following attributes are exported:"
  value       = aws_athena_workgroup.aws_athena_workgroup.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the workgroup."
  value       = aws_athena_workgroup.aws_athena_workgroup.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_location" {
  description = "(Optional) Location in Amazon S3 where your query results are stored, such as s3://path/to/query/bucket/. For more information, see Queries and Query Result Files.ACL Configuration"
  value       = aws_athena_workgroup.aws_athena_workgroup.output_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the workgroup"
  value       = aws_athena_workgroup.aws_athena_workgroup.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "selected_engine_version" {
  description = "(Optional) Requested engine version. Defaults to AUTO.Result Configuration"
  value       = aws_athena_workgroup.aws_athena_workgroup.selected_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the workgroup. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_athena_workgroup.aws_athena_workgroup.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "result_configuration" {
  description = "(Optional) Configuration block with result settings. See Result Configuration below."
  value       = aws_athena_workgroup.aws_athena_workgroup.result_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_option" {
  description = "(Required) Whether Amazon S3 server-side encryption with Amazon S3-managed keys (SSE_S3), server-side encryption with KMS-managed keys (SSE_KMS), or client-side encryption with KMS-managed keys (CSE_KMS) is used. If a query runs in a workgroup and the workgroup overrides client-side settings, then the workgroup's setting for encryption is used. It specifies whether query results must be encrypted, for all queries that run in this workgroup."
  value       = aws_athena_workgroup.aws_athena_workgroup.encryption_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Configuration block for the Athena Engine Versioning\n"
  value       = aws_athena_workgroup.aws_athena_workgroup.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_acl_option" {
  description = "(Required) Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is BUCKET_OWNER_FULL_CONTROL.Encryption Configuration"
  value       = aws_athena_workgroup.aws_athena_workgroup.s3_acl_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_engine_version" {
  description = " The engine version on which the query runs. If selected_engine_version is set to AUTO, the effective engine version is chosen by Athena."
  value       = aws_athena_workgroup.aws_athena_workgroup.effective_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the workgroup"
  value       = aws_athena_workgroup.aws_athena_workgroup.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration" {
  description = "Configuration block with various settings for the workgroup\n"
  value       = aws_athena_workgroup.aws_athena_workgroup.configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_engine_version" {
  description = " The engine version on which the query runs. If selected_engine_version is set to AUTO, the effective engine version is chosen by Athena."
  value       = aws_athena_workgroup.aws_athena_workgroup.effective_engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Configuration block for the Athena Engine Versioning\n"
  value       = aws_athena_workgroup.aws_athena_workgroup.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Workgroup name"
  value       = aws_athena_workgroup.aws_athena_workgroup.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_athena_workgroup.aws_athena_workgroup.tags_all
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
      "kind/name"                   = "aws_athena_workgroup"
      "kind/version"                = "v0.1.0"
    }
  }
}
