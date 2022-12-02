resource "aws_glue_catalog_table" "aws_glue_catalog_table" {
  parameters                        = var.parameters
  registry_name                     = var.registry_name
  target_table                      = var.target_table
  view_original_text                = var.view_original_text
  column                            = var.column
  keys                              = var.keys
  sort_columns                      = var.sort_columns
  sort_order                        = var.sort_order
  stored_as_sub_directories         = var.stored_as_sub_directories
  table_type                        = var.table_type
  view_expanded_text                = var.view_expanded_text
  catalog_id                        = var.catalog_id
  retention                         = var.retention
  schema_name                       = var.schema_name
  schema_reference                  = var.schema_reference
  partition_keys                    = var.partition_keys
  arn                               = var.arn
  comment                           = var.comment
  input_format                      = var.input_format
  number_of_buckets                 = var.number_of_buckets
  skewed_column_values              = var.skewed_column_values
  type                              = var.type
  bucket_columns                    = var.bucket_columns
  compressed                        = var.compressed
  output_format                     = var.output_format
  schema_version_number             = var.schema_version_number
  description                       = var.description
  partition_index                   = var.partition_index
  schema_arn                        = var.schema_arn
  serialization_library             = var.serialization_library
  name                              = var.name
  schema_id                         = var.schema_id
  schema_version_id                 = var.schema_version_id
  skewed_column_names               = var.skewed_column_names
  columns                           = var.columns
  database_name                     = var.database_name
  index_name                        = var.index_name
  location                          = var.location
  skewed_info                       = var.skewed_info
  storage_descriptor                = var.storage_descriptor
  owner                             = var.owner
  ser_de_info                       = var.ser_de_info
  skewed_column_value_location_maps = var.skewed_column_value_location_maps
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the target table.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "schema_id" {
  description = "(Optional) Configuration block that contains schema identity fields. Either this or the schema_version_id has to be provided. See schema_id below."
  type        = string
  default     = ""
}
variable "schema_version_id" {
  description = "(Optional) Unique ID assigned to a version of the schema. Either this or the schema_id has to be provided."
  type        = string
  default     = ""
}
variable "skewed_column_names" {
  description = "(Optional) List of names of columns that contain skewed values."
  type        = string
  default     = ""
}
variable "columns" {
  description = "(Optional) Configuration block for columns in the table. See columns below."
  type        = string
  default     = ""
}
variable "database_name" {
  description = "(Required) Name of the catalog database that contains the target table."
  type        = string
}
variable "index_name" {
  description = "(Required) Name of the partition index."
  type        = string
}
variable "location" {
  description = "(Optional) Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  type        = string
  default     = ""
}
variable "skewed_info" {
  description = "(Optional) Configuration block with information about values that appear very frequently in a column (skewed values). See skewed_info below."
  type        = string
  default     = ""
}
variable "storage_descriptor" {
  description = "(Optional) Configuration block for information about the physical storage of this table. For more information, refer to the Glue Developer Guide. See storage_descriptor below."
  type        = string
  default     = ""
}
variable "owner" {
  description = "(Optional) Owner of the table."
  type        = string
  default     = ""
}
variable "ser_de_info" {
  description = "(Optional) Configuration block for serialization and deserialization (\"SerDe\") information. See ser_de_info below."
  type        = string
  default     = ""
}
variable "skewed_column_value_location_maps" {
  description = "(Optional) List of values that appear so frequently as to be considered skewed."
  type        = string
  default     = ""
}
variable "parameters" {
  description = "(Optional) Map of initialization parameters for the SerDe, in key-value form."
  type        = string
  default     = ""
}
variable "registry_name" {
  description = "(Optional) Name of the schema registry that contains the schema. Must be provided when schema_name is specified and conflicts with schema_arn."
  type        = string
  default     = ""
}
variable "target_table" {
  description = "(Optional) Configuration block of a target table for resource linking. See target_table below."
  type        = string
  default     = ""
}
variable "view_original_text" {
  description = "(Optional) If the table is a view, the original text of the view; otherwise null.partition_index~> strongNOTE: A partition_index cannot be added to an existing glue_catalog_tableglue_partition_index resource for configuration details."
  type        = string
  default     = ""
}
variable "column" {
  description = "(Required) Name of the column."
  type        = string
}
variable "keys" {
  description = "(Required) Keys for the partition index.partition_keys"
  type        = string
}
variable "sort_columns" {
  description = "(Optional) Configuration block for the sort order of each bucket in the table. See sort_columns below."
  type        = string
  default     = ""
}
variable "sort_order" {
  description = "(Required) Whether the column is sorted in ascending (1) or descending order (0).skewed_info"
  type        = string
}
variable "stored_as_sub_directories" {
  description = "(Optional) Whether the table data is stored in subdirectories.columns"
  type        = string
  default     = ""
}
variable "table_type" {
  description = "(Optional) Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as ALTER TABLE and SHOW CREATE TABLE will fail if this argument is empty."
  type        = string
  default     = ""
}
variable "view_expanded_text" {
  description = "(Optional) If the table is a view, the expanded text of the view; otherwise null."
  type        = string
  default     = ""
}
variable "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the table resides."
  type        = string
}
variable "retention" {
  description = "(Optional) Retention time for this table."
  type        = string
  default     = ""
}
variable "schema_name" {
  description = "(Optional) Name of the schema. One of schema_arn or schema_name has to be provided.ser_de_info"
  type        = string
  default     = ""
}
variable "schema_reference" {
  description = "(Optional) Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below."
  type        = string
  default     = ""
}
variable "partition_keys" {
  description = "(Optional) Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See partition_keys below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the Glue Table."
  type        = string
}
variable "comment" {
  description = "(Optional) Free-form text comment."
  type        = string
  default     = ""
}
variable "input_format" {
  description = "(Optional) Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  type        = string
  default     = ""
}
variable "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  type        = string
  default     = ""
}
variable "skewed_column_values" {
  description = "(Optional) Map of skewed values to the columns that contain them.target_table"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Datatype of data in the Column.schema_reference"
  type        = string
  default     = ""
}
variable "bucket_columns" {
  description = "(Optional) List of reducer grouping columns, clustering columns, and bucketing columns in the table."
  type        = string
  default     = ""
}
variable "compressed" {
  description = "(Optional) Whether the data in the table is compressed."
  type        = string
  default     = ""
}
variable "output_format" {
  description = "(Optional) Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  type        = string
  default     = ""
}
variable "schema_version_number" {
  description = "(Required) Version number of the schema.schema_id"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the table."
  type        = string
  default     = ""
}
variable "partition_index" {
  description = "(Optional) Configuration block for a maximum of 3 partition indexes. See partition_index below."
  type        = string
  default     = ""
}
variable "schema_arn" {
  description = "(Optional) ARN of the schema. One of schema_arn or schema_name has to be provided."
  type        = string
  default     = ""
}
variable "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
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
output "schema_arn" {
  description = "(Optional) ARN of the schema. One of schema_arn or schema_name has to be provided."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_arn
}
output "serialization_library" {
  description = "(Optional) Usually the class that implements the SerDe. An example is org.apache.hadoop.hive.serde2.columnar.ColumnarSerDe.sort_columns"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.serialization_library
}
output "description" {
  description = "(Optional) Description of the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.description
}
output "partition_index" {
  description = "(Optional) Configuration block for a maximum of 3 partition indexes. See partition_index below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.partition_index
}
output "index_name" {
  description = "(Required) Name of the partition index."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.index_name
}
output "location" {
  description = "(Optional) Physical location of the table. By default this takes the form of the warehouse location, followed by the database location in the warehouse, followed by the table name."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.location
}
output "name" {
  description = "(Required) Name of the target table.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.name
}
output "schema_id" {
  description = "(Optional) Configuration block that contains schema identity fields. Either this or the schema_version_id has to be provided. See schema_id below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_id
}
output "schema_version_id" {
  description = "(Optional) Unique ID assigned to a version of the schema. Either this or the schema_id has to be provided."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_version_id
}
output "skewed_column_names" {
  description = "(Optional) List of names of columns that contain skewed values."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_names
}
output "columns" {
  description = "(Optional) Configuration block for columns in the table. See columns below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.columns
}
output "database_name" {
  description = "(Required) Name of the catalog database that contains the target table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.database_name
}
output "skewed_info" {
  description = "(Optional) Configuration block with information about values that appear very frequently in a column (skewed values). See skewed_info below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_info
}
output "storage_descriptor" {
  description = "(Optional) Configuration block for information about the physical storage of this table. For more information, refer to the Glue Developer Guide. See storage_descriptor below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.storage_descriptor
}
output "skewed_column_value_location_maps" {
  description = "(Optional) List of values that appear so frequently as to be considered skewed."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_value_location_maps
}
output "owner" {
  description = "(Optional) Owner of the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.owner
}
output "ser_de_info" {
  description = "(Optional) Configuration block for serialization and deserialization (\"SerDe\") information. See ser_de_info below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.ser_de_info
}
output "target_table" {
  description = "(Optional) Configuration block of a target table for resource linking. See target_table below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.target_table
}
output "parameters" {
  description = "(Optional) Map of initialization parameters for the SerDe, in key-value form."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.parameters
}
output "registry_name" {
  description = "(Optional) Name of the schema registry that contains the schema. Must be provided when schema_name is specified and conflicts with schema_arn."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.registry_name
}
output "sort_columns" {
  description = "(Optional) Configuration block for the sort order of each bucket in the table. See sort_columns below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.sort_columns
}
output "sort_order" {
  description = "(Required) Whether the column is sorted in ascending (1) or descending order (0).skewed_info"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.sort_order
}
output "view_original_text" {
  description = "(Optional) If the table is a view, the original text of the view; otherwise null.partition_index~> strongNOTE: A partition_index cannot be added to an existing glue_catalog_tableglue_partition_index resource for configuration details."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.view_original_text
}
output "column" {
  description = "(Required) Name of the column."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.column
}
output "keys" {
  description = "(Required) Keys for the partition index.partition_keys"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.keys
}
output "schema_name" {
  description = "(Optional) Name of the schema. One of schema_arn or schema_name has to be provided.ser_de_info"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_name
}
output "schema_reference" {
  description = "(Optional) Object that references a schema stored in the AWS Glue Schema Registry. When creating a table, you can pass an empty list of columns for the schema, and instead use a schema reference. See Schema Reference below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_reference
}
output "stored_as_sub_directories" {
  description = "(Optional) Whether the table data is stored in subdirectories.columns"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.stored_as_sub_directories
}
output "table_type" {
  description = "(Optional) Type of this table (EXTERNAL_TABLE, VIRTUAL_VIEW, etc.). While optional, some Athena DDL queries such as ALTER TABLE and SHOW CREATE TABLE will fail if this argument is empty."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.table_type
}
output "view_expanded_text" {
  description = "(Optional) If the table is a view, the expanded text of the view; otherwise null."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.view_expanded_text
}
output "catalog_id" {
  description = "(Required) ID of the Data Catalog in which the table resides."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.catalog_id
}
output "retention" {
  description = "(Optional) Retention time for this table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.retention
}
output "input_format" {
  description = "(Optional) Input format: SequenceFileInputFormat (binary), or TextInputFormat, or a custom format."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.input_format
}
output "number_of_buckets" {
  description = "(Optional) Must be specified if the table contains any dimension columns."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.number_of_buckets
}
output "partition_keys" {
  description = "(Optional) Configuration block of columns by which the table is partitioned. Only primitive types are supported as partition keys. See partition_keys below."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.partition_keys
}
output "arn" {
  description = "The ARN of the Glue Table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.arn
}
output "comment" {
  description = "(Optional) Free-form text comment."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.comment
}
output "output_format" {
  description = "(Optional) Output format: SequenceFileOutputFormat (binary), or IgnoreKeyTextOutputFormat, or a custom format."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.output_format
}
output "schema_version_number" {
  description = "(Required) Version number of the schema.schema_id"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.schema_version_number
}
output "skewed_column_values" {
  description = "(Optional) Map of skewed values to the columns that contain them.target_table"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.skewed_column_values
}
output "type" {
  description = "(Optional) Datatype of data in the Column.schema_reference"
  value       = aws_glue_catalog_table.aws_glue_catalog_table.type
}
output "bucket_columns" {
  description = "(Optional) List of reducer grouping columns, clustering columns, and bucketing columns in the table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.bucket_columns
}
output "compressed" {
  description = "(Optional) Whether the data in the table is compressed."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.compressed
}
output "arn" {
  description = "The ARN of the Glue Table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.arn
}
output "id" {
  description = "Catalog ID, Database name and of the name table."
  value       = aws_glue_catalog_table.aws_glue_catalog_table.id
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
      "kind/name"                   = "aws_glue_catalog_table"
      "kind/version"                = "v0.1.0"
    }
  }
}
