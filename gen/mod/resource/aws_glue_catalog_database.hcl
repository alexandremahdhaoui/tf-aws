resource "aws_glue_catalog_database" "aws_glue_catalog_database" {
  catalog_id                      = var.catalog_id
  create_table_default_permission = var.create_table_default_permission
  data_lake_principal_identifier  = var.data_lake_principal_identifier
  location_uri                    = var.location_uri
  name                            = var.name
  parameters                      = var.parameters
  permissions                     = var.permissions
  arn                             = var.arn
  description                     = var.description
  principal                       = var.principal
  target_database                 = var.target_database
  database_name                   = var.database_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Glue Catalog Database."
  type        = string
}
variable "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the database resides."
  type        = string
}
variable "create_table_default_permission" {
  description = "(Optional) Creates a set of default permissions on the table for principals. See create_table_default_permission below."
  type        = string
}
variable "data_lake_principal_identifier" {
  description = "(Optional) An identifier for the Lake Formation principal.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "location_uri" {
  description = "(Optional) Location of the database (for example, an HDFS path)."
  type        = string
}
variable "name" {
  description = "(Required) Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character."
  type        = string
}
variable "parameters" {
  description = "(Optional) List of key-value pairs that define parameters and properties of the database."
  type        = string
}
variable "permissions" {
  description = "(Optional) The permissions that are granted to the principal."
  type        = string
}
variable "database_name" {
  description = "(Required) Name of the catalog database.create_table_default_permission"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the database."
  type        = string
}
variable "principal" {
  description = "(Optional) The principal who is granted permissions.. See principal below.principal"
  type        = string
}
variable "target_database" {
  description = "(Optional) Configuration block for a target database for resource linking. See target_database below.target_database"
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
output "create_table_default_permission" {
  description = "(Optional) Creates a set of default permissions on the table for principals. See create_table_default_permission below."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.create_table_default_permission
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_lake_principal_identifier" {
  description = "(Optional) An identifier for the Lake Formation principal.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_catalog_database.aws_glue_catalog_database.data_lake_principal_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_uri" {
  description = "(Optional) Location of the database (for example, an HDFS path)."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.location_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Optional) List of key-value pairs that define parameters and properties of the database."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = "(Optional) The permissions that are granted to the principal."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.permissions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Glue Catalog Database."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the database resides."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "principal" {
  description = "(Optional) The principal who is granted permissions.. See principal below.principal"
  value       = aws_glue_catalog_database.aws_glue_catalog_database.principal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_database" {
  description = "(Optional) Configuration block for a target database for resource linking. See target_database below.target_database"
  value       = aws_glue_catalog_database.aws_glue_catalog_database.target_database
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) Name of the catalog database.create_table_default_permission"
  value       = aws_glue_catalog_database.aws_glue_catalog_database.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the database."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Glue Catalog Database."
  value       = aws_glue_catalog_database.aws_glue_catalog_database.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Catalog ID and name of the database"
  value       = aws_glue_catalog_database.aws_glue_catalog_database.id
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
      "kind/name"                   = "aws_glue_catalog_database"
      "kind/version"                = "v0.1.0"
    }
  }
}
