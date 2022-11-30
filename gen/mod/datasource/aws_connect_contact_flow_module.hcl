datasource "aws_connect_contact_flow_module" "aws_connect_contact_flow_module" {
  description            = var.description
  instance_id            = var.instance_id
  name                   = var.name
  state                  = var.state
  tags                   = var.tags
  arn                    = var.arn
  contact_flow_module_id = var.contact_flow_module_id
  content                = var.content
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "Map of tags to assign to the Contact Flow Module."
  type        = string
}
variable "arn" {
  description = "ARN of the Contact Flow Module."
  type        = string
}
variable "contact_flow_module_id" {
  description = "(Optional) Returns information on a specific Contact Flow Module by contact flow module id"
  type        = string
}
variable "content" {
  description = "Logic of the Contact Flow Module."
  type        = string
}
variable "description" {
  description = "Description of the Contact Flow Module."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
variable "name" {
  description = "(Optional) Returns information on a specific Contact Flow Module by nameIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
  type        = string
}
output "name" {
  description = "(Optional) Returns information on a specific Contact Flow Module by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contact_flow_module_id" {
  description = "(Optional) Returns information on a specific Contact Flow Module by contact flow module id"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.contact_flow_module_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "Logic of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "Logic of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.tags
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
