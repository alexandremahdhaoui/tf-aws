datasource "aws_ebs_volumes" "aws_ebs_volumes" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_ebs_volumes.aws_ebs_volumes.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "Set of all the EBS Volume IDs found. This data source will fail if\nno volumes match the provided criteria.TimeoutsConfiguration options:"
  value       = aws_ebs_volumes.aws_ebs_volumes.ids
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
