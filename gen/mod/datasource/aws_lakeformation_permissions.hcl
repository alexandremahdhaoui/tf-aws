datasource "aws_lakeformation_permissions" "aws_lakeformation_permissions" {
  catalog_id            = var.catalog_id
  catalog_resource      = var.catalog_resource
  excluded_column_names = var.excluded_column_names
  table_with_columns    = var.table_with_columns
  wildcard              = var.wildcard
  arn                   = var.arn
  data_location         = var.data_location
  database_name         = var.database_name
  lf_tag_policy         = var.lf_tag_policy
  name                  = var.name
  column_names          = var.column_names
  database              = var.database
  expression            = var.expression
  lf_tag                = var.lf_tag
  table                 = var.table
  values                = var.values
  key                   = var.key
  permissions           = var.permissions
  principal             = var.principal
  resource_type         = var.resource_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = " – (Required) Name of the table resource."
  type        = string
}
variable "arn" {
  description = " – (Required) ARN that uniquely identifies the data location resource.The following argument is optional:"
  type        = string
}
variable "data_location" {
  description = "Configuration block for a data location resource. Detailed below."
  type        = string
}
variable "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  type        = string
}
variable "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  type        = string
}
variable "table" {
  description = "Configuration block for a table resource. Detailed below."
  type        = string
}
variable "values" {
  description = "(Required) List of possible values of an LF-Tag.tableThe following argument is required:"
  type        = string
}
variable "column_names" {
  description = "(Optional) Set of column names for the table. At least one of column_names or excluded_column_names is required."
  type        = string
}
variable "database" {
  description = "Configuration block for a database resource. Detailed below."
  type        = string
}
variable "expression" {
  description = "(Required) List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  type        = string
}
variable "lf_tag" {
  description = "(Optional) Configuration block for an LF-tag resource. Detailed below."
  type        = string
}
variable "key" {
  description = " – (Required) Key-name of an LF-Tag."
  type        = string
}
variable "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  type        = string
}
variable "principal" {
  description = " – (Required) Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.One of the following is required:"
  type        = string
}
variable "resource_type" {
  description = " – (Required) Resource type for which the tag policy applies. Valid values are DATABASE and TABLE."
  type        = string
}
variable "wildcard" {
  description = "(Optional) Whether to use a wildcard representing every table under a database. At least one of name or wildcard is required. Defaults to false.table_with_columns"
  type        = string
}
variable "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  type        = string
}
variable "catalog_resource" {
  description = "Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  type        = string
}
variable "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. At least one of column_names or excluded_column_names is required.In addition to the above arguments, the following attribute is exported:"
  type        = string
}
variable "table_with_columns" {
  description = "Configuration block for a table with columns resource. Detailed below."
  type        = string
}
output "resource_type" {
  description = " – (Required) Resource type for which the tag policy applies. Valid values are DATABASE and TABLE."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.resource_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = " – (Required) Key-name of an LF-Tag."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "principal" {
  description = " – (Required) Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.One of the following is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.principal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_with_columns" {
  description = "Configuration block for a table with columns resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table_with_columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wildcard" {
  description = "(Optional) Whether to use a wildcard representing every table under a database. At least one of name or wildcard is required. Defaults to false.table_with_columns"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.wildcard
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_resource" {
  description = "Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. At least one of column_names or excluded_column_names is required.In addition to the above arguments, the following attribute is exported:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.excluded_column_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = " – (Required) Name of the table resource."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " – (Required) ARN that uniquely identifies the data location resource.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_location" {
  description = "Configuration block for a data location resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.data_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lf_tag" {
  description = "(Optional) Configuration block for an LF-tag resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table" {
  description = "Configuration block for a table resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) List of possible values of an LF-Tag.tableThe following argument is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "column_names" {
  description = "(Optional) Set of column names for the table. At least one of column_names or excluded_column_names is required."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.column_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database" {
  description = "Configuration block for a database resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expression" {
  description = "(Required) List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions
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
}
