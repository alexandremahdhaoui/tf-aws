datasource "aws_db_instance" "aws_db_instance" {
  engine                          = var.engine
  availability_zone               = var.availability_zone
  db_name                         = var.db_name
  endpoint                        = var.endpoint
  master_username                 = var.master_username
  replicate_source_db             = var.replicate_source_db
  storage_encrypted               = var.storage_encrypted
  auto_minor_version_upgrade      = var.auto_minor_version_upgrade
  hosted_zone_id                  = var.hosted_zone_id
  port                            = var.port
  preferred_maintenance_window    = var.preferred_maintenance_window
  storage_type                    = var.storage_type
  db_security_groups              = var.db_security_groups
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  option_group_memberships        = var.option_group_memberships
  vpc_security_groups             = var.vpc_security_groups
  address                         = var.address
  db_instance_arn                 = var.db_instance_arn
  db_parameter_groups             = var.db_parameter_groups
  engine_version                  = var.engine_version
  license_model                   = var.license_model
  preferred_backup_window         = var.preferred_backup_window
  timezone                        = var.timezone
  db_cluster_identifier           = var.db_cluster_identifier
  db_instance_identifier          = var.db_instance_identifier
  kms_key_id                      = var.kms_key_id
  monitoring_role_arn             = var.monitoring_role_arn
  publicly_accessible             = var.publicly_accessible
  resource_id                     = var.resource_id
  iops                            = var.iops
  monitoring_interval             = var.monitoring_interval
  network_type                    = var.network_type
  allocated_storage               = var.allocated_storage
  backup_retention_period         = var.backup_retention_period
  db_instance_class               = var.db_instance_class
  db_instance_port                = var.db_instance_port
  db_subnet_group                 = var.db_subnet_group
  multi_az                        = var.multi_az
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "kms_key_id" {
  description = "If StorageEncrypted is true, the KMS key identifier for the encrypted DB instance."
  type        = string
}
variable "monitoring_role_arn" {
  description = "ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs."
  type        = string
}
variable "publicly_accessible" {
  description = "Accessibility options for the DB instance."
  type        = string
}
variable "resource_id" {
  description = "RDS Resource ID of this instance."
  type        = string
}
variable "timezone" {
  description = "Time zone of the DB instance."
  type        = string
}
variable "db_cluster_identifier" {
  description = "If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of."
  type        = string
}
variable "db_instance_identifier" {
  description = "(Required) Name of the RDS instanceIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "network_type" {
  description = "Network type of the DB instance."
  type        = string
}
variable "iops" {
  description = "Provisioned IOPS (I/O operations per second) value."
  type        = string
}
variable "monitoring_interval" {
  description = "Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  type        = string
}
variable "db_instance_class" {
  description = "Contains the name of the compute and memory capacity class of the DB instance."
  type        = string
}
variable "db_instance_port" {
  description = "Port that the DB instance listens on."
  type        = string
}
variable "db_subnet_group" {
  description = "Name of the subnet group associated with the DB instance."
  type        = string
}
variable "multi_az" {
  description = "If the DB instance is a Multi-AZ deployment."
  type        = string
}
variable "allocated_storage" {
  description = "Allocated storage size specified in gigabytes."
  type        = string
}
variable "backup_retention_period" {
  description = "Specifies the number of days for which automatic DB snapshots are retained."
  type        = string
}
variable "engine" {
  description = "Provides the name of the database engine to be used for this DB instance."
  type        = string
}
variable "endpoint" {
  description = "Connection endpoint in address:port format."
  type        = string
}
variable "master_username" {
  description = "Contains the master username for the DB instance."
  type        = string
}
variable "replicate_source_db" {
  description = "Identifier of the source DB that this is a replica of."
  type        = string
}
variable "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  type        = string
}
variable "availability_zone" {
  description = "Name of the Availability Zone the DB instance is located in."
  type        = string
}
variable "db_name" {
  description = "Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance."
  type        = string
}
variable "port" {
  description = "Database port."
  type        = string
}
variable "preferred_maintenance_window" {
  description = " Specifies the weekly time range during which system maintenance can occur in UTC."
  type        = string
}
variable "storage_type" {
  description = "Storage type associated with DB instance."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "Indicates that minor version patches are applied automatically."
  type        = string
}
variable "hosted_zone_id" {
  description = "Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
  type        = string
}
variable "option_group_memberships" {
  description = "Provides the list of option group memberships for this DB instance."
  type        = string
}
variable "db_security_groups" {
  description = "Provides List of DB security groups associated to this DB instance."
  type        = string
}
variable "enabled_cloudwatch_logs_exports" {
  description = "List of log types to export to cloudwatch."
  type        = string
}
variable "db_parameter_groups" {
  description = "Provides the list of DB parameter groups applied to this DB instance."
  type        = string
}
variable "engine_version" {
  description = "Database engine version."
  type        = string
}
variable "license_model" {
  description = "License model information for this DB instance."
  type        = string
}
variable "preferred_backup_window" {
  description = "Specifies the daily time range during which automated backups are created."
  type        = string
}
variable "vpc_security_groups" {
  description = "Provides a list of VPC security group elements that the DB instance belongs to."
  type        = string
}
variable "address" {
  description = "Hostname of the RDS instance. See also endpoint and port."
  type        = string
}
variable "db_instance_arn" {
  description = "ARN for the DB instance."
  type        = string
}
output "availability_zone" {
  description = "Name of the Availability Zone the DB instance is located in."
  value       = aws_db_instance.aws_db_instance.availability_zone
}
output "db_name" {
  description = "Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance."
  value       = aws_db_instance.aws_db_instance.db_name
}
output "endpoint" {
  description = "Connection endpoint in address:port format."
  value       = aws_db_instance.aws_db_instance.endpoint
}
output "master_username" {
  description = "Contains the master username for the DB instance."
  value       = aws_db_instance.aws_db_instance.master_username
}
output "replicate_source_db" {
  description = "Identifier of the source DB that this is a replica of."
  value       = aws_db_instance.aws_db_instance.replicate_source_db
}
output "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  value       = aws_db_instance.aws_db_instance.storage_encrypted
}
output "auto_minor_version_upgrade" {
  description = "Indicates that minor version patches are applied automatically."
  value       = aws_db_instance.aws_db_instance.auto_minor_version_upgrade
}
output "hosted_zone_id" {
  description = "Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
  value       = aws_db_instance.aws_db_instance.hosted_zone_id
}
output "port" {
  description = "Database port."
  value       = aws_db_instance.aws_db_instance.port
}
output "preferred_maintenance_window" {
  description = " Specifies the weekly time range during which system maintenance can occur in UTC."
  value       = aws_db_instance.aws_db_instance.preferred_maintenance_window
}
output "storage_type" {
  description = "Storage type associated with DB instance."
  value       = aws_db_instance.aws_db_instance.storage_type
}
output "db_security_groups" {
  description = "Provides List of DB security groups associated to this DB instance."
  value       = aws_db_instance.aws_db_instance.db_security_groups
}
output "enabled_cloudwatch_logs_exports" {
  description = "List of log types to export to cloudwatch."
  value       = aws_db_instance.aws_db_instance.enabled_cloudwatch_logs_exports
}
output "option_group_memberships" {
  description = "Provides the list of option group memberships for this DB instance."
  value       = aws_db_instance.aws_db_instance.option_group_memberships
}
output "address" {
  description = "Hostname of the RDS instance. See also endpoint and port."
  value       = aws_db_instance.aws_db_instance.address
}
output "db_instance_arn" {
  description = "ARN for the DB instance."
  value       = aws_db_instance.aws_db_instance.db_instance_arn
}
output "db_parameter_groups" {
  description = "Provides the list of DB parameter groups applied to this DB instance."
  value       = aws_db_instance.aws_db_instance.db_parameter_groups
}
output "engine_version" {
  description = "Database engine version."
  value       = aws_db_instance.aws_db_instance.engine_version
}
output "license_model" {
  description = "License model information for this DB instance."
  value       = aws_db_instance.aws_db_instance.license_model
}
output "preferred_backup_window" {
  description = "Specifies the daily time range during which automated backups are created."
  value       = aws_db_instance.aws_db_instance.preferred_backup_window
}
output "vpc_security_groups" {
  description = "Provides a list of VPC security group elements that the DB instance belongs to."
  value       = aws_db_instance.aws_db_instance.vpc_security_groups
}
output "db_cluster_identifier" {
  description = "If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of."
  value       = aws_db_instance.aws_db_instance.db_cluster_identifier
}
output "db_instance_identifier" {
  description = "(Required) Name of the RDS instanceIn addition to all arguments above, the following attributes are exported:"
  value       = aws_db_instance.aws_db_instance.db_instance_identifier
}
output "kms_key_id" {
  description = "If StorageEncrypted is true, the KMS key identifier for the encrypted DB instance."
  value       = aws_db_instance.aws_db_instance.kms_key_id
}
output "monitoring_role_arn" {
  description = "ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs."
  value       = aws_db_instance.aws_db_instance.monitoring_role_arn
}
output "publicly_accessible" {
  description = "Accessibility options for the DB instance."
  value       = aws_db_instance.aws_db_instance.publicly_accessible
}
output "resource_id" {
  description = "RDS Resource ID of this instance."
  value       = aws_db_instance.aws_db_instance.resource_id
}
output "timezone" {
  description = "Time zone of the DB instance."
  value       = aws_db_instance.aws_db_instance.timezone
}
output "iops" {
  description = "Provisioned IOPS (I/O operations per second) value."
  value       = aws_db_instance.aws_db_instance.iops
}
output "monitoring_interval" {
  description = "Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  value       = aws_db_instance.aws_db_instance.monitoring_interval
}
output "network_type" {
  description = "Network type of the DB instance."
  value       = aws_db_instance.aws_db_instance.network_type
}
output "allocated_storage" {
  description = "Allocated storage size specified in gigabytes."
  value       = aws_db_instance.aws_db_instance.allocated_storage
}
output "backup_retention_period" {
  description = "Specifies the number of days for which automatic DB snapshots are retained."
  value       = aws_db_instance.aws_db_instance.backup_retention_period
}
output "db_instance_class" {
  description = "Contains the name of the compute and memory capacity class of the DB instance."
  value       = aws_db_instance.aws_db_instance.db_instance_class
}
output "db_instance_port" {
  description = "Port that the DB instance listens on."
  value       = aws_db_instance.aws_db_instance.db_instance_port
}
output "db_subnet_group" {
  description = "Name of the subnet group associated with the DB instance."
  value       = aws_db_instance.aws_db_instance.db_subnet_group
}
output "multi_az" {
  description = "If the DB instance is a Multi-AZ deployment."
  value       = aws_db_instance.aws_db_instance.multi_az
}
output "engine" {
  description = "Provides the name of the database engine to be used for this DB instance."
  value       = aws_db_instance.aws_db_instance.engine
}
output "backup_retention_period" {
  description = "Specifies the number of days for which automatic DB snapshots are retained."
  value       = aws_db_instance.aws_db_instance.backup_retention_period
}
output "db_subnet_group" {
  description = "Name of the subnet group associated with the DB instance."
  value       = aws_db_instance.aws_db_instance.db_subnet_group
}
output "replicate_source_db" {
  description = "Identifier of the source DB that this is a replica of."
  value       = aws_db_instance.aws_db_instance.replicate_source_db
}
output "allocated_storage" {
  description = "Allocated storage size specified in gigabytes."
  value       = aws_db_instance.aws_db_instance.allocated_storage
}
output "db_instance_port" {
  description = "Port that the DB instance listens on."
  value       = aws_db_instance.aws_db_instance.db_instance_port
}
output "multi_az" {
  description = "If the DB instance is a Multi-AZ deployment."
  value       = aws_db_instance.aws_db_instance.multi_az
}
output "preferred_backup_window" {
  description = "Specifies the daily time range during which automated backups are created."
  value       = aws_db_instance.aws_db_instance.preferred_backup_window
}
output "publicly_accessible" {
  description = "Accessibility options for the DB instance."
  value       = aws_db_instance.aws_db_instance.publicly_accessible
}
output "resource_id" {
  description = "RDS Resource ID of this instance."
  value       = aws_db_instance.aws_db_instance.resource_id
}
output "db_cluster_identifier" {
  description = "If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of."
  value       = aws_db_instance.aws_db_instance.db_cluster_identifier
}
output "db_instance_arn" {
  description = "ARN for the DB instance."
  value       = aws_db_instance.aws_db_instance.db_instance_arn
}
output "endpoint" {
  description = "Connection endpoint in address:port format."
  value       = aws_db_instance.aws_db_instance.endpoint
}
output "hosted_zone_id" {
  description = "Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record)."
  value       = aws_db_instance.aws_db_instance.hosted_zone_id
}
output "vpc_security_groups" {
  description = "Provides a list of VPC security group elements that the DB instance belongs to."
  value       = aws_db_instance.aws_db_instance.vpc_security_groups
}
output "auto_minor_version_upgrade" {
  description = "Indicates that minor version patches are applied automatically."
  value       = aws_db_instance.aws_db_instance.auto_minor_version_upgrade
}
output "kms_key_id" {
  description = "If StorageEncrypted is true, the KMS key identifier for the encrypted DB instance."
  value       = aws_db_instance.aws_db_instance.kms_key_id
}
output "option_group_memberships" {
  description = "Provides the list of option group memberships for this DB instance."
  value       = aws_db_instance.aws_db_instance.option_group_memberships
}
output "port" {
  description = "Database port."
  value       = aws_db_instance.aws_db_instance.port
}
output "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  value       = aws_db_instance.aws_db_instance.storage_encrypted
}
output "iops" {
  description = "Provisioned IOPS (I/O operations per second) value."
  value       = aws_db_instance.aws_db_instance.iops
}
output "availability_zone" {
  description = "Name of the Availability Zone the DB instance is located in."
  value       = aws_db_instance.aws_db_instance.availability_zone
}
output "db_instance_class" {
  description = "Contains the name of the compute and memory capacity class of the DB instance."
  value       = aws_db_instance.aws_db_instance.db_instance_class
}
output "engine" {
  description = "Provides the name of the database engine to be used for this DB instance."
  value       = aws_db_instance.aws_db_instance.engine
}
output "engine_version" {
  description = "Database engine version."
  value       = aws_db_instance.aws_db_instance.engine_version
}
output "storage_type" {
  description = "Storage type associated with DB instance."
  value       = aws_db_instance.aws_db_instance.storage_type
}
output "timezone" {
  description = "Time zone of the DB instance."
  value       = aws_db_instance.aws_db_instance.timezone
}
output "address" {
  description = "Hostname of the RDS instance. See also endpoint and port."
  value       = aws_db_instance.aws_db_instance.address
}
output "enabled_cloudwatch_logs_exports" {
  description = "List of log types to export to cloudwatch."
  value       = aws_db_instance.aws_db_instance.enabled_cloudwatch_logs_exports
}
output "master_username" {
  description = "Contains the master username for the DB instance."
  value       = aws_db_instance.aws_db_instance.master_username
}
output "monitoring_role_arn" {
  description = "ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs."
  value       = aws_db_instance.aws_db_instance.monitoring_role_arn
}
output "network_type" {
  description = "Network type of the DB instance."
  value       = aws_db_instance.aws_db_instance.network_type
}
output "db_name" {
  description = "Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance."
  value       = aws_db_instance.aws_db_instance.db_name
}
output "preferred_maintenance_window" {
  description = " Specifies the weekly time range during which system maintenance can occur in UTC."
  value       = aws_db_instance.aws_db_instance.preferred_maintenance_window
}
output "monitoring_interval" {
  description = "Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance."
  value       = aws_db_instance.aws_db_instance.monitoring_interval
}
output "db_security_groups" {
  description = "Provides List of DB security groups associated to this DB instance."
  value       = aws_db_instance.aws_db_instance.db_security_groups
}
output "license_model" {
  description = "License model information for this DB instance."
  value       = aws_db_instance.aws_db_instance.license_model
}
output "db_parameter_groups" {
  description = "Provides the list of DB parameter groups applied to this DB instance."
  value       = aws_db_instance.aws_db_instance.db_parameter_groups
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
