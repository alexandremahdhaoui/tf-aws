resource "aws_s3control_multi_region_access_point" "aws_s3control_multi_region_access_point" {
  PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.           = var.PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
  create                                                                                 = var.create
  delete                                                                                 = var.delete
  ignore_public_acls                                                                     = var.ignore_public_acls
  region                                                                                 = var.region
  block_public_policy                                                                    = var.block_public_policy
  details                                                                                = var.details
  domain_name                                                                            = var.domain_name
  Only the bucket owner and AWS Services can access buckets with public policies.        = var.Only the bucket owner and AWS Services can access buckets with public policies.
  PUT Bucket calls fail if the request includes a public ACL.                            = var.PUT Bucket calls fail if the request includes a public ACL.
  PUT Object calls fail if the request includes a public ACL.                            = var.PUT Object calls fail if the request includes a public ACL.
  Reject calls to PUT Bucket policy if the specified bucket policy allows public access. = var.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  alias                                                                                  = var.alias
  name                                                                                   = var.name
  arn                                                                                    = var.arn
  block_public_acls                                                                      = var.block_public_acls
  bucket                                                                                 = var.bucket
  id                                                                                     = var.id
  restrict_public_buckets                                                                = var.restrict_public_buckets
  Ignore all public ACLs on buckets in this account and any objects that they contain.   = var.Ignore all public ACLs on buckets in this account and any objects that they contain.
  account_id                                                                             = var.account_id
  public_access_block                                                                    = var.public_access_block
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public." {
  description = ""
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "delete" {
  description = "(Default 15m)Details ConfigurationThe details block supports the following:"
  type        = string
}
variable "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  type        = string
}
variable "region" {
  description = "(Required) The Region configuration block to specify the bucket associated with the Multi-Region Access Point. See Region Configuration below for more details.For more information, see the documentation on Multi-Region Access Points.Public Access Block ConfigurationThe public_access_block block supports the following:"
  type        = string
}
variable "domain_name" {
  description = "The DNS domain name of the S3 Multi-Region Access Point in the format emalias.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on Multi-Region Access Point Requests."
  type        = string
}
variable "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "Region ConfigurationThe region block supports the following:"
  type        = string
}
variable "PUT Bucket calls fail if the request includes a public ACL." {
  description = ""
  type        = string
}
variable "PUT Object calls fail if the request includes a public ACL." {
  description = ""
  type        = string
}
variable "Reject calls to PUT Bucket policy if the specified bucket policy allows public access." {
  description = ""
  type        = string
}
variable "alias" {
  description = "The alias for the Multi-Region Access Point."
  type        = string
}
variable "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect existing bucket policies. When set to true"
  type        = string
}
variable "details" {
  description = "(Required) A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more detailsTimeoutsConfiguration options:"
  type        = string
}
variable "name" {
  description = "(Required) The name of the Multi-Region Access Point."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Multi-Region Access Point."
  type        = string
}
variable "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect existing policies or ACLs. When set to true"
  type        = string
}
variable "bucket" {
  description = "(Required) The name of the associated bucket for the Region.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  type        = string
}
variable "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  type        = string
}
variable "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  type        = string
}
variable "account_id" {
  description = "(Optional) The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  type        = string
}
variable "public_access_block" {
  description = "(Optional) Configuration block to manage the PublicAccessBlock configuration that you want to apply to this Multi-Region Access Point. You can enable the configuration options in any combination. See Public Access Block Configuration below for more details."
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
output "details" {
  description = "(Required) A configuration block containing details about the Multi-Region Access Point. See Details Configuration Block below for more detailsTimeoutsConfiguration options:"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "The DNS domain name of the S3 Multi-Region Access Point in the format emalias.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on Multi-Region Access Point Requests."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "Region ConfigurationThe region block supports the following:"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.Only the bucket owner and AWS Services can access buckets with public policies.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Bucket calls fail if the request includes a public ACL." {
  description = ""
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.PUT Bucket calls fail if the request includes a public ACL.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Object calls fail if the request includes a public ACL." {
  description = ""
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.PUT Object calls fail if the request includes a public ACL.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Reject calls to PUT Bucket policy if the specified bucket policy allows public access." {
  description = ""
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alias" {
  description = "The alias for the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect existing bucket policies. When set to true"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.block_public_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect existing policies or ACLs. When set to true"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.block_public_acls
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) The name of the associated bucket for the Region.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.restrict_public_buckets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.Ignore all public ACLs on buckets in this account and any objects that they contain.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "(Optional) The AWS account ID for the owner of the buckets for which you want to create a Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_access_block" {
  description = "(Optional) Configuration block to manage the PublicAccessBlock configuration that you want to apply to this Multi-Region Access Point. You can enable the configuration options in any combination. See Public Access Block Configuration below for more details."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.public_access_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public." {
  description = ""
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 15m)Details ConfigurationThe details block supports the following:"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.ignore_public_acls
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "(Required) The Region configuration block to specify the bucket associated with the Multi-Region Access Point. See Region Configuration below for more details.For more information, see the documentation on Multi-Region Access Points.Public Access Block ConfigurationThe public_access_block block supports the following:"
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the Multi-Region Access Point. One of: READY, INCONSISTENT_ACROSS_REGIONS, CREATING, PARTIALLY_CREATED, PARTIALLY_DELETED, DELETING."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alias" {
  description = "The alias for the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "The DNS domain name of the S3 Multi-Region Access Point in the format emalias.accesspoint.s3-global.amazonaws.com. For more information, see the documentation on Multi-Region Access Point Requests."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  value       = aws_s3control_multi_region_access_point.aws_s3control_multi_region_access_point.id
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
      "kind/name"                   = "aws_s3control_multi_region_access_point"
      "kind/version"                = "v0.1.0"
    }
  }
}
