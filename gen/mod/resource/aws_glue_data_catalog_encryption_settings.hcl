resource "aws_glue_data_catalog_encryption_settings" "aws_glue_data_catalog_encryption_settings" {
  aws_kms_key_id                       = var.aws_kms_key_id
  catalog_encryption_mode              = var.catalog_encryption_mode
  catalog_id                           = var.catalog_id
  connection_password_encryption       = var.connection_password_encryption
  data_catalog_encryption_settings     = var.data_catalog_encryption_settings
  encryption_at_rest                   = var.encryption_at_rest
  return_connection_password_encrypted = var.return_connection_password_encrypted
  sse_aws_kms_key_id                   = var.sse_aws_kms_key_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "connection_password_encryption" {
  description = "(Required) When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption."
  type        = string
}
variable "data_catalog_encryption_settings" {
  description = " – (Required) The security configuration to set. see Data Catalog Encryption Settings."
  type        = string
}
variable "encryption_at_rest" {
  description = "(Required) Specifies the encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.connection_password_encryption"
  type        = string
}
variable "return_connection_password_encrypted" {
  description = "(Required) When set to true, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption."
  type        = string
}
variable "sse_aws_kms_key_id" {
  description = "(Optional) The ARN of the AWS KMS key to use for encryption at rest.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "aws_kms_key_id" {
  description = "(Optional) A KMS key ARN that is used to encrypt the connection password. If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least kms:Encrypt permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.encryption_at_rest"
  type        = string
  default     = ""
}
variable "catalog_encryption_mode" {
  description = "(Required) The encryption-at-rest mode for encrypting Data Catalog data. Valid values are DISABLED and SSE-KMS."
  type        = string
}
variable "catalog_id" {
  description = " – (Optional) The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.data_catalog_encryption_settings"
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
output "catalog_id" {
  description = " – (Optional) The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.data_catalog_encryption_settings"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.catalog_id
}
output "connection_password_encryption" {
  description = "(Required) When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.connection_password_encryption
}
output "data_catalog_encryption_settings" {
  description = " – (Required) The security configuration to set. see Data Catalog Encryption Settings."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.data_catalog_encryption_settings
}
output "encryption_at_rest" {
  description = "(Required) Specifies the encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.connection_password_encryption"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.encryption_at_rest
}
output "return_connection_password_encrypted" {
  description = "(Required) When set to true, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.return_connection_password_encrypted
}
output "sse_aws_kms_key_id" {
  description = "(Optional) The ARN of the AWS KMS key to use for encryption at rest.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.sse_aws_kms_key_id
}
output "aws_kms_key_id" {
  description = "(Optional) A KMS key ARN that is used to encrypt the connection password. If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least kms:Encrypt permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.encryption_at_rest"
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.aws_kms_key_id
}
output "catalog_encryption_mode" {
  description = "(Required) The encryption-at-rest mode for encrypting Data Catalog data. Valid values are DISABLED and SSE-KMS."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.catalog_encryption_mode
}
output "id" {
  description = "The ID of the Data Catalog to set the security configuration for."
  value       = aws_glue_data_catalog_encryption_settings.aws_glue_data_catalog_encryption_settings.id
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
      "kind/name"                   = "aws_glue_data_catalog_encryption_settings"
      "kind/version"                = "v0.1.0"
    }
  }
}
