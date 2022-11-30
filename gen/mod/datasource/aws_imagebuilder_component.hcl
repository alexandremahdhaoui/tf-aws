datasource "aws_imagebuilder_component" "aws_imagebuilder_component" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "ARN of the Key Management Service (KMS) Key used to encrypt the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "supported_os_versions" {
  description = "Operating Systems (OSes) supported by the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.supported_os_versions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "change_description" {
  description = "Change description of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.change_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the component was created."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Encryption status of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data" {
  description = "Data of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.data
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
