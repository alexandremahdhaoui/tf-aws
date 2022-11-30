datasource "aws_lambda_code_signing_config" "aws_lambda_code_signing_config" {
  config_id                    = var.config_id
  description                  = var.description
  last_modified                = var.last_modified
  policies                     = var.policies
  signing_profile_version_arns = var.signing_profile_version_arns
  allowed_publishers           = var.allowed_publishers
  arn                          = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Code signing configuration description."
  type        = string
}
variable "last_modified" {
  description = "Date and time that the code signing configuration was last modified."
  type        = string
}
variable "policies" {
  description = "List of code signing policies that control the validation failure action for signature mismatch or expiry.allowed_publishers is exported with the following attribute:"
  type        = string
}
variable "signing_profile_version_arns" {
  description = "The ARN for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.policies is exported with the following attribute:"
  type        = string
}
variable "allowed_publishers" {
  description = "List of allowed publishers as signing profiles for this code signing configuration."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the code signing configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "config_id" {
  description = "Unique identifier for the code signing configuration."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the code signing configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "config_id" {
  description = "Unique identifier for the code signing configuration."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.config_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Code signing configuration description."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified" {
  description = "Date and time that the code signing configuration was last modified."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.last_modified
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policies" {
  description = "List of code signing policies that control the validation failure action for signature mismatch or expiry.allowed_publishers is exported with the following attribute:"
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.policies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arns" {
  description = "The ARN for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.policies is exported with the following attribute:"
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.signing_profile_version_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_publishers" {
  description = "List of allowed publishers as signing profiles for this code signing configuration."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.allowed_publishers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arns" {
  description = "The ARN for each of the signing profiles. A signing profile defines a trusted user who can sign a code package.policies is exported with the following attribute:"
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.signing_profile_version_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_publishers" {
  description = "List of allowed publishers as signing profiles for this code signing configuration."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.allowed_publishers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "config_id" {
  description = "Unique identifier for the code signing configuration."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.config_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Code signing configuration description."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified" {
  description = "Date and time that the code signing configuration was last modified."
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.last_modified
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policies" {
  description = "List of code signing policies that control the validation failure action for signature mismatch or expiry.allowed_publishers is exported with the following attribute:"
  value       = aws_lambda_code_signing_config.aws_lambda_code_signing_config.policies
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
