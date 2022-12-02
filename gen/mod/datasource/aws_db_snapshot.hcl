datasource "aws_db_snapshot" "aws_db_snapshot" {
  option_group_name             = var.option_group_name
  availability_zone             = var.availability_zone
  db_snapshot_identifier        = var.db_snapshot_identifier
  engine                        = var.engine
  engine_version                = var.engine_version
  id                            = var.id
  allocated_storage             = var.allocated_storage
  db_snapshot_arn               = var.db_snapshot_arn
  encrypted                     = var.encrypted
  include_public                = var.include_public
  most_recent                   = var.most_recent
  source_region                 = var.source_region
  source_db_snapshot_identifier = var.source_db_snapshot_identifier
  status                        = var.status
  db_instance_identifier        = var.db_instance_identifier
  include_shared                = var.include_shared
  iops                          = var.iops
  kms_key_id                    = var.kms_key_id
  license_model                 = var.license_model
  snapshot_type                 = var.snapshot_type
  storage_type                  = var.storage_type
  vpc_id                        = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  type        = string
}
variable "id" {
  description = "Snapshot ID."
  type        = string
}
variable "availability_zone" {
  description = "Name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  type        = string
}
variable "db_snapshot_identifier" {
  description = "(Optional) Returns information on a specific snapshot_id."
  type        = string
  default     = ""
}
variable "engine" {
  description = "Name of the database engine."
  type        = string
}
variable "engine_version" {
  description = "Version of the database engine."
  type        = string
}
variable "most_recent" {
  description = "(Optional) If more than one result is returned, use the most\nrecent Snapshot."
  type        = string
  default     = ""
}
variable "source_region" {
  description = "Region that the DB snapshot was created in or copied from."
  type        = string
}
variable "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  type        = string
}
variable "db_snapshot_arn" {
  description = "ARN for the DB snapshot."
  type        = string
}
variable "encrypted" {
  description = "Whether the DB snapshot is encrypted."
  type        = string
}
variable "include_public" {
  description = "false.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "license_model" {
  description = "License model information for the restored DB instance."
  type        = string
}
variable "snapshot_type" {
  description = "(Optional) Type of snapshots to be returned. If you don't specify a SnapshotType\nvalue, then both automated and manual snapshots are returned. Shared and public DB snapshots are not\nincluded in the returned results by default. Possible values are, automated, manual, shared, public and awsbackup."
  type        = string
  default     = ""
}
variable "source_db_snapshot_identifier" {
  description = "DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  type        = string
}
variable "status" {
  description = "Status of this DB snapshot."
  type        = string
}
variable "db_instance_identifier" {
  description = "(Optional) Returns the list of snapshots created by the specific db_instance"
  type        = string
  default     = ""
}
variable "include_shared" {
  description = "(Optional) Set this value to true to include shared manual DB snapshots from other\nAWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.\nThe default is false."
  type        = string
  default     = ""
}
variable "iops" {
  description = "Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  type        = string
}
variable "kms_key_id" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "storage_type" {
  description = "Storage type associated with DB snapshot."
  type        = string
}
variable "vpc_id" {
  description = "ID of the VPC associated with the DB snapshot."
  type        = string
}
output "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.option_group_name
}
output "availability_zone" {
  description = "Name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.availability_zone
}
output "db_snapshot_identifier" {
  description = "(Optional) Returns information on a specific snapshot_id."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_identifier
}
output "engine" {
  description = "Name of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine
}
output "engine_version" {
  description = "Version of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine_version
}
output "id" {
  description = "Snapshot ID."
  value       = aws_db_snapshot.aws_db_snapshot.id
}
output "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  value       = aws_db_snapshot.aws_db_snapshot.allocated_storage
}
output "db_snapshot_arn" {
  description = "ARN for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_arn
}
output "encrypted" {
  description = "Whether the DB snapshot is encrypted."
  value       = aws_db_snapshot.aws_db_snapshot.encrypted
}
output "include_public" {
  description = "false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_snapshot.aws_db_snapshot.include_public
}
output "most_recent" {
  description = "(Optional) If more than one result is returned, use the most\nrecent Snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.most_recent
}
output "source_region" {
  description = "Region that the DB snapshot was created in or copied from."
  value       = aws_db_snapshot.aws_db_snapshot.source_region
}
output "status" {
  description = "Status of this DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.status
}
output "db_instance_identifier" {
  description = "(Optional) Returns the list of snapshots created by the specific db_instance"
  value       = aws_db_snapshot.aws_db_snapshot.db_instance_identifier
}
output "include_shared" {
  description = "(Optional) Set this value to true to include shared manual DB snapshots from other\nAWS accounts that this AWS account has been given permission to copy or restore, otherwise set this value to false.\nThe default is false."
  value       = aws_db_snapshot.aws_db_snapshot.include_shared
}
output "iops" {
  description = "Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.iops
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_db_snapshot.aws_db_snapshot.kms_key_id
}
output "license_model" {
  description = "License model information for the restored DB instance."
  value       = aws_db_snapshot.aws_db_snapshot.license_model
}
output "snapshot_type" {
  description = "(Optional) Type of snapshots to be returned. If you don't specify a SnapshotType\nvalue, then both automated and manual snapshots are returned. Shared and public DB snapshots are not\nincluded in the returned results by default. Possible values are, automated, manual, shared, public and awsbackup."
  value       = aws_db_snapshot.aws_db_snapshot.snapshot_type
}
output "source_db_snapshot_identifier" {
  description = "DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_snapshot.aws_db_snapshot.source_db_snapshot_identifier
}
output "storage_type" {
  description = "Storage type associated with DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.storage_type
}
output "vpc_id" {
  description = "ID of the VPC associated with the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.vpc_id
}
output "license_model" {
  description = "License model information for the restored DB instance."
  value       = aws_db_snapshot.aws_db_snapshot.license_model
}
output "source_region" {
  description = "Region that the DB snapshot was created in or copied from."
  value       = aws_db_snapshot.aws_db_snapshot.source_region
}
output "availability_zone" {
  description = "Name of the Availability Zone the DB instance was located in at the time of the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.availability_zone
}
output "id" {
  description = "Snapshot ID."
  value       = aws_db_snapshot.aws_db_snapshot.id
}
output "allocated_storage" {
  description = "Allocated storage size in gigabytes (GB)."
  value       = aws_db_snapshot.aws_db_snapshot.allocated_storage
}
output "engine_version" {
  description = "Version of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine_version
}
output "kms_key_id" {
  description = "ARN for the KMS encryption key."
  value       = aws_db_snapshot.aws_db_snapshot.kms_key_id
}
output "engine" {
  description = "Name of the database engine."
  value       = aws_db_snapshot.aws_db_snapshot.engine
}
output "iops" {
  description = "Provisioned IOPS (I/O operations per second) value of the DB instance at the time of the snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.iops
}
output "option_group_name" {
  description = "Provides the option group name for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.option_group_name
}
output "source_db_snapshot_identifier" {
  description = "DB snapshot ARN that the DB snapshot was copied from. It only has value in case of cross customer or cross region copy."
  value       = aws_db_snapshot.aws_db_snapshot.source_db_snapshot_identifier
}
output "status" {
  description = "Status of this DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.status
}
output "storage_type" {
  description = "Storage type associated with DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.storage_type
}
output "db_snapshot_arn" {
  description = "ARN for the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.db_snapshot_arn
}
output "encrypted" {
  description = "Whether the DB snapshot is encrypted."
  value       = aws_db_snapshot.aws_db_snapshot.encrypted
}
output "vpc_id" {
  description = "ID of the VPC associated with the DB snapshot."
  value       = aws_db_snapshot.aws_db_snapshot.vpc_id
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
