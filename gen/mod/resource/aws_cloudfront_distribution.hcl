resource "aws_cloudfront_distribution" "aws_cloudfront_distribution" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
  description = "The ARN (Amazon Resource Name) for the distribution. For example: arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5, where 123456789012 is your AWS account ID."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future\nupdates to the distribution configuration."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.caller_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "d604721fxaaqy9.cloudfront.net."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_pair_ids" {
  description = "Set of active CloudFront key pairs associated with the signer account"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.key_pair_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "trusted_key_groups" {
  description = "List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.trusted_key_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "in_progress_validation_batches" {
  description = "The number of invalidation batches\ncurrently in progress."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.in_progress_validation_batches
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "trusted_signers" {
  description = "List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.trusted_signers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "etag" {
  description = "E2QWRUHAPOMQZL."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.etag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "Alias Resource Record SetZ2FDTNDATAQYW2."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.hosted_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier for the distribution. For example: EDFDVBD632BHDS5."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "items" {
  description = "List of nested attributes for each trusted signer\n"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.items
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_group_id" {
  description = "The ID of the key group that contains the public keys"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.key_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_account_number" {
  description = "AWS account ID or self"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.aws_account_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "true if any of the AWS accounts listed as trusted signers have active CloudFront key pairs"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified_time" {
  description = "The date and time the distribution was last modified."
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.last_modified_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the distribution. Deployed"
  value       = aws_cloudfront_distribution.aws_cloudfront_distribution.status
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
      "kind/name"                   = "aws_cloudfront_distribution"
      "kind/version"                = "v0.1.0"
    }
  }
}
