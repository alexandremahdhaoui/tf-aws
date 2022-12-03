datasource "aws_datapipeline_pipeline_definition" "aws_datapipeline_pipeline_definition" {
  attributes       = var.attributes
  id               = var.id
  name             = var.name
  pipeline_id      = var.pipeline_id
  pipeline_object  = var.pipeline_object
  string_value     = var.string_value
  field            = var.field
  key              = var.key
  parameter_object = var.parameter_object
  parameter_value  = var.parameter_value
  ref_value        = var.ref_value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ref_value" {
  description = "Field value, expressed as the identifier of another object"
  type        = string
}
variable "string_value" {
  description = "Field value, expressed as a String.pipeline_object"
  type        = string
}
variable "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  type        = string
}
variable "key" {
  description = "Field identifier."
  type        = string
}
variable "parameter_object" {
  description = "Parameter objects used in the pipeline definition. See below"
  type        = string
}
variable "parameter_value" {
  description = "Parameter values used in the pipeline definition. See below"
  type        = string
}
variable "pipeline_object" {
  description = "Objects defined in the pipeline. See belowparameter_object"
  type        = string
}
variable "attributes" {
  description = "Attributes of the parameter object. See below"
  type        = string
}
variable "id" {
  description = "ID of the object."
  type        = string
}
variable "name" {
  description = "ARN of the storage connector.field"
  type        = string
}
variable "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "attributes" {
  description = "Attributes of the parameter object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.attributes
}
output "id" {
  description = "ID of the object."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.id
}
output "name" {
  description = "ARN of the storage connector.field"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.name
}
output "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_id
}
output "pipeline_object" {
  description = "Objects defined in the pipeline. See belowparameter_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_object
}
output "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.field
}
output "key" {
  description = "Field identifier."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.key
}
output "parameter_object" {
  description = "Parameter objects used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_object
}
output "parameter_value" {
  description = "Parameter values used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_value
}
output "ref_value" {
  description = "Field value, expressed as the identifier of another object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.ref_value
}
output "string_value" {
  description = "Field value, expressed as a String.pipeline_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.string_value
}
output "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.field
}
output "name" {
  description = "ARN of the storage connector.field"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.name
}
output "parameter_object" {
  description = "Parameter objects used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_object
}
output "parameter_value" {
  description = "Parameter values used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_value
}
output "attributes" {
  description = "Attributes of the parameter object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.attributes
}
output "key" {
  description = "Field identifier."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.key
}
output "pipeline_object" {
  description = "Objects defined in the pipeline. See belowparameter_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_object
}
output "ref_value" {
  description = "Field value, expressed as the identifier of another object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.ref_value
}
output "string_value" {
  description = "Field value, expressed as a String.pipeline_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.string_value
}
output "id" {
  description = "ID of the object."
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
}
