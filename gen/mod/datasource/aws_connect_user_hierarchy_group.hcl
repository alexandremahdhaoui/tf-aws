datasource "aws_connect_user_hierarchy_group" "aws_connect_user_hierarchy_group" {
  arn                = var.arn
  id                 = var.id
  level_id           = var.level_id
  level_two          = var.level_two
  name               = var.name
  hierarchy_group_id = var.hierarchy_group_id
  hierarchy_path     = var.hierarchy_path
  instance_id        = var.instance_id
  level_five         = var.level_five
  level_four         = var.level_four
  level_one          = var.level_one
  level_three        = var.level_three
  tags               = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Optional) Returns information on a specific hierarchy group by nameIn addition to all of the arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = " ARN of the hierarchy group."
  type        = string
}
variable "id" {
  description = " The identifier of the hierarchy group."
  type        = string
}
variable "level_id" {
  description = "Identifier of the level in the hierarchy group."
  type        = string
}
variable "level_two" {
  description = "Details of level two. See below."
  type        = string
}
variable "level_four" {
  description = "Details of level four. See below."
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
variable "tags" {
  description = "Map of tags to assign to the hierarchy group.A hierarchy_path block supports the following attributes:"
  type        = string
}
variable "hierarchy_group_id" {
  description = "(Optional) Returns information on a specific hierarchy group by hierarchy group id"
  type        = string
}
variable "hierarchy_path" {
  description = "Block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  type        = string
}
variable "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  type        = string
}
variable "level_five" {
  description = "Details of level five. See below.A level block supports the following attributes:"
  type        = string
}
output "level_id" {
  description = "Identifier of the level in the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_two" {
  description = "Details of level two. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_two
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Returns information on a specific hierarchy group by nameIn addition to all of the arguments above, the following attributes are exported:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " ARN of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = " The identifier of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Reference to the hosting Amazon Connect Instance"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_five" {
  description = "Details of level five. See below.A level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_five
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_four" {
  description = "Details of level four. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_four
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_one" {
  description = "Details of level one. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_one
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_three" {
  description = "Details of level three. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_three
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the hierarchy group.A hierarchy_path block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_group_id" {
  description = "(Optional) Returns information on a specific hierarchy group by hierarchy group id"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_path" {
  description = "Block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " ARN of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_four" {
  description = "Details of level four. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_four
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_one" {
  description = "Details of level one. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_one
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_three" {
  description = "Details of level three. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_three
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_two" {
  description = "Details of level two. See below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_two
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the hierarchy group.A hierarchy_path block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_path" {
  description = "Block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = " The identifier of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_five" {
  description = "Details of level five. See below.A level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_five
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_id" {
  description = "Identifier of the level in the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_id
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
