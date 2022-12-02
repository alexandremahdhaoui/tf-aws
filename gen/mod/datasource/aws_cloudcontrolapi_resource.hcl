datasource "aws_cloudcontrolapi_resource" "aws_cloudcontrolapi_resource" {
  type_version_id = var.type_version_id
  identifier      = var.identifier
  role_arn        = var.role_arn
  type_name       = var.type_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "identifier" {
  description = "(Required) Identifier of the CloudFormation resource type. For example, vpc-12345678."
  type        = string
}
variable "role_arn" {
  description = "(Optional) ARN of the IAM Role to assume for operations."
  type        = string
  default     = ""
}
variable "type_name" {
  description = "(Required) CloudFormation resource type name. For example, AWS::EC2::VPC."
  type        = string
}
variable "type_version_id" {
  description = "(Optional) Identifier of the CloudFormation resource type version.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
output "identifier" {
  description = "(Required) Identifier of the CloudFormation resource type. For example, vpc-12345678."
  value       = aws_cloudcontrolapi_resource.aws_cloudcontrolapi_resource.identifier
}
output "role_arn" {
  description = "(Optional) ARN of the IAM Role to assume for operations."
  value       = aws_cloudcontrolapi_resource.aws_cloudcontrolapi_resource.role_arn
}
output "type_name" {
  description = "(Required) CloudFormation resource type name. For example, AWS::EC2::VPC."
  value       = aws_cloudcontrolapi_resource.aws_cloudcontrolapi_resource.type_name
}
output "type_version_id" {
  description = "(Optional) Identifier of the CloudFormation resource type version.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudcontrolapi_resource.aws_cloudcontrolapi_resource.type_version_id
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
