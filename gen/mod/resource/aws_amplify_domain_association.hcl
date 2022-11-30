resource "aws_amplify_domain_association" "aws_amplify_domain_association" {
  branch_name                         = var.branch_name
  dns_record                          = var.dns_record
  domain_name                         = var.domain_name
  arn                                 = var.arn
  certificate_verification_dns_record = var.certificate_verification_dns_record
  prefix                              = var.prefix
  sub_domain                          = var.sub_domain
  wait_for_verification               = var.wait_for_verification
  app_id                              = var.app_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN for the domain association."
  type        = string
}
variable "branch_name" {
  description = "(Required) Branch name setting for the subdomain."
  type        = string
}
variable "dns_record" {
  description = "DNS record for the subdomain."
  type        = string
}
variable "domain_name" {
  description = "(Required) Domain name for the domain association."
  type        = string
}
variable "app_id" {
  description = "(Required) Unique ID for an Amplify app."
  type        = string
}
variable "certificate_verification_dns_record" {
  description = "The DNS record for certificate verification.The sub_domain configuration block exports the following attributes:"
  type        = string
}
variable "prefix" {
  description = "(Required) Prefix setting for the subdomain.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "sub_domain" {
  description = "(Required) Setting for the subdomain. Documented below."
  type        = string
}
variable "wait_for_verification" {
  description = "(Optional) If enabled, the resource will wait for the domain association status to change to PENDING_DEPLOYMENT or AVAILABLE. Setting this to false will skip the process. Default: true.The sub_domain configuration block supports the following arguments:"
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
  description = "ARN for the domain association."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "branch_name" {
  description = "(Required) Branch name setting for the subdomain."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.branch_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_record" {
  description = "DNS record for the subdomain."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.dns_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Required) Domain name for the domain association."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "app_id" {
  description = "(Required) Unique ID for an Amplify app."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.app_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_verification_dns_record" {
  description = "The DNS record for certificate verification.The sub_domain configuration block exports the following attributes:"
  value       = aws_amplify_domain_association.aws_amplify_domain_association.certificate_verification_dns_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "(Required) Prefix setting for the subdomain.In addition to all arguments above, the following attributes are exported:"
  value       = aws_amplify_domain_association.aws_amplify_domain_association.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sub_domain" {
  description = "(Required) Setting for the subdomain. Documented below."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.sub_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wait_for_verification" {
  description = "(Optional) If enabled, the resource will wait for the domain association status to change to PENDING_DEPLOYMENT or AVAILABLE. Setting this to false will skip the process. Default: true.The sub_domain configuration block supports the following arguments:"
  value       = aws_amplify_domain_association.aws_amplify_domain_association.wait_for_verification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN for the domain association."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_verification_dns_record" {
  description = "The DNS record for certificate verification.The sub_domain configuration block exports the following attributes:"
  value       = aws_amplify_domain_association.aws_amplify_domain_association.certificate_verification_dns_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_record" {
  description = "DNS record for the subdomain."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.dns_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "verified" {
  description = "Verified status of the subdomain."
  value       = aws_amplify_domain_association.aws_amplify_domain_association.verified
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
      "kind/name"                   = "aws_amplify_domain_association"
      "kind/version"                = "v0.1.0"
    }
  }
}
