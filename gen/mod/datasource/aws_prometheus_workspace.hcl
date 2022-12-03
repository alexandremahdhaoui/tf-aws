datasource "aws_prometheus_workspace" "aws_prometheus_workspace" {
  created_date        = var.created_date
  prometheus_endpoint = var.prometheus_endpoint
  status              = var.status
  workspace_id        = var.workspace_id
  alias               = var.alias
  arn                 = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "alias" {
  description = "Prometheus workspace alias."
  type        = string
}
variable "arn" {
  description = "ARN of the Prometheus workspace."
  type        = string
}
variable "created_date" {
  description = "Creation date of the Prometheus workspace."
  type        = string
}
variable "prometheus_endpoint" {
  description = "Endpoint of the Prometheus workspace."
  type        = string
}
variable "status" {
  description = "Status of the Prometheus workspace."
  type        = string
}
variable "workspace_id" {
  description = "(Required) Prometheus workspace ID.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "alias" {
  description = "Prometheus workspace alias."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.alias
}
output "arn" {
  description = "ARN of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.arn
}
output "created_date" {
  description = "Creation date of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.created_date
}
output "prometheus_endpoint" {
  description = "Endpoint of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.prometheus_endpoint
}
output "status" {
  description = "Status of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.status
}
output "workspace_id" {
  description = "(Required) Prometheus workspace ID.In addition to all arguments above, the following attributes are exported:"
  value       = aws_prometheus_workspace.aws_prometheus_workspace.workspace_id
}
output "created_date" {
  description = "Creation date of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.created_date
}
output "prometheus_endpoint" {
  description = "Endpoint of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.prometheus_endpoint
}
output "status" {
  description = "Status of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.status
}
output "alias" {
  description = "Prometheus workspace alias."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.alias
}
output "arn" {
  description = "ARN of the Prometheus workspace."
  value       = aws_prometheus_workspace.aws_prometheus_workspace.arn
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
