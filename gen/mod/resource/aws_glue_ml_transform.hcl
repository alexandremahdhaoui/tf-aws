resource "aws_glue_ml_transform" "aws_glue_ml_transform" {
  catalog_id                 = var.catalog_id
  connection_name            = var.connection_name
  schema                     = var.schema
  arn                        = var.arn
  database_name              = var.database_name
  name                       = var.name
  number_of_workers          = var.number_of_workers
  glue_version               = var.glue_version
  precision_recall_trade_off = var.precision_recall_trade_off
  transform_type             = var.transform_type
  find_matches_parameters    = var.find_matches_parameters
  input_record_tables        = var.input_record_tables
  primary_key_column_name    = var.primary_key_column_name
  role_arn                   = var.role_arn
  worker_type                = var.worker_type
  accuracy_cost_trade_off    = var.accuracy_cost_trade_off
  enforce_provided_labels    = var.enforce_provided_labels
  max_capacity               = var.max_capacity
  parameters                 = var.parameters
  tags_all                   = var.tags_all
  id                         = var.id
  label_count                = var.label_count
  max_retries                = var.max_retries
  table_name                 = var.table_name
  tags                       = var.tags
  description                = var.description
  timeout                    = var.timeout
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Glue ML Transform ID."
  type        = string
}
variable "label_count" {
  description = "The number of labels available for this transform."
  type        = string
}
variable "max_retries" {
  description = " – (Optional) The maximum number of times to retry this ML Transform if it fails."
  type        = string
}
variable "table_name" {
  description = "(Required) A table name in the AWS Glue Data Catalog."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "description" {
  description = " – (Optional) Description of the ML Transform."
  type        = string
}
variable "timeout" {
  description = " – (Optional) The ML Transform timeout in minutes. The default is 2880 minutes (48 hours)."
  type        = string
}
variable "catalog_id" {
  description = "(Optional) A unique identifier for the AWS Glue Data Catalog."
  type        = string
}
variable "connection_name" {
  description = "- (Optional) The name of the connection to the AWS Glue Data Catalog.parameters"
  type        = string
}
variable "schema" {
  description = "The object that represents the schema that this transform accepts. see Schema."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of Glue ML Transform."
  type        = string
}
variable "database_name" {
  description = "(Required) A database name in the AWS Glue Data Catalog."
  type        = string
}
variable "name" {
  description = "The name of the column."
  type        = string
}
variable "number_of_workers" {
  description = "(Optional) The number of workers of a defined worker_type that are allocated when an ML Transform runs. Required with worker_type.input_record_tables"
  type        = string
}
variable "glue_version" {
  description = "(Optional) The version of glue to use, for example \"1.0\". For information about available versions, see the AWS Glue Release Notes."
  type        = string
}
variable "precision_recall_trade_off" {
  description = "(Optional) The value selected when tuning your transform for a balance between precision and recall."
  type        = string
}
variable "transform_type" {
  description = "(Required) The type of machine learning transform. For information about the types of machine learning transforms, see Creating Machine Learning Transforms."
  type        = string
}
variable "find_matches_parameters" {
  description = "(Required) The parameters for the find matches algorithm. see Find Matches Parameters.find_matches_parameters"
  type        = string
}
variable "input_record_tables" {
  description = "(Required)  A list of AWS Glue table definitions used by the transform. see Input Record Tables."
  type        = string
}
variable "primary_key_column_name" {
  description = "(Optional) The name of a column that uniquely identifies rows in the source table.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "role_arn" {
  description = " – (Required) The ARN of the IAM role associated with this ML Transform."
  type        = string
}
variable "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of Standard, G.1X, or G.2X. Required with number_of_workers."
  type        = string
}
variable "accuracy_cost_trade_off" {
  description = "(Optional) The value that is selected when tuning your transform for a balance between accuracy and cost."
  type        = string
}
variable "enforce_provided_labels" {
  description = "(Optional) The value to switch on or off to force the output to match the provided labels from users."
  type        = string
}
variable "max_capacity" {
  description = " – (Optional) The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. max_capacity is a mutually exclusive option with number_of_workers and worker_type."
  type        = string
}
variable "parameters" {
  description = "(Required) The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.schema"
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
output "find_matches_parameters" {
  description = "(Required) The parameters for the find matches algorithm. see Find Matches Parameters.find_matches_parameters"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.find_matches_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_record_tables" {
  description = "(Required)  A list of AWS Glue table definitions used by the transform. see Input Record Tables."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.input_record_tables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_key_column_name" {
  description = "(Optional) The name of a column that uniquely identifies rows in the source table.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.primary_key_column_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = " – (Required) The ARN of the IAM role associated with this ML Transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when an ML Transform runs. Accepts a value of Standard, G.1X, or G.2X. Required with number_of_workers."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.worker_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Required) The algorithmic parameters that are specific to the transform type used. Conditionally dependent on the transform type. see Parameters."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accuracy_cost_trade_off" {
  description = "(Optional) The value that is selected when tuning your transform for a balance between accuracy and cost."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.accuracy_cost_trade_off
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enforce_provided_labels" {
  description = "(Optional) The value to switch on or off to force the output to match the provided labels from users."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.enforce_provided_labels
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_capacity" {
  description = " – (Optional) The number of AWS Glue data processing units (DPUs) that are allocated to task runs for this transform. You can allocate from 2 to 100 DPUs; the default is 10. max_capacity is a mutually exclusive option with number_of_workers and worker_type."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.max_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.schema"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Glue ML Transform ID."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label_count" {
  description = "The number of labels available for this transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.label_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_retries" {
  description = " – (Optional) The maximum number of times to retry this ML Transform if it fails."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.max_retries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_name" {
  description = "(Required) A table name in the AWS Glue Data Catalog."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.table_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " – (Optional) Description of the ML Transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout" {
  description = " – (Optional) The ML Transform timeout in minutes. The default is 2880 minutes (48 hours)."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Optional) A unique identifier for the AWS Glue Data Catalog."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_name" {
  description = "- (Optional) The name of the connection to the AWS Glue Data Catalog.parameters"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.connection_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema" {
  description = "The object that represents the schema that this transform accepts. see Schema."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue ML Transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) A database name in the AWS Glue Data Catalog."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the column."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_workers" {
  description = "(Optional) The number of workers of a defined worker_type that are allocated when an ML Transform runs. Required with worker_type.input_record_tables"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.number_of_workers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "glue_version" {
  description = "(Optional) The version of glue to use, for example \"1.0\". For information about available versions, see the AWS Glue Release Notes."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.glue_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "precision_recall_trade_off" {
  description = "(Optional) The value selected when tuning your transform for a balance between precision and recall."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.precision_recall_trade_off
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transform_type" {
  description = "(Required) The type of machine learning transform. For information about the types of machine learning transforms, see Creating Machine Learning Transforms."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.transform_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.schema"
  value       = aws_glue_ml_transform.aws_glue_ml_transform.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue ML Transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_type" {
  description = "The type of data in the column."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.data_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Glue ML Transform ID."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label_count" {
  description = "The number of labels available for this transform."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.label_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the column."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema" {
  description = "The object that represents the schema that this transform accepts. see Schema."
  value       = aws_glue_ml_transform.aws_glue_ml_transform.schema
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
      "kind/name"                   = "aws_glue_ml_transform"
      "kind/version"                = "v0.1.0"
    }
  }
}