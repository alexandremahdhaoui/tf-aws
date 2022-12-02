datasource "aws_key_pair" "aws_key_pair" {
  arn         = var.arn
  create_time = var.create_time
  public_key  = var.public_key
  filter      = var.filter
  fingerprint = var.fingerprint
  id          = var.id
  key_type    = var.key_type
  name        = var.name
  tags        = var.tags
  values      = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Key Pair."
  type        = string
}
variable "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
  type        = string
}
variable "public_key" {
  description = "Public key material."
  type        = string
}
variable "key_type" {
  description = "Type of key pair."
  type        = string
}
variable "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeKeyPairs API Reference."
  type        = string
}
variable "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  type        = string
}
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filter" {
  description = " configuration block:"
  type        = string
}
variable "fingerprint" {
  description = "SHA-1 digest of the DER encoded private key."
  type        = string
}
variable "id" {
  description = "ID of the Key Pair."
  type        = string
}
output "public_key" {
  description = "Public key material."
  value       = aws_key_pair.aws_key_pair.public_key
}
output "arn" {
  description = "ARN of the Key Pair."
  value       = aws_key_pair.aws_key_pair.arn
}
output "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
  value       = aws_key_pair.aws_key_pair.create_time
}
output "id" {
  description = "ID of the Key Pair."
  value       = aws_key_pair.aws_key_pair.id
}
output "key_type" {
  description = "Type of key pair."
  value       = aws_key_pair.aws_key_pair.key_type
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeKeyPairs API Reference."
  value       = aws_key_pair.aws_key_pair.name
}
output "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  value       = aws_key_pair.aws_key_pair.tags
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_key_pair.aws_key_pair.values
}
output "filter" {
  description = " configuration block:"
  value       = aws_key_pair.aws_key_pair.filter
}
output "fingerprint" {
  description = "SHA-1 digest of the DER encoded private key."
  value       = aws_key_pair.aws_key_pair.fingerprint
}
output "fingerprint" {
  description = "SHA-1 digest of the DER encoded private key."
  value       = aws_key_pair.aws_key_pair.fingerprint
}
output "id" {
  description = "ID of the Key Pair."
  value       = aws_key_pair.aws_key_pair.id
}
output "key_type" {
  description = "Type of key pair."
  value       = aws_key_pair.aws_key_pair.key_type
}
output "public_key" {
  description = "Public key material."
  value       = aws_key_pair.aws_key_pair.public_key
}
output "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  value       = aws_key_pair.aws_key_pair.tags
}
output "arn" {
  description = "ARN of the Key Pair."
  value       = aws_key_pair.aws_key_pair.arn
}
output "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
  value       = aws_key_pair.aws_key_pair.create_time
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
