datasource "aws_sfn_activity" "aws_sfn_activity" {
  arn  = var.arn
  id   = var.id
  name = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Optional) Name that identifies the activity."
  type        = string
}
variable "arn" {
  description = "(Optional) ARN that identifies the activity.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "ARN that identifies the activity."
  type        = string
}
output "name" {
  description = "(Optional) Name that identifies the activity."
  value       = aws_sfn_activity.aws_sfn_activity.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Optional) ARN that identifies the activity.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sfn_activity.aws_sfn_activity.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the activity."
  value       = aws_sfn_activity.aws_sfn_activity.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the activity."
  value       = aws_sfn_activity.aws_sfn_activity.id
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
