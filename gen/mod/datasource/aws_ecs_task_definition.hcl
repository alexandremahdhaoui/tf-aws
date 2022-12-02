datasource "aws_ecs_task_definition" "aws_ecs_task_definition" {
  arn             = var.arn
  family          = var.family
  id              = var.id
  network_mode    = var.network_mode
  revision        = var.revision
  status          = var.status
  task_definition = var.task_definition
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "family" {
  description = "Family of this task definition"
  type        = string
}
variable "id" {
  description = "ARN of the task definition"
  type        = string
}
variable "network_mode" {
  description = "Docker networking mode to use for the containers in this task."
  type        = string
}
variable "revision" {
  description = "Revision of this task definition"
  type        = string
}
variable "status" {
  description = "Status of this task definition"
  type        = string
}
variable "task_definition" {
  description = "(Required) Family for the latest ACTIVE revision, family and revision (family:revision) for a specific revision in the family, the ARN of the task definition to access to.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the task definition"
  type        = string
}
output "arn" {
  description = "ARN of the task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.arn
}
output "family" {
  description = "Family of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.family
}
output "id" {
  description = "ARN of the task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.id
}
output "network_mode" {
  description = "Docker networking mode to use for the containers in this task."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.network_mode
}
output "revision" {
  description = "Revision of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.revision
}
output "status" {
  description = "Status of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.status
}
output "task_definition" {
  description = "(Required) Family for the latest ACTIVE revision, family and revision (family:revision) for a specific revision in the family, the ARN of the task definition to access to.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.task_definition
}
output "revision" {
  description = "Revision of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.revision
}
output "status" {
  description = "Status of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.status
}
output "arn" {
  description = "ARN of the task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.arn
}
output "family" {
  description = "Family of this task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.family
}
output "id" {
  description = "ARN of the task definition"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.id
}
output "network_mode" {
  description = "Docker networking mode to use for the containers in this task."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.network_mode
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
