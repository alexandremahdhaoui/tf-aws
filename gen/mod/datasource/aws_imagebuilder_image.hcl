datasource "aws_imagebuilder_image" "aws_imagebuilder_image" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_version_arn" {
  description = "Build version ARN of the image. This will always have the #.#.#/# suffix."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.build_version_arn
}
output "container_recipe_arn" {
  description = "ARN of the container recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.container_recipe_arn
}
output "distribution_configuration_arn" {
  description = "ARN of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.distribution_configuration_arn
}
output "enhanced_image_metadata_enabled" {
  description = "Whether additional information about the image being created is collected."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.enhanced_image_metadata_enabled
}
output "image_recipe_arn" {
  description = "ARN of the image recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_recipe_arn
}
output "image_tests_enabled" {
  description = "Whether image tests are enabled."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_enabled
}
output "output_resources" {
  description = "List of objects with resources created by the image.\n"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "tags" {
  description = "Key-value map of resource tags for the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "amis" {
  description = "Set of objects with each Amazon Machine Image (AMI) created.\n"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
}
output "infrastructure_configuration_arn" {
  description = "ARN of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.infrastructure_configuration_arn
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "image_tests_configuration" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_configuration
}
output "timeout_minutes" {
  description = "Number of minutes before image tests time out."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.timeout_minutes
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
