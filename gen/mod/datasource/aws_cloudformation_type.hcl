datasource "aws_cloudformation_type" "aws_cloudformation_type" {
  documentation_url  = var.documentation_url
  provisioning_type  = var.provisioning_type
  type_name          = var.type_name
  version_id         = var.version_id
  arn                = var.arn
  description        = var.description
  logging_config     = var.logging_config
  schema             = var.schema
  log_role_arn       = var.log_role_arn
  source_url         = var.source_url
  default_version_id = var.default_version_id
  execution_role_arn = var.execution_role_arn
  log_group_name     = var.log_group_name
  type               = var.type
  deprecated_status  = var.deprecated_status
  is_default_version = var.is_default_version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  type        = string
}
variable "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  type        = string
}
variable "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  type        = string
}
variable "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE."
  type        = string
}
variable "arn" {
  description = "(Optional) ARN of the CloudFormation Type. For example, arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC."
  type        = string
}
variable "description" {
  description = "Description of the CloudFormation Type."
  type        = string
}
variable "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  type        = string
}
variable "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  type        = string
}
variable "type_name" {
  description = "(Optional) CloudFormation Type name. For example, AWS::EC2::VPC."
  type        = string
}
variable "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "logging_config" {
  description = "List of objects containing logging configuration.\n"
  type        = string
}
variable "schema" {
  description = "JSON document of the CloudFormation Type schema."
  type        = string
}
variable "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  type        = string
}
variable "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  type        = string
}
variable "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  type        = string
}
variable "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  type        = string
}
output "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE."
  value       = aws_cloudformation_type.aws_cloudformation_type.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Optional) ARN of the CloudFormation Type. For example, arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC."
  value       = aws_cloudformation_type.aws_cloudformation_type.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type_name" {
  description = "(Optional) CloudFormation Type name. For example, AWS::EC2::VPC."
  value       = aws_cloudformation_type.aws_cloudformation_type.type_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_type.aws_cloudformation_type.version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging_config" {
  description = "List of objects containing logging configuration.\n"
  value       = aws_cloudformation_type.aws_cloudformation_type.logging_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.execution_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging_config" {
  description = "List of objects containing logging configuration.\n"
  value       = aws_cloudformation_type.aws_cloudformation_type.logging_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.execution_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_group_name
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
