datasource "aws_appconfig_environment" "aws_appconfig_environment" {
  alarm_arn      = var.alarm_arn
  application_id = var.application_id
  monitor        = var.monitor
  name           = var.name
  alarm_role_arn = var.alarm_role_arn
  arn            = var.arn
  description    = var.description
  environment_id = var.environment_id
  state          = var.state
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "alarm_role_arn" {
  description = "ARN of an IAM role for AWS AppConfig to monitor."
  type        = string
}
variable "arn" {
  description = "ARN of the environment."
  type        = string
}
variable "description" {
  description = "Name of the environment."
  type        = string
}
variable "environment_id" {
  description = "(Required) ID of the AppConfig Environment.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
  type        = string
}
variable "alarm_arn" {
  description = "ARN of the Amazon CloudWatch alarm."
  type        = string
}
variable "application_id" {
  description = "(Required) ID of the AppConfig Application to which this Environment belongs."
  type        = string
}
variable "monitor" {
  description = "Set of Amazon CloudWatch alarms to monitor during the deployment process.\n"
  type        = string
}
variable "name" {
  description = "Name of the environment."
  type        = string
}
output "application_id" {
  description = "(Required) ID of the AppConfig Application to which this Environment belongs."
  value       = aws_appconfig_environment.aws_appconfig_environment.application_id
}
output "monitor" {
  description = "Set of Amazon CloudWatch alarms to monitor during the deployment process.\n"
  value       = aws_appconfig_environment.aws_appconfig_environment.monitor
}
output "name" {
  description = "Name of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.name
}
output "alarm_arn" {
  description = "ARN of the Amazon CloudWatch alarm."
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_arn
}
output "arn" {
  description = "ARN of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.arn
}
output "description" {
  description = "Name of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.description
}
output "environment_id" {
  description = "(Required) ID of the AppConfig Environment.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appconfig_environment.aws_appconfig_environment.environment_id
}
output "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
  value       = aws_appconfig_environment.aws_appconfig_environment.state
}
output "alarm_role_arn" {
  description = "ARN of an IAM role for AWS AppConfig to monitor."
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_role_arn
}
output "alarm_arn" {
  description = "ARN of the Amazon CloudWatch alarm."
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_arn
}
output "alarm_role_arn" {
  description = "ARN of an IAM role for AWS AppConfig to monitor."
  value       = aws_appconfig_environment.aws_appconfig_environment.alarm_role_arn
}
output "arn" {
  description = "ARN of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.arn
}
output "description" {
  description = "Name of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.description
}
output "monitor" {
  description = "Set of Amazon CloudWatch alarms to monitor during the deployment process.\n"
  value       = aws_appconfig_environment.aws_appconfig_environment.monitor
}
output "name" {
  description = "Name of the environment."
  value       = aws_appconfig_environment.aws_appconfig_environment.name
}
output "state" {
  description = "State of the environment. Possible values are READY_FOR_DEPLOYMENT, DEPLOYING, ROLLING_BACKROLLED_BACK."
  value       = aws_appconfig_environment.aws_appconfig_environment.state
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
