datasource "aws_ecs_service" "aws_ecs_service" {
  arn                 = var.arn
  cluster_arn         = var.cluster_arn
  desired_count       = var.desired_count
  launch_type         = var.launch_type
  scheduling_strategy = var.scheduling_strategy
  service_name        = var.service_name
  task_definition     = var.task_definition
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the ECS Service"
  type        = string
}
variable "cluster_arn" {
  description = "(Required) ARN of the ECS ClusterIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "desired_count" {
  description = "Number of tasks for the ECS Service"
  type        = string
}
variable "launch_type" {
  description = "Launch type for the ECS Service"
  type        = string
}
variable "scheduling_strategy" {
  description = "Scheduling strategy for the ECS Service"
  type        = string
}
variable "service_name" {
  description = "(Required) Name of the ECS Service"
  type        = string
}
variable "task_definition" {
  description = "Family for the latest ACTIVE revision"
  type        = string
}
output "desired_count" {
  description = "Number of tasks for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.desired_count
}
output "launch_type" {
  description = "Launch type for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.launch_type
}
output "scheduling_strategy" {
  description = "Scheduling strategy for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.scheduling_strategy
}
output "service_name" {
  description = "(Required) Name of the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.service_name
}
output "task_definition" {
  description = "Family for the latest ACTIVE revision"
  value       = aws_ecs_service.aws_ecs_service.task_definition
}
output "arn" {
  description = "ARN of the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.arn
}
output "cluster_arn" {
  description = "(Required) ARN of the ECS ClusterIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_service.aws_ecs_service.cluster_arn
}
output "arn" {
  description = "ARN of the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.arn
}
output "desired_count" {
  description = "Number of tasks for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.desired_count
}
output "launch_type" {
  description = "Launch type for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.launch_type
}
output "scheduling_strategy" {
  description = "Scheduling strategy for the ECS Service"
  value       = aws_ecs_service.aws_ecs_service.scheduling_strategy
}
output "task_definition" {
  description = "Family for the latest ACTIVE revision"
  value       = aws_ecs_service.aws_ecs_service.task_definition
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
