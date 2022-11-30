datasource "aws_appmesh_mesh" "aws_appmesh_mesh" {
  created_date      = var.created_date
  last_updated_date = var.last_updated_date
  mesh_owner        = var.mesh_owner
  name              = var.name
  resource_owner    = var.resource_owner
  arn               = var.arn
  spec              = var.spec
  tags              = var.tags
  egress_filter     = var.egress_filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "egress_filter" {
  description = "Egress filter rules for the service mesh.Egress Filter"
  type        = string
}
variable "spec" {
  description = "Service mesh specification."
  type        = string
}
variable "tags" {
  description = "Map of tags.Spec"
  type        = string
}
variable "name" {
  description = "(Required) Name of the service mesh."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "arn" {
  description = "ARN of the service mesh."
  type        = string
}
variable "created_date" {
  description = "Creation date of the service mesh."
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the service mesh."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.mesh_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_filter" {
  description = "Egress filter rules for the service mesh.Egress Filter"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.egress_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spec" {
  description = "Service mesh specification."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.spec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags.Spec"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_filter" {
  description = "Egress filter rules for the service mesh.Egress Filter"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.egress_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spec" {
  description = "Service mesh specification."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.spec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags.Spec"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.tags
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
