resource "aws_lakeformation_permissions" "aws_lakeformation_permissions" {
  database_name                 = var.database_name
  lf_tag                        = var.lf_tag
  name                          = var.name
  values                        = var.values
  column_names                  = var.column_names
  expression                    = var.expression
  lf_tag_policy                 = var.lf_tag_policy
  permissions_with_grant_option = var.permissions_with_grant_option
  resource_type                 = var.resource_type
  table                         = var.table
  arn                           = var.arn
  catalog_resource              = var.catalog_resource
  database                      = var.database
  excluded_column_names         = var.excluded_column_names
  key                           = var.key
  principal                     = var.principal
  table_with_columns            = var.table_with_columns
  catalog_id                    = var.catalog_id
  permissions                   = var.permissions
  wildcard                      = var.wildcard
  data_location                 = var.data_location
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "expression" {
  description = "(Required) A list of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  type        = string
}
variable "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  type        = string
  default     = ""
}
variable "permissions_with_grant_option" {
  description = "(Optional) Subset of permissions which the principal can pass.data_locationThe following argument is required:"
  type        = string
  default     = ""
}
variable "resource_type" {
  description = " – (Required) The resource type for which the tag policy applies. Valid values are DATABASE and TABLE."
  type        = string
}
variable "table" {
  description = "(Optional) Configuration block for a table resource. Detailed below."
  type        = string
  default     = ""
}
variable "arn" {
  description = " – (Required) Amazon Resource Name (ARN) that uniquely identifies the data location resource.The following argument is optional:"
  type        = string
}
variable "catalog_resource" {
  description = "(Optional) Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  type        = string
  default     = ""
}
variable "database" {
  description = "(Optional) Configuration block for a database resource. Detailed below."
  type        = string
  default     = ""
}
variable "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  type        = string
  default     = ""
}
variable "key" {
  description = " – (Required) The key-name of an LF-Tag."
  type        = string
}
variable "principal" {
  description = " – (Required) Principal to be granted the permissions on the resource. Supported principals include IAM_ALLOWED_PRINCIPALS (see Default Behavior and IAMAllowedPrincipals above), IAM roles, users, groups, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see Lake Formation Permissions Reference.~> strongNOTE: We highly recommend that the principal emNOT be a Lake Formation administrator (granted using aws_lakeformation_data_lake_settings). The entity (e.g., IAM role) running Terraform will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.One of the following is required:"
  type        = string
}
variable "table_with_columns" {
  description = "(Optional) Configuration block for a table with columns resource. Detailed below."
  type        = string
  default     = ""
}
variable "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  type        = string
  default     = ""
}
variable "permissions" {
  description = " – (Required) List of permissions granted to the principal. Valid values may include ALL, ALTER, ASSOCIATE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, DELETE, DESCRIBE, DROP, INSERT, and SELECT. For details on each permission, see Lake Formation Permissions Reference."
  type        = string
}
variable "wildcard" {
  description = "(Required, at least one of column_names or wildcard) Whether to use a column wildcard. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  type        = string
  default     = ""
}
variable "data_location" {
  description = "(Optional) Configuration block for a data location resource. Detailed below."
  type        = string
  default     = ""
}
variable "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
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
variable "values" {
  description = "(Required) A list of possible values of an LF-Tag.tableThe following argument is required:"
  type        = string
}
variable "column_names" {
  description = "(Required, at least one of column_names or wildcard) Set of column names for the table."
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
output "expression" {
  description = "(Required) A list of tag conditions that apply to the resource's tag policy. Configuration block for tag conditions that apply to the policy. See expression below.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.expression
}
output "lf_tag_policy" {
  description = "(Optional) Configuration block for an LF-tag policy resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag_policy
}
output "permissions_with_grant_option" {
  description = "(Optional) Subset of permissions which the principal can pass.data_locationThe following argument is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions_with_grant_option
}
output "resource_type" {
  description = " – (Required) The resource type for which the tag policy applies. Valid values are DATABASE and TABLE."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.resource_type
}
output "table" {
  description = "(Optional) Configuration block for a table resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table
}
output "arn" {
  description = " – (Required) Amazon Resource Name (ARN) that uniquely identifies the data location resource.The following argument is optional:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.arn
}
output "catalog_resource" {
  description = "(Optional) Whether the permissions are to be granted for the Data Catalog. Defaults to false."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_resource
}
output "database" {
  description = "(Optional) Configuration block for a database resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database
}
output "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.excluded_column_names
}
output "key" {
  description = " – (Required) The key-name of an LF-Tag."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.key
}
output "principal" {
  description = " – (Required) Principal to be granted the permissions on the resource. Supported principals include IAM_ALLOWED_PRINCIPALS (see Default Behavior and IAMAllowedPrincipals above), IAM roles, users, groups, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see Lake Formation Permissions Reference.~> strongNOTE: We highly recommend that the principal emNOT be a Lake Formation administrator (granted using aws_lakeformation_data_lake_settings). The entity (e.g., IAM role) running Terraform will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.One of the following is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.principal
}
output "table_with_columns" {
  description = "(Optional) Configuration block for a table with columns resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.table_with_columns
}
output "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.catalog_id
}
output "permissions" {
  description = " – (Required) List of permissions granted to the principal. Valid values may include ALL, ALTER, ASSOCIATE, CREATE_DATABASE, CREATE_TABLE, DATA_LOCATION_ACCESS, DELETE, DESCRIBE, DROP, INSERT, and SELECT. For details on each permission, see Lake Formation Permissions Reference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.permissions
}
output "wildcard" {
  description = "(Required, at least one of column_names or wildcard) Whether to use a column wildcard. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.wildcard
}
output "data_location" {
  description = "(Optional) Configuration block for a data location resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.data_location
}
output "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.database_name
}
output "lf_tag" {
  description = "(Optional) Configuration block for an LF-tag resource. Detailed below."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.lf_tag
}
output "name" {
  description = " – (Required) Name of the table resource."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.name
}
output "values" {
  description = "(Required) A list of possible values of an LF-Tag.tableThe following argument is required:"
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.values
}
output "column_names" {
  description = "(Required, at least one of column_names or wildcard) Set of column names for the table."
  value       = aws_lakeformation_permissions.aws_lakeformation_permissions.column_names
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
      "kind/name"                   = "aws_lakeformation_permissions"
      "kind/version"                = "v0.1.0"
    }
  }
}
