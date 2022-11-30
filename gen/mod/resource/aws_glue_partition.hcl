resource "aws_glue_partition" "aws_glue_partition" {
  compressed                        = var.compressed
  creation_time                     = var.creation_time
  skewed_column_values              = var.skewed_column_values
  sort_order                        = var.sort_order
  location                          = var.location
  number_of_buckets                 = var.number_of_buckets
  ser_de_info                       = var.ser_de_info
  serialization_library             = var.serialization_library
  stored_as_sub_directories         = var.stored_as_sub_directories
  database_name                     = var.database_name
  output_format                     = var.output_format
  skewed_column_value_location_maps = var.skewed_column_value_location_maps
  bucket_columns                    = var.bucket_columns
  type                              = var.type
  column                            = var.column
  columns                           = var.columns
  partition_values                  = var.partition_values
  skewed_column_names               = var.skewed_column_names
  storage_descriptor                = var.storage_descriptor
  sort_columns                      = var.sort_columns
  comment                           = var.comment
  input_format                      = var.input_format
  last_analyzed_time                = var.last_analyzed_time
  name                              = var.name
  parameters                        = var.parameters
  catalog_id                        = var.catalog_id
  id                                = var.id
  skewed_info                       = var.skewed_info
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "bucket_columns" {
  description = "(Optional) A list of reducer grouping columns, clustering columns, and bucketing columns in the table."
  type        = string
}
variable "type" {
  description = "(Optional) The datatype of data in the Column."
  type        = string
}
variable "storage_descriptor" {
  description = "(Optional) A storage descriptor object containing information about the physical storage of this table. You can refer to the Glue Developer Guide for a full explanation of this object."
  type        = string
}
variable "column" {
  description = "(Required) The name of the column."
  type        = string
}
variable "columns" {
  description = "(Optional) A list of the Columns in the table."
  type        = string
}
variable "partition_values" {
  description = "(Required) The values that define the partition."
  type        = string
}
variable "skewed_column_names" {
  description = "(Optional) A list of names of columns that contain skewed values."
  type        = string
}
variable "parameters" {
  description = "(Optional) A map of initialization parameters for the SerDe, in key-value form."
  type        = string
}
variable "sort_columns" {
  description = "(Optional) A list of Order objects specifying the sort order of each bucket in the table."
  type        = string
}
variable "comment" {
  description = "(Optional) Free-form text comment.ser_de_info"
  type        = string
}
variable "input_format" {
  description = "(Optional) The input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  type        = string
}
variable "last_analyzed_time" {
  description = "The last time at which column statistics were computed for this partition."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the SerDe."
  type        = string
}
variable "catalog_id" {
  description = "(Optional) ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name."
  type        = string
}
variable "id" {
  description = "partition id."
  type        = string
}
variable "skewed_info" {
  description = "(Optional) Information about values that appear very frequently in a column (skewed values)."
  type        = string
}
variable "compressed" {
  description = "(Optional) True if the data in the table is compressed, or False if not."
  type        = string
}
variable "creation_time" {
  description = "The time at which the partition was created."
  type        = string
}
variable "skewed_column_values" {
  description = "(Optional) A map of skewed values to the columns that contain them.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "sort_order" {
  description = "(Required) Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).skewed_info"
  type        = string
}
variable "stored_as_sub_directories" {
  description = "(Optional) True if the table data is stored in subdirectories, or False if not.column"
  type        = string
}
variable "location" {
  description = "(Optional) The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  type        = string
}
variable "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  type        = string
}
variable "ser_de_info" {
  description = "(Optional) Serialization/deserialization (SerDe) information."
  type        = string
}
variable "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
  type        = string
}
variable "database_name" {
  description = "(Required) Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase."
  type        = string
}
variable "output_format" {
  description = "(Optional) The output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  type        = string
}
variable "skewed_column_value_location_maps" {
  description = "(Optional) A list of values that appear so frequently as to be considered skewed."
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
output "comment" {
  description = "(Optional) Free-form text comment.ser_de_info"
  value       = aws_glue_partition.aws_glue_partition.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_format" {
  description = "(Optional) The input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  value       = aws_glue_partition.aws_glue_partition.input_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_analyzed_time" {
  description = "The last time at which column statistics were computed for this partition."
  value       = aws_glue_partition.aws_glue_partition.last_analyzed_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name of the SerDe."
  value       = aws_glue_partition.aws_glue_partition.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Optional) A map of initialization parameters for the SerDe, in key-value form."
  value       = aws_glue_partition.aws_glue_partition.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sort_columns" {
  description = "(Optional) A list of Order objects specifying the sort order of each bucket in the table."
  value       = aws_glue_partition.aws_glue_partition.sort_columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Optional) ID of the Glue Catalog and database to create the table in. If omitted, this defaults to the AWS Account ID plus the database name."
  value       = aws_glue_partition.aws_glue_partition.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "partition id."
  value       = aws_glue_partition.aws_glue_partition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_info" {
  description = "(Optional) Information about values that appear very frequently in a column (skewed values)."
  value       = aws_glue_partition.aws_glue_partition.skewed_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compressed" {
  description = "(Optional) True if the data in the table is compressed, or False if not."
  value       = aws_glue_partition.aws_glue_partition.compressed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "The time at which the partition was created."
  value       = aws_glue_partition.aws_glue_partition.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_values" {
  description = "(Optional) A map of skewed values to the columns that contain them.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_partition.aws_glue_partition.skewed_column_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sort_order" {
  description = "(Required) Indicates that the column is sorted in ascending order (== 1), or in descending order (==0).skewed_info"
  value       = aws_glue_partition.aws_glue_partition.sort_order
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Optional) The physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  value       = aws_glue_partition.aws_glue_partition.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  value       = aws_glue_partition.aws_glue_partition.number_of_buckets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ser_de_info" {
  description = "(Optional) Serialization/deserialization (SerDe) information."
  value       = aws_glue_partition.aws_glue_partition.ser_de_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is: org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
  value       = aws_glue_partition.aws_glue_partition.serialization_library
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stored_as_sub_directories" {
  description = "(Optional) True if the table data is stored in subdirectories, or False if not.column"
  value       = aws_glue_partition.aws_glue_partition.stored_as_sub_directories
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) Name of the metadata database where the table metadata resides. For Hive compatibility, this must be all lowercase."
  value       = aws_glue_partition.aws_glue_partition.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_format" {
  description = "(Optional) The output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  value       = aws_glue_partition.aws_glue_partition.output_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_value_location_maps" {
  description = "(Optional) A list of values that appear so frequently as to be considered skewed."
  value       = aws_glue_partition.aws_glue_partition.skewed_column_value_location_maps
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_columns" {
  description = "(Optional) A list of reducer grouping columns, clustering columns, and bucketing columns in the table."
  value       = aws_glue_partition.aws_glue_partition.bucket_columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) The datatype of data in the Column."
  value       = aws_glue_partition.aws_glue_partition.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "column" {
  description = "(Required) The name of the column."
  value       = aws_glue_partition.aws_glue_partition.column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "columns" {
  description = "(Optional) A list of the Columns in the table."
  value       = aws_glue_partition.aws_glue_partition.columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition_values" {
  description = "(Required) The values that define the partition."
  value       = aws_glue_partition.aws_glue_partition.partition_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_names" {
  description = "(Optional) A list of names of columns that contain skewed values."
  value       = aws_glue_partition.aws_glue_partition.skewed_column_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_descriptor" {
  description = "(Optional) A storage descriptor object containing information about the physical storage of this table. You can refer to the Glue Developer Guide for a full explanation of this object."
  value       = aws_glue_partition.aws_glue_partition.storage_descriptor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_analyzed_time" {
  description = "The last time at which column statistics were computed for this partition."
  value       = aws_glue_partition.aws_glue_partition.last_analyzed_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "The time at which the partition was created."
  value       = aws_glue_partition.aws_glue_partition.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "partition id."
  value       = aws_glue_partition.aws_glue_partition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_accessed_time" {
  description = "The last time at which the partition was accessed."
  value       = aws_glue_partition.aws_glue_partition.last_accessed_time
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
      "kind/name"                   = "aws_glue_partition"
      "kind/version"                = "v0.1.0"
    }
  }
}
