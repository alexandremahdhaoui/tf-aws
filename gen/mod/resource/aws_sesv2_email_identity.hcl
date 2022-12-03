resource "aws_sesv2_email_identity" "aws_sesv2_email_identity" {
  arn                           = var.arn
  signing_attributes_origin     = var.signing_attributes_origin
  current_signing_key_length    = var.current_signing_key_length
  dkim_signing_attributes       = var.dkim_signing_attributes
  domain_signing_selector       = var.domain_signing_selector
  last_key_generation_timestamp = var.last_key_generation_timestamp
  next_signing_key_length       = var.next_signing_key_length
  configuration_set_name        = var.configuration_set_name
  status                        = var.status
  tags                          = var.tags
  tokens                        = var.tokens
  domain_signing_private_key    = var.domain_signing_private_key
  email_identity                = var.email_identity
  identity_type                 = var.identity_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "configuration_set_name" {
  description = "(Optional) The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence."
  type        = string
  default     = ""
}
variable "status" {
  description = "Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the AWS SES API v2 Reference for supported statuses."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tokens" {
  description = "If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key."
  type        = string
}
variable "domain_signing_private_key" {
  description = "(Optional) [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding."
  type        = string
  default     = ""
}
variable "email_identity" {
  description = "(Required) The email address or domain to verify."
  type        = string
}
variable "identity_type" {
  description = "The email identity type. Valid values: EMAIL_ADDRESS, DOMAIN."
  type        = string
}
variable "arn" {
  description = "ARN of the Email Identity."
  type        = string
}
variable "current_signing_key_length" {
  description = "[Easy DKIM] The key length of the DKIM key pair in use."
  type        = string
}
variable "dkim_signing_attributes" {
  description = ""
  type        = string
}
variable "domain_signing_selector" {
  description = "(Optional) [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain."
  type        = string
  default     = ""
}
variable "last_key_generation_timestamp" {
  description = "[Easy DKIM] The last time a key pair was generated for this identity."
  type        = string
}
variable "next_signing_key_length" {
  description = "[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day."
  type        = string
}
variable "signing_attributes_origin" {
  description = "A string that indicates how DKIM was configured for the identity. AWS_SES indicates that DKIM was configured for the identity by using Easy DKIM. EXTERNAL indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM)."
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
output "identity_type" {
  description = "The email identity type. Valid values: EMAIL_ADDRESS, DOMAIN."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.identity_type
}
output "domain_signing_private_key" {
  description = "(Optional) [Bring Your Own DKIM] A private key that's used to generate a DKIM signature. The private key must use 1024 or 2048-bit RSA encryption, and must be encoded using base64 encoding."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.domain_signing_private_key
}
output "email_identity" {
  description = "(Required) The email address or domain to verify."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.email_identity
}
output "arn" {
  description = "ARN of the Email Identity."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.arn
}
output "domain_signing_selector" {
  description = "(Optional) [Bring Your Own DKIM] A string that's used to identify a public key in the DNS configuration for a domain."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.domain_signing_selector
}
output "last_key_generation_timestamp" {
  description = "[Easy DKIM] The last time a key pair was generated for this identity."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.last_key_generation_timestamp
}
output "next_signing_key_length" {
  description = "[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.next_signing_key_length
}
output "signing_attributes_origin" {
  description = "A string that indicates how DKIM was configured for the identity. AWS_SES indicates that DKIM was configured for the identity by using Easy DKIM. EXTERNAL indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM)."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.signing_attributes_origin
}
output "current_signing_key_length" {
  description = "[Easy DKIM] The key length of the DKIM key pair in use."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.current_signing_key_length
}
output "dkim_signing_attributes" {
  description = ""
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.dkim_signing_attributes
}
output "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.tags
}
output "tokens" {
  description = "If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.tokens
}
output "configuration_set_name" {
  description = "(Optional) The configuration set to use by default when sending from this identity. Note that any configuration set defined in the email sending request takes precedence."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.configuration_set_name
}
output "status" {
  description = "Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the AWS SES API v2 Reference for supported statuses."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.status
}
output "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.tags
}
output "verified_for_sending_status" {
  description = "Specifies whether or not the identity is verified."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.verified_for_sending_status
}
output "arn" {
  description = "ARN of the Email Identity."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.arn
}
output "current_signing_key_length" {
  description = "[Easy DKIM] The key length of the DKIM key pair in use."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.current_signing_key_length
}
output "identity_type" {
  description = "The email identity type. Valid values: EMAIL_ADDRESS, DOMAIN."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.identity_type
}
output "last_key_generation_timestamp" {
  description = "[Easy DKIM] The last time a key pair was generated for this identity."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.last_key_generation_timestamp
}
output "signing_attributes_origin" {
  description = "A string that indicates how DKIM was configured for the identity. AWS_SES indicates that DKIM was configured for the identity by using Easy DKIM. EXTERNAL indicates that DKIM was configured for the identity by using Bring Your Own DKIM (BYODKIM)."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.signing_attributes_origin
}
output "dkim_signing_attributes" {
  description = ""
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.dkim_signing_attributes
}
output "next_signing_key_length" {
  description = "[Easy DKIM] The key length of the future DKIM key pair to be generated. This can be changed at most once per day."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.next_signing_key_length
}
output "status" {
  description = "Describes whether or not Amazon SES has successfully located the DKIM records in the DNS records for the domain. See the AWS SES API v2 Reference for supported statuses."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.status
}
output "tokens" {
  description = "If you used Easy DKIM to configure DKIM authentication for the domain, then this object contains a set of unique strings that you use to create a set of CNAME records that you add to the DNS configuration for your domain. When Amazon SES detects these records in the DNS configuration for your domain, the DKIM authentication process is complete. If you configured DKIM authentication for the domain by providing your own public-private key pair, then this object contains the selector for the public key."
  value       = aws_sesv2_email_identity.aws_sesv2_email_identity.tokens
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
      "kind/name"                   = "aws_sesv2_email_identity"
      "kind/version"                = "v0.1.0"
    }
  }
}
