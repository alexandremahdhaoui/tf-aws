datasource "aws_ecs_cluster" "aws_ecs_cluster" {
  running_tasks_count                  = var.running_tasks_count
  status                               = var.status
  arn                                  = var.arn
  cluster_name                         = var.cluster_name
  pending_tasks_count                  = var.pending_tasks_count
  registered_container_instances_count = var.registered_container_instances_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "Status of the ECS Cluster"
  type        = string
}
variable "arn" {
  description = "ARN of the ECS Cluster"
  type        = string
}
variable "cluster_name" {
  description = "(Required) Name of the ECS ClusterIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "pending_tasks_count" {
  description = "Number of pending tasks for the ECS Cluster"
  type        = string
}
variable "registered_container_instances_count" {
  description = "The number of registered container instances for the ECS Cluster"
  type        = string
}
variable "running_tasks_count" {
  description = "Number of running tasks for the ECS Cluster"
  type        = string
}
output "arn" {
  description = "ARN of the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.arn
}
output "cluster_name" {
  description = "(Required) Name of the ECS ClusterIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_cluster.aws_ecs_cluster.cluster_name
}
output "pending_tasks_count" {
  description = "Number of pending tasks for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.pending_tasks_count
}
output "registered_container_instances_count" {
  description = "The number of registered container instances for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.registered_container_instances_count
}
output "running_tasks_count" {
  description = "Number of running tasks for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.running_tasks_count
}
output "status" {
  description = "Status of the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.status
}
output "registered_container_instances_count" {
  description = "The number of registered container instances for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.registered_container_instances_count
}
output "running_tasks_count" {
  description = "Number of running tasks for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.running_tasks_count
}
output "status" {
  description = "Status of the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.status
}
output "arn" {
  description = "ARN of the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.arn
}
output "pending_tasks_count" {
  description = "Number of pending tasks for the ECS Cluster"
  value       = aws_ecs_cluster.aws_ecs_cluster.pending_tasks_count
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
