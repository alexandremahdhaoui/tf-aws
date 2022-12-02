datasource "aws_ssm_parameter" "aws_ssm_parameter" {
  type            = var.type
  value           = var.value
  with_decryption = var.with_decryption
  arn             = var.arn
  name            = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "with_decryption" {
  description = "(Optional) Whether to return decrypted SecureString value. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the parameter."
  type        = string
}
variable "name" {
  description = "Name of the parameter."
  type        = string
}
variable "type" {
  description = "Type of the parameter. Valid types are String, StringList and SecureString."
  type        = string
}
variable "value" {
  description = "Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type. In Terraform CLI version 0.15 and later, this may require additional configuration handling for certain scenarios. For more information, see the Terraform v0.15 Upgrade Guide."
  type        = string
}
output "arn" {
  description = "ARN of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.arn
}
output "name" {
  description = "Name of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.name
}
output "type" {
  description = "Type of the parameter. Valid types are String, StringList and SecureString."
  value       = aws_ssm_parameter.aws_ssm_parameter.type
}
output "value" {
  description = "Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type. In Terraform CLI version 0.15 and later, this may require additional configuration handling for certain scenarios. For more information, see the Terraform v0.15 Upgrade Guide."
  value       = aws_ssm_parameter.aws_ssm_parameter.value
}
output "with_decryption" {
  description = "(Optional) Whether to return decrypted SecureString value. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_parameter.aws_ssm_parameter.with_decryption
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
