datasource "aws_batch_compute_environment" "aws_batch_compute_environment" {
  arn                      = var.arn
  compute_environment_name = var.compute_environment_name
  ecs_cluster_arn          = var.ecs_cluster_arn
  service_role             = var.service_role
  state                    = var.state
  status                   = var.status
  status_reason            = var.status_reason
  type                     = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ecs_cluster_arn" {
  description = "ARN of the underlying Amazon ECS cluster used by the compute environment."
  type        = string
}
variable "service_role" {
  description = "ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf."
  type        = string
}
variable "state" {
  description = "State of the compute environment (for example, ENABLED or DISABLED). If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues."
  type        = string
}
variable "status" {
  description = "Current status of the compute environment (for example, CREATING or VALID)."
  type        = string
}
variable "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status of the compute environment."
  type        = string
}
variable "type" {
  description = "Type of the compute environment (for example, MANAGED or UNMANAGED)."
  type        = string
}
variable "arn" {
  description = "ARN of the compute environment."
  type        = string
}
variable "compute_environment_name" {
  description = "(Required) Name of the Batch Compute EnvironmentIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "service_role" {
  description = "ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.service_role
}
output "state" {
  description = "State of the compute environment (for example, ENABLED or DISABLED). If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.state
}
output "status" {
  description = "Current status of the compute environment (for example, CREATING or VALID)."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.status
}
output "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status of the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.status_reason
}
output "type" {
  description = "Type of the compute environment (for example, MANAGED or UNMANAGED)."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.type
}
output "arn" {
  description = "ARN of the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.arn
}
output "compute_environment_name" {
  description = "(Required) Name of the Batch Compute EnvironmentIn addition to all arguments above, the following attributes are exported:"
  value       = aws_batch_compute_environment.aws_batch_compute_environment.compute_environment_name
}
output "ecs_cluster_arn" {
  description = "ARN of the underlying Amazon ECS cluster used by the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.ecs_cluster_arn
}
output "arn" {
  description = "ARN of the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.arn
}
output "ecs_cluster_arn" {
  description = "ARN of the underlying Amazon ECS cluster used by the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.ecs_cluster_arn
}
output "service_role" {
  description = "ARN of the IAM role that allows AWS Batch to make calls to other AWS services on your behalf."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.service_role
}
output "state" {
  description = "State of the compute environment (for example, ENABLED or DISABLED). If the state is ENABLED, then the compute environment accepts jobs from a queue and can scale out automatically based on queues."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.state
}
output "status" {
  description = "Current status of the compute environment (for example, CREATING or VALID)."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.status
}
output "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status of the compute environment."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.status_reason
}
output "type" {
  description = "Type of the compute environment (for example, MANAGED or UNMANAGED)."
  value       = aws_batch_compute_environment.aws_batch_compute_environment.type
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
