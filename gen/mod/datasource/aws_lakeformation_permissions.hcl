datasource "aws_lakeformation_permissions" "aws_lakeformation_permissions" {
  permissions           = var.permissions
  principal             = var.principal
  resource_type         = var.resource_type
  wildcard              = var.wildcard
  database              = var.database
  database_name         = var.database_name
  key                   = var.key
  lf_tag                = var.lf_tag
  name                  = var.name
  table                 = var.table
  catalog_id            = var.catalog_id
  excluded_column_names = var.excluded_column_names
  table_with_columns    = var.table_with_columns
  data_location         = var.data_location
  catalog_resource      = var.catalog_resource
  column_names          = var.column_names
  expression            = var.expression
  lf_tag_policy         = var.lf_tag_policy
  values                = var.values
  arn                   = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  type        = string
  default     = ""
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
  default     = ""
}
variable "database" {
  description = "Configuration block for a database resource. Detailed below."
  type        = string
}
variable "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  type        = string
}
variable "key" {
  description = " – (Required) Key-name of an LF-Tag."
  type        = string
}
variable "lf_tag" {
  description = "(Optional) Configuration block for an LF-tag resource. Detailed below."
  type        = string
  default     = ""
}
variable "name" {
  description = " – (Required) Name of the table resource."
  type        = string
}
variable "table" {
  description = "Configuration block for a table resource. Detailed below."
  type        = string
}
variable "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  type        = string
  default     = ""
}
variable "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. At least one of column_names or excluded_column_names is required.In addition to the above arguments, the following attribute is exported:"
  type        = string
  default     = ""
}
variable "table_with_columns" {
  description = "Configuration block for a table with columns resource. Detailed below."
  type        = string
}
variable "data_location" {
  description = "Configuration block for a data location resource. Detailed below."
  type        = string
}
variable "catalog_resource" {
  description = "Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  type        = string
}
variable "column_names" {
  description = "(Optional) Set of column names for the table. At least one of column_names or excluded_column_names is required."
  type        = string
  default     = ""
}
variable "expression" {
  description = "(Required) List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  type        = string
}
variable "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) List of possible values of an LF-Tag.tableThe following argument is required:"
  type        = string
}
variable "arn" {
  description = " – (Required) ARN that uniquely identifies the data location resource.The following argument is optional:"
  type        = string
}
output "principal" {
  description = " – (Required) Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.One of the following is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.principal
}
output "resource_type" {
  description = " – (Required) Resource type for which the tag policy applies. Valid values are DATABASE and TABLE."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.resource_type
}
output "wildcard" {
  description = "(Optional) Whether to use a wildcard representing every table under a database. At least one of name or wildcard is required. Defaults to false.table_with_columns"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.wildcard
}
output "database" {
  description = "Configuration block for a database resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database
}
output "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions
}
output "key" {
  description = " – (Required) Key-name of an LF-Tag."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.key
}
output "lf_tag" {
  description = "(Optional) Configuration block for an LF-tag resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag
}
output "name" {
  description = " – (Required) Name of the table resource."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.name
}
output "table" {
  description = "Configuration block for a table resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table
}
output "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_id
}
output "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database_name
}
output "table_with_columns" {
  description = "Configuration block for a table with columns resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table_with_columns
}
output "data_location" {
  description = "Configuration block for a data location resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.data_location
}
output "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. At least one of column_names or excluded_column_names is required.In addition to the above arguments, the following attribute is exported:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.excluded_column_names
}
output "column_names" {
  description = "(Optional) Set of column names for the table. At least one of column_names or excluded_column_names is required."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.column_names
}
output "expression" {
  description = "(Required) List of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.expression
}
output "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag_policy
}
output "values" {
  description = "(Required) List of possible values of an LF-Tag.tableThe following argument is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.values
}
output "arn" {
  description = " – (Required) ARN that uniquely identifies the data location resource.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.arn
}
output "catalog_resource" {
  description = "Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_resource
}
output "permissions" {
  description = " – List of permissions granted to the principal. For details on permissions, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions
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
