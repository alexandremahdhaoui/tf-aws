datasource "aws_ebs_encryption_by_default" "aws_ebs_encryption_by_default" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "Whether or not default EBS encryption is enabled. Returns as true or false."
  value       = aws_ebs_encryption_by_default.aws_ebs_encryption_by_default.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Region of default EBS encryption.TimeoutsConfiguration options:"
  value       = aws_ebs_encryption_by_default.aws_ebs_encryption_by_default.id
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
