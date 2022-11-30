resource "aws_s3_access_point" "aws_s3_access_point" {
  PUT Object calls fail if the request includes a public ACL.                            = var.PUT Object calls fail if the request includes a public ACL.
  Reject calls to PUT Bucket policy if the specified bucket policy allows public access. = var.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  alias                                                                                  = var.alias
  has_public_access_policy                                                               = var.has_public_access_policy
  policy                                                                                 = var.policy
  restrict_public_buckets                                                                = var.restrict_public_buckets
  vpc_id                                                                                 = var.vpc_id
  PUT Bucket calls fail if the request includes a public ACL.                            = var.PUT Bucket calls fail if the request includes a public ACL.
  arn                                                                                    = var.arn
  block_public_policy                                                                    = var.block_public_policy
  name                                                                                   = var.name
  network_origin                                                                         = var.network_origin
  Only the bucket owner and AWS Services can access buckets with public policies.        = var.Only the bucket owner and AWS Services can access buckets with public policies.
  account_id                                                                             = var.account_id
  domain_name                                                                            = var.domain_name
  endpoints                                                                              = var.endpoints
  ignore_public_acls                                                                     = var.ignore_public_acls
  vpc_configuration                                                                      = var.vpc_configuration
  PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.           = var.PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
  block_public_acls                                                                      = var.block_public_acls
  bucket                                                                                 = var.bucket
  id                                                                                     = var.id
  public_access_block_configuration                                                      = var.public_access_block_configuration
  Ignore all public ACLs on buckets in this account and any objects that they contain.   = var.Ignore all public ACLs on buckets in this account and any objects that they contain.
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public." {
  description = ""
  type        = string
}
variable "account_id" {
  description = "(Optional) AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the Terraform AWS provider."
  type        = string
}
variable "domain_name" {
  description = "The DNS domain name of the S3 Access Point in the format emname-emaccount_id.s3-accesspoint.emregion"
  type        = string
}
variable "endpoints" {
  description = "The VPC endpoints for the S3 Access Point."
  type        = string
}
variable "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  type        = string
}
variable "vpc_configuration" {
  description = "(Optional) Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.public_access_block_configuration Configuration Block"
  type        = string
}
variable "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  type        = string
}
variable "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect existing policies or ACLs. When set to true"
  type        = string
}
variable "bucket" {
  description = "(Required) Name of an AWS Partition S3 Bucket or the Amazon Resource Name (ARN) of S3 on Outposts Bucket that you want to associate this access point with."
  type        = string
}
variable "id" {
  description = "For Access Point of an AWS Partition S3 Bucket, the AWS account ID and access point name separated by a colon (:). For S3 on Outposts Bucket, the Amazon Resource Name (ARN) of the Access Point."
  type        = string
}
variable "public_access_block_configuration" {
  description = "(Optional) Configuration block to manage the PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below."
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
  description = "The alias of the S3 Access Point."
  type        = string
}
variable "has_public_access_policy" {
  description = "Indicates whether this access point currently has a policy that allows public access."
  type        = string
}
variable "policy" {
  description = "(Optional) Valid JSON document that specifies the policy that you want to apply to this access point. Removing policy from your configuration or setting policy to null or an empty string (i.e., policy = \"\") emwill not delete the policy since it could have been set by aws_s3control_access_point_policy. To remove the policy, set it to \"{}\" (an empty JSON document)."
  type        = string
}
variable "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  type        = string
}
variable "vpc_id" {
  description = "(Required)  This access point will only allow connections from the specified VPC ID.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "vpc_configuration Configuration Block"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Access Point."
  type        = string
}
variable "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect existing bucket policies. When set to true"
  type        = string
}
variable "name" {
  description = "(Required) Name you want to assign to this access point."
  type        = string
}
variable "network_origin" {
  description = "Indicates whether this access point allows access from the public Internet. Values are VPC (the access point doesn't allow access from the public Internet) and Internet (the access point allows access from the public Internet, subject to the access point and bucket access policies)."
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
output "account_id" {
  description = "(Optional) AWS account ID for the owner of the bucket for which you want to create an access point. Defaults to automatically determined account ID of the Terraform AWS provider."
  value       = aws_s3_access_point.aws_s3_access_point.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "The DNS domain name of the S3 Access Point in the format emname-emaccount_id.s3-accesspoint.emregion"
  value       = aws_s3_access_point.aws_s3_access_point.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoints" {
  description = "The VPC endpoints for the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ignore_public_acls" {
  description = "(Optional) Whether Amazon S3 should ignore public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect the persistence of any existing ACLs and doesn't prevent new public ACLs from being set. When set to true"
  value       = aws_s3_access_point.aws_s3_access_point.ignore_public_acls
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_configuration" {
  description = "(Optional) Configuration block to restrict access to this access point to requests from the specified Virtual Private Cloud (VPC). Required for S3 on Outposts. Detailed below.public_access_block_configuration Configuration Block"
  value       = aws_s3_access_point.aws_s3_access_point.vpc_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public." {
  description = ""
  value       = aws_s3_access_point.aws_s3_access_point.PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_public_acls" {
  description = "(Optional) Whether Amazon S3 should block public ACLs for buckets in this account. Defaults to true. Enabling this setting does not affect existing policies or ACLs. When set to true"
  value       = aws_s3_access_point.aws_s3_access_point.block_public_acls
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) Name of an AWS Partition S3 Bucket or the Amazon Resource Name (ARN) of S3 on Outposts Bucket that you want to associate this access point with."
  value       = aws_s3_access_point.aws_s3_access_point.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "For Access Point of an AWS Partition S3 Bucket, the AWS account ID and access point name separated by a colon (:). For S3 on Outposts Bucket, the Amazon Resource Name (ARN) of the Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_access_block_configuration" {
  description = "(Optional) Configuration block to manage the PublicAccessBlock configuration that you want to apply to this Amazon S3 bucket. You can enable the configuration options in any combination. Detailed below."
  value       = aws_s3_access_point.aws_s3_access_point.public_access_block_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Ignore all public ACLs on buckets in this account and any objects that they contain." {
  description = ""
  value       = aws_s3_access_point.aws_s3_access_point.Ignore all public ACLs on buckets in this account and any objects that they contain.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Object calls fail if the request includes a public ACL." {
  description = ""
  value       = aws_s3_access_point.aws_s3_access_point.PUT Object calls fail if the request includes a public ACL.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Reject calls to PUT Bucket policy if the specified bucket policy allows public access." {
  description = ""
  value       = aws_s3_access_point.aws_s3_access_point.Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alias" {
  description = "The alias of the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_public_access_policy" {
  description = "Indicates whether this access point currently has a policy that allows public access."
  value       = aws_s3_access_point.aws_s3_access_point.has_public_access_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional) Valid JSON document that specifies the policy that you want to apply to this access point. Removing policy from your configuration or setting policy to null or an empty string (i.e., policy = \"\") emwill not delete the policy since it could have been set by aws_s3control_access_point_policy. To remove the policy, set it to \"{}\" (an empty JSON document)."
  value       = aws_s3_access_point.aws_s3_access_point.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "restrict_public_buckets" {
  description = "(Optional) Whether Amazon S3 should restrict public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect previously stored bucket policies, except that public and cross-account access within any public bucket policy, including non-public delegation to specific accounts, is blocked. When set to true"
  value       = aws_s3_access_point.aws_s3_access_point.restrict_public_buckets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required)  This access point will only allow connections from the specified VPC ID.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_access_point.aws_s3_access_point.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PUT Bucket calls fail if the request includes a public ACL." {
  description = ""
  value       = aws_s3_access_point.aws_s3_access_point.PUT Bucket calls fail if the request includes a public ACL.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_public_policy" {
  description = "(Optional) Whether Amazon S3 should block public bucket policies for buckets in this account. Defaults to true. Enabling this setting does not affect existing bucket policies. When set to true"
  value       = aws_s3_access_point.aws_s3_access_point.block_public_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name you want to assign to this access point."
  value       = aws_s3_access_point.aws_s3_access_point.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_origin" {
  description = "Indicates whether this access point allows access from the public Internet. Values are VPC (the access point doesn't allow access from the public Internet) and Internet (the access point allows access from the public Internet, subject to the access point and bucket access policies)."
  value       = aws_s3_access_point.aws_s3_access_point.network_origin
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "Only the bucket owner and AWS Services can access buckets with public policies." {
  description = "vpc_configuration Configuration Block"
  value       = aws_s3_access_point.aws_s3_access_point.Only the bucket owner and AWS Services can access buckets with public policies.
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alias" {
  description = "The alias of the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "The DNS domain name of the S3 Access Point in the format emname-emaccount_id.s3-accesspoint.emregion"
  value       = aws_s3_access_point.aws_s3_access_point.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoints" {
  description = "The VPC endpoints for the S3 Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "has_public_access_policy" {
  description = "Indicates whether this access point currently has a policy that allows public access."
  value       = aws_s3_access_point.aws_s3_access_point.has_public_access_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "For Access Point of an AWS Partition S3 Bucket, the AWS account ID and access point name separated by a colon (:). For S3 on Outposts Bucket, the Amazon Resource Name (ARN) of the Access Point."
  value       = aws_s3_access_point.aws_s3_access_point.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_origin" {
  description = "Indicates whether this access point allows access from the public Internet. Values are VPC (the access point doesn't allow access from the public Internet) and Internet (the access point allows access from the public Internet, subject to the access point and bucket access policies)."
  value       = aws_s3_access_point.aws_s3_access_point.network_origin
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
      "kind/name"                   = "aws_s3_access_point"
      "kind/version"                = "v0.1.0"
    }
  }
}
