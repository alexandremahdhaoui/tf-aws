datasource "aws_workspaces_bundle" "aws_workspaces_bundle" {
  name         = var.name
  owner        = var.owner
  root_storage = var.root_storage
  user_storage = var.user_storage
  bundle_id    = var.bundle_id
  capacity     = var.capacity
  compute_type = var.compute_type
  description  = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "capacity" {
  description = "Size of the root volume.user_storage"
  type        = string
}
variable "compute_type" {
  description = " – The compute type. See supported fields below."
  type        = string
}
variable "description" {
  description = " – The description of the bundle."
  type        = string
}
variable "name" {
  description = "Name of the compute type.root_storage"
  type        = string
}
variable "owner" {
  description = " – The owner of the bundle."
  type        = string
}
variable "root_storage" {
  description = " – The root volume. See supported fields below."
  type        = string
}
variable "user_storage" {
  description = " – The user storage. See supported fields below.compute_type"
  type        = string
}
variable "bundle_id" {
  description = " – The ID of the bundle."
  type        = string
}
output "root_storage" {
  description = " – The root volume. See supported fields below."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.root_storage
}
output "user_storage" {
  description = " – The user storage. See supported fields below.compute_type"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.user_storage
}
output "bundle_id" {
  description = " – The ID of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.bundle_id
}
output "capacity" {
  description = "Size of the root volume.user_storage"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.capacity
}
output "compute_type" {
  description = " – The compute type. See supported fields below."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.compute_type
}
output "description" {
  description = " – The description of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.description
}
output "name" {
  description = "Name of the compute type.root_storage"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.name
}
output "owner" {
  description = " – The owner of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.owner
}
output "user_storage" {
  description = " – The user storage. See supported fields below.compute_type"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.user_storage
}
output "bundle_id" {
  description = " – The ID of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.bundle_id
}
output "capacity" {
  description = "Size of the root volume.user_storage"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.capacity
}
output "compute_type" {
  description = " – The compute type. See supported fields below."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.compute_type
}
output "description" {
  description = " – The description of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.description
}
output "name" {
  description = "Name of the compute type.root_storage"
  value       = aws_workspaces_bundle.aws_workspaces_bundle.name
}
output "owner" {
  description = " – The owner of the bundle."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.owner
}
output "root_storage" {
  description = " – The root volume. See supported fields below."
  value       = aws_workspaces_bundle.aws_workspaces_bundle.root_storage
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
