datasource "aws_security_groups" "aws_security_groups" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ids" {
  description = "IDs of the matches security groups."
  value       = aws_security_groups.aws_security_groups.ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_ids" {
  description = "VPC IDs of the matched security groups. The data source's tag or filter emwill span VPCs unless the vpc-id filter is also used.TimeoutsConfiguration options:"
  value       = aws_security_groups.aws_security_groups.vpc_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arns" {
  description = "ARNs of the matched security groups."
  value       = aws_security_groups.aws_security_groups.arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_security_groups.aws_security_groups.id
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
