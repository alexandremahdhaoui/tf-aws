datasource "aws_ecs_container_definition" "aws_ecs_container_definition" {
  environment        = var.environment
  image              = var.image
  task_definition    = var.task_definition
  container_name     = var.container_name
  cpu                = var.cpu
  disable_networking = var.disable_networking
  image_digest       = var.image_digest
  memory             = var.memory
  memory_reservation = var.memory_reservation
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "environment" {
  description = "Environment in use"
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
variable "container_name" {
  description = "(Required) Name of the container definitionIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "cpu" {
  description = "CPU limit for this container definition"
  type        = string
}
variable "disable_networking" {
  description = "Indicator if networking is disabled"
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
output "environment" {
  description = "Environment in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "Docker image in use, including the digest"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_definition" {
  description = "(Required) ARN of the task definition which contains the container"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.task_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory" {
  description = "Memory limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_reservation" {
  description = "Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory_reservation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_name" {
  description = "(Required) Name of the container definitionIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.container_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu" {
  description = "CPU limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.cpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_networking" {
  description = "Indicator if networking is disabled"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.disable_networking
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_digest" {
  description = "Digest of the docker image in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image_digest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu" {
  description = "CPU limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.cpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_networking" {
  description = "Indicator if networking is disabled"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.disable_networking
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment" {
  description = "Environment in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "Docker image in use, including the digest"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_digest" {
  description = "Digest of the docker image in use"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.image_digest
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory" {
  description = "Memory limit for this container definition"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_reservation" {
  description = "Soft limit (in MiB) of memory to reserve for the container. When system memory is under contention, Docker attempts to keep the container memory to this soft limit"
  value       = aws_ecs_container_definition.aws_ecs_container_definition.memory_reservation
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
