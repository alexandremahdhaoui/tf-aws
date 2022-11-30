datasource "aws_connect_prompt" "aws_connect_prompt" {
  arn         = var.arn
  instance_id = var.instance_id
  name        = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Returns information on a specific Prompt by nameIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the Prompt."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
output "arn" {
  description = "ARN of the Prompt."
  value       = aws_connect_prompt.aws_connect_prompt.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_prompt.aws_connect_prompt.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Returns information on a specific Prompt by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_prompt.aws_connect_prompt.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Prompt."
  value       = aws_connect_prompt.aws_connect_prompt.arn
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
