datasource "aws_appmesh_virtual_service" "aws_appmesh_virtual_service" {
  created_date      = var.created_date
  last_updated_date = var.last_updated_date
  mesh_name         = var.mesh_name
  resource_owner    = var.resource_owner
  tags              = var.tags
  virtual_node      = var.virtual_node
  arn               = var.arn
  name              = var.name
  provider          = var.provider
  spec              = var.spec
  virtual_node_name = var.virtual_node_name
  virtual_router    = var.virtual_router
  mesh_owner        = var.mesh_owner
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the virtual service."
  type        = string
}
variable "provider" {
  description = "App Mesh object that is acting as the provider for a virtual service.Provider"
  type        = string
}
variable "spec" {
  description = "Virtual service specification"
  type        = string
}
variable "virtual_node_name" {
  description = "Name of the virtual node that is acting as a service provider.Virtual Router"
  type        = string
}
variable "virtual_router" {
  description = "Virtual router associated with the virtual service.Virtual Node"
  type        = string
}
variable "virtual_node" {
  description = "Virtual node associated with the virtual service."
  type        = string
}
variable "arn" {
  description = "ARN of the virtual service."
  type        = string
}
variable "created_date" {
  description = "Creation date of the virtual service."
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the virtual service."
  type        = string
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which the virtual service exists."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "tags" {
  description = "Map of tags.Spec"
  type        = string
}
output "arn" {
  description = "ARN of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.arn
}
output "created_date" {
  description = "Creation date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.created_date
}
output "last_updated_date" {
  description = "Last update date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.last_updated_date
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which the virtual service exists."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.mesh_name
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.resource_owner
}
output "tags" {
  description = "Map of tags.Spec"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.tags
}
output "virtual_node" {
  description = "Virtual node associated with the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.mesh_owner
}
output "name" {
  description = "(Required) Name of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.name
}
output "provider" {
  description = "App Mesh object that is acting as the provider for a virtual service.Provider"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.provider
}
output "spec" {
  description = "Virtual service specification"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.spec
}
output "virtual_node_name" {
  description = "Name of the virtual node that is acting as a service provider.Virtual Router"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node_name
}
output "virtual_router" {
  description = "Virtual router associated with the virtual service.Virtual Node"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_router
}
output "provider" {
  description = "App Mesh object that is acting as the provider for a virtual service.Provider"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.provider
}
output "tags" {
  description = "Map of tags.Spec"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.tags
}
output "virtual_node" {
  description = "Virtual node associated with the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node
}
output "virtual_router" {
  description = "Virtual router associated with the virtual service.Virtual Node"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_router
}
output "last_updated_date" {
  description = "Last update date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.last_updated_date
}
output "created_date" {
  description = "Creation date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.created_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.resource_owner
}
output "spec" {
  description = "Virtual service specification"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.spec
}
output "virtual_node_name" {
  description = "Name of the virtual node that is acting as a service provider.Virtual Router"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node_name
}
output "arn" {
  description = "ARN of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.arn
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
