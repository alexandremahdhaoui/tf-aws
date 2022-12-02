resource "aws_glue_schema" "aws_glue_schema" {
  data_format           = var.data_format
  registry_name         = var.registry_name
  schema_checkpoint     = var.schema_checkpoint
  arn                   = var.arn
  description           = var.description
  id                    = var.id
  latest_schema_version = var.latest_schema_version
  next_schema_version   = var.next_schema_version
  registry_arn          = var.registry_arn
  schema_definition     = var.schema_definition
  schema_name           = var.schema_name
  compatibility         = var.compatibility
  tags                  = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "schema_definition" {
  description = "(Required) The schema definition using the data_format setting for schema_name."
  type        = string
}
variable "schema_name" {
  description = " – (Required) The Name of the schema."
  type        = string
}
variable "compatibility" {
  description = "(Required) The compatibility mode of the schema. Values values are: NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, and FULL_ALL."
  type        = string
}
variable "description" {
  description = " – (Optional) A description of the schema."
  type        = string
  default     = ""
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the schema."
  type        = string
}
variable "latest_schema_version" {
  description = "The latest version of the schema associated with the returned schema definition."
  type        = string
}
variable "next_schema_version" {
  description = "The next version of the schema associated with the returned schema definition."
  type        = string
}
variable "registry_arn" {
  description = "(Required) The ARN of the Glue Registry to create the schema in."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the schema."
  type        = string
}
variable "data_format" {
  description = "(Required) The data format of the schema definition. Valid values are AVRO, JSON and PROTOBUF."
  type        = string
}
variable "registry_name" {
  description = "The name of the Glue Registry."
  type        = string
}
variable "schema_checkpoint" {
  description = "The version number of the checkpoint (the last time the compatibility mode was changed)."
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
output "compatibility" {
  description = "(Required) The compatibility mode of the schema. Values values are: NONE, DISABLED, BACKWARD, BACKWARD_ALL, FORWARD, FORWARD_ALL, FULL, and FULL_ALL."
  value       = aws_glue_schema.aws_glue_schema.compatibility
}
output "description" {
  description = " – (Optional) A description of the schema."
  value       = aws_glue_schema.aws_glue_schema.description
}
output "id" {
  description = "Amazon Resource Name (ARN) of the schema."
  value       = aws_glue_schema.aws_glue_schema.id
}
output "latest_schema_version" {
  description = "The latest version of the schema associated with the returned schema definition."
  value       = aws_glue_schema.aws_glue_schema.latest_schema_version
}
output "next_schema_version" {
  description = "The next version of the schema associated with the returned schema definition."
  value       = aws_glue_schema.aws_glue_schema.next_schema_version
}
output "registry_arn" {
  description = "(Required) The ARN of the Glue Registry to create the schema in."
  value       = aws_glue_schema.aws_glue_schema.registry_arn
}
output "schema_definition" {
  description = "(Required) The schema definition using the data_format setting for schema_name."
  value       = aws_glue_schema.aws_glue_schema.schema_definition
}
output "schema_name" {
  description = " – (Required) The Name of the schema."
  value       = aws_glue_schema.aws_glue_schema.schema_name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_schema.aws_glue_schema.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the schema."
  value       = aws_glue_schema.aws_glue_schema.arn
}
output "data_format" {
  description = "(Required) The data format of the schema definition. Valid values are AVRO, JSON and PROTOBUF."
  value       = aws_glue_schema.aws_glue_schema.data_format
}
output "registry_name" {
  description = "The name of the Glue Registry."
  value       = aws_glue_schema.aws_glue_schema.registry_name
}
output "schema_checkpoint" {
  description = "The version number of the checkpoint (the last time the compatibility mode was changed)."
  value       = aws_glue_schema.aws_glue_schema.schema_checkpoint
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the schema."
  value       = aws_glue_schema.aws_glue_schema.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the schema."
  value       = aws_glue_schema.aws_glue_schema.id
}
output "latest_schema_version" {
  description = "The latest version of the schema associated with the returned schema definition."
  value       = aws_glue_schema.aws_glue_schema.latest_schema_version
}
output "next_schema_version" {
  description = "The next version of the schema associated with the returned schema definition."
  value       = aws_glue_schema.aws_glue_schema.next_schema_version
}
output "registry_name" {
  description = "The name of the Glue Registry."
  value       = aws_glue_schema.aws_glue_schema.registry_name
}
output "schema_checkpoint" {
  description = "The version number of the checkpoint (the last time the compatibility mode was changed)."
  value       = aws_glue_schema.aws_glue_schema.schema_checkpoint
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_glue_schema.aws_glue_schema.tags_all
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
      "kind/name"                   = "aws_glue_schema"
      "kind/version"                = "v0.1.0"
    }
  }
}
