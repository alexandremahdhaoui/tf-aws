resource "aws_kms_replica_key" "aws_kms_replica_key" {
  enabled                            = var.enabled
  key_spec                           = var.key_spec
  key_usage                          = var.key_usage
  primary_key_arn                    = var.primary_key_arn
  bypass_policy_lockout_safety_check = var.bypass_policy_lockout_safety_check
  deletion_window_in_days            = var.deletion_window_in_days
  description                        = var.description
  policy                             = var.policy
  tags                               = var.tags
  arn                                = var.arn
  key_id                             = var.key_id
  key_rotation_enabled               = var.key_rotation_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key_spec" {
  description = "The type of key material in the KMS key. This is a shared property of multi-Region keys."
  type        = string
}
variable "key_usage" {
  description = "The cryptographic operations for which you can use the KMS key. This is a shared property of multi-Region keys."
  type        = string
}
variable "primary_key_arn" {
  description = "(Required) The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region."
  type        = string
}
variable "bypass_policy_lockout_safety_check" {
  description = "Default Key Policy section in the emAWS Key Management Service Developer Guidefalse."
  type        = string
}
variable "deletion_window_in_days" {
  description = "7 and 30, inclusive. If you do not specify a value, it defaults to 30."
  type        = string
}
variable "description" {
  description = "(Optional) A description of the KMS key."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is true."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the replica key. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value."
  type        = string
}
variable "key_id" {
  description = "The key ID of the replica key. Related multi-Region keys have the same key ID."
  type        = string
}
variable "key_rotation_enabled" {
  description = "A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys."
  type        = string
}
variable "policy" {
  description = "(Optional) The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the default key policyAWS IAM Policy Document Guide."
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
output "arn" {
  description = "The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value."
  value       = aws_kms_replica_key.aws_kms_replica_key.arn
}
output "key_id" {
  description = "The key ID of the replica key. Related multi-Region keys have the same key ID."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_id
}
output "key_rotation_enabled" {
  description = "A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_rotation_enabled
}
output "policy" {
  description = "(Optional) The key policy to attach to the KMS key. If you do not specify a key policy, AWS KMS attaches the default key policyAWS IAM Policy Document Guide."
  value       = aws_kms_replica_key.aws_kms_replica_key.policy
}
output "tags" {
  description = "(Optional) A map of tags to assign to the replica key. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kms_replica_key.aws_kms_replica_key.tags
}
output "bypass_policy_lockout_safety_check" {
  description = "Default Key Policy section in the emAWS Key Management Service Developer Guidefalse."
  value       = aws_kms_replica_key.aws_kms_replica_key.bypass_policy_lockout_safety_check
}
output "deletion_window_in_days" {
  description = "7 and 30, inclusive. If you do not specify a value, it defaults to 30."
  value       = aws_kms_replica_key.aws_kms_replica_key.deletion_window_in_days
}
output "description" {
  description = "(Optional) A description of the KMS key."
  value       = aws_kms_replica_key.aws_kms_replica_key.description
}
output "enabled" {
  description = "(Optional) Specifies whether the replica key is enabled. Disabled KMS keys cannot be used in cryptographic operations. The default value is true."
  value       = aws_kms_replica_key.aws_kms_replica_key.enabled
}
output "key_spec" {
  description = "The type of key material in the KMS key. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_spec
}
output "key_usage" {
  description = "The cryptographic operations for which you can use the KMS key. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_usage
}
output "primary_key_arn" {
  description = "(Required) The ARN of the multi-Region primary key to replicate. The primary key must be in a different AWS Region of the same AWS Partition. You can create only one replica of a given primary key in each AWS Region."
  value       = aws_kms_replica_key.aws_kms_replica_key.primary_key_arn
}
output "key_spec" {
  description = "The type of key material in the KMS key. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_spec
}
output "key_usage" {
  description = "The cryptographic operations for which you can use the KMS key. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_usage
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_kms_replica_key.aws_kms_replica_key.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the replica key. The key ARNs of related multi-Region keys differ only in the Region value."
  value       = aws_kms_replica_key.aws_kms_replica_key.arn
}
output "key_id" {
  description = "The key ID of the replica key. Related multi-Region keys have the same key ID."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_id
}
output "key_rotation_enabled" {
  description = "A Boolean value that specifies whether key rotation is enabled. This is a shared property of multi-Region keys."
  value       = aws_kms_replica_key.aws_kms_replica_key.key_rotation_enabled
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
      "kind/name"                   = "aws_kms_replica_key"
      "kind/version"                = "v0.1.0"
    }
  }
}
