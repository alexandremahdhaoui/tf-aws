datasource "aws_ebs_default_kms_key" "aws_ebs_default_kms_key" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Region of the default KMS Key.TimeoutsConfiguration options:"
  value       = aws_ebs_default_kms_key.aws_ebs_default_kms_key.id
}
output "key_arn" {
  description = "ARN of the default KMS key uses to encrypt an EBS volume in this region when no key is specified in an API call that creates the volume and encryption by default is enabled."
  value       = aws_ebs_default_kms_key.aws_ebs_default_kms_key.key_arn
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
