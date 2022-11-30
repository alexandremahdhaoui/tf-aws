resource "aws_efs_replication_configuration" "aws_efs_replication_configuration" {
  original_source_file_system_arn = var.original_source_file_system_arn
  region                          = var.region
  source_file_system_id           = var.source_file_system_id
  create                          = var.create
  destination[0].file_system_id   = var.destination[0].file_system_id
  destination[0].status           = var.destination[0].status
  kms_key_id                      = var.kms_key_id
  source_file_system_region       = var.source_file_system_region
  availability_zone_name          = var.availability_zone_name
  creation_time                   = var.creation_time
  destination                     = var.destination
  source_file_system_arn          = var.source_file_system_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "creation_time" {
  description = "When the replication configuration was created."
  type        = string
}
variable "destination" {
  description = "(Required) A destination configuration block (documented below).Destination ArgumentsFor strongdestination the following attributes are supported:"
  type        = string
}
variable "source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the current source file system in the replication configuration."
  type        = string
}
variable "source_file_system_region" {
  description = "The AWS Region in which the source Amazon EFS file system is located."
  type        = string
}
variable "availability_zone_name" {
  description = "(Optional) The availability zone in which the replica should be created. If specified, the replica will be created with One Zone storage. If omitted, regional storage will be used."
  type        = string
}
variable "destination[0].file_system_id" {
  description = "The fs ID of the replica."
  type        = string
}
variable "destination[0].status" {
  description = "The status of the replication.TimeoutsConfiguration options:"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The Key ID, ARN, alias, or alias ARN of the KMS key that should be used to encrypt the replica file system. If omitted, the default KMS key for EFS /aws/elasticfilesystem will be used."
  type        = string
}
variable "original_source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration."
  type        = string
}
variable "region" {
  description = "(Optional) The region in which the replica should be created.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source_file_system_id" {
  description = "(Required) The ID of the file system that is to be replicated."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "tag_instance_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_instance_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_id" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_namespace" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_region" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_role" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_stage" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_domain" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_resource_created_by_service" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_name" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_service_parent_version" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_owner" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_project" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_sla" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_tenant" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_business_unit" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_date_time" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_in" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_opt_out" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_automation_security" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_author" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_locked" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_mutex_timestamp" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_compliance" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
variable "tag_security_confidentiality" {
  description = "Tag should comply to https://gitlab.com/alexandre.mahdhaoui/spec-tag"
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination[0].file_system_id" {
  description = "The fs ID of the replica."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.destination[0].file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination[0].status" {
  description = "The status of the replication.TimeoutsConfiguration options:"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.destination[0].status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) The Key ID, ARN, alias, or alias ARN of the KMS key that should be used to encrypt the replica file system. If omitted, the default KMS key for EFS /aws/elasticfilesystem will be used."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "original_source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.original_source_file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "(Optional) The region in which the replica should be created.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_file_system_id" {
  description = "(Required) The ID of the file system that is to be replicated."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.source_file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone_name" {
  description = "(Optional) The availability zone in which the replica should be created. If specified, the replica will be created with One Zone storage. If omitted, regional storage will be used."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.availability_zone_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "When the replication configuration was created."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination" {
  description = "(Required) A destination configuration block (documented below).Destination ArgumentsFor strongdestination the following attributes are supported:"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the current source file system in the replication configuration."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.source_file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_file_system_region" {
  description = "The AWS Region in which the source Amazon EFS file system is located."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.source_file_system_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "original_source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the original source Amazon EFS file system in the replication configuration."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.original_source_file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_file_system_arn" {
  description = "The Amazon Resource Name (ARN) of the current source file system in the replication configuration."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.source_file_system_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_file_system_region" {
  description = "The AWS Region in which the source Amazon EFS file system is located."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.source_file_system_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "When the replication configuration was created."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination[0].file_system_id" {
  description = "The fs ID of the replica."
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.destination[0].file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination[0].status" {
  description = "The status of the replication.TimeoutsConfiguration options:"
  value       = aws_efs_replication_configuration.aws_efs_replication_configuration.destination[0].status
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
  default_tags {
    tags {
      "instance/id"                 = var.tag_instance_id
      "instance/name"               = var.tag_instance_name
      "instance/version"            = var.tag_instance_version
      "resource/domain"             = var.tag_resource_domain
      "resource/id"                 = var.tag_resource_id
      "resource/name"               = var.tag_resource_name
      "resource/namespace"          = var.tag_resource_namespace
      "resource/region"             = var.tag_resource_region
      "resource/role"               = var.tag_resource_role
      "resource/stage"              = var.tag_resource_stage
      "resource/created-by/domain"  = var.tag_resource_created_by_domain
      "resource/created-by/service" = var.tag_resource_created_by_service
      "service/name"                = var.tag_service_name
      "service/version"             = var.tag_service_version
      "service/parent/name"         = var.tag_service_parent_name
      "service/parent/version"      = var.tag_service_parent_version
      "business/owner"              = var.tag_business_owner
      "business/project"            = var.tag_business_project
      "business/sla"                = var.tag_business_sla
      "business/tenant"             = var.tag_business_tenant
      "business/unit"               = var.tag_business_unit
      "automation/date-time"        = var.tag_automation_date_time
      "automation/opt-in"           = var.tag_automation_opt_in
      "automation/opt-out"          = var.tag_automation_opt_out
      "automation/security"         = var.tag_automation_security
      "mutex/author"                = var.tag_mutex_author
      "mutex/locked"                = var.tag_mutex_locked
      "mutex/timestamp"             = var.tag_mutex_timestamp
      "security/compliance"         = var.tag_security_compliance
      "security/confidentiality"    = var.tag_security_confidentiality
      "kind/api"                    = "aws.terraform"
      "kind/issuer"                 = "alexandre.mahdhaoui.com"
      "kind/kind"                   = "TerraformResource"
      "kind/name"                   = "aws_efs_replication_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
