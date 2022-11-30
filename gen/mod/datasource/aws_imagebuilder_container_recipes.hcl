datasource "aws_imagebuilder_container_recipes" "aws_imagebuilder_container_recipes" {
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
  description = "Set of ARNs of the matched Image Builder Container Recipes."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Image Builder ListContainerRecipes API Reference."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_imagebuilder_container_recipes.aws_imagebuilder_container_recipes.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the Image Builder ListContainerRecipes API Reference."
  value       = aws_imagebuilder_container_recipes.aws_imagebuilder_container_recipes.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  value       = aws_imagebuilder_container_recipes.aws_imagebuilder_container_recipes.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched Image Builder Container Recipes."
  value       = aws_imagebuilder_container_recipes.aws_imagebuilder_container_recipes.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "Set of ARNs of the matched Image Builder Container Recipes."
  value       = aws_imagebuilder_container_recipes.aws_imagebuilder_container_recipes.arns
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
