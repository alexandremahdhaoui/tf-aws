resource "aws_acmpca_certificate_authority" "aws_acmpca_certificate_authority" {
  distinguished_name_qualifier        = var.distinguished_name_qualifier
  pseudonym                           = var.pseudonym
  revocation_configuration            = var.revocation_configuration
  subject                             = var.subject
  tags                                = var.tags
  common_name                         = var.common_name
  not_after                           = var.not_after
  ocsp_custom_cname                   = var.ocsp_custom_cname
  surname                             = var.surname
  certificate_authority_configuration = var.certificate_authority_configuration
  s3_object_acl                       = var.s3_object_acl
  ocsp_configuration                  = var.ocsp_configuration
  expiration_in_days                  = var.expiration_in_days
  given_name                          = var.given_name
  id                                  = var.id
  locality                            = var.locality
  organization                        = var.organization
  s3_bucket_name                      = var.s3_bucket_name
  title                               = var.title
  custom_cname                        = var.custom_cname
  usage_mode                          = var.usage_mode
  certificate                         = var.certificate
  certificate_chain                   = var.certificate_chain
  permanent_deletion_time_in_days     = var.permanent_deletion_time_in_days
  signing_algorithm                   = var.signing_algorithm
  arn                                 = var.arn
  key_algorithm                       = var.key_algorithm
  country                             = var.country
  enabled                             = var.enabled
  organizational_unit                 = var.organizational_unit
  serial                              = var.serial
  state                               = var.state
  status                              = var.status
  type                                = var.type
  crl_configuration                   = var.crl_configuration
  generation_qualifier                = var.generation_qualifier
  initials                            = var.initials
  not_before                          = var.not_before
  tags_all                            = var.tags_all
  certificate_signing_request         = var.certificate_signing_request
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "ARN of the certificate authority."
  type        = string
}
variable "locality" {
  description = "(Optional) Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length."
  type        = string
  default     = ""
}
variable "organization" {
  description = "(Optional) Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length."
  type        = string
  default     = ""
}
variable "s3_bucket_name" {
  description = "(Optional) Name of the S3 bucket that contains the CRL. If you do not provide a value for the custom_cname argument, the name of your S3 bucket is placed into the CRL Distribution Points extension of the issued certificate. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket. Must be less than or equal to 255 characters in length."
  type        = string
  default     = ""
}
variable "title" {
  description = "(Optional) Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.revocation_configuration"
  type        = string
  default     = ""
}
variable "custom_cname" {
  description = "(Optional) Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public. Must be less than or equal to 253 characters in length."
  type        = string
  default     = ""
}
variable "expiration_in_days" {
  description = "(Required) Number of days until a certificate expires. Must be between 1 and 5000."
  type        = string
}
variable "given_name" {
  description = "(Optional) First name. Must be less than or equal to 16 characters in length."
  type        = string
  default     = ""
}
variable "usage_mode" {
  description = "(Optional) Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to GENERAL_PURPOSE. Valid values: GENERAL_PURPOSE and SHORT_LIVED_CERTIFICATE."
  type        = string
  default     = ""
}
variable "permanent_deletion_time_in_days" {
  description = "(Optional) Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.certificate_authority_configuration"
  type        = string
  default     = ""
}
variable "signing_algorithm" {
  description = "(Required) Name of the algorithm your private CA uses to sign certificate requests. Valid values can be found in the ACM PCA Documentation."
  type        = string
}
variable "arn" {
  description = "ARN of the certificate authority."
  type        = string
}
variable "certificate" {
  description = "Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "certificate_chain" {
  description = "Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "country" {
  description = "(Optional) Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length."
  type        = string
  default     = ""
}
variable "key_algorithm" {
  description = "(Required) Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate. Valid values can be found in the ACM PCA Documentation."
  type        = string
}
variable "serial" {
  description = "Serial number of the certificate authority. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "state" {
  description = "(Optional) State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length."
  type        = string
  default     = ""
}
variable "status" {
  description = "(strongDeprecated use the enabled attribute instead) Status of the certificate authority."
  type        = string
}
variable "type" {
  description = "(Optional) Type of the certificate authority. Defaults to SUBORDINATE. Valid values: ROOT and SUBORDINATE."
  type        = string
  default     = ""
}
variable "crl_configuration" {
  description = "(Optional) Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Required) Boolean value that specifies whether a custom OCSP responder is enabled."
  type        = string
}
variable "organizational_unit" {
  description = "(Optional) Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length."
  type        = string
  default     = ""
}
variable "not_before" {
  description = "Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "certificate_signing_request" {
  description = "The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate."
  type        = string
}
variable "generation_qualifier" {
  description = "(Optional) Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length."
  type        = string
  default     = ""
}
variable "initials" {
  description = "(Optional) Concatenation that typically contains the first letter of the given_name, the first letter of the middle name if one exists, and the first letter of the surname. Must be less than or equal to 5 characters in length."
  type        = string
  default     = ""
}
variable "revocation_configuration" {
  description = "(Optional) Nested argument containing revocation configuration. Defined below."
  type        = string
  default     = ""
}
variable "subject" {
  description = "(Required) Nested argument that contains X.500 distinguished name information. At least one nested attribute must be specified.subjectContains information about the certificate subject. Identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "common_name" {
  description = "(Optional) Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length."
  type        = string
  default     = ""
}
variable "distinguished_name_qualifier" {
  description = "(Optional) Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length."
  type        = string
  default     = ""
}
variable "pseudonym" {
  description = "(Optional) Typically a shortened version of a longer given_name. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length."
  type        = string
  default     = ""
}
variable "surname" {
  description = "(Optional) Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length."
  type        = string
  default     = ""
}
variable "certificate_authority_configuration" {
  description = "(Required) Nested argument containing algorithms and certificate subject information. Defined below."
  type        = string
}
variable "not_after" {
  description = "Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "ocsp_custom_cname" {
  description = "(Optional) CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as \"http://\" or \"https://\".In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "ocsp_configuration" {
  description = "(Optional) Nested argument containing configuration of\nthe custom OCSP responder endpoint. Defined below.crl_configuration"
  type        = string
  default     = ""
}
variable "s3_object_acl" {
  description = "(Optional) Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. Defaults to PUBLIC_READ.ocsp_configuration"
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
output "certificate_signing_request" {
  description = "The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_signing_request
}
output "generation_qualifier" {
  description = "(Optional) Typically a qualifier appended to the name of an individual. Examples include Jr. for junior, Sr. for senior, and III for third. Must be less than or equal to 3 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.generation_qualifier
}
output "initials" {
  description = "(Optional) Concatenation that typically contains the first letter of the given_name, the first letter of the middle name if one exists, and the first letter of the surname. Must be less than or equal to 5 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.initials
}
output "not_before" {
  description = "Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_before
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.tags_all
}
output "common_name" {
  description = "(Optional) Fully qualified domain name (FQDN) associated with the certificate subject. Must be less than or equal to 64 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.common_name
}
output "distinguished_name_qualifier" {
  description = "(Optional) Disambiguating information for the certificate subject. Must be less than or equal to 64 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.distinguished_name_qualifier
}
output "pseudonym" {
  description = "(Optional) Typically a shortened version of a longer given_name. For example, Jonathan is often shortened to John. Elizabeth is often shortened to Beth, Liz, or Eliza. Must be less than or equal to 128 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.pseudonym
}
output "revocation_configuration" {
  description = "(Optional) Nested argument containing revocation configuration. Defined below."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration
}
output "subject" {
  description = "(Required) Nested argument that contains X.500 distinguished name information. At least one nested attribute must be specified.subjectContains information about the certificate subject. Identifies the entity that owns or controls the public key in the certificate. The entity can be a user, computer, device, or service."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.subject
}
output "tags" {
  description = "(Optional) Key-value map of user-defined tags that are attached to the certificate authority. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.tags
}
output "certificate_authority_configuration" {
  description = "(Required) Nested argument containing algorithms and certificate subject information. Defined below."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_authority_configuration
}
output "not_after" {
  description = "Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_after
}
output "ocsp_custom_cname" {
  description = "(Optional) CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as \"http://\" or \"https://\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.ocsp_custom_cname
}
output "surname" {
  description = "(Optional) Family name. In the US and the UK for example, the surname of an individual is ordered last. In Asian cultures the surname is typically ordered first. Must be less than or equal to 40 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.surname
}
output "ocsp_configuration" {
  description = "(Optional) Nested argument containing configuration of\nthe custom OCSP responder endpoint. Defined below.crl_configuration"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.ocsp_configuration
}
output "s3_object_acl" {
  description = "(Optional) Determines whether the CRL will be publicly readable or privately held in the CRL Amazon S3 bucket. Defaults to PUBLIC_READ.ocsp_configuration"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.s3_object_acl
}
output "s3_bucket_name" {
  description = "(Optional) Name of the S3 bucket that contains the CRL. If you do not provide a value for the custom_cname argument, the name of your S3 bucket is placed into the CRL Distribution Points extension of the issued certificate. You must specify a bucket policy that allows ACM PCA to write the CRL to your bucket. Must be less than or equal to 255 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.s3_bucket_name
}
output "title" {
  description = "(Optional) Title such as Mr. or Ms. which is pre-pended to the name to refer formally to the certificate subject. Must be less than or equal to 64 characters in length.revocation_configuration"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.title
}
output "custom_cname" {
  description = "(Optional) Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point. Use this value if you don't want the name of your S3 bucket to be public. Must be less than or equal to 253 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.custom_cname
}
output "expiration_in_days" {
  description = "(Required) Number of days until a certificate expires. Must be between 1 and 5000."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.expiration_in_days
}
output "given_name" {
  description = "(Optional) First name. Must be less than or equal to 16 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.given_name
}
output "id" {
  description = "ARN of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.id
}
output "locality" {
  description = "(Optional) Locality (such as a city or town) in which the certificate subject is located. Must be less than or equal to 128 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.locality
}
output "organization" {
  description = "(Optional) Legal name of the organization with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.organization
}
output "usage_mode" {
  description = "(Optional) Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly. Short-lived certificate validity is limited to seven days. Defaults to GENERAL_PURPOSE. Valid values: GENERAL_PURPOSE and SHORT_LIVED_CERTIFICATE."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.usage_mode
}
output "arn" {
  description = "ARN of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.arn
}
output "certificate" {
  description = "Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate
}
output "certificate_chain" {
  description = "Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_chain
}
output "permanent_deletion_time_in_days" {
  description = "(Optional) Number of days to make a CA restorable after it has been deleted, must be between 7 to 30 days, with default to 30 days.certificate_authority_configuration"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.permanent_deletion_time_in_days
}
output "signing_algorithm" {
  description = "(Required) Name of the algorithm your private CA uses to sign certificate requests. Valid values can be found in the ACM PCA Documentation."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.signing_algorithm
}
output "country" {
  description = "(Optional) Two digit code that specifies the country in which the certificate subject located. Must be less than or equal to 2 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.country
}
output "key_algorithm" {
  description = "(Required) Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate. Valid values can be found in the ACM PCA Documentation."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.key_algorithm
}
output "type" {
  description = "(Optional) Type of the certificate authority. Defaults to SUBORDINATE. Valid values: ROOT and SUBORDINATE."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.type
}
output "crl_configuration" {
  description = "(Optional) Nested argument containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority. Defined below."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.crl_configuration
}
output "enabled" {
  description = "(Required) Boolean value that specifies whether a custom OCSP responder is enabled."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.enabled
}
output "organizational_unit" {
  description = "(Optional) Subdivision or unit of the organization (such as sales or finance) with which the certificate subject is affiliated. Must be less than or equal to 64 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.organizational_unit
}
output "serial" {
  description = "Serial number of the certificate authority. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.serial
}
output "state" {
  description = "(Optional) State in which the subject of the certificate is located. Must be less than or equal to 128 characters in length."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.state
}
output "status" {
  description = "(strongDeprecated use the enabled attribute instead) Status of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.status
}
output "arn" {
  description = "ARN of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.arn
}
output "certificate" {
  description = "Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate
}
output "certificate_signing_request" {
  description = "The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_signing_request
}
output "create" {
  description = "(Default 1m)"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.create
}
output "id" {
  description = "ARN of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.id
}
output "not_before" {
  description = "Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_before
}
output "serial" {
  description = "Serial number of the certificate authority. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.serial
}
output "status" {
  description = "(strongDeprecated use the enabled attribute instead) Status of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.status
}
output "certificate_chain" {
  description = "Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_chain
}
output "not_after" {
  description = "Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_after
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.tags_all
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
      "kind/name"                   = "aws_acmpca_certificate_authority"
      "kind/version"                = "v0.1.0"
    }
  }
}
