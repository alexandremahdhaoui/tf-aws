datasource "aws_connect_contact_flow" "aws_connect_contact_flow" {
  name            = var.name
  tags            = var.tags
  arn             = var.arn
  contact_flow_id = var.contact_flow_id
  content         = var.content
  description     = var.description
  instance_id     = var.instance_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Optional) Returns information on a specific Contact Flow by nameIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "Tags to assign to the Contact Flow."
  type        = string
}
variable "arn" {
  description = "ARN of the Contact Flow."
  type        = string
}
variable "contact_flow_id" {
  description = "(Optional) Returns information on a specific Contact Flow by contact flow id"
  type        = string
}
variable "content" {
  description = "Logic of the Contact Flow."
  type        = string
}
variable "description" {
  description = "Description of the Contact Flow."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
output "content" {
  description = "Logic of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_contact_flow.aws_connect_contact_flow.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Returns information on a specific Contact Flow by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_contact_flow.aws_connect_contact_flow.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags to assign to the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contact_flow_id" {
  description = "(Optional) Returns information on a specific Contact Flow by contact flow id"
  value       = aws_connect_contact_flow.aws_connect_contact_flow.contact_flow_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "Logic of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Tags to assign to the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.tags
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
