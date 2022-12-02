datasource "aws_location_geofence_collection" "aws_location_geofence_collection" {
  kms_key_id      = var.kms_key_id
  tags            = var.tags
  collection_arn  = var.collection_arn
  collection_name = var.collection_name
  create_time     = var.create_time
  description     = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "collection_name" {
  description = "(Required) Name of the geofence collection.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create_time" {
  description = "Timestamp for when the geofence collection resource was created in ISO 8601 format."
  type        = string
}
variable "description" {
  description = "Optional description of the geofence collection resource."
  type        = string
}
variable "kms_key_id" {
  description = "Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags for the geofence collection."
  type        = string
}
variable "collection_arn" {
  description = "ARN for the geofence collection resource. Used when you need to specify a resource across all AWS."
  type        = string
}
output "collection_name" {
  description = "(Required) Name of the geofence collection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_location_geofence_collection.aws_location_geofence_collection.collection_name
}
output "create_time" {
  description = "Timestamp for when the geofence collection resource was created in ISO 8601 format."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.create_time
}
output "description" {
  description = "Optional description of the geofence collection resource."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.description
}
output "kms_key_id" {
  description = "Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.kms_key_id
}
output "tags" {
  description = "Key-value map of resource tags for the geofence collection."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.tags
}
output "collection_arn" {
  description = "ARN for the geofence collection resource. Used when you need to specify a resource across all AWS."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.collection_arn
}
output "collection_arn" {
  description = "ARN for the geofence collection resource. Used when you need to specify a resource across all AWS."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.collection_arn
}
output "create_time" {
  description = "Timestamp for when the geofence collection resource was created in ISO 8601 format."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.create_time
}
output "description" {
  description = "Optional description of the geofence collection resource."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.description
}
output "kms_key_id" {
  description = "Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.kms_key_id
}
output "tags" {
  description = "Key-value map of resource tags for the geofence collection."
  value       = aws_location_geofence_collection.aws_location_geofence_collection.tags
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
