datasource "aws_imagebuilder_image" "aws_imagebuilder_image" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_recipe_arn" {
  description = "ARN of the image recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_configuration" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amis" {
  description = "Set of objects with each Amazon Machine Image (AMI) created.\n"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_version_arn" {
  description = "Build version ARN of the image. This will always have the #.#.#/# suffix."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.build_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_recipe_arn" {
  description = "ARN of the container recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.container_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "distribution_configuration_arn" {
  description = "ARN of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.distribution_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_enabled" {
  description = "Whether image tests are enabled."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_resources" {
  description = "List of objects with resources created by the image.\n"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "infrastructure_configuration_arn" {
  description = "ARN of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.infrastructure_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enhanced_image_metadata_enabled" {
  description = "Whether additional information about the image being created is collected."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.enhanced_image_metadata_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout_minutes" {
  description = "Number of minutes before image tests time out."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.timeout_minutes
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
