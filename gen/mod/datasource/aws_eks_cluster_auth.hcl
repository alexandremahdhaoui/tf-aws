datasource "aws_eks_cluster_auth" "aws_eks_cluster_auth" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the cluster."
  value       = aws_eks_cluster_auth.aws_eks_cluster_auth.id
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
