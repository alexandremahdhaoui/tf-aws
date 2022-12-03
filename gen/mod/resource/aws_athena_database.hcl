resource "aws_athena_database" "aws_athena_database" {
  bucket                   = var.bucket
  encryption_configuration = var.encryption_configuration
  expected_bucket_owner    = var.expected_bucket_owner
  force_destroy            = var.force_destroy
  properties               = var.properties
  s3_acl_option            = var.s3_acl_option
  acl_configuration        = var.acl_configuration
  comment                  = var.comment
  encryption_option        = var.encryption_option
  kms_key                  = var.kms_key
  name                     = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "acl_configuration" {
  description = "(Optional) That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below."
  type        = string
  default     = ""
}
variable "comment" {
  description = "(Optional) Description of the database."
  type        = string
  default     = ""
}
variable "encryption_option" {
  description = "(Required) Type of key; one of SSE_S3, SSE_KMS, CSE_KMS"
  type        = string
}
variable "kms_key" {
  description = "(Optional) KMS key ARN or ID; required for key types SSE_KMS and CSE_KMS.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the database to create."
  type        = string
}
variable "s3_acl_option" {
  description = "(Required) Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is BUCKET_OWNER_FULL_CONTROL.~> strongNOTE: When Athena queries are executed, result files may be created in the specified bucket. Consider using force_destroy on the bucket too in order to avoid any problems when destroying the bucket.Encryption Configuration"
  type        = string
}
variable "bucket" {
  description = "(Required) Name of S3 bucket to save the results of the query execution."
  type        = string
}
variable "encryption_configuration" {
  description = "(Optional) Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below."
  type        = string
  default     = ""
}
variable "expected_bucket_owner" {
  description = "(Optional) AWS account ID that you expect to be the owner of the Amazon S3 bucket."
  type        = string
  default     = ""
}
variable "force_destroy" {
  description = "(Optional, Default: false) Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are emnot recoverable."
  type        = string
}
variable "properties" {
  description = "(Optional) Key-value map of custom metadata properties for the database definition.ACL Configuration"
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
output "expected_bucket_owner" {
  description = "(Optional) AWS account ID that you expect to be the owner of the Amazon S3 bucket."
  value       = aws_athena_database.aws_athena_database.expected_bucket_owner
}
output "force_destroy" {
  description = "(Optional, Default: false) Boolean that indicates all tables should be deleted from the database so that the database can be destroyed without error. The tables are emnot recoverable."
  value       = aws_athena_database.aws_athena_database.force_destroy
}
output "properties" {
  description = "(Optional) Key-value map of custom metadata properties for the database definition.ACL Configuration"
  value       = aws_athena_database.aws_athena_database.properties
}
output "bucket" {
  description = "(Required) Name of S3 bucket to save the results of the query execution."
  value       = aws_athena_database.aws_athena_database.bucket
}
output "encryption_configuration" {
  description = "(Optional) Encryption key block AWS Athena uses to decrypt the data in S3, such as an AWS Key Management Service (AWS KMS) key. See Encryption Configuration below."
  value       = aws_athena_database.aws_athena_database.encryption_configuration
}
output "encryption_option" {
  description = "(Required) Type of key; one of SSE_S3, SSE_KMS, CSE_KMS"
  value       = aws_athena_database.aws_athena_database.encryption_option
}
output "kms_key" {
  description = "(Optional) KMS key ARN or ID; required for key types SSE_KMS and CSE_KMS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_athena_database.aws_athena_database.kms_key
}
output "name" {
  description = "(Required) Name of the database to create."
  value       = aws_athena_database.aws_athena_database.name
}
output "s3_acl_option" {
  description = "(Required) Amazon S3 canned ACL that Athena should specify when storing query results. Valid value is BUCKET_OWNER_FULL_CONTROL.~> strongNOTE: When Athena queries are executed, result files may be created in the specified bucket. Consider using force_destroy on the bucket too in order to avoid any problems when destroying the bucket.Encryption Configuration"
  value       = aws_athena_database.aws_athena_database.s3_acl_option
}
output "acl_configuration" {
  description = "(Optional) That an Amazon S3 canned ACL should be set to control ownership of stored query results. See ACL Configuration below."
  value       = aws_athena_database.aws_athena_database.acl_configuration
}
output "comment" {
  description = "(Optional) Description of the database."
  value       = aws_athena_database.aws_athena_database.comment
}
output "id" {
  description = "Database name"
  value       = aws_athena_database.aws_athena_database.id
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
      "kind/name"                   = "aws_athena_database"
      "kind/version"                = "v0.1.0"
    }
  }
}
