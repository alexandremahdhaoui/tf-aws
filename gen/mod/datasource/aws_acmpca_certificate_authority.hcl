datasource "aws_acmpca_certificate_authority" "aws_acmpca_certificate_authority" {
  arn                                                               = var.arn
  certificate_signing_request                                       = var.certificate_signing_request
  id                                                                = var.id
  not_after                                                         = var.not_after
  revocation_configuration.0.crl_configuration.0.custom_cname       = var.revocation_configuration.0.crl_configuration.0.custom_cname
  status                                                            = var.status
  certificate_chain                                                 = var.certificate_chain
  not_before                                                        = var.not_before
  serial                                                            = var.serial
  tags                                                              = var.tags
  revocation_configuration                                          = var.revocation_configuration
  revocation_configuration.0.crl_configuration                      = var.revocation_configuration.0.crl_configuration
  revocation_configuration.0.crl_configuration.0.expiration_in_days = var.revocation_configuration.0.crl_configuration.0.expiration_in_days
  revocation_configuration.0.crl_configuration.0.s3_bucket_name     = var.revocation_configuration.0.crl_configuration.0.s3_bucket_name
  revocation_configuration.0.crl_configuration.0.s3_object_acl      = var.revocation_configuration.0.crl_configuration.0.s3_object_acl
  revocation_configuration.0.ocsp_configuration.0.enabled           = var.revocation_configuration.0.ocsp_configuration.0.enabled
  usage_mode                                                        = var.usage_mode
  certificate                                                       = var.certificate
  revocation_configuration.0.crl_configuration.0.enabled            = var.revocation_configuration.0.crl_configuration.0.enabled
  revocation_configuration.0.ocsp_configuration.0.ocsp_custom_cname = var.revocation_configuration.0.ocsp_configuration.0.ocsp_custom_cname
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "certificate_chain" {
  description = "Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "not_before" {
  description = "Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "tags" {
  description = "Key-value map of user-defined tags that are attached to the certificate authority."
  type        = string
}
variable "revocation_configuration" {
  description = "Nested attribute containing revocation configuration.\n"
  type        = string
}
variable "revocation_configuration.0.crl_configuration" {
  description = "Nested attribute containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority.\n"
  type        = string
}
variable "revocation_configuration.0.crl_configuration.0.expiration_in_days" {
  description = "Number of days until a certificate expires."
  type        = string
}
variable "revocation_configuration.0.crl_configuration.0.s3_bucket_name" {
  description = "Name of the S3 bucket that contains the CRL."
  type        = string
}
variable "revocation_configuration.0.crl_configuration.0.s3_object_acl" {
  description = "Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket."
  type        = string
}
variable "revocation_configuration.0.ocsp_configuration.0.enabled" {
  description = "Boolean value that specifies whether a custom OCSP responder is enabled."
  type        = string
}
variable "serial" {
  description = "Serial number of the certificate authority. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "usage_mode" {
  description = "Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly."
  type        = string
}
variable "certificate" {
  description = "Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "revocation_configuration.0.crl_configuration.0.enabled" {
  description = "Boolean value that specifies whether certificate revocation lists (CRLs) are enabled."
  type        = string
}
variable "revocation_configuration.0.ocsp_configuration.0.ocsp_custom_cname" {
  description = "A CNAME specifying a customized OCSP domain."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the certificate authority.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "certificate_signing_request" {
  description = "The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate."
  type        = string
}
variable "id" {
  description = "ARN of the certificate authority."
  type        = string
}
variable "not_after" {
  description = "Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  type        = string
}
variable "revocation_configuration.0.crl_configuration.0.custom_cname" {
  description = "Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point."
  type        = string
}
variable "status" {
  description = "Status of the certificate authority."
  type        = string
}
output "revocation_configuration.0.crl_configuration" {
  description = "Nested attribute containing configuration of the certificate revocation list (CRL), if any, maintained by the certificate authority.\n"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration
}
output "revocation_configuration.0.crl_configuration.0.expiration_in_days" {
  description = "Number of days until a certificate expires."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration.0.expiration_in_days
}
output "revocation_configuration.0.crl_configuration.0.s3_bucket_name" {
  description = "Name of the S3 bucket that contains the CRL."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration.0.s3_bucket_name
}
output "revocation_configuration.0.crl_configuration.0.s3_object_acl" {
  description = "Whether the CRL is publicly readable or privately held in the CRL Amazon S3 bucket."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration.0.s3_object_acl
}
output "revocation_configuration.0.ocsp_configuration.0.enabled" {
  description = "Boolean value that specifies whether a custom OCSP responder is enabled."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.ocsp_configuration.0.enabled
}
output "serial" {
  description = "Serial number of the certificate authority. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.serial
}
output "tags" {
  description = "Key-value map of user-defined tags that are attached to the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.tags
}
output "revocation_configuration" {
  description = "Nested attribute containing revocation configuration.\n"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration
}
output "usage_mode" {
  description = "Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.usage_mode
}
output "revocation_configuration.0.crl_configuration.0.enabled" {
  description = "Boolean value that specifies whether certificate revocation lists (CRLs) are enabled."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration.0.enabled
}
output "revocation_configuration.0.ocsp_configuration.0.ocsp_custom_cname" {
  description = "A CNAME specifying a customized OCSP domain."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.ocsp_configuration.0.ocsp_custom_cname
}
output "certificate" {
  description = "Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate
}
output "certificate_signing_request" {
  description = "The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_signing_request
}
output "id" {
  description = "ARN of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.id
}
output "not_after" {
  description = "Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_after
}
output "revocation_configuration.0.crl_configuration.0.custom_cname" {
  description = "Name inserted into the certificate CRL Distribution Points extension that enables the use of an alias for the CRL distribution point."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.revocation_configuration.0.crl_configuration.0.custom_cname
}
output "status" {
  description = "Status of the certificate authority."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.status
}
output "arn" {
  description = "(Required) ARN of the certificate authority.Attribute ReferenceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.arn
}
output "not_before" {
  description = "Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.not_before
}
output "certificate_chain" {
  description = "Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported."
  value       = aws_acmpca_certificate_authority.aws_acmpca_certificate_authority.certificate_chain
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
}
