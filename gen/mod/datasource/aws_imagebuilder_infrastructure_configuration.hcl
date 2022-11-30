datasource "aws_imagebuilder_infrastructure_configuration" "aws_imagebuilder_infrastructure_configuration" {
  s3_logs                     = var.s3_logs
  date_created                = var.date_created
  description                 = var.description
  instance_metadata_options   = var.instance_metadata_options
  instance_profile_name       = var.instance_profile_name
  logging                     = var.logging
  resource_tags               = var.resource_tags
  s3_bucket_name              = var.s3_bucket_name
  http_tokens                 = var.http_tokens
  name                        = var.name
  arn                         = var.arn
  security_group_ids          = var.security_group_ids
  subnet_id                   = var.subnet_id
  http_put_response_hop_limit = var.http_put_response_hop_limit
  instance_types              = var.instance_types
  key_pair                    = var.key_pair
  s3_key_prefix               = var.s3_key_prefix
  sns_topic_arn               = var.sns_topic_arn
  tags                        = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
variable "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  type        = string
}
variable "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  type        = string
}
variable "logging" {
  description = "Nested list of logging settings.\n"
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
variable "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  type        = string
}
variable "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  type        = string
}
variable "name" {
  description = "Name of the infrastructure configuration."
  type        = string
}
variable "arn" {
  description = "(Required) ARN of the infrastructure configuration.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  type        = string
}
variable "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
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
variable "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  type        = string
}
variable "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  type        = string
}
output "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) ARN of the infrastructure configuration.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.sns_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_types" {
  description = "Set of EC2 Instance Types associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_pair" {
  description = "Name of the EC2 Key Pair associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.key_pair
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_key_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging" {
  description = "Nested list of logging settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.logging
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_tags" {
  description = "Key-value map of resource tags for the infrastructure created by the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.resource_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_bucket_name" {
  description = "Name of the S3 Bucket for logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the infrastructure configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_profile_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "Identifier of the EC2 Subnet associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "Number of hops that an instance can traverse to reach its destonation."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_tokens" {
  description = "Whether a signed token is required for instance metadata retrieval requests."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_metadata_options" {
  description = "Nested list of instance metadata options for the HTTP requests that pipeline builds use to launch EC2 build and test instances.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_profile_name" {
  description = "Name of the IAM Instance Profile associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_profile_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging" {
  description = "Nested list of logging settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.logging
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_tags" {
  description = "Key-value map of resource tags for the infrastructure created by the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.resource_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_topic_arn" {
  description = "ARN of the SNS Topic associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.sns_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the infrastructure configuration was updated."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_types" {
  description = "Set of EC2 Instance Types associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.instance_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_bucket_name" {
  description = "Name of the S3 Bucket for logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_key_prefix" {
  description = "Key prefix for S3 Bucket logging."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_key_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_logs" {
  description = "Nested list of S3 logs settings.\n"
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.s3_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags for the infrastructure configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_pair" {
  description = "Name of the EC2 Key Pair associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.key_pair
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Set of EC2 Security Group identifiers associated with the configuration."
  value       = aws_imagebuilder_infrastructure_configuration.aws_imagebuilder_infrastructure_configuration.security_group_ids
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
