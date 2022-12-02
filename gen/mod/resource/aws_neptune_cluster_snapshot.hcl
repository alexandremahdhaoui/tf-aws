resource "aws_neptune_cluster_snapshot" "aws_neptune_cluster_snapshot" {
  allocated_storage                     = var.allocated_storage
  storage_encrypted                     = var.storage_encrypted
  vpc_id                                = var.vpc_id
  availability_zones                    = var.availability_zones
  db_cluster_snapshot_arn               = var.db_cluster_snapshot_arn
  engine                                = var.engine
  kms_key_id                            = var.kms_key_id
  db_cluster_identifier                 = var.db_cluster_identifier
  db_cluster_snapshot_identifier        = var.db_cluster_snapshot_identifier
  source_db_cluster_snapshot_identifier = var.source_db_cluster_snapshot_identifier
  engine_version                        = var.engine_version
  license_model                         = var.license_model
  port                                  = var.port
  status                                = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID associated with the DB cluster snapshot.TimeoutsConfiguration options:"
  type        = string
}
variable "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  type        = string
}
variable "db_cluster_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB Cluster Snapshot."
  type        = string
}
variable "engine" {
  description = "Specifies the name of the database engine."
  type        = string
}
variable "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  type        = string
}
variable "storage_encrypted" {
  description = "Specifies whether the DB cluster snapshot is encrypted."
  type        = string
}
variable "db_cluster_identifier" {
  description = "(Required) The DB Cluster Identifier from which to take the snapshot."
  type        = string
}
variable "db_cluster_snapshot_identifier" {
  description = "(Required) The Identifier for the snapshot.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source_db_cluster_snapshot_identifier" {
  description = "The DB Cluster Snapshot Arn that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  type        = string
}
variable "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  type        = string
}
variable "license_model" {
  description = "License model information for the restored DB cluster."
  type        = string
}
variable "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  type        = string
}
variable "status" {
  description = "The status of this DB Cluster Snapshot."
  type        = string
}
variable "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
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
output "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.availability_zones
}
output "db_cluster_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB Cluster Snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.db_cluster_snapshot_arn
}
output "engine" {
  description = "Specifies the name of the database engine."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.engine
}
output "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.kms_key_id
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster snapshot is encrypted."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.storage_encrypted
}
output "vpc_id" {
  description = "The VPC ID associated with the DB cluster snapshot.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.vpc_id
}
output "db_cluster_identifier" {
  description = "(Required) The DB Cluster Identifier from which to take the snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.db_cluster_identifier
}
output "db_cluster_snapshot_identifier" {
  description = "(Required) The Identifier for the snapshot.In addition to all arguments above, the following attributes are exported:"
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.db_cluster_snapshot_identifier
}
output "source_db_cluster_snapshot_identifier" {
  description = "The DB Cluster Snapshot Arn that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.source_db_cluster_snapshot_identifier
}
output "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.engine_version
}
output "license_model" {
  description = "License model information for the restored DB cluster."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.license_model
}
output "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.port
}
output "status" {
  description = "The status of this DB Cluster Snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.status
}
output "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.allocated_storage
}
output "license_model" {
  description = "License model information for the restored DB cluster."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.license_model
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster snapshot is encrypted."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.storage_encrypted
}
output "vpc_id" {
  description = "The VPC ID associated with the DB cluster snapshot.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.vpc_id
}
output "allocated_storage" {
  description = "Specifies the allocated storage size in gigabytes (GB)."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.allocated_storage
}
output "create" {
  description = "(Default 20m)"
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.create
}
output "db_cluster_snapshot_arn" {
  description = "The Amazon Resource Name (ARN) for the DB Cluster Snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.db_cluster_snapshot_arn
}
output "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.kms_key_id
}
output "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.port
}
output "source_db_cluster_snapshot_identifier" {
  description = "The DB Cluster Snapshot Arn that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.source_db_cluster_snapshot_identifier
}
output "status" {
  description = "The status of this DB Cluster Snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.status
}
output "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.availability_zones
}
output "engine" {
  description = "Specifies the name of the database engine."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.engine
}
output "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  value       = aws_neptune_cluster_snapshot.aws_neptune_cluster_snapshot.engine_version
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
      "kind/name"                   = "aws_neptune_cluster_snapshot"
      "kind/version"                = "v0.1.0"
    }
  }
}
