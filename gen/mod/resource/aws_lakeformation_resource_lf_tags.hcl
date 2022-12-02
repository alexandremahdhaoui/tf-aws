resource "aws_lakeformation_resource_lf_tags" "aws_lakeformation_resource_lf_tags" {
  column_names          = var.column_names
  excluded_column_names = var.excluded_column_names
  table                 = var.table
  catalog_id            = var.catalog_id
  database              = var.database
  database_name         = var.database_name
  key                   = var.key
  lf_tag                = var.lf_tag
  name                  = var.name
  table_with_columns    = var.table_with_columns
  value                 = var.value
  wildcard              = var.wildcard
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "column_names" {
  description = "(Required, at least one of column_names or wildcard) Set of column names for the table."
  type        = string
  default     = ""
}
variable "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  type        = string
  default     = ""
}
variable "table" {
  description = "(Optional) Configuration block for a table resource. See below."
  type        = string
  default     = ""
}
variable "table_with_columns" {
  description = "(Optional) Configuration block for a table with columns resource. See below."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Value from the possible values for the LF-tag.The following argument is optional:"
  type        = string
}
variable "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  type        = string
  default     = ""
}
variable "database" {
  description = "(Optional) Configuration block for a database resource. See below."
  type        = string
  default     = ""
}
variable "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  type        = string
}
variable "key" {
  description = " – (Required) Key name for an existing LF-tag."
  type        = string
}
variable "lf_tag" {
  description = " – (Required) Set of LF-tags to attach to the resource. See below.Exactly one of the following is required:"
  type        = string
}
variable "name" {
  description = " – (Required) Name of the table resource."
  type        = string
}
variable "wildcard" {
  description = "(Required, at least one of column_names or wildcard) Whether to use a column wildcard. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
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
output "column_names" {
  description = "(Required, at least one of column_names or wildcard) Set of column names for the table."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.column_names
}
output "excluded_column_names" {
  description = "(Optional) Set of column names for the table to exclude. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.excluded_column_names
}
output "table" {
  description = "(Optional) Configuration block for a table resource. See below."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.table
}
output "key" {
  description = " – (Required) Key name for an existing LF-tag."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.key
}
output "lf_tag" {
  description = " – (Required) Set of LF-tags to attach to the resource. See below.Exactly one of the following is required:"
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.lf_tag
}
output "name" {
  description = " – (Required) Name of the table resource."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.name
}
output "table_with_columns" {
  description = "(Optional) Configuration block for a table with columns resource. See below."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.table_with_columns
}
output "value" {
  description = "(Required) Value from the possible values for the LF-tag.The following argument is optional:"
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.value
}
output "catalog_id" {
  description = "(Optional) Identifier for the Data Catalog. By default, it is the account ID of the caller."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.catalog_id
}
output "database" {
  description = "(Optional) Configuration block for a database resource. See below."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.database
}
output "database_name" {
  description = " – (Required) Name of the database for the table with columns resource. Unique to the Data Catalog."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.database_name
}
output "wildcard" {
  description = "(Required, at least one of column_names or wildcard) Whether to use a column wildcard. If excluded_column_names is included, wildcard must be set to true to avoid Terraform reporting a difference."
  value       = aws_lakeformation_resource_lf_tags.aws_lakeformation_resource_lf_tags.wildcard
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
      "kind/name"                   = "aws_lakeformation_resource_lf_tags"
      "kind/version"                = "v0.1.0"
    }
  }
}
