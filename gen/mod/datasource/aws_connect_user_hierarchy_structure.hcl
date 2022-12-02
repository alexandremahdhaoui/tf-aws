datasource "aws_connect_user_hierarchy_structure" "aws_connect_user_hierarchy_structure" {
  level_two           = var.level_two
  id                  = var.id
  instance_id         = var.instance_id
  level_one           = var.level_one
  level_three         = var.level_three
  arn                 = var.arn
  hierarchy_structure = var.hierarchy_structure
  level_five          = var.level_five
  level_four          = var.level_four
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = " ARN of the hierarchy level."
  type        = string
}
variable "hierarchy_structure" {
  description = "Block that defines the hierarchy structure's levels. The hierarchy_structure block is documented below.A hierarchy_structure block supports the following attributes:"
  type        = string
}
variable "level_five" {
  description = "Details of level five. See below.Each level block supports the following attributes:"
  type        = string
}
variable "level_four" {
  description = "Details of level four. See below."
  type        = string
}
variable "id" {
  description = " The identifier of the hierarchy level."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect InstanceIn addition to all of the argument above, the following attributes are exported:"
  type        = string
}
variable "level_one" {
  description = "Details of level one. See below."
  type        = string
}
variable "level_three" {
  description = "Details of level three. See below."
  type        = string
}
variable "level_two" {
  description = "Details of level two. See below."
  type        = string
}
output "level_three" {
  description = "Details of level three. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_three
}
output "level_two" {
  description = "Details of level two. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_two
}
output "id" {
  description = " The identifier of the hierarchy level."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.id
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect InstanceIn addition to all of the argument above, the following attributes are exported:"
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.instance_id
}
output "level_one" {
  description = "Details of level one. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_one
}
output "level_four" {
  description = "Details of level four. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_four
}
output "arn" {
  description = " ARN of the hierarchy level."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.arn
}
output "hierarchy_structure" {
  description = "Block that defines the hierarchy structure's levels. The hierarchy_structure block is documented below.A hierarchy_structure block supports the following attributes:"
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.hierarchy_structure
}
output "level_five" {
  description = "Details of level five. See below.Each level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_five
}
output "level_four" {
  description = "Details of level four. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_four
}
output "level_one" {
  description = "Details of level one. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_one
}
output "level_three" {
  description = "Details of level three. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_three
}
output "level_two" {
  description = "Details of level two. See below."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_two
}
output "arn" {
  description = " ARN of the hierarchy level."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.arn
}
output "hierarchy_structure" {
  description = "Block that defines the hierarchy structure's levels. The hierarchy_structure block is documented below.A hierarchy_structure block supports the following attributes:"
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.hierarchy_structure
}
output "id" {
  description = " The identifier of the hierarchy level."
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.id
}
output "level_five" {
  description = "Details of level five. See below.Each level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_structure.aws_connect_user_hierarchy_structure.level_five
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
