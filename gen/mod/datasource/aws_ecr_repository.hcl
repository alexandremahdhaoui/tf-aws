datasource "aws_ecr_repository" "aws_ecr_repository" {
  registry_id                  = var.registry_id
  encryption_configuration     = var.encryption_configuration
  encryption_type              = var.encryption_type
  image_scanning_configuration = var.image_scanning_configuration
  kms_key                      = var.kms_key
  name                         = var.name
  arn                          = var.arn
  image_tag_mutability         = var.image_tag_mutability
  repository_url               = var.repository_url
  tags                         = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encryption_configuration" {
  description = "Encryption configuration for the repository. See Encryption Configuration below."
  type        = string
}
variable "encryption_type" {
  description = "Encryption type to use for the repository, either AES256 or KMS."
  type        = string
}
variable "image_scanning_configuration" {
  description = "Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below."
  type        = string
}
variable "kms_key" {
  description = "If encryption_type is KMS, the ARN of the KMS key used.Image Scanning Configuration"
  type        = string
}
variable "name" {
  description = "(Required) Name of the ECR Repository."
  type        = string
}
variable "registry_id" {
  description = "(Optional) Registry ID where the repository was created.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "Full ARN of the repository."
  type        = string
}
variable "image_tag_mutability" {
  description = "The tag mutability setting for the repository."
  type        = string
}
variable "repository_url" {
  description = "URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  type        = string
}
variable "tags" {
  description = "Map of tags assigned to the resource.Encryption Configuration"
  type        = string
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecr_repository.aws_ecr_repository.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tag_mutability" {
  description = "The tag mutability setting for the repository."
  value       = aws_ecr_repository.aws_ecr_repository.image_tag_mutability
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_url" {
  description = "URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  value       = aws_ecr_repository.aws_ecr_repository.repository_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the resource.Encryption Configuration"
  value       = aws_ecr_repository.aws_ecr_repository.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = "Encryption configuration for the repository. See Encryption Configuration below."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_type" {
  description = "Encryption type to use for the repository, either AES256 or KMS."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_scanning_configuration" {
  description = "Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below."
  value       = aws_ecr_repository.aws_ecr_repository.image_scanning_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key" {
  description = "If encryption_type is KMS, the ARN of the KMS key used.Image Scanning Configuration"
  value       = aws_ecr_repository.aws_ecr_repository.kms_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the ECR Repository."
  value       = aws_ecr_repository.aws_ecr_repository.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registry_id" {
  description = "(Optional) Registry ID where the repository was created.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecr_repository.aws_ecr_repository.registry_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecr_repository.aws_ecr_repository.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = "Encryption configuration for the repository. See Encryption Configuration below."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_type" {
  description = "Encryption type to use for the repository, either AES256 or KMS."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_scanning_configuration" {
  description = "Configuration block that defines image scanning configuration for the repository. See Image Scanning Configuration below."
  value       = aws_ecr_repository.aws_ecr_repository.image_scanning_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tag_mutability" {
  description = "The tag mutability setting for the repository."
  value       = aws_ecr_repository.aws_ecr_repository.image_tag_mutability
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key" {
  description = "If encryption_type is KMS, the ARN of the KMS key used.Image Scanning Configuration"
  value       = aws_ecr_repository.aws_ecr_repository.kms_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_url" {
  description = "URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  value       = aws_ecr_repository.aws_ecr_repository.repository_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Map of tags assigned to the resource.Encryption Configuration"
  value       = aws_ecr_repository.aws_ecr_repository.tags
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
