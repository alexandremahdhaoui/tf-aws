resource "aws_db_snapshot" "aws_db_snapshot" {
  encrypted                     = var.encrypted
  iops                          = var.iops
  storage_type                  = var.storage_type
  tags_all                      = var.tags_all
  db_snapshot_identifier        = var.db_snapshot_identifier
  engine_version                = var.engine_version
  vpc_id                        = var.vpc_id
  availability_zone             = var.availability_zone
  db_snapshot_arn               = var.db_snapshot_arn
  engine                        = var.engine
  license_model                 = var.license_model
  tags                          = var.tags
  status                        = var.status
  allocated_storage             = var.allocated_storage
  db_instance_identifier        = var.db_instance_identifier
  kms_key_id                    = var.kms_key_id
  option_group_name             = var.option_group_name
  source_db_snapshot_identifier = var.source_db_snapshot_identifier
  source_region                 = var.source_region
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "availability_zone" {
  description = "Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  type        = string
}
variable "db_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB snapshot."
  type        = string
}
variable "engine" {
  description = "Specifies the name of the database engine."
  type        = string
}
variable "license_model" {
  description = "License model information for the restored DB instance."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
  type        = string
}
variable "db_instance_identifier" {
  description = "(Required) The DB Instance Identifier from which to take the snapshot."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  type        = string
}
variable "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  type        = string
}
variable "source_db_snapshot_identifier" {
  description = "The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  type        = string
}
variable "source_region" {
  description = "The region that the DB snapshot was created in or copied from."
  type        = string
}
variable "status" {
  description = "Specifies the status of this DB snapshot."
  type        = string
}
variable "encrypted" {
  description = "Specifies whether the DB snapshot is encrypted."
  type        = string
}
variable "iops" {
  description = "Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  type        = string
}
variable "storage_type" {
  description = "Specifies the storage type associated with DB snapshot."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "db_snapshot_identifier" {
  description = "(Required) The Identifier for the snapshot."
  type        = string
}
variable "engine_version" {
  description = "Specifies the version of the database engine."
  type        = string
}
variable "vpc_id" {
  description = "Provides the VPC ID associated with the DB snapshot.TimeoutsConfiguration options:"
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
output "source_region" {
  description = "The region that the DB snapshot was created in or copied from."
  value       = aws_db_snapshot.aws_db_snapshot.source_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Specifies the status of this DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
  value       = aws_db_snapshot.aws_db_snapshot.allocated_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_instance_identifier" {
  description = "(Required) The DB Instance Identifier from which to take the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_instance_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  value       = aws_db_snapshot.aws_db_snapshot.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.option_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_db_snapshot_identifier" {
  description = "The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_snapshot.aws_db_snapshot.source_db_snapshot_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Specifies whether the DB snapshot is encrypted."
  value       = aws_db_snapshot.aws_db_snapshot.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "Specifies the storage type associated with DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_db_snapshot.aws_db_snapshot.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_snapshot_identifier" {
  description = "(Required) The Identifier for the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Specifies the version of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Provides the VPC ID associated with the DB snapshot.TimeoutsConfiguration options:"
  value       = aws_db_snapshot.aws_db_snapshot.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = "Specifies the name of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "license_model" {
  description = "License model information for the restored DB instance."
  value       = aws_db_snapshot.aws_db_snapshot.license_model
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_snapshot.aws_db_snapshot.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "Specifies the name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = "Specifies the name of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "Specifies the Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Specifies the status of this DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 20m)"
  value       = aws_db_snapshot.aws_db_snapshot.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "Specifies the storage type associated with DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
  value       = aws_db_snapshot.aws_db_snapshot.allocated_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Specifies the version of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key."
  value       = aws_db_snapshot.aws_db_snapshot.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Specifies whether the DB snapshot is encrypted."
  value       = aws_db_snapshot.aws_db_snapshot.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_db_snapshot.aws_db_snapshot.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Provides the VPC ID associated with the DB snapshot.TimeoutsConfiguration options:"
  value       = aws_db_snapshot.aws_db_snapshot.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "license_model" {
  description = "License model information for the restored DB instance."
  value       = aws_db_snapshot.aws_db_snapshot.license_model
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.option_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_db_snapshot_identifier" {
  description = "The DB snapshot Arn that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_snapshot.aws_db_snapshot.source_db_snapshot_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_region" {
  description = "The region that the DB snapshot was created in or copied from."
  value       = aws_db_snapshot.aws_db_snapshot.source_region
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
      "kind/name"                   = "aws_db_snapshot"
      "kind/version"                = "v0.1.0"
    }
  }
}
