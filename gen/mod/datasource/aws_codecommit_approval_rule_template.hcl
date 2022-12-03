datasource "aws_codecommit_approval_rule_template" "aws_codecommit_approval_rule_template" {
  approval_rule_template_id = var.approval_rule_template_id
  content                   = var.content
  creation_date             = var.creation_date
  description               = var.description
  last_modified_date        = var.last_modified_date
  last_modified_user        = var.last_modified_user
  name                      = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "creation_date" {
  description = "Date the approval rule template was created, in RFC3339 format."
  type        = string
}
variable "description" {
  description = "Description of the approval rule template."
  type        = string
}
variable "last_modified_date" {
  description = "Date the approval rule template was most recently changed, in RFC3339 format."
  type        = string
}
variable "last_modified_user" {
  description = "ARN of the user who made the most recent changes to the approval rule template."
  type        = string
}
variable "name" {
  description = "(Required) Name for the approval rule template. This needs to be less than 100 characters.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "approval_rule_template_id" {
  description = "The ID of the approval rule template."
  type        = string
}
variable "content" {
  description = "Content of the approval rule template."
  type        = string
}
output "creation_date" {
  description = "Date the approval rule template was created, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.creation_date
}
output "description" {
  description = "Description of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.description
}
output "last_modified_date" {
  description = "Date the approval rule template was most recently changed, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_date
}
output "last_modified_user" {
  description = "ARN of the user who made the most recent changes to the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_user
}
output "name" {
  description = "(Required) Name for the approval rule template. This needs to be less than 100 characters.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.name
}
output "approval_rule_template_id" {
  description = "The ID of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.approval_rule_template_id
}
output "content" {
  description = "Content of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.content
}
output "approval_rule_template_id" {
  description = "The ID of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.approval_rule_template_id
}
output "content" {
  description = "Content of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.content
}
output "creation_date" {
  description = "Date the approval rule template was created, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.creation_date
}
output "description" {
  description = "Description of the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.description
}
output "last_modified_date" {
  description = "Date the approval rule template was most recently changed, in RFC3339 format."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_date
}
output "last_modified_user" {
  description = "ARN of the user who made the most recent changes to the approval rule template."
  value       = aws_codecommit_approval_rule_template.aws_codecommit_approval_rule_template.last_modified_user
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
