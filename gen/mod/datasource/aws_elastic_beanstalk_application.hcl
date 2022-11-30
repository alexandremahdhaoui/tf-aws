datasource "aws_elastic_beanstalk_application" "aws_elastic_beanstalk_application" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_count" {
  description = "Maximum number of application versions to retain."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.max_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_role" {
  description = "ARN of an IAM service role under which the application version is deleted.  Elastic Beanstalk must have permission to assume this role."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.service_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the application."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Short description of the applicationApplication version lifecycle (appversion_lifecycle) supports the nested attribute containing."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the application"
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_age_in_days" {
  description = "Number of days to retain an application version."
  value       = aws_elastic_beanstalk_application.aws_elastic_beanstalk_application.max_age_in_days
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
