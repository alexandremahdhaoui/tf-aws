resource "aws_rolesanywhere_trust_anchor" "aws_rolesanywhere_trust_anchor" {
  source                = var.source
  source_data           = var.source_data
  x509_certificate_data = var.x509_certificate_data
  acm_pca_arn           = var.acm_pca_arn
  arn                   = var.arn
  id                    = var.id
  tags                  = var.tags
  enabled               = var.enabled
  name                  = var.name
  source_type           = var.source_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether or not the Trust Anchor should be enabled."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the Trust Anchor."
  type        = string
}
variable "source_type" {
  description = "(Required) The type of the source of trust. Must be either AWS_ACM_PCA or CERTIFICATE_BUNDLE.source_data"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blockssource"
  type        = string
  default     = ""
}
variable "acm_pca_arn" {
  description = "(Optional, required when source_type is AWS_ACM_PCA) The ARN of an ACM Private Certificate Authority."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Trust Anchor"
  type        = string
}
variable "id" {
  description = "The Trust Anchor ID."
  type        = string
}
variable "source" {
  description = "(Required) The source of trust, documented below"
  type        = string
}
variable "source_data" {
  description = "(Required) The data denoting the source of trust, documented below"
  type        = string
}
variable "x509_certificate_data" {
  description = "(Optional, required when source_type is CERTIFICATE_BUNDLE)In addition to all arguments above, the following attributes are exported:"
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
output "id" {
  description = "The Trust Anchor ID."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.id
}
output "source" {
  description = "(Required) The source of trust, documented below"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.source
}
output "source_data" {
  description = "(Required) The data denoting the source of trust, documented below"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.source_data
}
output "x509_certificate_data" {
  description = "(Optional, required when source_type is CERTIFICATE_BUNDLE)In addition to all arguments above, the following attributes are exported:"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.x509_certificate_data
}
output "acm_pca_arn" {
  description = "(Optional, required when source_type is AWS_ACM_PCA) The ARN of an ACM Private Certificate Authority."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.acm_pca_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Trust Anchor"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.arn
}
output "source_type" {
  description = "(Required) The type of the source of trust. Must be either AWS_ACM_PCA or CERTIFICATE_BUNDLE.source_data"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.source_type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blockssource"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.tags
}
output "enabled" {
  description = "(Optional) Whether or not the Trust Anchor should be enabled."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.enabled
}
output "name" {
  description = "(Required) The name of the Trust Anchor."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.name
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Trust Anchor"
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.arn
}
output "id" {
  description = "The Trust Anchor ID."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_rolesanywhere_trust_anchor.aws_rolesanywhere_trust_anchor.tags_all
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
      "kind/name"                   = "aws_rolesanywhere_trust_anchor"
      "kind/version"                = "v0.1.0"
    }
  }
}
