datasource "aws_arn" "aws_arn" {
  account   = var.account
  arn       = var.arn
  partition = var.partition
  region    = var.region
  service   = var.service
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "account" {
  description = "The ID of the AWS account that owns the resource, without the hyphens."
  type        = string
}
variable "arn" {
  description = "(Required) ARN to parse.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "partition" {
  description = "Partition that the resource is in."
  type        = string
}
variable "region" {
  description = "Region the resource resides in.\nNote that the ARNs for some resources do not require a region, so this component might be omitted."
  type        = string
}
variable "service" {
  description = "The service namespace that identifies the AWS product."
  type        = string
}
output "region" {
  description = "Region the resource resides in.\nNote that the ARNs for some resources do not require a region, so this component might be omitted."
  value       = aws_arn.aws_arn.region
}
output "service" {
  description = "The service namespace that identifies the AWS product."
  value       = aws_arn.aws_arn.service
}
output "account" {
  description = "The ID of the AWS account that owns the resource, without the hyphens."
  value       = aws_arn.aws_arn.account
}
output "arn" {
  description = "(Required) ARN to parse.In addition to all arguments above, the following attributes are exported:"
  value       = aws_arn.aws_arn.arn
}
output "partition" {
  description = "Partition that the resource is in."
  value       = aws_arn.aws_arn.partition
}
output "account" {
  description = "The ID of the AWS account that owns the resource, without the hyphens."
  value       = aws_arn.aws_arn.account
}
output "partition" {
  description = "Partition that the resource is in."
  value       = aws_arn.aws_arn.partition
}
output "region" {
  description = "Region the resource resides in.\nNote that the ARNs for some resources do not require a region, so this component might be omitted."
  value       = aws_arn.aws_arn.region
}
output "service" {
  description = "The service namespace that identifies the AWS product."
  value       = aws_arn.aws_arn.service
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
