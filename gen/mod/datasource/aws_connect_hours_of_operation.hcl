datasource "aws_connect_hours_of_operation" "aws_connect_hours_of_operation" {
  day                    = var.day
  description            = var.description
  hours                  = var.hours
  hours_of_operation_arn = var.hours_of_operation_arn
  hours_of_operation_id  = var.hours_of_operation_id
  instance_id            = var.instance_id
  start_time             = var.start_time
  arn                    = var.arn
  config                 = var.config
  tags                   = var.tags
  end_time               = var.end_time
  minutes                = var.minutes
  name                   = var.name
  time_zone              = var.time_zone
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "hours" {
  description = "Hour of opening."
  type        = string
}
variable "hours_of_operation_arn" {
  description = "(strongDeprecated) ARN of the Hours of Operation."
  type        = string
}
variable "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  type        = string
}
variable "instance_id" {
  description = "Identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "day" {
  description = "Day that the hours of operation applies to."
  type        = string
}
variable "description" {
  description = "Description of the Hours of Operation."
  type        = string
}
variable "start_time" {
  description = "Start time block specifies the time that your contact center opens. The start_time is documented below.A end_time block supports the following arguments:"
  type        = string
}
variable "tags" {
  description = "Map of tags to assign to the Hours of Operation."
  type        = string
}
variable "arn" {
  description = "ARN of the Hours of Operation."
  type        = string
}
variable "config" {
  description = "Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below."
  type        = string
}
variable "name" {
  description = "Name of the Hours of Operation."
  type        = string
}
variable "time_zone" {
  description = "Time zone of the Hours of Operation.A config block supports the following arguments:"
  type        = string
}
variable "end_time" {
  description = "End time block specifies the time that your contact center closes. The end_time is documented below."
  type        = string
}
variable "minutes" {
  description = "Minute of closing.A start_time block supports the following arguments:"
  type        = string
}
output "start_time" {
  description = "Start time block specifies the time that your contact center opens. The start_time is documented below.A end_time block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "config" {
  description = "Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "end_time" {
  description = "End time block specifies the time that your contact center closes. The end_time is documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.end_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minutes" {
  description = "Minute of closing.A start_time block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_zone" {
  description = "Time zone of the Hours of Operation.A config block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.time_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "Identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "day" {
  description = "Day that the hours of operation applies to."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.day
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours" {
  description = "Hour of opening."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours_of_operation_arn" {
  description = "(strongDeprecated) ARN of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_time" {
  description = "Start time block specifies the time that your contact center opens. The start_time is documented below.A end_time block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minutes" {
  description = "Minute of closing.A start_time block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "Identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "end_time" {
  description = "End time block specifies the time that your contact center closes. The end_time is documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.end_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours_of_operation_arn" {
  description = "(strongDeprecated) ARN of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours_of_operation_id" {
  description = "The identifier for the hours of operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours_of_operation_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hours" {
  description = "Hour of opening."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.hours
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_zone" {
  description = "Time zone of the Hours of Operation.A config block supports the following arguments:"
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.time_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags to assign to the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "config" {
  description = "Configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below. Config blocks are documented below."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "day" {
  description = "Day that the hours of operation applies to."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.day
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the Hours of Operation."
  value       = aws_connect_hours_of_operation.aws_connect_hours_of_operation.name
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
