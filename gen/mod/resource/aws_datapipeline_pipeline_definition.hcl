resource "aws_datapipeline_pipeline_definition" "aws_datapipeline_pipeline_definition" {
  attribute        = var.attribute
  id               = var.id
  parameter_object = var.parameter_object
  pipeline_object  = var.pipeline_object
  field            = var.field
  key              = var.key
  name             = var.name
  parameter_value  = var.parameter_value
  pipeline_id      = var.pipeline_id
  ref_value        = var.ref_value
  string_value     = var.string_value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "field" {
  description = "(Required) Configuration block for Key-value pairs that define the properties of the object. See below"
  type        = string
}
variable "key" {
  description = "(Required) Field identifier."
  type        = string
}
variable "name" {
  description = "(Required) ARN of the storage connector.field"
  type        = string
}
variable "parameter_value" {
  description = "(Optional) Configuration block for the parameter values used in the pipeline definition. See belowpipeline_object"
  type        = string
  default     = ""
}
variable "pipeline_id" {
  description = "(Required) ID of the pipeline."
  type        = string
}
variable "ref_value" {
  description = "(Optional) Field value, expressed as the identifier of another object"
  type        = string
  default     = ""
}
variable "string_value" {
  description = "(Required) Field value, expressed as a String.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "attribute" {
  description = "(Required) Configuration block for attributes of the parameter object. See below"
  type        = string
}
variable "id" {
  description = "Unique ID of the datapipeline definition."
  type        = string
  default     = ""
}
variable "parameter_object" {
  description = "(Optional) Configuration block for the parameter objects used in the pipeline definition. See below"
  type        = string
  default     = ""
}
variable "pipeline_object" {
  description = "(Required) Configuration block for the objects that define the pipeline. See below"
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
output "key" {
  description = "(Required) Field identifier."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.key
}
output "name" {
  description = "(Required) ARN of the storage connector.field"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.name
}
output "parameter_value" {
  description = "(Optional) Configuration block for the parameter values used in the pipeline definition. See belowpipeline_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_value
}
output "pipeline_id" {
  description = "(Required) ID of the pipeline."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_id
}
output "ref_value" {
  description = "(Optional) Field value, expressed as the identifier of another object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.ref_value
}
output "string_value" {
  description = "(Required) Field value, expressed as a String.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.string_value
}
output "field" {
  description = "(Required) Configuration block for Key-value pairs that define the properties of the object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.field
}
output "id" {
  description = "Unique ID of the datapipeline definition."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.id
}
output "parameter_object" {
  description = "(Optional) Configuration block for the parameter objects used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_object
}
output "pipeline_object" {
  description = "(Required) Configuration block for the objects that define the pipeline. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_object
}
output "attribute" {
  description = "(Required) Configuration block for attributes of the parameter object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.attribute
}
output "id" {
  description = "Unique ID of the datapipeline definition."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.id
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
      "kind/name"                   = "aws_datapipeline_pipeline_definition"
      "kind/version"                = "v0.1.0"
    }
  }
}
