resource "aws_s3_account_public_access_block" "aws_s3_account_public_access_block" {
  block_public_policy                                                                          = var.block_public_policy
  PUT Object calls fail if the request includes a public ACL.                                  = var.PUT Object calls fail if the request includes a public ACL.
  account_id                                                                                   = var.account_id
  block_public_acls                                                                            = var.block_public_acls
  Reject calls to PUT Bucket policy if the specified bucket policy allows public access.       = var.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  ignore_public_acls                                                                           = var.ignore_public_acls
  restrict_public_buckets                                                                      = var.restrict_public_buckets
  Ignore all public ACLs on buckets in this account and any objects that they contain.         = var.Ignore all public ACLs on buckets in this account and any objects that they contain.
  Only the bucket owner and AWS Services can access buckets with public policies.              = var.Only the bucket owner and AWS Services can access buckets with public policies.
  PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access. = var.PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "PUT Object calls fail if the request includes a public ACL." {
  description = ""
  type        = string
}
variable "account_id" {
  description = "(Optional) AWS account ID to configure. Defaults to automatically determined account ID of the Terraform AWS provider."
  type        = string
  default     = ""
}
variable "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to false. Enabling this setting does not affect existing policies or ACLs. When set to true"
  type        = string
  default     = ""
}
variable "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to false. Enabling this setting does not affect existing bucket policies. When set to true"
  type        = string
  default     = ""
}
variable "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to false. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  type        = string
  default     = ""
}
variable "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to false. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  type        = string
  default     = ""
}
variable "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  type        = string
}
variable "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access." {
  description = ""
  type        = string
}
variable "Reject calls to PUT Bucket policy if the specified bucket policy allows public access." {
  description = ""
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
output "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to false. Enabling this setting does not affect existing policies or ACLs. When set to true"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_acls
}
output "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to false. Enabling this setting does not affect existing bucket policies. When set to true"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.block_public_policy
}
output "PUT Object calls fail if the request includes a public ACL." {
  description = ""
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.PUT Object calls fail if the request includes a public ACL.
}
output "account_id" {
  description = "(Optional) AWS account ID to configure. Defaults to automatically determined account ID of the Terraform AWS provider."
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.account_id
}
output "PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access." {
  description = ""
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.PUT Bucket acl and PUT Object acl calls will fail if the specified ACL allows public access.
}
output "Reject calls to PUT Bucket policy if the specified bucket policy allows public access." {
  description = ""
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
}
output "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to false. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.ignore_public_acls
}
output "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to false. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.restrict_public_buckets
}
output "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.Ignore all public ACLs on buckets in this account and any objects that they contain.
}
output "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.Only the bucket owner and AWS Services can access buckets with public policies.
}
output "id" {
  description = "AWS account ID"
  value       = aws_s3_account_public_access_block.aws_s3_account_public_access_block.id
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
      "kind/name"                   = "aws_s3_account_public_access_block"
      "kind/version"                = "v0.1.0"
    }
  }
}
