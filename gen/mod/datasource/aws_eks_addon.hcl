datasource "aws_eks_addon" "aws_eks_addon" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addon_version" {
  description = "Version of EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.addon_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  value       = aws_eks_addon.aws_eks_addon.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EKS Cluster name and EKS add-on name separated by a colon (:)."
  value       = aws_eks_addon.aws_eks_addon.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_account_role_arn" {
  description = "ARN of IAM role used for EKS add-on. If value is empty -\nthen add-on uses the IAM role assigned to the EKS Cluster node."
  value       = aws_eks_addon.aws_eks_addon.service_account_role_arn
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
