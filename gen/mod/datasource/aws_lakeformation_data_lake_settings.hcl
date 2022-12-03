datasource "aws_lakeformation_data_lake_settings" "aws_lakeformation_data_lake_settings" {
  catalog_id                          = var.catalog_id
  create_database_default_permissions = var.create_database_default_permissions
  create_table_default_permissions    = var.create_table_default_permissions
  permissions                         = var.permissions
  principal                           = var.principal
  trusted_resource_owners             = var.trusted_resource_owners
  admins                              = var.admins
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "principal" {
  description = "Principal who is granted permissions.create_table_default_permissions"
  type        = string
  default     = ""
}
variable "trusted_resource_owners" {
  description = " – List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).create_database_default_permissions"
  type        = string
  default     = ""
}
variable "admins" {
  description = " – List of ARNs of AWS Lake Formation principals (IAM users or roles)."
  type        = string
  default     = ""
}
variable "catalog_id" {
  description = " – (Optional) Identifier for the Data Catalog. By default, the account ID.In addition to arguments above, the following attributes are exported."
  type        = string
  default     = ""
}
variable "create_database_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create database permissions. Detailed below."
  type        = string
  default     = ""
}
variable "create_table_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create table permissions. Detailed below."
  type        = string
  default     = ""
}
variable "permissions" {
  description = "List of permissions granted to the principal."
  type        = string
  default     = ""
}
output "trusted_resource_owners" {
  description = " – List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).create_database_default_permissions"
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.trusted_resource_owners
}
output "admins" {
  description = " – List of ARNs of AWS Lake Formation principals (IAM users or roles)."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.admins
}
output "catalog_id" {
  description = " – (Optional) Identifier for the Data Catalog. By default, the account ID.In addition to arguments above, the following attributes are exported."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.catalog_id
}
output "create_database_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create database permissions. Detailed below."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.create_database_default_permissions
}
output "create_table_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create table permissions. Detailed below."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.create_table_default_permissions
}
output "permissions" {
  description = "List of permissions granted to the principal."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.permissions
}
output "principal" {
  description = "Principal who is granted permissions.create_table_default_permissions"
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.principal
}
output "create_table_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create table permissions. Detailed below."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.create_table_default_permissions
}
output "permissions" {
  description = "List of permissions granted to the principal."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.permissions
}
output "principal" {
  description = "Principal who is granted permissions.create_table_default_permissions"
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.principal
}
output "trusted_resource_owners" {
  description = " – List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).create_database_default_permissions"
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.trusted_resource_owners
}
output "admins" {
  description = " – List of ARNs of AWS Lake Formation principals (IAM users or roles)."
  value       = aws_lakeformation_data_lake_settings.aws_lakeformation_data_lake_settings.admins
}
output "create_database_default_permissions" {
  description = "Up to three configuration blocks of principal permissions for default create database permissions. Detailed below."
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
}
