resource "aws_acmpca_certificate" "aws_acmpca_certificate" {
  certificate_signing_request = var.certificate_signing_request
  signing_algorithm           = var.signing_algorithm
  template_arn                = var.template_arn
  arn                         = var.arn
  certificate                 = var.certificate
  certificate_authority_arn   = var.certificate_authority_arn
  type                        = var.type
  validity                    = var.validity
  value                       = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "template_arn" {
  description = "ACM PCA Documentation for more information.validity block"
  type        = string
}
variable "certificate_signing_request" {
  description = "(Required) Certificate Signing Request in PEM format."
  type        = string
}
variable "signing_algorithm" {
  description = "(Required) Algorithm to use to sign certificate requests. Valid values: SHA256WITHRSA, SHA256WITHECDSA, SHA384WITHRSA, SHA384WITHECDSA, SHA512WITHRSA, SHA512WITHECDSA."
  type        = string
}
variable "certificate_authority_arn" {
  description = "(Required) ARN of the certificate authority."
  type        = string
}
variable "type" {
  description = "(Required) Determines how value is interpreted. Valid values: DAYS, MONTHS, YEARS, ABSOLUTE, END_DATE."
  type        = string
}
variable "validity" {
  description = "(Required) Configures end of the validity period for the certificate. See validity block below."
  type        = string
}
variable "value" {
  description = "(Required) If type is DAYS, MONTHS, or YEARS, the relative time until the certificate expires. If type is ABSOLUTE, the date in seconds since the Unix epoch. If type is END_DATE, the  date in RFC 3339 format.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the certificate."
  type        = string
}
variable "certificate" {
  description = "PEM-encoded certificate value."
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
output "certificate_signing_request" {
  description = "(Required) Certificate Signing Request in PEM format."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate_signing_request
}
output "signing_algorithm" {
  description = "(Required) Algorithm to use to sign certificate requests. Valid values: SHA256WITHRSA, SHA256WITHECDSA, SHA384WITHRSA, SHA384WITHECDSA, SHA512WITHRSA, SHA512WITHECDSA."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.signing_algorithm
}
output "template_arn" {
  description = "ACM PCA Documentation for more information.validity block"
  value       = aws_acmpca_certificate.aws_acmpca_certificate.template_arn
}
output "arn" {
  description = "ARN of the certificate."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.arn
}
output "certificate" {
  description = "PEM-encoded certificate value."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate
}
output "certificate_authority_arn" {
  description = "(Required) ARN of the certificate authority."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate_authority_arn
}
output "type" {
  description = "(Required) Determines how value is interpreted. Valid values: DAYS, MONTHS, YEARS, ABSOLUTE, END_DATE."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.type
}
output "validity" {
  description = "(Required) Configures end of the validity period for the certificate. See validity block below."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.validity
}
output "value" {
  description = "(Required) If type is DAYS, MONTHS, or YEARS, the relative time until the certificate expires. If type is ABSOLUTE, the date in seconds since the Unix epoch. If type is END_DATE, the  date in RFC 3339 format.In addition to all arguments above, the following attributes are exported:"
  value       = aws_acmpca_certificate.aws_acmpca_certificate.value
}
output "arn" {
  description = "ARN of the certificate."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.arn
}
output "certificate" {
  description = "PEM-encoded certificate value."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate
}
output "certificate_chain" {
  description = "PEM-encoded certificate chain that includes any intermediate certificates and chains up to root CA."
  value       = aws_acmpca_certificate.aws_acmpca_certificate.certificate_chain
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
      "kind/name"                   = "aws_acmpca_certificate"
      "kind/version"                = "v0.1.0"
    }
  }
}
