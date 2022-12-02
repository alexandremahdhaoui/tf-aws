datasource "aws_batch_job_queue" "aws_batch_job_queue" {
  compute_environment_order.#.order = var.compute_environment_order.#.order
  scheduling_policy_arn             = var.scheduling_policy_arn
  state                             = var.state
  arn                               = var.arn
  compute_environment_order         = var.compute_environment_order
  status                            = var.status
  status_reason                     = var.status_reason
  tags                              = var.tags
  name                              = var.name
  priority                          = var.priority
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "state" {
  description = "Describes the ability of the queue to accept new jobs (for example, ENABLED or DISABLED)."
  type        = string
}
variable "arn" {
  description = "ARN of the job queue."
  type        = string
}
variable "compute_environment_order" {
  description = "The compute environments that are attached to the job queue and the order in\nwhich job placement is preferred. Compute environments are selected for job placement in ascending order.\n"
  type        = string
}
variable "compute_environment_order.#.order" {
  description = "The order of the compute environment."
  type        = string
}
variable "scheduling_policy_arn" {
  description = "The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags"
  type        = string
}
variable "name" {
  description = "(Required) Name of the job queue.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "priority" {
  description = ""
  type        = string
}
variable "status" {
  description = "Current status of the job queue (for example, CREATING or VALID)."
  type        = string
}
variable "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status\nof the job queue."
  type        = string
}
output "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status\nof the job queue."
  value       = aws_batch_job_queue.aws_batch_job_queue.status_reason
}
output "tags" {
  description = "Key-value map of resource tags"
  value       = aws_batch_job_queue.aws_batch_job_queue.tags
}
output "name" {
  description = "(Required) Name of the job queue.In addition to all arguments above, the following attributes are exported:"
  value       = aws_batch_job_queue.aws_batch_job_queue.name
}
output "priority" {
  description = ""
  value       = aws_batch_job_queue.aws_batch_job_queue.priority
}
output "status" {
  description = "Current status of the job queue (for example, CREATING or VALID)."
  value       = aws_batch_job_queue.aws_batch_job_queue.status
}
output "scheduling_policy_arn" {
  description = "The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy."
  value       = aws_batch_job_queue.aws_batch_job_queue.scheduling_policy_arn
}
output "state" {
  description = "Describes the ability of the queue to accept new jobs (for example, ENABLED or DISABLED)."
  value       = aws_batch_job_queue.aws_batch_job_queue.state
}
output "arn" {
  description = "ARN of the job queue."
  value       = aws_batch_job_queue.aws_batch_job_queue.arn
}
output "compute_environment_order" {
  description = "The compute environments that are attached to the job queue and the order in\nwhich job placement is preferred. Compute environments are selected for job placement in ascending order.\n"
  value       = aws_batch_job_queue.aws_batch_job_queue.compute_environment_order
}
output "compute_environment_order.#.order" {
  description = "The order of the compute environment."
  value       = aws_batch_job_queue.aws_batch_job_queue.compute_environment_order.#.order
}
output "scheduling_policy_arn" {
  description = "The ARN of the fair share scheduling policy. If this attribute has a value, the job queue uses a fair share scheduling policy. If this attribute does not have a value, the job queue uses a first in, first out (FIFO) scheduling policy."
  value       = aws_batch_job_queue.aws_batch_job_queue.scheduling_policy_arn
}
output "status_reason" {
  description = "Short, human-readable string to provide additional details about the current status\nof the job queue."
  value       = aws_batch_job_queue.aws_batch_job_queue.status_reason
}
output "arn" {
  description = "ARN of the job queue."
  value       = aws_batch_job_queue.aws_batch_job_queue.arn
}
output "compute_environment_order.#.order" {
  description = "The order of the compute environment."
  value       = aws_batch_job_queue.aws_batch_job_queue.compute_environment_order.#.order
}
output "state" {
  description = "Describes the ability of the queue to accept new jobs (for example, ENABLED or DISABLED)."
  value       = aws_batch_job_queue.aws_batch_job_queue.state
}
output "status" {
  description = "Current status of the job queue (for example, CREATING or VALID)."
  value       = aws_batch_job_queue.aws_batch_job_queue.status
}
output "tags" {
  description = "Key-value map of resource tags"
  value       = aws_batch_job_queue.aws_batch_job_queue.tags
}
output "compute_environment_order" {
  description = "The compute environments that are attached to the job queue and the order in\nwhich job placement is preferred. Compute environments are selected for job placement in ascending order.\n"
  value       = aws_batch_job_queue.aws_batch_job_queue.compute_environment_order
}
output "priority" {
  description = ""
  value       = aws_batch_job_queue.aws_batch_job_queue.priority
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
