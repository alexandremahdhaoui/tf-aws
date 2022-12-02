datasource "aws_connect_contact_flow_module" "aws_connect_contact_flow_module" {
  tags                   = var.tags
  arn                    = var.arn
  contact_flow_module_id = var.contact_flow_module_id
  content                = var.content
  description            = var.description
  instance_id            = var.instance_id
  name                   = var.name
  state                  = var.state
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
  default     = ""
}
variable "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
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
  default     = ""
}
variable "content" {
  description = "Logic of the Contact Flow Module."
  type        = string
}
output "content" {
  description = "Logic of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.content
}
output "description" {
  description = "Description of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.description
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.instance_id
}
output "name" {
  description = "(Optional) Returns information on a specific Contact Flow Module by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.name
}
output "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.state
}
output "tags" {
  description = "Map of tags to assign to the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.tags
}
output "arn" {
  description = "ARN of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.arn
}
output "contact_flow_module_id" {
  description = "(Optional) Returns information on a specific Contact Flow Module by contact flow module id"
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.contact_flow_module_id
}
output "content" {
  description = "Logic of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.content
}
output "description" {
  description = "Description of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.description
}
output "state" {
  description = "Type of Contact Flow Module Module. Values are either ACTIVE or ARCHIVED."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.state
}
output "tags" {
  description = "Map of tags to assign to the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.tags
}
output "arn" {
  description = "ARN of the Contact Flow Module."
  value       = aws_connect_contact_flow_module.aws_connect_contact_flow_module.arn
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
