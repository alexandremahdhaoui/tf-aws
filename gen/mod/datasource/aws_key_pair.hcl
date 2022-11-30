datasource "aws_key_pair" "aws_key_pair" {
  filter      = var.filter
  fingerprint = var.fingerprint
  public_key  = var.public_key
  tags        = var.tags
  create_time = var.create_time
  id          = var.id
  key_type    = var.key_type
  name        = var.name
  values      = var.values
  arn         = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Key Pair."
  type        = string
}
variable "id" {
  description = "ID of the Key Pair."
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
variable "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
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
variable "public_key" {
  description = "Public key material."
  type        = string
}
variable "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  type        = string
}
output "name" {
  description = "(Required) Name of the filter field. Valid values can be found in the EC2 DescribeKeyPairs API Reference."
  value       = aws_key_pair.aws_key_pair.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "(Required) Set of values that are accepted for the given filter field. Results will be selected if any given value matches.In addition to all arguments above, the following attributes are exported:"
  value       = aws_key_pair.aws_key_pair.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Key Pair."
  value       = aws_key_pair.aws_key_pair.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the Key Pair."
  value       = aws_key_pair.aws_key_pair.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_type" {
  description = "Type of key pair."
  value       = aws_key_pair.aws_key_pair.key_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "Public key material."
  value       = aws_key_pair.aws_key_pair.public_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  value       = aws_key_pair.aws_key_pair.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
  value       = aws_key_pair.aws_key_pair.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = " configuration block:"
  value       = aws_key_pair.aws_key_pair.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fingerprint" {
  description = "SHA-1 digest of the DER encoded private key."
  value       = aws_key_pair.aws_key_pair.fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_type" {
  description = "Type of key pair."
  value       = aws_key_pair.aws_key_pair.key_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "Public key material."
  value       = aws_key_pair.aws_key_pair.public_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Any tags assigned to the Key Pair.TimeoutsConfiguration options:"
  value       = aws_key_pair.aws_key_pair.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Key Pair."
  value       = aws_key_pair.aws_key_pair.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "Timestamp for when the key pair was created in ISO 8601 format."
  value       = aws_key_pair.aws_key_pair.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fingerprint" {
  description = "SHA-1 digest of the DER encoded private key."
  value       = aws_key_pair.aws_key_pair.fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the Key Pair."
  value       = aws_key_pair.aws_key_pair.id
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
