resource "aws_acm_certificate" "aws_acm_certificate" {
  not_after                                   = var.not_after
  options                                     = var.options
  pending_renewal                             = var.pending_renewal
  private_key                                 = var.private_key
  resource_record_name                        = var.resource_record_name
  tags_all                                    = var.tags_all
  validation_method                           = var.validation_method
  domain_name                                 = var.domain_name
  early_renewal_duration                      = var.early_renewal_duration
  not_before                                  = var.not_before
  renewal_summary                             = var.renewal_summary
  subject_alternative_names                   = var.subject_alternative_names
  certificate_authority_arn                   = var.certificate_authority_arn
  certificate_body                            = var.certificate_body
  tags                                        = var.tags
  certificate_transparency_logging_preference = var.certificate_transparency_logging_preference
  domain_validation_options                   = var.domain_validation_options
  type                                        = var.type
  certificate_chain                           = var.certificate_chain
  renewal_eligibility                         = var.renewal_eligibility
  resource_record_type                        = var.resource_record_type
  validation_option                           = var.validation_option
  arn                                         = var.arn
  status                                      = var.status
  id                                          = var.id
  resource_record_value                       = var.resource_record_value
  validation_domain                           = var.validation_domain
  validation_emails                           = var.validation_emails
  renewal_status                              = var.renewal_status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Configuration BlockSupported nested arguments for the options configuration block:"
  type        = string
  default     = ""
}
variable "certificate_authority_arn" {
  description = "(Required) ARN of an ACM PCA"
  type        = string
}
variable "certificate_body" {
  description = "(Required) Certificate's PEM-formatted public key"
  type        = string
}
variable "type" {
  description = "Source of the certificate."
  type        = string
}
variable "certificate_transparency_logging_preference" {
  description = "(Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.validation_option Configuration BlockSupported nested arguments for the validation_option configuration block:"
  type        = string
  default     = ""
}
variable "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  type        = string
}
variable "resource_record_type" {
  description = "The type of DNS record to create"
  type        = string
}
variable "validation_option" {
  description = "(Optional) Configuration block used to specify information about the initial validation of each domain name. Detailed below."
  type        = string
  default     = ""
}
variable "certificate_chain" {
  description = "(Optional) Certificate's PEM-formatted chain"
  type        = string
  default     = ""
}
variable "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  type        = string
}
variable "arn" {
  description = "ARN of the certificate"
  type        = string
}
variable "status" {
  description = "Status of the certificate."
  type        = string
}
variable "validation_domain" {
  description = "(Required) Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the domain_name value or a superdomain of the domain_name value. For example, if you request a certificate for \"testing.example.com\", you can specify \"example.com\" for this value.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  type        = string
}
variable "id" {
  description = "ARN of the certificate"
  type        = string
}
variable "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  type        = string
}
variable "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  type        = string
}
variable "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  type        = string
}
variable "private_key" {
  description = "(Required) Certificate's PEM-formatted private key"
  type        = string
}
variable "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  type        = string
}
variable "not_after" {
  description = "Expiration date and time of the certificate."
  type        = string
}
variable "options" {
  description = "(Optional) Configuration block used to set certificate options. Detailed below."
  type        = string
  default     = ""
}
variable "not_before" {
  description = "Start of the validity period of the certificate."
  type        = string
}
variable "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  type        = string
}
variable "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate.\nTo remove all elements of a previously configured list, set this value equal to an empty list ([]terraform taint command to trigger recreation."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "validation_method" {
  description = "(Required) Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
  type        = string
}
variable "domain_name" {
  description = "Domain to be validated"
  type        = string
}
variable "early_renewal_duration" {
  description = "(Optional) Amount of time to start automatic renewal process before expiration.\nHas no effect if less than 60 days.\nRepresented by either\na subset of RFC 3339 duration supporting years, months, and days (e.g., P90D2160h."
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
output "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status
}
output "private_key" {
  description = "(Required) Certificate's PEM-formatted private key"
  value       = aws_acm_certificate.aws_acm_certificate.private_key
}
output "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_name
}
output "not_after" {
  description = "Expiration date and time of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_after
}
output "options" {
  description = "(Optional) Configuration block used to set certificate options. Detailed below."
  value       = aws_acm_certificate.aws_acm_certificate.options
}
output "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = aws_acm_certificate.aws_acm_certificate.pending_renewal
}
output "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_summary
}
output "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate.\nTo remove all elements of a previously configured list, set this value equal to an empty list ([]terraform taint command to trigger recreation."
  value       = aws_acm_certificate.aws_acm_certificate.subject_alternative_names
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_acm_certificate.aws_acm_certificate.tags_all
}
output "validation_method" {
  description = "(Required) Which method to use for validation. DNS or EMAIL are valid, NONE can be used for certificates that were imported into ACM and then into Terraform."
  value       = aws_acm_certificate.aws_acm_certificate.validation_method
}
output "domain_name" {
  description = "Domain to be validated"
  value       = aws_acm_certificate.aws_acm_certificate.domain_name
}
output "early_renewal_duration" {
  description = "(Optional) Amount of time to start automatic renewal process before expiration.\nHas no effect if less than 60 days.\nRepresented by either\na subset of RFC 3339 duration supporting years, months, and days (e.g., P90D2160h."
  value       = aws_acm_certificate.aws_acm_certificate.early_renewal_duration
}
output "not_before" {
  description = "Start of the validity period of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_before
}
output "certificate_authority_arn" {
  description = "(Required) ARN of an ACM PCA"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_authority_arn
}
output "certificate_body" {
  description = "(Required) Certificate's PEM-formatted public key"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_body
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.options Configuration BlockSupported nested arguments for the options configuration block:"
  value       = aws_acm_certificate.aws_acm_certificate.tags
}
output "certificate_transparency_logging_preference" {
  description = "(Optional) Whether certificate details should be added to a certificate transparency log. Valid values are ENABLED or DISABLED. See https://docs.aws.amazon.com/acm/latest/userguide/acm-concepts.html#concept-transparency for more details.validation_option Configuration BlockSupported nested arguments for the validation_option configuration block:"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_transparency_logging_preference
}
output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  value       = aws_acm_certificate.aws_acm_certificate.domain_validation_options
}
output "type" {
  description = "Source of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.type
}
output "validation_option" {
  description = "(Optional) Configuration block used to specify information about the initial validation of each domain name. Detailed below."
  value       = aws_acm_certificate.aws_acm_certificate.validation_option
}
output "certificate_chain" {
  description = "(Optional) Certificate's PEM-formatted chain"
  value       = aws_acm_certificate.aws_acm_certificate.certificate_chain
}
output "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_eligibility
}
output "resource_record_type" {
  description = "The type of DNS record to create"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_type
}
output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.arn
}
output "status" {
  description = "Status of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.status
}
output "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_emails
}
output "id" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.id
}
output "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_value
}
output "validation_domain" {
  description = "(Required) Domain name that you want ACM to use to send you validation emails. This domain name is the suffix of the email addresses that you want ACM to use. This must be the same as the domain_name value or a superdomain of the domain_name value. For example, if you request a certificate for \"testing.example.com\", you can specify \"example.com\" for this value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_domain
}
output "arn" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.arn
}
output "domain_name" {
  description = "Domain to be validated"
  value       = aws_acm_certificate.aws_acm_certificate.domain_name
}
output "renewal_status_reason" {
  description = "The reason that a renewal request was unsuccessful or is pending"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status_reason
}
output "resource_record_type" {
  description = "The type of DNS record to create"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_type
}
output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation.\nCan have more than one element, e.g., if SANs are defined.\nOnly set if DNS-validation was used."
  value       = aws_acm_certificate.aws_acm_certificate.domain_validation_options
}
output "not_after" {
  description = "Expiration date and time of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_after
}
output "not_before" {
  description = "Start of the validity period of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.not_before
}
output "renewal_summary" {
  description = "Contains information about the status of ACM's managed renewal for the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_summary
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_acm_certificate.aws_acm_certificate.tags_all
}
output "id" {
  description = "ARN of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.id
}
output "renewal_eligibility" {
  description = "Whether the certificate is eligible for managed renewal."
  value       = aws_acm_certificate.aws_acm_certificate.renewal_eligibility
}
output "resource_record_value" {
  description = "The value the DNS record needs to haveRenewal summary objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_value
}
output "validation_emails" {
  description = "List of addresses that received a validation email. Only set if EMAIL validation was used.Domain validation objects export the following attributes:"
  value       = aws_acm_certificate.aws_acm_certificate.validation_emails
}
output "pending_renewal" {
  description = "true if a Private certificate eligible for managed renewal is within the early_renewal_duration period."
  value       = aws_acm_certificate.aws_acm_certificate.pending_renewal
}
output "renewal_status" {
  description = "The status of ACM's managed renewal of the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.renewal_status
}
output "resource_record_name" {
  description = "The name of the DNS record to create to validate the certificate"
  value       = aws_acm_certificate.aws_acm_certificate.resource_record_name
}
output "status" {
  description = "Status of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.status
}
output "type" {
  description = "Source of the certificate."
  value       = aws_acm_certificate.aws_acm_certificate.type
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
      "kind/name"                   = "aws_acm_certificate"
      "kind/version"                = "v0.1.0"
    }
  }
}
