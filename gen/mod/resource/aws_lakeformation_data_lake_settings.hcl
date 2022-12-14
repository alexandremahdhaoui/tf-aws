resource "aws_lakeformation_data_lake_settings" "aws_lakeformation_data_lake_settings" {
  admins                              = var.admins
  catalog_id                          = var.catalog_id
  create_database_default_permissions = var.create_database_default_permissions
  create_table_default_permissions    = var.create_table_default_permissions
  permissions                         = var.permissions
  principal                           = var.principal
  trusted_resource_owners             = var.trusted_resource_owners
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "trusted_resource_owners" {
  description = " – (Optional) List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).~> strongNOTE: Although optional, not including admins, create_database_default_permissions, create_table_default_permissions, and/or trusted_resource_owners results in the setting being cleared.create_database_default_permissions"
  type        = string
  default     = ""
}
variable "admins" {
  description = " – (Optional) Set of ARNs of AWS Lake Formation principals (IAM users or roles)."
  type        = string
  default     = ""
}
variable "catalog_id" {
  description = " – (Optional) Identifier for the Data Catalog. By default, the account ID."
  type        = string
  default     = ""
}
variable "create_database_default_permissions" {
  description = "(Optional) Up to three configuration blocks of principal permissions for default create database permissions. Detailed below."
  type        = string
  default     = ""
}
variable "create_table_default_permissions" {
  description = "(Optional) Up to three configuration blocks of principal permissions for default create table permissions. Detailed below."
  type        = string
  default     = ""
}
variable "permissions" {
  description = "(Optional) List of permissions that are granted to the principal. Valid values may include ALL, SELECT, ALTER, DROP, DELETE, INSERT, and DESCRIBE. For more details, see Lake Formation Permissions Reference."
  type        = string
  default     = ""
}
variable "principal" {
  description = "(Optional) Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set principal to IAM_ALLOWED_PRINCIPALS and permissions to [\"ALL\"]."
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
output "create_table_default_permissions" {
  description = "(Optional) Up to three configuration blocks of principal permissions for default create table permissions. Detailed below."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.create_table_default_permissions
}
output "permissions" {
  description = "(Optional) List of permissions that are granted to the principal. Valid values may include ALL, SELECT, ALTER, DROP, DELETE, INSERT, and DESCRIBE. For more details, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.permissions
}
output "principal" {
  description = "(Optional) Principal who is granted permissions. To enforce metadata and underlying data access control only by IAM on new databases and tables set principal to IAM_ALLOWED_PRINCIPALS and permissions to [\"ALL\"]."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.principal
}
output "trusted_resource_owners" {
  description = " – (Optional) List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).~> strongNOTE: Although optional, not including admins, create_database_default_permissions, create_table_default_permissions, and/or trusted_resource_owners results in the setting being cleared.create_database_default_permissions"
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.trusted_resource_owners
}
output "admins" {
  description = " – (Optional) Set of ARNs of AWS Lake Formation principals (IAM users or roles)."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.admins
}
output "catalog_id" {
  description = " – (Optional) Identifier for the Data Catalog. By default, the account ID."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.catalog_id
}
output "create_database_default_permissions" {
  description = "(Optional) Up to three configuration blocks of principal permissions for default create database permissions. Detailed below."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.create_database_default_permissions
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
      "kind/name"                   = "aws_lakeformation_data_lake_settings"
      "kind/version"                = "v0.1.0"
    }
  }
}
