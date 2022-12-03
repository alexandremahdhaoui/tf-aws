datasource "aws_ssm_instances" "aws_ssm_instances" {
  values = var.values
  filter = var.filter
  name   = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the SSM InstanceInformationStringFilter API Reference."
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_ssm_instances.aws_ssm_instances.filter
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the SSM InstanceInformationStringFilter API Reference."
  value       = aws_ssm_instances.aws_ssm_instances.name
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches."
  value       = aws_ssm_instances.aws_ssm_instances.values
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
