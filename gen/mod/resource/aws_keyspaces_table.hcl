resource "aws_keyspaces_table" "aws_keyspaces_table" {
  column                   = var.column
  encryption_specification = var.encryption_specification
  tags_all                 = var.tags_all
  keyspace_name            = var.keyspace_name
  table_name               = var.table_name
  throughput_mode          = var.throughput_mode
  comment                  = var.comment
  default_time_to_live     = var.default_time_to_live
  ttl                      = var.ttl
  update                   = var.update
  write_capacity_units     = var.write_capacity_units
  tags                     = var.tags
  arn                      = var.arn
  capacity_specification   = var.capacity_specification
  static_column            = var.static_column
  create                   = var.create
  read_capacity_units      = var.read_capacity_units
  point_in_time_recovery   = var.point_in_time_recovery
  status                   = var.status
  clustering_key           = var.clustering_key
  type                     = var.type
  message                  = var.message
  partition_key            = var.partition_key
  order_by                 = var.order_by
  schema_definition        = var.schema_definition
  delete                   = var.delete
  kms_key_identifier       = var.kms_key_identifier
  name                     = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "read_capacity_units" {
  description = "(Optional) The throughput capacity specified for read operations defined in read capacity units (RCUs)."
  type        = string
}
variable "point_in_time_recovery" {
  description = "(Optional) Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the Developer Guide."
  type        = string
}
variable "status" {
  description = "(Optional) Valid values: ENABLED.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "clustering_key" {
  description = "(Required) The columns that are part of the clustering key of the table."
  type        = string
}
variable "type" {
  description = "(Required) The data type of the column. See the Developer Guide for a list of available data types.The partition_key object takes the following arguments:"
  type        = string
}
variable "message" {
  description = "(Required) A description of the table.The encryption_specification object takes the following arguments:"
  type        = string
}
variable "partition_key" {
  description = "(Required) The columns that are part of the partition key of the table ."
  type        = string
}
variable "name" {
  description = "(Required) The name of the static column.The ttl object takes the following arguments:"
  type        = string
}
variable "order_by" {
  description = "(Required) The order modifier. Valid values: ASC, DESC.The static_column object takes the following arguments:"
  type        = string
}
variable "schema_definition" {
  description = "(Optional) Describes the schema of the table."
  type        = string
}
variable "delete" {
  description = "(Default 10m)"
  type        = string
}
variable "kms_key_identifier" {
  description = "(Optional) The Amazon Resource Name (ARN) of the customer managed KMS key."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "column" {
  description = "(Required) The regular columns of the table."
  type        = string
}
variable "encryption_specification" {
  description = "(Optional) Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the Developer Guide."
  type        = string
}
variable "default_time_to_live" {
  description = "(Optional) The default Time to Live setting in seconds for the table. More information can be found in the Developer Guide."
  type        = string
}
variable "keyspace_name" {
  description = "(Required) The name of the keyspace that the table is going to be created in."
  type        = string
}
variable "table_name" {
  description = "(Required) The name of the table."
  type        = string
}
variable "throughput_mode" {
  description = "(Optional) The read/write throughput capacity mode for a table. Valid values: PAY_PER_REQUEST, PROVISIONED. The default value is PAY_PER_REQUEST."
  type        = string
}
variable "comment" {
  description = "(Optional) A description of the table."
  type        = string
}
variable "ttl" {
  description = "(Optional) Enables Time to Live custom settings for the table. More information can be found in the Developer Guide.The capacity_specification object takes the following arguments:"
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "write_capacity_units" {
  description = "(Optional) The throughput capacity specified for write operations defined in write capacity units (WCUs).The comment object takes the following arguments:"
  type        = string
}
variable "static_column" {
  description = "(Required) The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition.The column object takes the following arguments:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "arn" {
  description = "The ARN of the table."
  type        = string
}
variable "capacity_specification" {
  description = "(Optional) Specifies the read/write throughput capacity mode for the table."
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
output "status" {
  description = "(Optional) Valid values: ENABLED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_keyspaces_table.aws_keyspaces_table.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clustering_key" {
  description = "(Required) The columns that are part of the clustering key of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.clustering_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "point_in_time_recovery" {
  description = "(Optional) Specifies if point-in-time recovery is enabled or disabled for the table. More information can be found in the Developer Guide."
  value       = aws_keyspaces_table.aws_keyspaces_table.point_in_time_recovery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) The data type of the column. See the Developer Guide for a list of available data types.The partition_key object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "message" {
  description = "(Required) A description of the table.The encryption_specification object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition_key" {
  description = "(Required) The columns that are part of the partition key of the table ."
  value       = aws_keyspaces_table.aws_keyspaces_table.partition_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_identifier" {
  description = "(Optional) The Amazon Resource Name (ARN) of the customer managed KMS key."
  value       = aws_keyspaces_table.aws_keyspaces_table.kms_key_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the static column.The ttl object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "order_by" {
  description = "(Required) The order modifier. Valid values: ASC, DESC.The static_column object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.order_by
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema_definition" {
  description = "(Optional) Describes the schema of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.schema_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "column" {
  description = "(Required) The regular columns of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_specification" {
  description = "(Optional) Specifies how the encryption key for encryption at rest is managed for the table. More information can be found in the Developer Guide."
  value       = aws_keyspaces_table.aws_keyspaces_table.encryption_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_keyspaces_table.aws_keyspaces_table.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_name" {
  description = "(Required) The name of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.table_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput_mode" {
  description = "(Optional) The read/write throughput capacity mode for a table. Valid values: PAY_PER_REQUEST, PROVISIONED. The default value is PAY_PER_REQUEST."
  value       = aws_keyspaces_table.aws_keyspaces_table.throughput_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "(Optional) A description of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_time_to_live" {
  description = "(Optional) The default Time to Live setting in seconds for the table. More information can be found in the Developer Guide."
  value       = aws_keyspaces_table.aws_keyspaces_table.default_time_to_live
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "keyspace_name" {
  description = "(Required) The name of the keyspace that the table is going to be created in."
  value       = aws_keyspaces_table.aws_keyspaces_table.keyspace_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ttl" {
  description = "(Optional) Enables Time to Live custom settings for the table. More information can be found in the Developer Guide.The capacity_specification object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.ttl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "write_capacity_units" {
  description = "(Optional) The throughput capacity specified for write operations defined in write capacity units (WCUs).The comment object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.write_capacity_units
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_specification" {
  description = "(Optional) Specifies the read/write throughput capacity mode for the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.capacity_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "static_column" {
  description = "(Required) The columns that have been defined as STATIC. Static columns store values that are shared by all rows in the same partition.The column object takes the following arguments:"
  value       = aws_keyspaces_table.aws_keyspaces_table.static_column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_keyspaces_table.aws_keyspaces_table.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read_capacity_units" {
  description = "(Optional) The throughput capacity specified for read operations defined in read capacity units (RCUs)."
  value       = aws_keyspaces_table.aws_keyspaces_table.read_capacity_units
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_keyspaces_table.aws_keyspaces_table.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_keyspaces_table.aws_keyspaces_table.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the table."
  value       = aws_keyspaces_table.aws_keyspaces_table.arn
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
      "kind/name"                   = "aws_keyspaces_table"
      "kind/version"                = "v0.1.0"
    }
  }
}
