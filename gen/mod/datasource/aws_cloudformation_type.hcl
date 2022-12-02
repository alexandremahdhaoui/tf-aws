datasource "aws_cloudformation_type" "aws_cloudformation_type" {
  deprecated_status  = var.deprecated_status
  documentation_url  = var.documentation_url
  log_role_arn       = var.log_role_arn
  arn                = var.arn
  description        = var.description
  execution_role_arn = var.execution_role_arn
  provisioning_type  = var.provisioning_type
  schema             = var.schema
  type_name          = var.type_name
  default_version_id = var.default_version_id
  is_default_version = var.is_default_version
  logging_config     = var.logging_config
  type               = var.type
  version_id         = var.version_id
  log_group_name     = var.log_group_name
  source_url         = var.source_url
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "type_name" {
  description = "(Optional) CloudFormation Type name. For example, AWS::EC2::VPC."
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Optional) ARN of the CloudFormation Type. For example, arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the CloudFormation Type."
  type        = string
}
variable "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  type        = string
}
variable "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
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
variable "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  type        = string
}
variable "logging_config" {
  description = "List of objects containing logging configuration.\n"
  type        = string
}
variable "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE."
  type        = string
  default     = ""
}
variable "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  type        = string
}
variable "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  type        = string
}
variable "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  type        = string
}
variable "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  type        = string
}
variable "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  type        = string
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
}
output "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_role_arn
}
output "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "description" {
  description = "Description of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.execution_role_arn
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "type_name" {
  description = "(Optional) CloudFormation Type name. For example, AWS::EC2::VPC."
  value       = aws_cloudformation_type.aws_cloudformation_type.type_name
}
output "arn" {
  description = "(Optional) ARN of the CloudFormation Type. For example, arn:aws:cloudformation:us-west-2::type/resource/AWS-EC2-VPC."
  value       = aws_cloudformation_type.aws_cloudformation_type.arn
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "logging_config" {
  description = "List of objects containing logging configuration.\n"
  value       = aws_cloudformation_type.aws_cloudformation_type.logging_config
}
output "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE."
  value       = aws_cloudformation_type.aws_cloudformation_type.type
}
output "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_type.aws_cloudformation_type.version_id
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_group_name
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "description" {
  description = "Description of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
}
output "execution_role_arn" {
  description = "ARN of the IAM Role used to register the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.execution_role_arn
}
output "log_group_name" {
  description = "Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_group_name
}
output "log_role_arn" {
  description = "ARN of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_role_arn
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "deprecated_status" {
  description = "Deprecation status of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "logging_config" {
  description = "List of objects containing logging configuration.\n"
  value       = aws_cloudformation_type.aws_cloudformation_type.logging_config
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
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
