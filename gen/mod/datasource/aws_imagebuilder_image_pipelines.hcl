datasource "aws_imagebuilder_image_pipelines" "aws_imagebuilder_image_pipelines" {
  arns   = var.arns
  filter = var.filter
  name   = var.name
  values = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "Set of ARNs of the matched Image Builder Image Pipelines."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Image Builder ListImagePipelines API Reference."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched Image Builder Image Pipelines."
  value       = aws_imagebuilder_image_pipelines.aws_imagebuilder_image_pipelines.arns
}
output "filter" {
  description = " configuration block:"
  value       = aws_imagebuilder_image_pipelines.aws_imagebuilder_image_pipelines.filter
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Image Builder ListImagePipelines API Reference."
  value       = aws_imagebuilder_image_pipelines.aws_imagebuilder_image_pipelines.name
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  value       = aws_imagebuilder_image_pipelines.aws_imagebuilder_image_pipelines.values
}
output "arns" {
  description = "Set of ARNs of the matched Image Builder Image Pipelines."
  value       = aws_imagebuilder_image_pipelines.aws_imagebuilder_image_pipelines.arns
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
