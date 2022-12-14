datasource "aws_imagebuilder_infrastructure_configuration" "aws_imagebuilder_infrastructure_configuration" {
  tags                        = var.tags
  instance_types              = var.instance_types
  key_pair                    = var.key_pair
  logging                     = var.logging
  name                        = var.name
  s3_logs                     = var.s3_logs
  sns_topic_arn               = var.sns_topic_arn
  subnet_id                   = var.subnet_id
  date_created                = var.date_created
  description                 = var.description
  http_put_response_hop_limit = var.http_put_response_hop_limit
  http_tokens                 = var.http_tokens
  instance_metadata_options   = var.instance_metadata_options
  s3_key_prefix               = var.s3_key_prefix
  arn                         = var.arn
  instance_profile_name       = var.instance_profile_name
  resource_tags               = var.resource_tags
  s3_bucket_name              = var.s3_bucket_name
  security_group_ids          = var.security_group_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the infrastructure configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  type        = string
}
variable "resource_tags" {
  description = "Key-value map of resource tags for the infrastructure created by the infrastructure configuration."
  type        = string
}
variable "s3_bucket_name" {
  description = "Name of the S3 Bucket for logging."
  type        = string
}
variable "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  type        = string
}
variable "instance_types" {
  description = "Set of EC2 Instance Types associated with the configuration."
  type        = string
}
variable "key_pair" {
  description = "Name of the EC2 Key Pair associated with the configuration."
  type        = string
}
variable "logging" {
  description = "Nested list of logging settings.\n"
  type        = string
}
variable "name" {
  description = "Name of the infrastructure configuration."
  type        = string
}
variable "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  type        = string
}
variable "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  type        = string
}
variable "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  type        = string
}
variable "date_created" {
  description = "Date the infrastructure configuration was updated."
  type        = string
}
variable "description" {
  description = "Description of the infrastructure configuration."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
  type        = string
}
variable "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  type        = string
}
variable "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  type        = string
}
variable "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  type        = string
}
output "s3_bucket_name" {
  description = "Name of the S3 Bucket for logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_bucket_name
}
output "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.security_group_ids
}
output "arn" {
  description = "(Required) ARN of the infrastructure configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.arn
}
output "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_profile_name
}
output "resource_tags" {
  description = "Key-value map of resource tags for the infrastructure created by the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.resource_tags
}
output "name" {
  description = "Name of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.name
}
output "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_logs
}
output "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.sns_topic_arn
}
output "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.subnet_id
}
output "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags
}
output "instance_types" {
  description = "Set of EC2 Instance Types associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_types
}
output "key_pair" {
  description = "Name of the EC2 Key Pair associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.key_pair
}
output "logging" {
  description = "Nested list of logging settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.logging
}
output "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_tokens
}
output "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_metadata_options
}
output "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_key_prefix
}
output "date_created" {
  description = "Date the infrastructure configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "description" {
  description = "Description of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.description
}
output "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_put_response_hop_limit
}
output "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_metadata_options
}
output "instance_types" {
  description = "Set of EC2 Instance Types associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_types
}
output "name" {
  description = "Name of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.name
}
output "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.security_group_ids
}
output "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_put_response_hop_limit
}
output "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_profile_name
}
output "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_logs
}
output "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.subnet_id
}
output "description" {
  description = "Description of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.description
}
output "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_tokens
}
output "key_pair" {
  description = "Name of the EC2 Key Pair associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.key_pair
}
output "logging" {
  description = "Nested list of logging settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.logging
}
output "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_key_prefix
}
output "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.sns_topic_arn
}
output "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags
}
output "date_created" {
  description = "Date the infrastructure configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "s3_bucket_name" {
  description = "Name of the S3 Bucket for logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_bucket_name
}
output "resource_tags" {
  description = "Key-value map of resource tags for the infrastructure created by the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.resource_tags
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
