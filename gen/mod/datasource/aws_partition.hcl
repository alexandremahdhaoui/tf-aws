datasource "aws_partition" "aws_partition" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_suffix" {
  description = "Base DNS domain name for the current partition (e.g., amazonaws.com in AWS Commercial, amazonaws.com.cn in AWS China)."
  value       = aws_partition.aws_partition.dns_suffix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the current partition (e.g., aws in AWS Commercial, aws-cn in AWS China)."
  value       = aws_partition.aws_partition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition" {
  description = "Identifier of the current partition (e.g., aws in AWS Commercial, aws-cn in AWS China)."
  value       = aws_partition.aws_partition.partition
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
