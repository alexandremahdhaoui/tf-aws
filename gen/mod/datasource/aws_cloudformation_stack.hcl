datasource "aws_cloudformation_stack" "aws_cloudformation_stack" {
  tags              = var.tags
  template_body     = var.template_body
  capabilities      = var.capabilities
  iam_role_arn      = var.iam_role_arn
  name              = var.name
  parameters        = var.parameters
  description       = var.description
  disable_rollback  = var.disable_rollback
  notification_arns = var.notification_arns
  outputs           = var.outputs
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "notification_arns" {
  description = "List of SNS topic ARNs to publish stack related events"
  type        = string
}
variable "outputs" {
  description = "Map of outputs from the stack."
  type        = string
}
variable "description" {
  description = "Description of the stack"
  type        = string
}
variable "disable_rollback" {
  description = "Whether the rollback of the stack is disabled when stack creation fails"
  type        = string
}
variable "name" {
  description = "(Required) Name of the stackIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "parameters" {
  description = "Map of parameters that specify input parameters for the stack."
  type        = string
}
variable "tags" {
  description = "Map of tags associated with this stack."
  type        = string
}
variable "template_body" {
  description = "Structure containing the template body."
  type        = string
}
variable "capabilities" {
  description = "List of capabilities"
  type        = string
}
variable "iam_role_arn" {
  description = "ARN of the IAM role used to create the stack."
  type        = string
}
output "notification_arns" {
  description = "List of SNS topic ARNs to publish stack related events"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.notification_arns
}
output "outputs" {
  description = "Map of outputs from the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.outputs
}
output "description" {
  description = "Description of the stack"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.description
}
output "disable_rollback" {
  description = "Whether the rollback of the stack is disabled when stack creation fails"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.disable_rollback
}
output "name" {
  description = "(Required) Name of the stackIn addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.name
}
output "parameters" {
  description = "Map of parameters that specify input parameters for the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.parameters
}
output "tags" {
  description = "Map of tags associated with this stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.tags
}
output "template_body" {
  description = "Structure containing the template body."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.template_body
}
output "capabilities" {
  description = "List of capabilities"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.capabilities
}
output "iam_role_arn" {
  description = "ARN of the IAM role used to create the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.iam_role_arn
}
output "description" {
  description = "Description of the stack"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.description
}
output "capabilities" {
  description = "List of capabilities"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.capabilities
}
output "disable_rollback" {
  description = "Whether the rollback of the stack is disabled when stack creation fails"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.disable_rollback
}
output "iam_role_arn" {
  description = "ARN of the IAM role used to create the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.iam_role_arn
}
output "notification_arns" {
  description = "List of SNS topic ARNs to publish stack related events"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.notification_arns
}
output "outputs" {
  description = "Map of outputs from the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.outputs
}
output "parameters" {
  description = "Map of parameters that specify input parameters for the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.parameters
}
output "tags" {
  description = "Map of tags associated with this stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.tags
}
output "template_body" {
  description = "Structure containing the template body."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.template_body
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
