resource "aws_acm_certificate" "aws_acm_certificate" {
  arn                                         = var.arn
  id                                          = var.id
  validation_emails                           = var.validation_emails
  certificate_body                            = var.certificate_body
  domain_name                                 = var.domain_name
  pending_renewal                             = var.pending_renewal
  validation_option                           = var.validation_option
  renewal_status                              = var.renewal_status
  resource_record_value                       = var.resource_record_value
  status                                      = var.status
  certificate_authority_arn                   = var.certificate_authority_arn
  certificate_chain                           = var.certificate_chain
  early_renewal_duration                      = var.early_renewal_duration
  options                                     = var.options
  renewal_eligibility                         = var.renewal_eligibility
  subject_alternative_names                   = var.subject_alternative_names
  not_before                                  = var.not_before
  validation_method                           = var.validation_method
  tags                                        = var.tags
  tags_all                                    = var.tags_all
  certificate_transparency_logging_preference = var.certificate_transparency_logging_preference
  domain_validation_options                   = var.domain_validation_options
  private_key                                 = var.private_key
  renewal_summary                             = var.renewal_summary
  resource_record_type                        = var.resource_record_type
  type                                        = var.type
  not_after                                   = var.not_after
  resource_record_name                        = var.resource_record_name
  validation_domain                           = var.validation_domain
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "type" {
  description = "Source of the certificate."
  type        = string
}
variable "not_after" {
  description = "Expiration date and time of the certificate."
  type        = string
}
variable "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  type        = string
}
variable "validation_domain" {
  description = "(Required) Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the domain_name value or a superdomain of the domain_name value. For example, if you request a certificate for \"testing.example.com\", you can specify \"example.com\" for this value.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the certificate"
  type        = string
}
variable "id" {
  description = "ARN of the certificate"
  type        = string
}
variable "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  type        = string
}
variable "certificate_body" {
  description = "(Required) Certificate's PEM-formatted public key"
  type        = string
}
variable "domain_name" {
  description = "Domain to be validated"
  type        = string
}
variable "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  type        = string
}
variable "validation_option" {
  description = "(Optional) Configuration block used to specify information about the initial validation of each domain name. Detailed below."
  type        = string
}
variable "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  type        = string
}
variable "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  type        = string
}
variable "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  type        = string
}
variable "status" {
  description = "Status of the certificate."
  type        = string
}
variable "certificate_authority_arn" {
  description = "(Required) ARN of an ACM PCA"
  type        = string
}
variable "certificate_chain" {
  description = "(Optional) Certificate's PEM-formatted chain"
  type        = string
}
variable "early_renewal_duration" {
  description = "(Optional) Amount of time to start automatic renewal process before expiration.\nHas no effect if less than 60 days.\nRepresented by either\na subset of RFC 3339 duration supporting years, months, and days (e.g., P90D2160h."
  type        = string
}
variable "options" {
  description = "(Optional) Configuration block used to set certificate options. Detailed below."
  type        = string
}
variable "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate.\nTo remove all elements of a previously configured list, set this value equal to an empty list ([]terraform taint command to trigger recreation."
  type        = string
}
variable "not_before" {
  description = "Start of the validity period of the certificate."
  type        = string
}
variable "validation_method" {
  description = "(Required) Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
  type        = string
}
variable "resource_record_type" {
  description = "The type of DNS record to create"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Configuration BlockSupported nested arguments for the options configuration block:"
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "certificate_transparency_logging_preference" {
  description = "(Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.validation_option Configuration BlockSupported nested arguments for the validation_option configuration block:"
  type        = string
}
variable "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  type        = string
}
variable "private_key" {
  description = "(Required) Certificate's PEM-formatted private key"
  type        = string
}
variable "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
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
output "status" {
  description = "Status of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_authority_arn" {
  description = "(Required) ARN of an ACM PCA"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_authority_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_chain" {
  description = "(Optional) Certificate's PEM-formatted chain"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_chain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "early_renewal_duration" {
  description = "(Optional) Amount of time to start automatic renewal process before expiration.\nHas no effect if less than 60 days.\nRepresented by either\na subset of RFC 3339 duration supporting years, months, and days (e.g., P90D2160h."
  value       = aws_acm_certificate.aws_acm_certificate.early_renewal_duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "options" {
  description = "(Optional) Configuration block used to set certificate options. Detailed below."
  value       = aws_acm_certificate.aws_acm_certificate.options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_eligibility
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate.\nTo remove all elements of a previously configured list, set this value equal to an empty list ([]terraform taint command to trigger recreation."
  value       = aws_acm_certificate.aws_acm_certificate.subject_alternative_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_before" {
  description = "Start of the validity period of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_before
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation_method" {
  description = "(Required) Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
  value       = aws_acm_certificate.aws_acm_certificate.validation_method
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_transparency_logging_preference" {
  description = "(Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.validation_option Configuration BlockSupported nested arguments for the validation_option configuration block:"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_transparency_logging_preference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  value       = aws_acm_certificate.aws_acm_certificate.domain_validation_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_key" {
  description = "(Required) Certificate's PEM-formatted private key"
  value       = aws_acm_certificate.aws_acm_certificate.private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_summary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_type" {
  description = "The type of DNS record to create"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Configuration BlockSupported nested arguments for the options configuration block:"
  value       = aws_acm_certificate.aws_acm_certificate.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_acm_certificate.aws_acm_certificate.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Source of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_after" {
  description = "Expiration date and time of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_after
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation_domain" {
  description = "(Required) Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the domain_name value or a superdomain of the domain_name value. For example, if you request a certificate for \"testing.example.com\", you can specify \"example.com\" for this value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_emails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_body" {
  description = "(Required) Certificate's PEM-formatted public key"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "Domain to be validated"
  value       = aws_acm_certificate.aws_acm_certificate.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = aws_acm_certificate.aws_acm_certificate.pending_renewal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation_option" {
  description = "(Optional) Configuration block used to specify information about the initial validation of each domain name. Detailed below."
  value       = aws_acm_certificate.aws_acm_certificate.validation_option
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "Domain to be validated"
  value       = aws_acm_certificate.aws_acm_certificate.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_after" {
  description = "Expiration date and time of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_after
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_eligibility
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  value       = aws_acm_certificate.aws_acm_certificate.domain_validation_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_status_reason" {
  description = "The reason that a renewal request was unsuccessful or is pending"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_type" {
  description = "The type of DNS record to create"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Source of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_acm_certificate.aws_acm_certificate.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_emails
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not_before" {
  description = "Start of the validity period of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_before
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = aws_acm_certificate.aws_acm_certificate.pending_renewal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_summary
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.status
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
      "kind/name"                   = "aws_acm_certificate"
      "kind/version"                = "v0.1.0"
    }
  }
}
