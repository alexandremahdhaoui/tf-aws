resource "aws_route53_key_signing_key" "aws_route53_key_signing_key" {
  digest_algorithm_type      = var.digest_algorithm_type
  ds_record                  = var.ds_record
  key_tag                    = var.key_tag
  signing_algorithm_mnemonic = var.signing_algorithm_mnemonic
  digest_algorithm_mnemonic  = var.digest_algorithm_mnemonic
  key_management_service_arn = var.key_management_service_arn
  public_key                 = var.public_key
  signing_algorithm_type     = var.signing_algorithm_type
  dnskey_record              = var.dnskey_record
  hosted_zone_id             = var.hosted_zone_id
  id                         = var.id
  digest_value               = var.digest_value
  flag                       = var.flag
  name                       = var.name
  status                     = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "(Optional) Status of the key-signing key (KSK). Valid values: ACTIVE, INACTIVE. Defaults to ACTIVE.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "digest_value" {
  description = "A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system."
  type        = string
  default     = ""
}
variable "flag" {
  description = "An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the key-signing key (KSK). Must be unique for each key-singing key in the same hosted zone."
  type        = string
}
variable "signing_algorithm_mnemonic" {
  description = "A string used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  type        = string
  default     = ""
}
variable "digest_algorithm_type" {
  description = "An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  type        = string
  default     = ""
}
variable "ds_record" {
  description = "A string that represents a delegation signer (DS) record."
  type        = string
  default     = ""
}
variable "key_tag" {
  description = "An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in RFC-4034 Appendix B."
  type        = string
  default     = ""
}
variable "signing_algorithm_type" {
  description = "An integer used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  type        = string
  default     = ""
}
variable "digest_algorithm_mnemonic" {
  description = "A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  type        = string
  default     = ""
}
variable "key_management_service_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the us-east-1 Region and meet certain requirements, which are described in the Route 53 Developer Guide and Route 53 API Reference."
  type        = string
}
variable "public_key" {
  description = "The public key, represented as a Base64 encoding, as required by RFC-4034 Page 5."
  type        = string
  default     = ""
}
variable "dnskey_record" {
  description = "A string that represents a DNSKEY record."
  type        = string
  default     = ""
}
variable "hosted_zone_id" {
  description = "(Required) Identifier of the Route 53 Hosted Zone."
  type        = string
}
variable "id" {
  description = "Route 53 Hosted Zone identifier and KMS Key identifier, separated by a comma (,)."
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
output "flag" {
  description = "An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.flag
}
output "name" {
  description = "(Required) Name of the key-signing key (KSK). Must be unique for each key-singing key in the same hosted zone."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.name
}
output "status" {
  description = "(Optional) Status of the key-signing key (KSK). Valid values: ACTIVE, INACTIVE. Defaults to ACTIVE.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.status
}
output "digest_value" {
  description = "A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_value
}
output "ds_record" {
  description = "A string that represents a delegation signer (DS) record."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.ds_record
}
output "key_tag" {
  description = "An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in RFC-4034 Appendix B."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.key_tag
}
output "signing_algorithm_mnemonic" {
  description = "A string used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.signing_algorithm_mnemonic
}
output "digest_algorithm_type" {
  description = "An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_algorithm_type
}
output "key_management_service_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key. This must be unique for each key-signing key (KSK) in a single hosted zone. This key must be in the us-east-1 Region and meet certain requirements, which are described in the Route 53 Developer Guide and Route 53 API Reference."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.key_management_service_arn
}
output "public_key" {
  description = "The public key, represented as a Base64 encoding, as required by RFC-4034 Page 5."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.public_key
}
output "signing_algorithm_type" {
  description = "An integer used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.signing_algorithm_type
}
output "digest_algorithm_mnemonic" {
  description = "A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_algorithm_mnemonic
}
output "hosted_zone_id" {
  description = "(Required) Identifier of the Route 53 Hosted Zone."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.hosted_zone_id
}
output "id" {
  description = "Route 53 Hosted Zone identifier and KMS Key identifier, separated by a comma (,)."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.id
}
output "dnskey_record" {
  description = "A string that represents a DNSKEY record."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.dnskey_record
}
output "digest_value" {
  description = "A cryptographic digest of a DNSKEY resource record (RR). DNSKEY records are used to publish the public key that resolvers can use to verify DNSSEC signatures that are used to secure certain kinds of information provided by the DNS system."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_value
}
output "dnskey_record" {
  description = "A string that represents a DNSKEY record."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.dnskey_record
}
output "flag" {
  description = "An integer that specifies how the key is used. For key-signing key (KSK), this value is always 257."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.flag
}
output "id" {
  description = "Route 53 Hosted Zone identifier and KMS Key identifier, separated by a comma (,)."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.id
}
output "digest_algorithm_mnemonic" {
  description = "A string used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_algorithm_mnemonic
}
output "digest_algorithm_type" {
  description = "An integer used to represent the delegation signer digest algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.3."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.digest_algorithm_type
}
output "public_key" {
  description = "The public key, represented as a Base64 encoding, as required by RFC-4034 Page 5."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.public_key
}
output "signing_algorithm_mnemonic" {
  description = "A string used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.signing_algorithm_mnemonic
}
output "signing_algorithm_type" {
  description = "An integer used to represent the signing algorithm. This value must follow the guidelines provided by RFC-8624 Section 3.1."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.signing_algorithm_type
}
output "ds_record" {
  description = "A string that represents a delegation signer (DS) record."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.ds_record
}
output "key_tag" {
  description = "An integer used to identify the DNSSEC record for the domain name. The process used to calculate the value is described in RFC-4034 Appendix B."
  value       = aws_route53_key_signing_key.aws_route53_key_signing_key.key_tag
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
      "kind/name"                   = "aws_route53_key_signing_key"
      "kind/version"                = "v0.1.0"
    }
  }
}
