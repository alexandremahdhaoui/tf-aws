datasource "aws_datapipeline_pipeline_definition" "aws_datapipeline_pipeline_definition" {
  pipeline_id      = var.pipeline_id
  ref_value        = var.ref_value
  string_value     = var.string_value
  field            = var.field
  id               = var.id
  key              = var.key
  parameter_object = var.parameter_object
  attributes       = var.attributes
  name             = var.name
  parameter_value  = var.parameter_value
  pipeline_object  = var.pipeline_object
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  type        = string
}
variable "id" {
  description = "ID of the object."
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
variable "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
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
variable "attributes" {
  description = "Attributes of the parameter object. See below"
  type        = string
}
variable "name" {
  description = "ARN of the storage connector.field"
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
output "key" {
  description = "Field identifier."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_object" {
  description = "Parameter objects used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_object
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ref_value" {
  description = "Field value, expressed as the identifier of another object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.ref_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "string_value" {
  description = "Field value, expressed as a String.pipeline_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.string_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.field
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the object."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_value" {
  description = "Parameter values used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pipeline_object" {
  description = "Objects defined in the pipeline. See belowparameter_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_object
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attributes" {
  description = "Attributes of the parameter object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "ARN of the storage connector.field"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_value" {
  description = "Parameter values used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "string_value" {
  description = "Field value, expressed as a String.pipeline_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.string_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field" {
  description = "Key-value pairs that define the properties of the object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.field
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the object."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_object" {
  description = "Parameter objects used in the pipeline definition. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.parameter_object
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pipeline_object" {
  description = "Objects defined in the pipeline. See belowparameter_object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.pipeline_object
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ref_value" {
  description = "Field value, expressed as the identifier of another object"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.ref_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attributes" {
  description = "Attributes of the parameter object. See below"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "Field identifier."
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "ARN of the storage connector.field"
  value       = aws_datapipeline_pipeline_definition.aws_datapipeline_pipeline_definition.name
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
}
