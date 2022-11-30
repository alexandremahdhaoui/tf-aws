resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  sort_order                        = var.sort_order
  table_type                        = var.table_type
  view_original_text                = var.view_original_text
  column                            = var.column
  input_format                      = var.input_format
  schema_name                       = var.schema_name
  schema_version_id                 = var.schema_version_id
  storage_descriptor                = var.storage_descriptor
  target_table                      = var.target_table
  compressed                        = var.compressed
  index_name                        = var.index_name
  output_format                     = var.output_format
  skewed_column_values              = var.skewed_column_values
  schema_version_number             = var.schema_version_number
  ser_de_info                       = var.ser_de_info
  sort_columns                      = var.sort_columns
  view_expanded_text                = var.view_expanded_text
  arn                               = var.arn
  columns                           = var.columns
  number_of_buckets                 = var.number_of_buckets
  partition_index                   = var.partition_index
  skewed_column_names               = var.skewed_column_names
  skewed_column_value_location_maps = var.skewed_column_value_location_maps
  bucket_columns                    = var.bucket_columns
  retention                         = var.retention
  schema_arn                        = var.schema_arn
  schema_id                         = var.schema_id
  parameters                        = var.parameters
  partition_keys                    = var.partition_keys
  schema_reference                  = var.schema_reference
  serialization_library             = var.serialization_library
  comment                           = var.comment
  description                       = var.description
  skewed_info                       = var.skewed_info
  type                              = var.type
  stored_as_sub_directories         = var.stored_as_sub_directories
  catalog_id                        = var.catalog_id
  keys                              = var.keys
  location                          = var.location
  owner                             = var.owner
  database_name                     = var.database_name
  name                              = var.name
  registry_name                     = var.registry_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "table_type" {
  description = "(Optional) Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as ALTER TABLE and SHOW CREATE TABLE will fail if this argument is empty."
  type        = string
}
variable "view_original_text" {
  description = "(Optional) If the table is a view, the original text of the view; otherwise null.partition_index~> strongNOTE: A partition_index cannot be added to an existing glue_catalog_tableglue_partition_index resource for configuration details."
  type        = string
}
variable "column" {
  description = "(Required) Name of the column."
  type        = string
}
variable "input_format" {
  description = "(Optional) Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  type        = string
}
variable "schema_name" {
  description = "(Optional) Name of the schema. One of schema_arn or schema_name has to be provided.ser_de_info"
  type        = string
}
variable "schema_version_id" {
  description = "(Optional) Unique ID assigned to a version of the schema. Either this or the schema_id has to be provided."
  type        = string
}
variable "sort_order" {
  description = "(Required) Whether the column is sorted in ascending (1) or descending order (0).skewed_info"
  type        = string
}
variable "target_table" {
  description = "(Optional) Configuration block of a target table for resource linking. See target_table below."
  type        = string
}
variable "compressed" {
  description = "(Optional) Whether the data in the table is compressed."
  type        = string
}
variable "index_name" {
  description = "(Required) Name of the partition index."
  type        = string
}
variable "output_format" {
  description = "(Optional) Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  type        = string
}
variable "skewed_column_values" {
  description = "(Optional) Map of skewed values to the columns that contain them.target_table"
  type        = string
}
variable "storage_descriptor" {
  description = "(Optional) Configuration block for information about the physical storage of this table. For more information, refer to the Glue Developer Guide. See storage_descriptor below."
  type        = string
}
variable "ser_de_info" {
  description = "(Optional) Configuration block for serialization and deserialization (\"SerDe\") information. See ser_de_info below."
  type        = string
}
variable "sort_columns" {
  description = "(Optional) Configuration block for the sort order of each bucket in the table. See sort_columns below."
  type        = string
}
variable "view_expanded_text" {
  description = "(Optional) If the table is a view, the expanded text of the view; otherwise null."
  type        = string
}
variable "arn" {
  description = "The ARN of the Glue Table."
  type        = string
}
variable "columns" {
  description = "(Optional) Configuration block for columns in the table. See columns below."
  type        = string
}
variable "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  type        = string
}
variable "partition_index" {
  description = "(Optional) Configuration block for a maximum of 3 partition indexes. See partition_index below."
  type        = string
}
variable "schema_version_number" {
  description = "(Required) Version number of the schema.schema_id"
  type        = string
}
variable "skewed_column_value_location_maps" {
  description = "(Optional) List of values that appear so frequently as to be considered skewed."
  type        = string
}
variable "bucket_columns" {
  description = "(Optional) List of reducer grouping columns, clustering columns, and bucketing columns in the table."
  type        = string
}
variable "retention" {
  description = "(Optional) Retention time for this table."
  type        = string
}
variable "schema_arn" {
  description = "(Optional) ARN of the schema. One of schema_arn or schema_name has to be provided."
  type        = string
}
variable "schema_id" {
  description = "(Optional) Configuration block that contains schema identity fields. Either this or the schema_version_id has to be provided. See schema_id below."
  type        = string
}
variable "skewed_column_names" {
  description = "(Optional) List of names of columns that contain skewed values."
  type        = string
}
variable "parameters" {
  description = "(Optional) Map of initialization parameters for the SerDe, in key-value form."
  type        = string
}
variable "partition_keys" {
  description = "(Optional) Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See partition_keys below."
  type        = string
}
variable "schema_reference" {
  description = "(Optional) Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below."
  type        = string
}
variable "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
  type        = string
}
variable "comment" {
  description = "(Optional) Free-form text comment."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the table."
  type        = string
}
variable "skewed_info" {
  description = "(Optional) Configuration block with information about values that appear very frequently in a column (skewed values). See skewed_info below."
  type        = string
}
variable "type" {
  description = "(Optional) Datatype of data in the Column.schema_reference"
  type        = string
}
variable "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the table resides."
  type        = string
}
variable "keys" {
  description = "(Required) Keys for the partition index.partition_keys"
  type        = string
}
variable "location" {
  description = "(Optional) Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  type        = string
}
variable "owner" {
  description = "(Optional) Owner of the table."
  type        = string
}
variable "stored_as_sub_directories" {
  description = "(Optional) Whether the table data is stored in subdirectories.columns"
  type        = string
}
variable "database_name" {
  description = "(Required) Name of the catalog database that contains the target table."
  type        = string
}
variable "name" {
  description = "(Required) Name of the target table.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "registry_name" {
  description = "(Optional) Name of the schema registry that contains the schema. Must be provided when schema_name is specified and conflicts with schema_arn."
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
output "keys" {
  description = "(Required) Keys for the partition index.partition_keys"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.keys
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Optional) Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "(Optional) Owner of the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stored_as_sub_directories" {
  description = "(Optional) Whether the table data is stored in subdirectories.columns"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.stored_as_sub_directories
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the table resides."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the target table.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registry_name" {
  description = "(Optional) Name of the schema registry that contains the schema. Must be provided when schema_name is specified and conflicts with schema_arn."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.registry_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) Name of the catalog database that contains the target table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_format" {
  description = "(Optional) Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.input_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_name" {
  description = "(Optional) Name of the schema. One of schema_arn or schema_name has to be provided.ser_de_info"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_version_id" {
  description = "(Optional) Unique ID assigned to a version of the schema. Either this or the schema_id has to be provided."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sort_order" {
  description = "(Required) Whether the column is sorted in ascending (1) or descending order (0).skewed_info"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.sort_order
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_type" {
  description = "(Optional) Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as ALTER TABLE and SHOW CREATE TABLE will fail if this argument is empty."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.table_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "view_original_text" {
  description = "(Optional) If the table is a view, the original text of the view; otherwise null.partition_index~> strongNOTE: A partition_index cannot be added to an existing glue_catalog_tableglue_partition_index resource for configuration details."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.view_original_text
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "column" {
  description = "(Required) Name of the column."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_name" {
  description = "(Required) Name of the partition index."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.index_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_format" {
  description = "(Optional) Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.output_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_values" {
  description = "(Optional) Map of skewed values to the columns that contain them.target_table"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_descriptor" {
  description = "(Optional) Configuration block for information about the physical storage of this table. For more information, refer to the Glue Developer Guide. See storage_descriptor below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.storage_descriptor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_table" {
  description = "(Optional) Configuration block of a target table for resource linking. See target_table below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.target_table
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compressed" {
  description = "(Optional) Whether the data in the table is compressed."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.compressed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "columns" {
  description = "(Optional) Configuration block for columns in the table. See columns below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.number_of_buckets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition_index" {
  description = "(Optional) Configuration block for a maximum of 3 partition indexes. See partition_index below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.partition_index
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_version_number" {
  description = "(Required) Version number of the schema.schema_id"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_version_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ser_de_info" {
  description = "(Optional) Configuration block for serialization and deserialization (\"SerDe\") information. See ser_de_info below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.ser_de_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sort_columns" {
  description = "(Optional) Configuration block for the sort order of each bucket in the table. See sort_columns below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.sort_columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "view_expanded_text" {
  description = "(Optional) If the table is a view, the expanded text of the view; otherwise null."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.view_expanded_text
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the Glue Table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retention" {
  description = "(Optional) Retention time for this table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.retention
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_arn" {
  description = "(Optional) ARN of the schema. One of schema_arn or schema_name has to be provided."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_id" {
  description = "(Optional) Configuration block that contains schema identity fields. Either this or the schema_version_id has to be provided. See schema_id below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_names" {
  description = "(Optional) List of names of columns that contain skewed values."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_column_value_location_maps" {
  description = "(Optional) List of values that appear so frequently as to be considered skewed."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_value_location_maps
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_columns" {
  description = "(Optional) List of reducer grouping columns, clustering columns, and bucketing columns in the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.bucket_columns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition_keys" {
  description = "(Optional) Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See partition_keys below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.partition_keys
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_reference" {
  description = "(Optional) Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.serialization_library
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Optional) Map of initialization parameters for the SerDe, in key-value form."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skewed_info" {
  description = "(Optional) Configuration block with information about values that appear very frequently in a column (skewed values). See skewed_info below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Datatype of data in the Column.schema_reference"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "(Optional) Free-form text comment."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the Glue Table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Catalog ID, Database name and of the name table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.id
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
      "kind/name"                   = "aws_glue_catalog_table"
      "kind/version"                = "v0.1.0"
    }
  }
}
