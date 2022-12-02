resource "aws_cloudfront_field_level_encryption_profile" "aws_cloudfront_field_level_encryption_profile" {
  name                = var.name
  provider_id         = var.provider_id
  public_key_id       = var.public_key_id
  caller_reference    = var.caller_reference
  comment             = var.comment
  encryption_entities = var.encryption_entities
  etag                = var.etag
  field_patterns      = var.field_patterns
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "field_patterns" {
  description = "(Required) Object that contains an attribute items that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "name" {
  description = "(Required) The name of the Field Level Encryption Profile."
  type        = string
}
variable "provider_id" {
  description = "(Required) The provider associated with the public key being used for encryption."
  type        = string
}
variable "public_key_id" {
  description = "(Required) The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns."
  type        = string
}
variable "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile."
  type        = string
}
variable "comment" {
  description = "(Optional) An optional comment about the Field Level Encryption Profile."
  type        = string
  default     = ""
}
variable "encryption_entities" {
  description = "(Required) The encryption entities config block for field-level encryption profiles that contains an attribute items which includes the encryption key and field pattern specifications.Encryption Entities"
  type        = string
}
variable "etag" {
  description = "The current version of the Field Level Encryption Profile. For example: E2QWRUHAPOMQZL."
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
output "public_key_id" {
  description = "(Required) The public key associated with a set of field-level encryption patterns, to be used when encrypting the fields that match the patterns."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.public_key_id
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.caller_reference
}
output "comment" {
  description = "(Optional) An optional comment about the Field Level Encryption Profile."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.comment
}
output "encryption_entities" {
  description = "(Required) The encryption entities config block for field-level encryption profiles that contains an attribute items which includes the encryption key and field pattern specifications.Encryption Entities"
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.encryption_entities
}
output "etag" {
  description = "The current version of the Field Level Encryption Profile. For example: E2QWRUHAPOMQZL."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.etag
}
output "field_patterns" {
  description = "(Required) Object that contains an attribute items that contains the list of field patterns in a field-level encryption content type profile specify the fields that you want to be encrypted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.field_patterns
}
output "name" {
  description = "(Required) The name of the Field Level Encryption Profile."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.name
}
output "provider_id" {
  description = "(Required) The provider associated with the public key being used for encryption."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.provider_id
}
output "id" {
  description = "The identifier for the Field Level Encryption Profile. For example: K3D5EWEUDCCXON."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.id
}
output "caller_reference" {
  description = "Internal value used by CloudFront to allow future updates to the Field Level Encryption Profile."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.caller_reference
}
output "etag" {
  description = "The current version of the Field Level Encryption Profile. For example: E2QWRUHAPOMQZL."
  value       = aws_cloudfront_field_level_encryption_profile.aws_cloudfront_field_level_encryption_profile.etag
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
      "kind/name"                   = "aws_cloudfront_field_level_encryption_profile"
      "kind/version"                = "v0.1.0"
    }
  }
}
