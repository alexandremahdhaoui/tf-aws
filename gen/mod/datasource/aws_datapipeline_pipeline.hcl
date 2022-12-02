datasource "aws_datapipeline_pipeline" "aws_datapipeline_pipeline" {
  description = var.description
  name        = var.name
  pipeline_id = var.pipeline_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of Pipeline."
  type        = string
}
variable "name" {
  description = "Name of Pipeline."
  type        = string
}
variable "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "name" {
  description = "Name of Pipeline."
  value       = aws_datapipeline_pipeline.aws_datapipeline_pipeline.name
}
output "pipeline_id" {
  description = "(Required) ID of the pipeline.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datapipeline_pipeline.aws_datapipeline_pipeline.pipeline_id
}
output "description" {
  description = "Description of Pipeline."
  value       = aws_datapipeline_pipeline.aws_datapipeline_pipeline.description
}
output "description" {
  description = "Description of Pipeline."
  value       = aws_datapipeline_pipeline.aws_datapipeline_pipeline.description
}
output "name" {
  description = "Name of Pipeline."
  value       = aws_datapipeline_pipeline.aws_datapipeline_pipeline.name
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
