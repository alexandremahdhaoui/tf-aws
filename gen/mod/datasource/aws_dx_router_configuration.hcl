datasource "aws_dx_router_configuration" "aws_dx_router_configuration" {
  platform               = var.platform
  router                 = var.router
  router_type_identifier = var.router_type_identifier
  software               = var.software
  vendor                 = var.vendor
  virtual_interface_id   = var.virtual_interface_id
  xslt_template_name     = var.xslt_template_name
  customer_router_config = var.customer_router_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "software" {
  description = "Router operating system"
  type        = string
}
variable "vendor" {
  description = "Router vendor"
  type        = string
}
variable "virtual_interface_id" {
  description = "(Required) ID of the Direct Connect Virtual Interface"
  type        = string
}
variable "xslt_template_name" {
  description = "Router XSLT Template Name"
  type        = string
}
variable "customer_router_config" {
  description = "Instructions for configuring your router"
  type        = string
}
variable "platform" {
  description = "Router platform"
  type        = string
}
variable "router" {
  description = "Block of the router type detailsA router block supports the following attributes:"
  type        = string
}
variable "router_type_identifier" {
  description = "Router type identifier"
  type        = string
}
output "router" {
  description = "Block of the router type detailsA router block supports the following attributes:"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.router
}
output "router_type_identifier" {
  description = "Router type identifier"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.router_type_identifier
}
output "software" {
  description = "Router operating system"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.software
}
output "vendor" {
  description = "Router vendor"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.vendor
}
output "virtual_interface_id" {
  description = "(Required) ID of the Direct Connect Virtual Interface"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.virtual_interface_id
}
output "xslt_template_name" {
  description = "Router XSLT Template Name"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.xslt_template_name
}
output "customer_router_config" {
  description = "Instructions for configuring your router"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.customer_router_config
}
output "platform" {
  description = "Router platform"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.platform
}
output "router" {
  description = "Block of the router type detailsA router block supports the following attributes:"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.router
}
output "router_type_identifier" {
  description = "Router type identifier"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.router_type_identifier
}
output "software" {
  description = "Router operating system"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.software
}
output "vendor" {
  description = "Router vendor"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.vendor
}
output "xslt_template_name" {
  description = "Router XSLT Template Name"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.xslt_template_name
}
output "customer_router_config" {
  description = "Instructions for configuring your router"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.customer_router_config
}
output "platform" {
  description = "Router platform"
  value       = aws_dx_router_configuration.aws_dx_router_configuration.platform
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
