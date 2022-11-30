resource "aws_kms_grant" "aws_kms_grant" {
  constraints               = var.constraints
  encryption_context_equals = var.encryption_context_equals
  retire_on_delete          = var.retire_on_delete
  grantee_principal         = var.grantee_principal
  key_id                    = var.key_id
  name                      = var.name
  operations                = var.operations
  retiring_principal        = var.retiring_principal
  encryption_context_subset = var.encryption_context_subset
  grant_creation_tokens     = var.grant_creation_tokens
  grant_id                  = var.grant_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "grant_creation_tokens" {
  description = "(Optional, Forces new resources) A list of grant tokens to be used when creating the grant. See Grant Tokens for more information about grant tokens."
  type        = string
}
variable "grant_id" {
  description = "The unique identifier for the grant."
  type        = string
}
variable "grantee_principal" {
  description = "(Required, Forces new resources) The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, terraform's state may not always be refreshed to reflect what is true in AWS."
  type        = string
}
variable "key_id" {
  description = "(Required, Forces new resources) The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN."
  type        = string
}
variable "name" {
  description = "(Optional, Forces new resources) A friendly name for identifying the grant."
  type        = string
}
variable "operations" {
  description = "(Required, Forces new resources) A list of operations that the grant permits. The permitted values are: Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, Sign, Verify, GetPublicKey, CreateGrant, RetireGrant, DescribeKey, GenerateDataKeyPair, or GenerateDataKeyPairWithoutPlaintext."
  type        = string
}
variable "retiring_principal" {
  description = "(Optional, Forces new resources) The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, terraform's state may not always be refreshed to reflect what is true in AWS."
  type        = string
}
variable "encryption_context_subset" {
  description = "(Optional) A list of key-value pairs that must be included in the encryption context of subsequent cryptographic operation requests. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs. Conflicts with encryption_context_equals.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "encryption_context_equals" {
  description = "(Optional) A list of key-value pairs that must match the encryption context in subsequent cryptographic operation requests. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint. Conflicts with encryption_context_subset."
  type        = string
}
variable "retire_on_delete" {
  description = "RetireGrant for more information.The constraints block supports the following arguments:"
  type        = string
}
variable "constraints" {
  description = "(Optional, Forces new resources) A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see Encryption Context."
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
output "constraints" {
  description = "(Optional, Forces new resources) A structure that you can use to allow certain operations in the grant only when the desired encryption context is present. For more information about encryption context, see Encryption Context."
  value       = aws_kms_grant.aws_kms_grant.constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_context_equals" {
  description = "(Optional) A list of key-value pairs that must match the encryption context in subsequent cryptographic operation requests. The grant allows the operation only when the encryption context in the request is the same as the encryption context specified in this constraint. Conflicts with encryption_context_subset."
  value       = aws_kms_grant.aws_kms_grant.encryption_context_equals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retire_on_delete" {
  description = "RetireGrant for more information.The constraints block supports the following arguments:"
  value       = aws_kms_grant.aws_kms_grant.retire_on_delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional, Forces new resources) A friendly name for identifying the grant."
  value       = aws_kms_grant.aws_kms_grant.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "operations" {
  description = "(Required, Forces new resources) A list of operations that the grant permits. The permitted values are: Decrypt, Encrypt, GenerateDataKey, GenerateDataKeyWithoutPlaintext, ReEncryptFrom, ReEncryptTo, Sign, Verify, GetPublicKey, CreateGrant, RetireGrant, DescribeKey, GenerateDataKeyPair, or GenerateDataKeyPairWithoutPlaintext."
  value       = aws_kms_grant.aws_kms_grant.operations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retiring_principal" {
  description = "(Optional, Forces new resources) The principal that is given permission to retire the grant by using RetireGrant operation in ARN format. Note that due to eventual consistency issues around IAM principals, terraform's state may not always be refreshed to reflect what is true in AWS."
  value       = aws_kms_grant.aws_kms_grant.retiring_principal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_context_subset" {
  description = "(Optional) A list of key-value pairs that must be included in the encryption context of subsequent cryptographic operation requests. The grant allows the cryptographic operation only when the encryption context in the request includes the key-value pairs specified in this constraint, although it can include additional key-value pairs. Conflicts with encryption_context_equals.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kms_grant.aws_kms_grant.encryption_context_subset
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant_creation_tokens" {
  description = "(Optional, Forces new resources) A list of grant tokens to be used when creating the grant. See Grant Tokens for more information about grant tokens."
  value       = aws_kms_grant.aws_kms_grant.grant_creation_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant_id" {
  description = "The unique identifier for the grant."
  value       = aws_kms_grant.aws_kms_grant.grant_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grantee_principal" {
  description = "(Required, Forces new resources) The principal that is given permission to perform the operations that the grant permits in ARN format. Note that due to eventual consistency issues around IAM principals, terraform's state may not always be refreshed to reflect what is true in AWS."
  value       = aws_kms_grant.aws_kms_grant.grantee_principal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_id" {
  description = "(Required, Forces new resources) The unique identifier for the customer master key (CMK) that the grant applies to. Specify the key ID or the Amazon Resource Name (ARN) of the CMK. To specify a CMK in a different AWS account, you must use the key ARN."
  value       = aws_kms_grant.aws_kms_grant.key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant_id" {
  description = "The unique identifier for the grant."
  value       = aws_kms_grant.aws_kms_grant.grant_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant_token" {
  description = "The grant token for the created grant. For more information, see Grant Tokens."
  value       = aws_kms_grant.aws_kms_grant.grant_token
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
      "kind/name"                   = "aws_kms_grant"
      "kind/version"                = "v0.1.0"
    }
  }
}
