datasource "aws_codestarconnections_connection" "aws_codestarconnections_connection" {
  arn               = var.arn
  connection_status = var.connection_status
  host_arn          = var.host_arn
  id                = var.id
  name              = var.name
  provider_type     = var.provider_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "connection_status" {
  description = "CodeStar Connection status. Possible values are PENDING, AVAILABLE and ERROR."
  type        = string
}
variable "host_arn" {
  description = "ARN of the host associated with the connection."
  type        = string
}
variable "id" {
  description = "CodeStar Connection ARN."
  type        = string
}
variable "name" {
  description = "Name of the CodeStar Connection. The name is unique in the calling AWS account."
  type        = string
}
variable "provider_type" {
  description = "Name of the external provider where your third-party code repository is configured. Possible values are Bitbucket and GitHub. For connections to a GitHub Enterprise Server instance, you must create an aws_codestarconnections_host resource and use host_arn instead."
  type        = string
}
variable "arn" {
  description = "(Optional) CodeStar Connection ARN."
  type        = string
  default     = ""
}
output "arn" {
  description = "(Optional) CodeStar Connection ARN."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.arn
}
output "connection_status" {
  description = "CodeStar Connection status. Possible values are PENDING, AVAILABLE and ERROR."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.connection_status
}
output "host_arn" {
  description = "ARN of the host associated with the connection."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.host_arn
}
output "id" {
  description = "CodeStar Connection ARN."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.id
}
output "name" {
  description = "Name of the CodeStar Connection. The name is unique in the calling AWS account."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.name
}
output "provider_type" {
  description = "Name of the external provider where your third-party code repository is configured. Possible values are Bitbucket and GitHub. For connections to a GitHub Enterprise Server instance, you must create an aws_codestarconnections_host resource and use host_arn instead."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.provider_type
}
output "connection_status" {
  description = "CodeStar Connection status. Possible values are PENDING, AVAILABLE and ERROR."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.connection_status
}
output "host_arn" {
  description = "ARN of the host associated with the connection."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.host_arn
}
output "id" {
  description = "CodeStar Connection ARN."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.id
}
output "name" {
  description = "Name of the CodeStar Connection. The name is unique in the calling AWS account."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.name
}
output "provider_type" {
  description = "Name of the external provider where your third-party code repository is configured. Possible values are Bitbucket and GitHub. For connections to a GitHub Enterprise Server instance, you must create an aws_codestarconnections_host resource and use host_arn instead."
  value       = aws_codestarconnections_connection.aws_codestarconnections_connection.provider_type
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
