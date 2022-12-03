datasource "aws_imagebuilder_image_pipeline" "aws_imagebuilder_image_pipeline" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_enabled" {
  description = "Whether image tests are enabled."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_tests_enabled
}
output "pipeline_execution_start_condition" {
  description = "Condition when the pipeline should trigger a new image build."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.pipeline_execution_start_condition
}
output "status" {
  description = "Status of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.status
}
output "date_last_run" {
  description = "Date the image pipeline was last run."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_last_run
}
output "distribution_configuration_arn" {
  description = "ARN of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.distribution_configuration_arn
}
output "image_recipe_arn" {
  description = "ARN of the image recipe."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_recipe_arn
}
output "enhanced_image_metadata_enabled" {
  description = "Whether additional information about the image being created is collected."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.enhanced_image_metadata_enabled
}
output "image_tests_configuration" {
  description = ""
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.image_tests_configuration
}
output "infrastructure_configuration_arn" {
  description = "ARN of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.infrastructure_configuration_arn
}
output "platform" {
  description = "Platform of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.platform
}
output "schedule" {
  description = ""
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.schedule
}
output "container_recipe_arn" {
  description = "ARN of the container recipe."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.container_recipe_arn
}
output "date_created" {
  description = "Date the image pipeline was created."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_created
}
output "date_next_run" {
  description = "Date the image pipeline will run next."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_next_run
}
output "schedule_expression" {
  description = "Cron expression of how often the pipeline start condition is evaluated."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.schedule_expression
}
output "date_updated" {
  description = "Date the image pipeline was updated."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.date_updated
}
output "description" {
  description = "Description of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.description
}
output "name" {
  description = "Name of the image pipeline."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.name
}
output "timeout_minutes" {
  description = "Number of minutes before image tests time out."
  value       = aws_imagebuilder_image_pipeline.aws_imagebuilder_image_pipeline.timeout_minutes
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
