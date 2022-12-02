datasource "aws_db_cluster_snapshot" "aws_db_cluster_snapshot" {
  storage_encrypted                     = var.storage_encrypted
  vpc_id                                = var.vpc_id
  availability_zones                    = var.availability_zones
  db_cluster_snapshot_identifier        = var.db_cluster_snapshot_identifier
  engine_version                        = var.engine_version
  port                                  = var.port
  engine                                = var.engine
  kms_key_id                            = var.kms_key_id
  snapshot_create_time                  = var.snapshot_create_time
  source_db_cluster_snapshot_identifier = var.source_db_cluster_snapshot_identifier
  db_cluster_snapshot_arn               = var.db_cluster_snapshot_arn
  id                                    = var.id
  license_model                         = var.license_model
  snapshot_type                         = var.snapshot_type
  most_recent                           = var.most_recent
  status                                = var.status
  allocated_storage                     = var.allocated_storage
  db_cluster_identifier                 = var.db_cluster_identifier
  include_public                        = var.include_public
  include_shared                        = var.include_shared
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  type        = string
}
variable "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  type        = string
}
variable "storage_encrypted" {
  description = "Whether the DB cluster snapshot is encrypted."
  type        = string
}
variable "vpc_id" {
  description = "VPC ID associated with the DB cluster snapshot."
  type        = string
}
variable "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  type        = string
}
variable "db_cluster_snapshot_identifier" {
  description = "(Optional) Returns information on a specific snapshot_id."
  type        = string
  default     = ""
}
variable "snapshot_create_time" {
  description = "Time when the snapshot was taken, in Universal Coordinated Time (UTC)."
  type        = string
}
variable "source_db_cluster_snapshot_identifier" {
  description = "DB Cluster Snapshot ARN that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  type        = string
}
variable "engine" {
  description = "Name of the database engine."
  type        = string
}
variable "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  type        = string
}
variable "license_model" {
  description = "License model information for the restored DB cluster."
  type        = string
}
variable "snapshot_type" {
  description = "(Optional) Type of snapshots to be returned. If you don't specify a SnapshotType\nvalue, then both automated and manual DB cluster snapshots are returned. Shared and public DB Cluster Snapshots are not\nincluded in the returned results by default. Possible values are, automated, manual, shared, public and awsbackup."
  type        = string
  default     = ""
}
variable "db_cluster_snapshot_arn" {
  description = "The ARN for the DB Cluster Snapshot."
  type        = string
}
variable "id" {
  description = "Snapshot ID."
  type        = string
}
variable "include_public" {
  description = "(Optional) Set this value to true to include manual DB Cluster Snapshots that are public and can be\ncopied or restored by any AWS account, otherwise set this value to false. The default is false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "include_shared" {
  description = "(Optional) Set this value to true to include shared manual DB Cluster Snapshots from other\nAWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.\nThe default is false."
  type        = string
  default     = ""
}
variable "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent Snapshot."
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of this DB Cluster Snapshot."
  type        = string
}
variable "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  type        = string
}
variable "db_cluster_identifier" {
  description = "Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from."
  type        = string
}
output "engine" {
  description = "Name of the database engine."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.engine
}
output "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.kms_key_id
}
output "snapshot_create_time" {
  description = "Time when the snapshot was taken, in Universal Coordinated Time (UTC)."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.snapshot_create_time
}
output "source_db_cluster_snapshot_identifier" {
  description = "DB Cluster Snapshot ARN that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.source_db_cluster_snapshot_identifier
}
output "db_cluster_snapshot_arn" {
  description = "The ARN for the DB Cluster Snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.db_cluster_snapshot_arn
}
output "id" {
  description = "Snapshot ID."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.id
}
output "license_model" {
  description = "License model information for the restored DB cluster."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.license_model
}
output "snapshot_type" {
  description = "(Optional) Type of snapshots to be returned. If you don't specify a SnapshotType\nvalue, then both automated and manual DB cluster snapshots are returned. Shared and public DB Cluster Snapshots are not\nincluded in the returned results by default. Possible values are, automated, manual, shared, public and awsbackup."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.snapshot_type
}
output "status" {
  description = "Status of this DB Cluster Snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.status
}
output "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.allocated_storage
}
output "db_cluster_identifier" {
  description = "Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.db_cluster_identifier
}
output "include_public" {
  description = "(Optional) Set this value to true to include manual DB Cluster Snapshots that are public and can be\ncopied or restored by any AWS account, otherwise set this value to false. The default is false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.include_public
}
output "include_shared" {
  description = "(Optional) Set this value to true to include shared manual DB Cluster Snapshots from other\nAWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.\nThe default is false."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.include_shared
}
output "most_recent" {
  description = "(Optional) If more than one result is returned, use the most recent Snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.most_recent
}
output "vpc_id" {
  description = "VPC ID associated with the DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.vpc_id
}
output "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.availability_zones
}
output "db_cluster_snapshot_identifier" {
  description = "(Optional) Returns information on a specific snapshot_id."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.db_cluster_snapshot_identifier
}
output "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.engine_version
}
output "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.port
}
output "storage_encrypted" {
  description = "Whether the DB cluster snapshot is encrypted."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.storage_encrypted
}
output "db_cluster_snapshot_arn" {
  description = "The ARN for the DB Cluster Snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.db_cluster_snapshot_arn
}
output "source_db_cluster_snapshot_identifier" {
  description = "DB Cluster Snapshot ARN that the DB Cluster Snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.source_db_cluster_snapshot_identifier
}
output "vpc_id" {
  description = "VPC ID associated with the DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.vpc_id
}
output "db_cluster_identifier" {
  description = "Specifies the DB cluster identifier of the DB cluster that this DB cluster snapshot was created from."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.db_cluster_identifier
}
output "license_model" {
  description = "License model information for the restored DB cluster."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.license_model
}
output "port" {
  description = "Port that the DB cluster was listening on at the time of the snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.port
}
output "snapshot_create_time" {
  description = "Time when the snapshot was taken, in Universal Coordinated Time (UTC)."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.snapshot_create_time
}
output "storage_encrypted" {
  description = "Whether the DB cluster snapshot is encrypted."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.storage_encrypted
}
output "availability_zones" {
  description = "List of EC2 Availability Zones that instances in the DB cluster snapshot can be restored in."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.availability_zones
}
output "engine" {
  description = "Name of the database engine."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.engine
}
output "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.allocated_storage
}
output "engine_version" {
  description = "Version of the database engine for this DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.engine_version
}
output "id" {
  description = "Snapshot ID."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.id
}
output "kms_key_id" {
  description = "If storage_encrypted is true, the AWS KMS key identifier for the encrypted DB cluster snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.kms_key_id
}
output "status" {
  description = "Status of this DB Cluster Snapshot."
  value       = aws_db_cluster_snapshot.aws_db_cluster_snapshot.status
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
