datasource "aws_ram_resource_share" "aws_ram_resource_share" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the resource share."
  value       = aws_ram_resource_share.aws_ram_resource_share.id
}
output "owning_account_id" {
  description = "ID of the AWS account that owns the resource share."
  value       = aws_ram_resource_share.aws_ram_resource_share.owning_account_id
}
output "status" {
  description = "Status of the RAM share."
  value       = aws_ram_resource_share.aws_ram_resource_share.status
}
output "arn" {
  description = "ARN of the resource share."
  value       = aws_ram_resource_share.aws_ram_resource_share.arn
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
