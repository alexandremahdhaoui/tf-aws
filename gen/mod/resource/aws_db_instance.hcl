resource "aws_db_instance" "aws_db_instance" {
  timezone                                 = var.timezone
  bucket_prefix                            = var.bucket_prefix
  id                                       = var.id
  copy_tags_to_snapshot                    = var.copy_tags_to_snapshot
  network_type                             = var.network_type
  backup_window                            = var.backup_window
  character_set_name                       = var.character_set_name
  instance_class                           = var.instance_class
  source_engine_version                    = var.source_engine_version
  tags                                     = var.tags
  db_name                                  = var.db_name
  enabled_cloudwatch_logs_exports          = var.enabled_cloudwatch_logs_exports
  parameter_group_name                     = var.parameter_group_name
  replica_mode                             = var.replica_mode
  domain_iam_role_name                     = var.domain_iam_role_name
  iops                                     = var.iops
  max_allocated_storage                    = var.max_allocated_storage
  security_group_names                     = var.security_group_names
  allocated_storage                        = var.allocated_storage
  availability_zone                        = var.availability_zone
  monitoring_interval                      = var.monitoring_interval
  monitoring_role_arn                      = var.monitoring_role_arn
  password                                 = var.password
  resource_id                              = var.resource_id
  apply_immediately                        = var.apply_immediately
  domain                                   = var.domain
  hosted_zone_id                           = var.hosted_zone_id
  snapshot_identifier                      = var.snapshot_identifier
  nchar_character_set_name                 = var.nchar_character_set_name
  performance_insights_enabled             = var.performance_insights_enabled
  source_dbi_resource_id                   = var.source_dbi_resource_id
  tags_all                                 = var.tags_all
  delete_automated_backups                 = var.delete_automated_backups
  endpoint                                 = var.endpoint
  publicly_accessible                      = var.publicly_accessible
  engine_version                           = var.engine_version
  port                                     = var.port
  latest_restorable_time                   = var.latest_restorable_time
  multi_az                                 = var.multi_az
  performance_insights_retention_period    = var.performance_insights_retention_period
  source_engine                            = var.source_engine
  storage_encrypted                        = var.storage_encrypted
  backup_retention_period                  = var.backup_retention_period
  kms_key_id                               = var.kms_key_id
  custom_iam_instance_profile              = var.custom_iam_instance_profile
  deletion_protection                      = var.deletion_protection
  final_snapshot_identifier                = var.final_snapshot_identifier
  ingestion_role                           = var.ingestion_role
  skip_final_snapshot                      = var.skip_final_snapshot
  storage_type                             = var.storage_type
  arn                                      = var.arn
  bucket_name                              = var.bucket_name
  use_latest_restorable_time               = var.use_latest_restorable_time
  license_model                            = var.license_model
  maintenance_window                       = var.maintenance_window
  option_group_name                        = var.option_group_name
  restore_time                             = var.restore_time
  customer_owned_ip_enabled                = var.customer_owned_ip_enabled
  db_subnet_group_name                     = var.db_subnet_group_name
  engine                                   = var.engine
  engine_version_actual                    = var.engine_version_actual
  iam_database_authentication_enabled      = var.iam_database_authentication_enabled
  identifier                               = var.identifier
  name                                     = var.name
  performance_insights_kms_key_id          = var.performance_insights_kms_key_id
  allow_major_version_upgrade              = var.allow_major_version_upgrade
  create                                   = var.create
  replicate_source_db                      = var.replicate_source_db
  status                                   = var.status
  vpc_security_group_ids                   = var.vpc_security_group_ids
  ca_cert_identifier                       = var.ca_cert_identifier
  identifier_prefix                        = var.identifier_prefix
  address                                  = var.address
  auto_minor_version_upgrade               = var.auto_minor_version_upgrade
  source_db_instance_automated_backups_arn = var.source_db_instance_automated_backups_arn
  source_db_instance_identifier            = var.source_db_instance_identifier
  update                                   = var.update
  username                                 = var.username
  restore_to_point_in_time                 = var.restore_to_point_in_time
  s3_import                                = var.s3_import
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "max_allocated_storage" {
  description = "(Optional) When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance. Configuring this will automatically ignore differences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling."
  type        = string
  default     = ""
}
variable "security_group_names" {
  description = "(Optional/Deprecated) List of DB Security Groups to\nassociate. Only used for DB Instances on the emEC2-Classic."
  type        = string
}
variable "allocated_storage" {
  description = "The amount of allocated storage."
  type        = string
}
variable "availability_zone" {
  description = "The availability zone of the instance."
  type        = string
}
variable "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points\nwhen Enhanced Monitoring metrics are collected for the DB instance. To disable\ncollecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid\nValues: 0, 1, 5, 10, 15, 30, 60."
  type        = string
  default     = ""
}
variable "monitoring_role_arn" {
  description = "(Optional) The ARN for the IAM role that permits RDS\nto send enhanced monitoring metrics to CloudWatch Logs. You can find more\ninformation on the "
  type        = string
  default     = ""
}
variable "password" {
  description = "(Required unless a snapshot_identifier or replicate_source_db"
  type        = string
}
variable "resource_id" {
  description = "The RDS Resource ID of this instance."
  type        = string
}
variable "apply_immediately" {
  description = "false. See "
  type        = string
}
variable "domain" {
  description = "The ID of the Directory Service Active Directory domain the instance is joined to"
  type        = string
}
variable "hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used\nin a Route 53 Alias record)."
  type        = string
}
variable "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this\ndatabase from a snapshot. This correlates to the snapshot ID you'd find in the\nRDS console, e.g: rds:production-2015-06-26-06-05."
  type        = string
  default     = ""
}
variable "nchar_character_set_name" {
  description = "(Optional, Forces new resource) The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See ."
  type        = string
}
variable "performance_insights_enabled" {
  description = "(Optional) Specifies whether Performance Insights are enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "source_dbi_resource_id" {
  description = "(Optional) The resource ID of the source DB instance from which to restore. Required if source_db_instance_identifier or source_db_instance_automated_backups_arn is not specified."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "delete_automated_backups" {
  description = "(Optional) Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is true."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The connection endpoint in address:port format."
  type        = string
}
variable "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly\naccessible. Default is false."
  type        = string
  default     = ""
}
variable "engine_version" {
  description = "(Optional) The engine version to use. If auto_minor_version_upgrade5.7 (for 5.7.10engine_version_actual, see API action CreateDBInstanceDB cluster's engine version'. Cannot be specified for a replica."
  type        = string
  default     = ""
}
variable "port" {
  description = "The database port."
  type        = string
}
variable "latest_restorable_time" {
  description = "The latest time, in UTC RFC3339 format, to which a database can be restored with point-in-time restore."
  type        = string
}
variable "multi_az" {
  description = "If the RDS instance is multi AZ enabled."
  type        = string
}
variable "performance_insights_retention_period" {
  description = "(Optional) Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'."
  type        = string
  default     = ""
}
variable "source_engine" {
  description = "(Required, as of Feb 2018 only 'mysql' supported) Source engine for the backup"
  type        = string
}
variable "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  type        = string
}
variable "backup_retention_period" {
  description = "The backup retention period."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. If creating an\nencrypted replica, set this to the destination KMS ARN."
  type        = string
  default     = ""
}
variable "custom_iam_instance_profile" {
  description = "(Optional) The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance."
  type        = string
  default     = ""
}
variable "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  type        = string
  default     = ""
}
variable "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot\nwhen this DB instance is deleted. Must be provided if skip_final_snapshotfalse. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica."
  type        = string
  default     = ""
}
variable "ingestion_role" {
  description = "(Required) Role applied to load the data."
  type        = string
}
variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is\ncreated before the DB instance is deleted. If true is specified, no DBSnapshot\nis created. If false is specified, a DB snapshot is created before the DB\ninstance is deleted, using the value from final_snapshot_identifierfalse."
  type        = string
  default     = ""
}
variable "storage_type" {
  description = "(Optional) One of \"standard\" (magnetic), \"gp2\" (general\npurpose SSD), or \"io1\" (provisioned IOPS SSD). The default is \"io1\" if iops"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the RDS instance."
  type        = string
}
variable "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  type        = string
}
variable "use_latest_restorable_time" {
  description = "(Optional) A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to false. Cannot be specified with restore_time.S3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBInstanceFromS3.  Sample"
  type        = string
  default     = ""
}
variable "license_model" {
  description = "(Optional, but required for some DB engines, i.e., Oracle\nSE1) License model information for this DB instance."
  type        = string
}
variable "maintenance_window" {
  description = "The instance maintenance window."
  type        = string
}
variable "option_group_name" {
  description = "(Optional) Name of the DB option group to associate."
  type        = string
  default     = ""
}
variable "restore_time" {
  description = "(Optional) The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with use_latest_restorable_time."
  type        = string
  default     = ""
}
variable "customer_owned_ip_enabled" {
  description = "(Optional) Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See CoIP for RDS on Outposts for more information.~> strongNOTE: Removing the replicate_source_dbRestore To Point In Time-> strongNote: You can restore to any point in time before the source DB instance's latest_restorable_time or a point up to the number of days specified in the source DB instance's backup_retention_periodDeveloper Guideaurora-mysql or aurora-postgresql DB engines. For Aurora, refer to the aws_rds_cluster resource documentation.The restore_to_point_in_time block supports the following arguments:"
  type        = string
  default     = ""
}
variable "db_subnet_group_name" {
  description = "(Optional) Name of DB subnet groupdefault"
  type        = string
  default     = ""
}
variable "engine" {
  description = "The database engine."
  type        = string
}
variable "engine_version_actual" {
  description = "The running version of the database."
  type        = string
}
variable "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database\naccounts is enabled."
  type        = string
  default     = ""
}
variable "identifier" {
  description = "(Optional, Forces new resource) The name of the RDS instance,\nif omitted, Terraform will assign a random, unique identifier. Required if restore_to_point_in_time is specified."
  type        = string
}
variable "name" {
  description = "The database name."
  type        = string
}
variable "performance_insights_kms_key_id" {
  description = "(Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true. Once KMS key is set, it can never be changed."
  type        = string
  default     = ""
}
variable "allow_major_version_upgrade" {
  description = "(Optional) Indicates that major version\nupgrades are allowed. Changing this parameter does not result in an outage and\nthe change is asynchronously applied as soon as possible."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "replicate_source_db" {
  description = "(Optional) Specifies that this resource is a Replicate\ndatabase, and to use this value as the source database. This correlates to the\nidentifierkms_key_id. See DB Instance Replication and "
  type        = string
  default     = ""
}
variable "status" {
  description = "The RDS instance status."
  type        = string
}
variable "vpc_security_group_ids" {
  description = ""
  type        = string
}
variable "ca_cert_identifier" {
  description = ""
  type        = string
}
variable "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique\nidentifier beginning with the specified prefix. Conflicts with identifier."
  type        = string
}
variable "address" {
  description = "The hostname of the RDS instance. See also endpoint and port."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades\nwill be applied automatically to the DB instance during the maintenance window.\nDefaults to true."
  type        = string
  default     = ""
}
variable "source_db_instance_automated_backups_arn" {
  description = "(Optional) The ARN of the automated backup from which to restore. Required if source_db_instance_identifier or source_dbi_resource_id is not specified."
  type        = string
  default     = ""
}
variable "source_db_instance_identifier" {
  description = "(Optional) The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if source_db_instance_automated_backups_arn or source_dbi_resource_id is not specified."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 80m)"
  type        = string
}
variable "username" {
  description = "The master username for the database.On Oracle and Microsoft SQL instances the following is exported additionally:"
  type        = string
}
variable "restore_to_point_in_time" {
  description = "(Optional, Forces new resource) A configuration block for restoring a DB instance to an arbitrary point in time. Requires the identifier argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details."
  type        = string
}
variable "s3_import" {
  description = "(Optional) Restore from a Percona Xtrabackup in S3.  See Importing Data into an Amazon RDS MySQL DB Instance"
  type        = string
  default     = ""
}
variable "timezone" {
  description = "(Optional) Time zone of the DB instance. timezonetimezone"
  type        = string
  default     = ""
}
variable "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  type        = string
  default     = ""
}
variable "id" {
  description = "The RDS instance ID."
  type        = string
}
variable "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Copy all Instance tags to snapshots. Default is false."
  type        = string
}
variable "network_type" {
  description = "(Optional) The network type of the DB instance. Valid values: IPV4, DUAL."
  type        = string
  default     = ""
}
variable "backup_window" {
  description = "The backup window."
  type        = string
}
variable "character_set_name" {
  description = "The character set (collation) used on Oracle and Microsoft SQL instances.TimeoutsConfiguration options:"
  type        = string
}
variable "instance_class" {
  description = "- The RDS instance class."
  type        = string
}
variable "source_engine_version" {
  description = "(Required, as of Feb 2018 only '5.6' supported) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way.  It's only used to initialize the databaseIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "db_name" {
  description = "The database name."
  type        = string
}
variable "enabled_cloudwatch_logs_exports" {
  description = "(Optional) Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine). MySQL and MariaDB: audit, error, general, slowquery. PostgreSQL: postgresql, upgrade. MSSQL: agent , error. Oracle: alert, audit, listener, trace."
  type        = string
  default     = ""
}
variable "parameter_group_name" {
  description = "(Optional) Name of the DB parameter group to\nassociate."
  type        = string
  default     = ""
}
variable "replica_mode" {
  description = "(Optional) Specifies whether the replica is in either mounted or open-read-onlyopen-read-only mode unless otherwise specified. See Working with Oracle Read Replicas for more information."
  type        = string
  default     = ""
}
variable "domain_iam_role_name" {
  description = "The name of the IAM role to be used when making API calls to the Directory Service."
  type        = string
}
variable "iops" {
  description = "(Optional) The amount of provisioned IOPS. Setting this implies a\nstorage_type of \"io1\"."
  type        = string
  default     = ""
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
output "password" {
  description = "(Required unless a snapshot_identifier or replicate_source_db"
  value       = aws_db_instance.aws_db_instance.password
}
output "resource_id" {
  description = "The RDS Resource ID of this instance."
  value       = aws_db_instance.aws_db_instance.resource_id
}
output "apply_immediately" {
  description = "false. See "
  value       = aws_db_instance.aws_db_instance.apply_immediately
}
output "domain" {
  description = "The ID of the Directory Service Active Directory domain the instance is joined to"
  value       = aws_db_instance.aws_db_instance.domain
}
output "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points\nwhen Enhanced Monitoring metrics are collected for the DB instance. To disable\ncollecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid\nValues: 0, 1, 5, 10, 15, 30, 60."
  value       = aws_db_instance.aws_db_instance.monitoring_interval
}
output "monitoring_role_arn" {
  description = "(Optional) The ARN for the IAM role that permits RDS\nto send enhanced monitoring metrics to CloudWatch Logs. You can find more\ninformation on the "
  value       = aws_db_instance.aws_db_instance.monitoring_role_arn
}
output "hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used\nin a Route 53 Alias record)."
  value       = aws_db_instance.aws_db_instance.hosted_zone_id
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this\ndatabase from a snapshot. This correlates to the snapshot ID you'd find in the\nRDS console, e.g: rds:production-2015-06-26-06-05."
  value       = aws_db_instance.aws_db_instance.snapshot_identifier
}
output "source_dbi_resource_id" {
  description = "(Optional) The resource ID of the source DB instance from which to restore. Required if source_db_instance_identifier or source_db_instance_automated_backups_arn is not specified."
  value       = aws_db_instance.aws_db_instance.source_dbi_resource_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_db_instance.aws_db_instance.tags_all
}
output "delete_automated_backups" {
  description = "(Optional) Specifies whether to remove automated backups immediately after the DB instance is deleted. Default is true."
  value       = aws_db_instance.aws_db_instance.delete_automated_backups
}
output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = aws_db_instance.aws_db_instance.endpoint
}
output "nchar_character_set_name" {
  description = "(Optional, Forces new resource) The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See ."
  value       = aws_db_instance.aws_db_instance.nchar_character_set_name
}
output "performance_insights_enabled" {
  description = "(Optional) Specifies whether Performance Insights are enabled. Defaults to false."
  value       = aws_db_instance.aws_db_instance.performance_insights_enabled
}
output "engine_version" {
  description = "(Optional) The engine version to use. If auto_minor_version_upgrade5.7 (for 5.7.10engine_version_actual, see API action CreateDBInstanceDB cluster's engine version'. Cannot be specified for a replica."
  value       = aws_db_instance.aws_db_instance.engine_version
}
output "port" {
  description = "The database port."
  value       = aws_db_instance.aws_db_instance.port
}
output "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly\naccessible. Default is false."
  value       = aws_db_instance.aws_db_instance.publicly_accessible
}
output "performance_insights_retention_period" {
  description = "(Optional) Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'."
  value       = aws_db_instance.aws_db_instance.performance_insights_retention_period
}
output "source_engine" {
  description = "(Required, as of Feb 2018 only 'mysql' supported) Source engine for the backup"
  value       = aws_db_instance.aws_db_instance.source_engine
}
output "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  value       = aws_db_instance.aws_db_instance.storage_encrypted
}
output "backup_retention_period" {
  description = "The backup retention period."
  value       = aws_db_instance.aws_db_instance.backup_retention_period
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. If creating an\nencrypted replica, set this to the destination KMS ARN."
  value       = aws_db_instance.aws_db_instance.kms_key_id
}
output "latest_restorable_time" {
  description = "The latest time, in UTC RFC3339 format, to which a database can be restored with point-in-time restore."
  value       = aws_db_instance.aws_db_instance.latest_restorable_time
}
output "multi_az" {
  description = "If the RDS instance is multi AZ enabled."
  value       = aws_db_instance.aws_db_instance.multi_az
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot\nwhen this DB instance is deleted. Must be provided if skip_final_snapshotfalse. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica."
  value       = aws_db_instance.aws_db_instance.final_snapshot_identifier
}
output "ingestion_role" {
  description = "(Required) Role applied to load the data."
  value       = aws_db_instance.aws_db_instance.ingestion_role
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is\ncreated before the DB instance is deleted. If true is specified, no DBSnapshot\nis created. If false is specified, a DB snapshot is created before the DB\ninstance is deleted, using the value from final_snapshot_identifierfalse."
  value       = aws_db_instance.aws_db_instance.skip_final_snapshot
}
output "storage_type" {
  description = "(Optional) One of \"standard\" (magnetic), \"gp2\" (general\npurpose SSD), or \"io1\" (provisioned IOPS SSD). The default is \"io1\" if iops"
  value       = aws_db_instance.aws_db_instance.storage_type
}
output "arn" {
  description = "The ARN of the RDS instance."
  value       = aws_db_instance.aws_db_instance.arn
}
output "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  value       = aws_db_instance.aws_db_instance.bucket_name
}
output "custom_iam_instance_profile" {
  description = "(Optional) The instance profile associated with the underlying Amazon EC2 instance of an RDS Custom DB instance."
  value       = aws_db_instance.aws_db_instance.custom_iam_instance_profile
}
output "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  value       = aws_db_instance.aws_db_instance.deletion_protection
}
output "use_latest_restorable_time" {
  description = "(Optional) A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to false. Cannot be specified with restore_time.S3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBInstanceFromS3.  Sample"
  value       = aws_db_instance.aws_db_instance.use_latest_restorable_time
}
output "option_group_name" {
  description = "(Optional) Name of the DB option group to associate."
  value       = aws_db_instance.aws_db_instance.option_group_name
}
output "restore_time" {
  description = "(Optional) The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with use_latest_restorable_time."
  value       = aws_db_instance.aws_db_instance.restore_time
}
output "customer_owned_ip_enabled" {
  description = "(Optional) Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See CoIP for RDS on Outposts for more information.~> strongNOTE: Removing the replicate_source_dbRestore To Point In Time-> strongNote: You can restore to any point in time before the source DB instance's latest_restorable_time or a point up to the number of days specified in the source DB instance's backup_retention_periodDeveloper Guideaurora-mysql or aurora-postgresql DB engines. For Aurora, refer to the aws_rds_cluster resource documentation.The restore_to_point_in_time block supports the following arguments:"
  value       = aws_db_instance.aws_db_instance.customer_owned_ip_enabled
}
output "db_subnet_group_name" {
  description = "(Optional) Name of DB subnet groupdefault"
  value       = aws_db_instance.aws_db_instance.db_subnet_group_name
}
output "license_model" {
  description = "(Optional, but required for some DB engines, i.e., Oracle\nSE1) License model information for this DB instance."
  value       = aws_db_instance.aws_db_instance.license_model
}
output "maintenance_window" {
  description = "The instance maintenance window."
  value       = aws_db_instance.aws_db_instance.maintenance_window
}
output "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database\naccounts is enabled."
  value       = aws_db_instance.aws_db_instance.iam_database_authentication_enabled
}
output "identifier" {
  description = "(Optional, Forces new resource) The name of the RDS instance,\nif omitted, Terraform will assign a random, unique identifier. Required if restore_to_point_in_time is specified."
  value       = aws_db_instance.aws_db_instance.identifier
}
output "name" {
  description = "The database name."
  value       = aws_db_instance.aws_db_instance.name
}
output "performance_insights_kms_key_id" {
  description = "(Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true. Once KMS key is set, it can never be changed."
  value       = aws_db_instance.aws_db_instance.performance_insights_kms_key_id
}
output "allow_major_version_upgrade" {
  description = "(Optional) Indicates that major version\nupgrades are allowed. Changing this parameter does not result in an outage and\nthe change is asynchronously applied as soon as possible."
  value       = aws_db_instance.aws_db_instance.allow_major_version_upgrade
}
output "create" {
  description = "(Default 40m)"
  value       = aws_db_instance.aws_db_instance.create
}
output "engine" {
  description = "The database engine."
  value       = aws_db_instance.aws_db_instance.engine
}
output "engine_version_actual" {
  description = "The running version of the database."
  value       = aws_db_instance.aws_db_instance.engine_version_actual
}
output "vpc_security_group_ids" {
  description = ""
  value       = aws_db_instance.aws_db_instance.vpc_security_group_ids
}
output "ca_cert_identifier" {
  description = ""
  value       = aws_db_instance.aws_db_instance.ca_cert_identifier
}
output "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique\nidentifier beginning with the specified prefix. Conflicts with identifier."
  value       = aws_db_instance.aws_db_instance.identifier_prefix
}
output "replicate_source_db" {
  description = "(Optional) Specifies that this resource is a Replicate\ndatabase, and to use this value as the source database. This correlates to the\nidentifierkms_key_id. See DB Instance Replication and "
  value       = aws_db_instance.aws_db_instance.replicate_source_db
}
output "status" {
  description = "The RDS instance status."
  value       = aws_db_instance.aws_db_instance.status
}
output "address" {
  description = "The hostname of the RDS instance. See also endpoint and port."
  value       = aws_db_instance.aws_db_instance.address
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades\nwill be applied automatically to the DB instance during the maintenance window.\nDefaults to true."
  value       = aws_db_instance.aws_db_instance.auto_minor_version_upgrade
}
output "update" {
  description = "(Default 80m)"
  value       = aws_db_instance.aws_db_instance.update
}
output "username" {
  description = "The master username for the database.On Oracle and Microsoft SQL instances the following is exported additionally:"
  value       = aws_db_instance.aws_db_instance.username
}
output "restore_to_point_in_time" {
  description = "(Optional, Forces new resource) A configuration block for restoring a DB instance to an arbitrary point in time. Requires the identifier argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details."
  value       = aws_db_instance.aws_db_instance.restore_to_point_in_time
}
output "s3_import" {
  description = "(Optional) Restore from a Percona Xtrabackup in S3.  See Importing Data into an Amazon RDS MySQL DB Instance"
  value       = aws_db_instance.aws_db_instance.s3_import
}
output "source_db_instance_automated_backups_arn" {
  description = "(Optional) The ARN of the automated backup from which to restore. Required if source_db_instance_identifier or source_dbi_resource_id is not specified."
  value       = aws_db_instance.aws_db_instance.source_db_instance_automated_backups_arn
}
output "source_db_instance_identifier" {
  description = "(Optional) The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if source_db_instance_automated_backups_arn or source_dbi_resource_id is not specified."
  value       = aws_db_instance.aws_db_instance.source_db_instance_identifier
}
output "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  value       = aws_db_instance.aws_db_instance.bucket_prefix
}
output "id" {
  description = "The RDS instance ID."
  value       = aws_db_instance.aws_db_instance.id
}
output "timezone" {
  description = "(Optional) Time zone of the DB instance. timezonetimezone"
  value       = aws_db_instance.aws_db_instance.timezone
}
output "backup_window" {
  description = "The backup window."
  value       = aws_db_instance.aws_db_instance.backup_window
}
output "character_set_name" {
  description = "The character set (collation) used on Oracle and Microsoft SQL instances.TimeoutsConfiguration options:"
  value       = aws_db_instance.aws_db_instance.character_set_name
}
output "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Copy all Instance tags to snapshots. Default is false."
  value       = aws_db_instance.aws_db_instance.copy_tags_to_snapshot
}
output "network_type" {
  description = "(Optional) The network type of the DB instance. Valid values: IPV4, DUAL."
  value       = aws_db_instance.aws_db_instance.network_type
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_db_instance.aws_db_instance.tags
}
output "db_name" {
  description = "The database name."
  value       = aws_db_instance.aws_db_instance.db_name
}
output "enabled_cloudwatch_logs_exports" {
  description = "(Optional) Set of log types to enable for exporting to CloudWatch logs. If omitted, no logs will be exported. Valid values (depending on engine). MySQL and MariaDB: audit, error, general, slowquery. PostgreSQL: postgresql, upgrade. MSSQL: agent , error. Oracle: alert, audit, listener, trace."
  value       = aws_db_instance.aws_db_instance.enabled_cloudwatch_logs_exports
}
output "instance_class" {
  description = "- The RDS instance class."
  value       = aws_db_instance.aws_db_instance.instance_class
}
output "source_engine_version" {
  description = "(Required, as of Feb 2018 only '5.6' supported) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way.  It's only used to initialize the databaseIn addition to all arguments above, the following attributes are exported:"
  value       = aws_db_instance.aws_db_instance.source_engine_version
}
output "domain_iam_role_name" {
  description = "The name of the IAM role to be used when making API calls to the Directory Service."
  value       = aws_db_instance.aws_db_instance.domain_iam_role_name
}
output "iops" {
  description = "(Optional) The amount of provisioned IOPS. Setting this implies a\nstorage_type of \"io1\"."
  value       = aws_db_instance.aws_db_instance.iops
}
output "parameter_group_name" {
  description = "(Optional) Name of the DB parameter group to\nassociate."
  value       = aws_db_instance.aws_db_instance.parameter_group_name
}
output "replica_mode" {
  description = "(Optional) Specifies whether the replica is in either mounted or open-read-onlyopen-read-only mode unless otherwise specified. See Working with Oracle Read Replicas for more information."
  value       = aws_db_instance.aws_db_instance.replica_mode
}
output "allocated_storage" {
  description = "The amount of allocated storage."
  value       = aws_db_instance.aws_db_instance.allocated_storage
}
output "availability_zone" {
  description = "The availability zone of the instance."
  value       = aws_db_instance.aws_db_instance.availability_zone
}
output "max_allocated_storage" {
  description = "(Optional) When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance. Configuring this will automatically ignore differences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling."
  value       = aws_db_instance.aws_db_instance.max_allocated_storage
}
output "security_group_names" {
  description = "(Optional/Deprecated) List of DB Security Groups to\nassociate. Only used for DB Instances on the emEC2-Classic."
  value       = aws_db_instance.aws_db_instance.security_group_names
}
output "character_set_name" {
  description = "The character set (collation) used on Oracle and Microsoft SQL instances.TimeoutsConfiguration options:"
  value       = aws_db_instance.aws_db_instance.character_set_name
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_db_instance.aws_db_instance.delete
}
output "performance_insights_enabled" {
  description = "(Optional) Specifies whether Performance Insights are enabled. Defaults to false."
  value       = aws_db_instance.aws_db_instance.performance_insights_enabled
}
output "security_group_names" {
  description = "(Optional/Deprecated) List of DB Security Groups to\nassociate. Only used for DB Instances on the emEC2-Classic."
  value       = aws_db_instance.aws_db_instance.security_group_names
}
output "license_model" {
  description = "(Optional, but required for some DB engines, i.e., Oracle\nSE1) License model information for this DB instance."
  value       = aws_db_instance.aws_db_instance.license_model
}
output "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points\nwhen Enhanced Monitoring metrics are collected for the DB instance. To disable\ncollecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid\nValues: 0, 1, 5, 10, 15, 30, 60."
  value       = aws_db_instance.aws_db_instance.monitoring_interval
}
output "network_type" {
  description = "(Optional) The network type of the DB instance. Valid values: IPV4, DUAL."
  value       = aws_db_instance.aws_db_instance.network_type
}
output "username" {
  description = "The master username for the database.On Oracle and Microsoft SQL instances the following is exported additionally:"
  value       = aws_db_instance.aws_db_instance.username
}
output "option_group_name" {
  description = "(Optional) Name of the DB option group to associate."
  value       = aws_db_instance.aws_db_instance.option_group_name
}
output "password" {
  description = "(Required unless a snapshot_identifier or replicate_source_db"
  value       = aws_db_instance.aws_db_instance.password
}
output "source_db_instance_automated_backups_arn" {
  description = "(Optional) The ARN of the automated backup from which to restore. Required if source_db_instance_identifier or source_dbi_resource_id is not specified."
  value       = aws_db_instance.aws_db_instance.source_db_instance_automated_backups_arn
}
output "allocated_storage" {
  description = "The amount of allocated storage."
  value       = aws_db_instance.aws_db_instance.allocated_storage
}
output "endpoint" {
  description = "The connection endpoint in address:port format."
  value       = aws_db_instance.aws_db_instance.endpoint
}
output "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique\nidentifier beginning with the specified prefix. Conflicts with identifier."
  value       = aws_db_instance.aws_db_instance.identifier_prefix
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. If creating an\nencrypted replica, set this to the destination KMS ARN."
  value       = aws_db_instance.aws_db_instance.kms_key_id
}
output "performance_insights_kms_key_id" {
  description = "(Optional) The ARN for the KMS key to encrypt Performance Insights data. When specifying performance_insights_kms_key_id, performance_insights_enabled needs to be set to true. Once KMS key is set, it can never be changed."
  value       = aws_db_instance.aws_db_instance.performance_insights_kms_key_id
}
output "performance_insights_retention_period" {
  description = "(Optional) Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'."
  value       = aws_db_instance.aws_db_instance.performance_insights_retention_period
}
output "status" {
  description = "The RDS instance status."
  value       = aws_db_instance.aws_db_instance.status
}
output "storage_type" {
  description = "(Optional) One of \"standard\" (magnetic), \"gp2\" (general\npurpose SSD), or \"io1\" (provisioned IOPS SSD). The default is \"io1\" if iops"
  value       = aws_db_instance.aws_db_instance.storage_type
}
output "customer_owned_ip_enabled" {
  description = "(Optional) Indicates whether to enable a customer-owned IP address (CoIP) for an RDS on Outposts DB instance. See CoIP for RDS on Outposts for more information.~> strongNOTE: Removing the replicate_source_dbRestore To Point In Time-> strongNote: You can restore to any point in time before the source DB instance's latest_restorable_time or a point up to the number of days specified in the source DB instance's backup_retention_periodDeveloper Guideaurora-mysql or aurora-postgresql DB engines. For Aurora, refer to the aws_rds_cluster resource documentation.The restore_to_point_in_time block supports the following arguments:"
  value       = aws_db_instance.aws_db_instance.customer_owned_ip_enabled
}
output "domain" {
  description = "The ID of the Directory Service Active Directory domain the instance is joined to"
  value       = aws_db_instance.aws_db_instance.domain
}
output "engine" {
  description = "The database engine."
  value       = aws_db_instance.aws_db_instance.engine
}
output "latest_restorable_time" {
  description = "The latest time, in UTC RFC3339 format, to which a database can be restored with point-in-time restore."
  value       = aws_db_instance.aws_db_instance.latest_restorable_time
}
output "restore_time" {
  description = "(Optional) The date and time to restore from. Value must be a time in Universal Coordinated Time (UTC) format and must be before the latest restorable time for the DB instance. Cannot be specified with use_latest_restorable_time."
  value       = aws_db_instance.aws_db_instance.restore_time
}
output "backup_retention_period" {
  description = "The backup retention period."
  value       = aws_db_instance.aws_db_instance.backup_retention_period
}
output "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  value       = aws_db_instance.aws_db_instance.bucket_name
}
output "id" {
  description = "The RDS instance ID."
  value       = aws_db_instance.aws_db_instance.id
}
output "parameter_group_name" {
  description = "(Optional) Name of the DB parameter group to\nassociate."
  value       = aws_db_instance.aws_db_instance.parameter_group_name
}
output "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether mappings of AWS Identity and Access Management (IAM) accounts to database\naccounts is enabled."
  value       = aws_db_instance.aws_db_instance.iam_database_authentication_enabled
}
output "iops" {
  description = "(Optional) The amount of provisioned IOPS. Setting this implies a\nstorage_type of \"io1\"."
  value       = aws_db_instance.aws_db_instance.iops
}
output "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly\naccessible. Default is false."
  value       = aws_db_instance.aws_db_instance.publicly_accessible
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this\ndatabase from a snapshot. This correlates to the snapshot ID you'd find in the\nRDS console, e.g: rds:production-2015-06-26-06-05."
  value       = aws_db_instance.aws_db_instance.snapshot_identifier
}
output "engine_version_actual" {
  description = "The running version of the database."
  value       = aws_db_instance.aws_db_instance.engine_version_actual
}
output "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  value       = aws_db_instance.aws_db_instance.bucket_prefix
}
output "ingestion_role" {
  description = "(Required) Role applied to load the data."
  value       = aws_db_instance.aws_db_instance.ingestion_role
}
output "replica_mode" {
  description = "(Optional) Specifies whether the replica is in either mounted or open-read-onlyopen-read-only mode unless otherwise specified. See Working with Oracle Read Replicas for more information."
  value       = aws_db_instance.aws_db_instance.replica_mode
}
output "resource_id" {
  description = "The RDS Resource ID of this instance."
  value       = aws_db_instance.aws_db_instance.resource_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_db_instance.aws_db_instance.tags
}
output "update" {
  description = "(Default 80m)"
  value       = aws_db_instance.aws_db_instance.update
}
output "vpc_security_group_ids" {
  description = ""
  value       = aws_db_instance.aws_db_instance.vpc_security_group_ids
}
output "name" {
  description = "The database name."
  value       = aws_db_instance.aws_db_instance.name
}
output "port" {
  description = "The database port."
  value       = aws_db_instance.aws_db_instance.port
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_db_instance.aws_db_instance.tags_all
}
output "timezone" {
  description = "(Optional) Time zone of the DB instance. timezonetimezone"
  value       = aws_db_instance.aws_db_instance.timezone
}
output "domain_iam_role_name" {
  description = "The name of the IAM role to be used when making API calls to the Directory Service."
  value       = aws_db_instance.aws_db_instance.domain_iam_role_name
}
output "restore_to_point_in_time" {
  description = "(Optional, Forces new resource) A configuration block for restoring a DB instance to an arbitrary point in time. Requires the identifier argument to be set with the name of the new DB instance to be created. See Restore To Point In Time below for details."
  value       = aws_db_instance.aws_db_instance.restore_to_point_in_time
}
output "source_db_instance_identifier" {
  description = "(Optional) The identifier of the source DB instance from which to restore. Must match the identifier of an existing DB instance. Required if source_db_instance_automated_backups_arn or source_dbi_resource_id is not specified."
  value       = aws_db_instance.aws_db_instance.source_db_instance_identifier
}
output "storage_encrypted" {
  description = "Whether the DB instance is encrypted."
  value       = aws_db_instance.aws_db_instance.storage_encrypted
}
output "use_latest_restorable_time" {
  description = "(Optional) A boolean value that indicates whether the DB instance is restored from the latest backup time. Defaults to false. Cannot be specified with restore_time.S3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBInstanceFromS3.  Sample"
  value       = aws_db_instance.aws_db_instance.use_latest_restorable_time
}
output "address" {
  description = "The hostname of the RDS instance. See also endpoint and port."
  value       = aws_db_instance.aws_db_instance.address
}
output "arn" {
  description = "The ARN of the RDS instance."
  value       = aws_db_instance.aws_db_instance.arn
}
output "max_allocated_storage" {
  description = "(Optional) When configured, the upper limit to which Amazon RDS can automatically scale the storage of the DB instance. Configuring this will automatically ignore differences to allocated_storage. Must be greater than or equal to allocated_storage or 0 to disable Storage Autoscaling."
  value       = aws_db_instance.aws_db_instance.max_allocated_storage
}
output "source_dbi_resource_id" {
  description = "(Optional) The resource ID of the source DB instance from which to restore. Required if source_db_instance_identifier or source_db_instance_automated_backups_arn is not specified."
  value       = aws_db_instance.aws_db_instance.source_dbi_resource_id
}
output "backup_window" {
  description = "The backup window."
  value       = aws_db_instance.aws_db_instance.backup_window
}
output "nchar_character_set_name" {
  description = "(Optional, Forces new resource) The national character set is used in the NCHAR, NVARCHAR2, and NCLOB data types for Oracle instances. This can't be changed. See ."
  value       = aws_db_instance.aws_db_instance.nchar_character_set_name
}
output "replicate_source_db" {
  description = "(Optional) Specifies that this resource is a Replicate\ndatabase, and to use this value as the source database. This correlates to the\nidentifierkms_key_id. See DB Instance Replication and "
  value       = aws_db_instance.aws_db_instance.replicate_source_db
}
output "s3_import" {
  description = "(Optional) Restore from a Percona Xtrabackup in S3.  See Importing Data into an Amazon RDS MySQL DB Instance"
  value       = aws_db_instance.aws_db_instance.s3_import
}
output "multi_az" {
  description = "If the RDS instance is multi AZ enabled."
  value       = aws_db_instance.aws_db_instance.multi_az
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is\ncreated before the DB instance is deleted. If true is specified, no DBSnapshot\nis created. If false is specified, a DB snapshot is created before the DB\ninstance is deleted, using the value from final_snapshot_identifierfalse."
  value       = aws_db_instance.aws_db_instance.skip_final_snapshot
}
output "availability_zone" {
  description = "The availability zone of the instance."
  value       = aws_db_instance.aws_db_instance.availability_zone
}
output "identifier" {
  description = "(Optional, Forces new resource) The name of the RDS instance,\nif omitted, Terraform will assign a random, unique identifier. Required if restore_to_point_in_time is specified."
  value       = aws_db_instance.aws_db_instance.identifier
}
output "maintenance_window" {
  description = "The instance maintenance window."
  value       = aws_db_instance.aws_db_instance.maintenance_window
}
output "monitoring_role_arn" {
  description = "(Optional) The ARN for the IAM role that permits RDS\nto send enhanced monitoring metrics to CloudWatch Logs. You can find more\ninformation on the "
  value       = aws_db_instance.aws_db_instance.monitoring_role_arn
}
output "instance_class" {
  description = "- The RDS instance class."
  value       = aws_db_instance.aws_db_instance.instance_class
}
output "source_engine" {
  description = "(Required, as of Feb 2018 only 'mysql' supported) Source engine for the backup"
  value       = aws_db_instance.aws_db_instance.source_engine
}
output "source_engine_version" {
  description = "(Required, as of Feb 2018 only '5.6' supported) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way.  It's only used to initialize the databaseIn addition to all arguments above, the following attributes are exported:"
  value       = aws_db_instance.aws_db_instance.source_engine_version
}
output "ca_cert_identifier" {
  description = ""
  value       = aws_db_instance.aws_db_instance.ca_cert_identifier
}
output "db_name" {
  description = "The database name."
  value       = aws_db_instance.aws_db_instance.db_name
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot\nwhen this DB instance is deleted. Must be provided if skip_final_snapshotfalse. The value must begin with a letter, only contain alphanumeric characters and hyphens, and not end with a hyphen or contain two consecutive hyphens. Must not be provided when deleting a read replica."
  value       = aws_db_instance.aws_db_instance.final_snapshot_identifier
}
output "hosted_zone_id" {
  description = "The canonical hosted zone ID of the DB instance (to be used\nin a Route 53 Alias record)."
  value       = aws_db_instance.aws_db_instance.hosted_zone_id
}
output "create" {
  description = "(Default 40m)"
  value       = aws_db_instance.aws_db_instance.create
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
      "kind/name"                   = "aws_db_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
