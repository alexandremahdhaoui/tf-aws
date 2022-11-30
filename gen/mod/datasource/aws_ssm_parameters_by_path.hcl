datasource "aws_ssm_parameters_by_path" "aws_ssm_parameters_by_path" {
  types           = var.types
  with_decryption = var.with_decryption
  arns            = var.arns
  names           = var.names
  path            = var.path
  recursive       = var.recursive
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arns" {
  description = "ARNs of the parameters."
  type        = string
}
variable "names" {
  description = "Names of the parameters."
  type        = string
}
variable "path" {
  description = "(Required) Prefix path of the parameter."
  type        = string
}
variable "recursive" {
  description = "(Optional) Whether to recursively return parameters under path. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "types" {
  description = "Types of the parameters."
  type        = string
}
variable "with_decryption" {
  description = "(Optional) Whether to return decrypted SecureString value. Defaults to true."
  type        = string
}
output "names" {
  description = "Names of the parameters."
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Required) Prefix path of the parameter."
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recursive" {
  description = "(Optional) Whether to recursively return parameters under path. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.recursive
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "types" {
  description = "Types of the parameters."
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "with_decryption" {
  description = "(Optional) Whether to return decrypted SecureString value. Defaults to true."
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.with_decryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "ARNs of the parameters."
  value       = aws_ssm_parameters_by_path.aws_ssm_parameters_by_path.arns
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
