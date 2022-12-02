datasource "aws_ecr_image" "aws_ecr_image" {
  registry_id         = var.registry_id
  repository_name     = var.repository_name
  id                  = var.id
  image_digest        = var.image_digest
  image_pushed_at     = var.image_pushed_at
  image_size_in_bytes = var.image_size_in_bytes
  image_tag           = var.image_tag
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "registry_id" {
  description = "(Optional) ID of the Registry where the repository resides."
  type        = string
  default     = ""
}
variable "repository_name" {
  description = "(Required) Name of the ECR Repository."
  type        = string
}
variable "id" {
  description = "SHA256 digest of the image manifest."
  type        = string
}
variable "image_digest" {
  description = "(Optional) Sha256 digest of the image manifest. At least one of image_digest or image_tag must be specified."
  type        = string
  default     = ""
}
variable "image_pushed_at" {
  description = "Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository."
  type        = string
}
variable "image_size_in_bytes" {
  description = "Size, in bytes, of the image in the repository."
  type        = string
}
variable "image_tag" {
  description = "(Optional) Tag associated with this image. At least one of image_digest or image_tag must be specified.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "image_pushed_at" {
  description = "Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository."
  value       = aws_ecr_image.aws_ecr_image.image_pushed_at
}
output "image_size_in_bytes" {
  description = "Size, in bytes, of the image in the repository."
  value       = aws_ecr_image.aws_ecr_image.image_size_in_bytes
}
output "image_tag" {
  description = "(Optional) Tag associated with this image. At least one of image_digest or image_tag must be specified.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecr_image.aws_ecr_image.image_tag
}
output "registry_id" {
  description = "(Optional) ID of the Registry where the repository resides."
  value       = aws_ecr_image.aws_ecr_image.registry_id
}
output "repository_name" {
  description = "(Required) Name of the ECR Repository."
  value       = aws_ecr_image.aws_ecr_image.repository_name
}
output "id" {
  description = "SHA256 digest of the image manifest."
  value       = aws_ecr_image.aws_ecr_image.id
}
output "image_digest" {
  description = "(Optional) Sha256 digest of the image manifest. At least one of image_digest or image_tag must be specified."
  value       = aws_ecr_image.aws_ecr_image.image_digest
}
output "image_pushed_at" {
  description = "Date and time, expressed as a unix timestamp, at which the current image was pushed to the repository."
  value       = aws_ecr_image.aws_ecr_image.image_pushed_at
}
output "image_size_in_bytes" {
  description = "Size, in bytes, of the image in the repository."
  value       = aws_ecr_image.aws_ecr_image.image_size_in_bytes
}
output "id" {
  description = "SHA256 digest of the image manifest."
  value       = aws_ecr_image.aws_ecr_image.id
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
