resource "aws_kms_external_key" "aws_kms_external_key" {
  arn                                = var.arn
  deletion_window_in_days            = var.deletion_window_in_days
  enabled                            = var.enabled
  key_usage                          = var.key_usage
  id                                 = var.id
  key_state                          = var.key_state
  policy                             = var.policy
  tags                               = var.tags
  valid_to                           = var.valid_to
  bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check
  description                        = var.description
  expiration_model                   = var.expiration_model
  key_material_base64                = var.key_material_base64
  multi_region                       = var.multi_region
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "valid_to" {
  description = "(Optional) Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique identifier for the key."
  type        = string
}
variable "key_state" {
  description = "The state of the CMK."
  type        = string
}
variable "policy" {
  description = "(Optional) A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A key-value map of tags to assign to the key. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "multi_region" {
  description = "(Optional) Indicates whether the KMS key is a multi-Region (true) or regional (false) key. Defaults to false."
  type        = string
  default     = ""
}
variable "bypass_policy_lockout_safety_check" {
  description = "(Optional) Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to true increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the Default Key Policy section in the AWS Key Management Service Developer Guide. Defaults to false."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the key."
  type        = string
  default     = ""
}
variable "expiration_model" {
  description = "Whether the key material expires. Empty when pending key material import, otherwise KEY_MATERIAL_EXPIRES or KEY_MATERIAL_DOES_NOT_EXPIRE."
  type        = string
}
variable "key_material_base64" {
  description = "(Optional) Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  type        = string
}
variable "deletion_window_in_days" {
  description = "(Optional) Duration in days after which the key is deleted after destruction of the resource. Must be between 7 and 30 days. Defaults to 30."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Specifies whether the key is enabled. Keys pending import can only be false. Imported keys default to true unless expired."
  type        = string
  default     = ""
}
variable "key_usage" {
  description = "The cryptographic operations for which you can use the CMK."
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
output "key_state" {
  description = "The state of the CMK."
  value       = aws_kms_external_key.aws_kms_external_key.key_state
}
output "policy" {
  description = "(Optional) A key policy JSON document. If you do not provide a key policy, AWS KMS attaches a default key policy to the CMK."
  value       = aws_kms_external_key.aws_kms_external_key.policy
}
output "tags" {
  description = "(Optional) A key-value map of tags to assign to the key. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_kms_external_key.aws_kms_external_key.tags
}
output "valid_to" {
  description = "(Optional) Time at which the imported key material expires. When the key material expires, AWS KMS deletes the key material and the CMK becomes unusable. If not specified, key material does not expire. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)In addition to all arguments above, the following attributes are exported:"
  value       = aws_kms_external_key.aws_kms_external_key.valid_to
}
output "id" {
  description = "The unique identifier for the key."
  value       = aws_kms_external_key.aws_kms_external_key.id
}
output "description" {
  description = "(Optional) Description of the key."
  value       = aws_kms_external_key.aws_kms_external_key.description
}
output "expiration_model" {
  description = "Whether the key material expires. Empty when pending key material import, otherwise KEY_MATERIAL_EXPIRES or KEY_MATERIAL_DOES_NOT_EXPIRE."
  value       = aws_kms_external_key.aws_kms_external_key.expiration_model
}
output "key_material_base64" {
  description = "(Optional) Base64 encoded 256-bit symmetric encryption key material to import. The CMK is permanently associated with this key material. The same key material can be reimported, but you cannot import different key material."
  value       = aws_kms_external_key.aws_kms_external_key.key_material_base64
}
output "multi_region" {
  description = "(Optional) Indicates whether the KMS key is a multi-Region (true) or regional (false) key. Defaults to false."
  value       = aws_kms_external_key.aws_kms_external_key.multi_region
}
output "bypass_policy_lockout_safety_check" {
  description = "(Optional) Specifies whether to disable the policy lockout check performed when creating or updating the key's policy. Setting this value to true increases the risk that the key becomes unmanageable. For more information, refer to the scenario in the Default Key Policy section in the AWS Key Management Service Developer Guide. Defaults to false."
  value       = aws_kms_external_key.aws_kms_external_key.bypass_policy_lockout_safety_check
}
output "deletion_window_in_days" {
  description = "(Optional) Duration in days after which the key is deleted after destruction of the resource. Must be between 7 and 30 days. Defaults to 30."
  value       = aws_kms_external_key.aws_kms_external_key.deletion_window_in_days
}
output "enabled" {
  description = "(Optional) Specifies whether the key is enabled. Keys pending import can only be false. Imported keys default to true unless expired."
  value       = aws_kms_external_key.aws_kms_external_key.enabled
}
output "key_usage" {
  description = "The cryptographic operations for which you can use the CMK."
  value       = aws_kms_external_key.aws_kms_external_key.key_usage
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = aws_kms_external_key.aws_kms_external_key.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_kms_external_key.aws_kms_external_key.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the key."
  value       = aws_kms_external_key.aws_kms_external_key.arn
}
output "expiration_model" {
  description = "Whether the key material expires. Empty when pending key material import, otherwise KEY_MATERIAL_EXPIRES or KEY_MATERIAL_DOES_NOT_EXPIRE."
  value       = aws_kms_external_key.aws_kms_external_key.expiration_model
}
output "id" {
  description = "The unique identifier for the key."
  value       = aws_kms_external_key.aws_kms_external_key.id
}
output "key_state" {
  description = "The state of the CMK."
  value       = aws_kms_external_key.aws_kms_external_key.key_state
}
output "key_usage" {
  description = "The cryptographic operations for which you can use the CMK."
  value       = aws_kms_external_key.aws_kms_external_key.key_usage
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
      "kind/name"                   = "aws_kms_external_key"
      "kind/version"                = "v0.1.0"
    }
  }
}
