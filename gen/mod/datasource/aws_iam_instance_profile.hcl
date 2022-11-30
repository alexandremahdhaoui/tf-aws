datasource "aws_iam_instance_profile" "aws_iam_instance_profile" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN."
  value       = aws_iam_instance_profile.aws_iam_instance_profile.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_date" {
  description = "String representation of the date the instance profile was created."
  value       = aws_iam_instance_profile.aws_iam_instance_profile.create_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "Path to the instance profile."
  value       = aws_iam_instance_profile.aws_iam_instance_profile.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "Role ARN associated with this instance profile."
  value       = aws_iam_instance_profile.aws_iam_instance_profile.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_id" {
  description = "Role ID associated with this instance profile."
  value       = aws_iam_instance_profile.aws_iam_instance_profile.role_id
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
