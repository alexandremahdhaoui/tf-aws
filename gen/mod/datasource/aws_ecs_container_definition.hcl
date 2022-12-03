datasource "aws_ecs_container_definition" "aws_ecs_container_definition" {
  memory             = var.memory
  memory_reservation = var.memory_reservation
  container_name     = var.container_name
  cpu                = var.cpu
  environment        = var.environment
  image_digest       = var.image_digest
  disable_networking = var.disable_networking
  image              = var.image
  task_definition    = var.task_definition
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "container_name" {
  description = "(Required) Name of the container definitionIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "cpu" {
  description = "CPU limit for this container definition"
  type        = string
}
variable "environment" {
  description = "Environment in use"
  type        = string
}
variable "image_digest" {
  description = "Digest of the docker image in use"
  type        = string
}
variable "memory" {
  description = "Memory limit for this container definition"
  type        = string
}
variable "memory_reservation" {
  description = "Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
  type        = string
}
variable "disable_networking" {
  description = "Indicator if networking is disabled"
  type        = string
}
variable "image" {
  description = "Docker image in use, including the digest"
  type        = string
}
variable "task_definition" {
  description = "(Required) ARN of the task definition which contains the container"
  type        = string
}
output "disable_networking" {
  description = "Indicator if networking is disabled"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.disable_networking
}
output "image" {
  description = "Docker image in use, including the digest"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image
}
output "task_definition" {
  description = "(Required) ARN of the task definition which contains the container"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.task_definition
}
output "container_name" {
  description = "(Required) Name of the container definitionIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.container_name
}
output "cpu" {
  description = "CPU limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.cpu
}
output "environment" {
  description = "Environment in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.environment
}
output "image_digest" {
  description = "Digest of the docker image in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image_digest
}
output "memory" {
  description = "Memory limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory
}
output "memory_reservation" {
  description = "Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory_reservation
}
output "memory_reservation" {
  description = "Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory_reservation
}
output "cpu" {
  description = "CPU limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.cpu
}
output "disable_networking" {
  description = "Indicator if networking is disabled"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.disable_networking
}
output "environment" {
  description = "Environment in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.environment
}
output "image" {
  description = "Docker image in use, including the digest"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image
}
output "image_digest" {
  description = "Digest of the docker image in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image_digest
}
output "memory" {
  description = "Memory limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory
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
