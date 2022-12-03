datasource "aws_service" "aws_service" {
  dns_name           = var.dns_name
  partition          = var.partition
  region             = var.region
  reverse_dns_name   = var.reverse_dns_name
  reverse_dns_prefix = var.reverse_dns_prefix
  service_id         = var.service_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "partition" {
  description = "(Optional) Partition corresponding to the region."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Optional) Region of the service (eme.g., us-west-2, ap-northeast-1)."
  type        = string
  default     = ""
}
variable "reverse_dns_name" {
  description = "(Optional) Reverse DNS name of the service (eme.g., com.amazonaws.us-west-2.s3). One of dns_name, reverse_dns_name, or service_id is required."
  type        = string
  default     = ""
}
variable "reverse_dns_prefix" {
  description = "(Optional) Prefix of the service (eme.g., com.amazonaws in AWS Commercial, cn.com.amazonaws in AWS China)."
  type        = string
  default     = ""
}
variable "service_id" {
  description = "(Optional) Service (eme.g., s3, rds, ec2). One of dns_name, reverse_dns_name, or service_id is required.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "dns_name" {
  description = "(Optional) DNS name of the service (eme.g., rds.us-east-1.amazonaws.com). One of dns_name, reverse_dns_name, or service_id is required."
  type        = string
  default     = ""
}
output "partition" {
  description = "(Optional) Partition corresponding to the region."
  value       = aws_service.aws_service.partition
}
output "region" {
  description = "(Optional) Region of the service (eme.g., us-west-2, ap-northeast-1)."
  value       = aws_service.aws_service.region
}
output "reverse_dns_name" {
  description = "(Optional) Reverse DNS name of the service (eme.g., com.amazonaws.us-west-2.s3). One of dns_name, reverse_dns_name, or service_id is required."
  value       = aws_service.aws_service.reverse_dns_name
}
output "reverse_dns_prefix" {
  description = "(Optional) Prefix of the service (eme.g., com.amazonaws in AWS Commercial, cn.com.amazonaws in AWS China)."
  value       = aws_service.aws_service.reverse_dns_prefix
}
output "service_id" {
  description = "(Optional) Service (eme.g., s3, rds, ec2). One of dns_name, reverse_dns_name, or service_id is required.In addition to all arguments above, the following attributes are exported:"
  value       = aws_service.aws_service.service_id
}
output "dns_name" {
  description = "(Optional) DNS name of the service (eme.g., rds.us-east-1.amazonaws.com). One of dns_name, reverse_dns_name, or service_id is required."
  value       = aws_service.aws_service.dns_name
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
