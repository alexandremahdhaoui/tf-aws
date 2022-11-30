datasource "aws_elastic_beanstalk_hosted_zone" "aws_elastic_beanstalk_hosted_zone" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the hosted zone."
  value       = aws_elastic_beanstalk_hosted_zone.aws_elastic_beanstalk_hosted_zone.id
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
