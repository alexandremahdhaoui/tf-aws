datasource "aws_workspaces_image" "aws_workspaces_image" {
  description      = var.description
  image_id         = var.image_id
  name             = var.name
  os               = var.os
  required_tenancy = var.required_tenancy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "required_tenancy" {
  description = " – Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see Bring Your Own Windows Desktop Images."
  type        = string
}
variable "description" {
  description = " – The description of the image."
  type        = string
}
variable "image_id" {
  description = " – (Required) ID of the image.The following attributes are exported:"
  type        = string
}
variable "name" {
  description = " – The name of the image."
  type        = string
}
variable "os" {
  description = " – The operating system that the image is running."
  type        = string
}
output "description" {
  description = " – The description of the image."
  value       = aws_workspaces_image.aws_workspaces_image.description
}
output "image_id" {
  description = " – (Required) ID of the image.The following attributes are exported:"
  value       = aws_workspaces_image.aws_workspaces_image.image_id
}
output "name" {
  description = " – The name of the image."
  value       = aws_workspaces_image.aws_workspaces_image.name
}
output "os" {
  description = " – The operating system that the image is running."
  value       = aws_workspaces_image.aws_workspaces_image.os
}
output "required_tenancy" {
  description = " – Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see Bring Your Own Windows Desktop Images."
  value       = aws_workspaces_image.aws_workspaces_image.required_tenancy
}
output "name" {
  description = " – The name of the image."
  value       = aws_workspaces_image.aws_workspaces_image.name
}
output "os" {
  description = " – The operating system that the image is running."
  value       = aws_workspaces_image.aws_workspaces_image.os
}
output "required_tenancy" {
  description = " – Specifies whether the image is running on dedicated hardware. When Bring Your Own License (BYOL) is enabled, this value is set to DEDICATED. For more information, see Bring Your Own Windows Desktop Images."
  value       = aws_workspaces_image.aws_workspaces_image.required_tenancy
}
output "description" {
  description = " – The description of the image."
  value       = aws_workspaces_image.aws_workspaces_image.description
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
