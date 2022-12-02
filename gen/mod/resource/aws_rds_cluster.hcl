resource "aws_rds_cluster" "aws_rds_cluster" {
  apply_immediately                   = var.apply_immediately
  cluster_members                     = var.cluster_members
  db_subnet_group_name                = var.db_subnet_group_name
  engine_version_actual               = var.engine_version_actual
  kms_key_id                          = var.kms_key_id
  serverlessv2_scaling_configuration  = var.serverlessv2_scaling_configuration
  restore_to_point_in_time            = var.restore_to_point_in_time
  restore_type                        = var.restore_type
  allow_major_version_upgrade         = var.allow_major_version_upgrade
  backup_retention_period             = var.backup_retention_period
  create                              = var.create
  database_name                       = var.database_name
  db_cluster_parameter_group_name     = var.db_cluster_parameter_group_name
  db_instance_parameter_group_name    = var.db_instance_parameter_group_name
  ingestion_role                      = var.ingestion_role
  seconds_until_auto_pause            = var.seconds_until_auto_pause
  enable_http_endpoint                = var.enable_http_endpoint
  endpoint                            = var.endpoint
  reader_endpoint                     = var.reader_endpoint
  master_username                     = var.master_username
  network_type                        = var.network_type
  source_engine_version               = var.source_engine_version
  storage_encrypted                   = var.storage_encrypted
  arn                                 = var.arn
  availability_zones                  = var.availability_zones
  source_region                       = var.source_region
  storage_type                        = var.storage_type
  update                              = var.update
  global_cluster_identifier           = var.global_cluster_identifier
  tags_all                            = var.tags_all
  allocated_storage                   = var.allocated_storage
  backtrack_window                    = var.backtrack_window
  enable_global_write_forwarding      = var.enable_global_write_forwarding
  id                                  = var.id
  preferred_backup_window             = var.preferred_backup_window
  scaling_configuration               = var.scaling_configuration
  skip_final_snapshot                 = var.skip_final_snapshot
  enabled_cloudwatch_logs_exports     = var.enabled_cloudwatch_logs_exports
  engine_version                      = var.engine_version
  final_snapshot_identifier           = var.final_snapshot_identifier
  replication_source_identifier       = var.replication_source_identifier
  snapshot_identifier                 = var.snapshot_identifier
  auto_pause                          = var.auto_pause
  copy_tags_to_snapshot               = var.copy_tags_to_snapshot
  max_capacity                        = var.max_capacity
  preferred_maintenance_window        = var.preferred_maintenance_window
  source_engine                       = var.source_engine
  bucket_name                         = var.bucket_name
  bucket_prefix                       = var.bucket_prefix
  cluster_resource_id                 = var.cluster_resource_id
  engine                              = var.engine
  engine_mode                         = var.engine_mode
  restore_to_time                     = var.restore_to_time
  timeout_action                      = var.timeout_action
  db_cluster_instance_class           = var.db_cluster_instance_class
  iam_roles                           = var.iam_roles
  cluster_identifier                  = var.cluster_identifier
  hosted_zone_id                      = var.hosted_zone_id
  min_capacity                        = var.min_capacity
  tags                                = var.tags
  use_latest_restorable_time          = var.use_latest_restorable_time
  cluster_identifier_prefix           = var.cluster_identifier_prefix
  deletion_protection                 = var.deletion_protection
  iam_database_authentication_enabled = var.iam_database_authentication_enabled
  iops                                = var.iops
  master_password                     = var.master_password
  port                                = var.port
  source_cluster_identifier           = var.source_cluster_identifier
  vpc_security_group_ids              = var.vpc_security_group_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance. strongNOTE: This must match the db_subnet_group_name specified on every aws_rds_cluster_instance in the cluster."
  type        = string
  default     = ""
}
variable "engine_version_actual" {
  description = "The running version of the database."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  type        = string
  default     = ""
}
variable "serverlessv2_scaling_configuration" {
  description = "- (Optional) Nested attribute with scaling properties for ServerlessV2. Only valid when engine_mode is set to provisioned. More details below."
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon RDS Documentation for more information."
  type        = string
  default     = ""
}
variable "cluster_members" {
  description = " – List of RDS Instances that are a part of this cluster"
  type        = string
}
variable "restore_to_point_in_time" {
  description = "(Optional) Nested attribute for point in time restore. More details below."
  type        = string
  default     = ""
}
variable "restore_type" {
  description = "full-copy (default) and copy-on-write."
  type        = string
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "database_name" {
  description = "The database name"
  type        = string
}
variable "allow_major_version_upgrade" {
  description = "(Optional) Enable to allow major engine version upgrades when changing engine versions. Defaults to false."
  type        = string
  default     = ""
}
variable "backup_retention_period" {
  description = "The backup retention period"
  type        = string
}
variable "ingestion_role" {
  description = "(Required) Role applied to load the data."
  type        = string
}
variable "seconds_until_auto_pause" {
  description = "(Optional) The time, in seconds, before an Aurora DB cluster in serverless mode is paused. Valid values are 300 through 86400. Defaults to 300."
  type        = string
  default     = ""
}
variable "db_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  type        = string
  default     = ""
}
variable "db_instance_parameter_group_name" {
  description = "(Optional) Instance parameter group to associate with all instances of the DB cluster. The db_instance_parameter_group_name parameter is only valid in combination with the allow_major_version_upgrade parameter."
  type        = string
  default     = ""
}
variable "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically\nload-balanced across replicas"
  type        = string
}
variable "enable_http_endpoint" {
  description = "(Optional) Enable HTTP endpoint (data API). Only valid when engine_mode is set to serverless."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The DNS address of the RDS instance"
  type        = string
}
variable "source_engine_version" {
  description = "(Required) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way. It's only used to initialize the database. This only works currently with the aurora engine. See AWS for currently supported engines and options. See Aurora S3 Migration Docs.restore_to_point_in_time Argument Reference~> strongNOTE:  The DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. Thus, the following arguments should only be specified with the source DB cluster's respective values: database_name, master_username, storage_encrypted, replication_source_identifier, and source_region.Example:"
  type        = string
}
variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  type        = string
}
variable "master_username" {
  description = "The master username for the database"
  type        = string
}
variable "network_type" {
  description = "(Optional) The network type of the cluster. Valid values: IPV4, DUAL."
  type        = string
  default     = ""
}
variable "source_region" {
  description = "(Optional) The source region for an encrypted replica DB cluster."
  type        = string
  default     = ""
}
variable "storage_type" {
  description = "(Optional) Specifies the storage type to be associated with the DB cluster. (This setting is required to create a Multi-AZ DB cluster). Valid values: io1, Default: io1."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 120m)"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  type        = string
}
variable "availability_zones" {
  description = "The availability zone of the instance"
  type        = string
}
variable "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_rds_global_cluster."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "enable_global_write_forwarding" {
  description = "(Optional) Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an aws_rds_global_cluster's primary cluster. See the Aurora Userguide documentation for more information."
  type        = string
  default     = ""
}
variable "id" {
  description = "The RDS Cluster Identifier"
  type        = string
}
variable "preferred_backup_window" {
  description = "The daily time range during which the backups happen"
  type        = string
}
variable "scaling_configuration" {
  description = "(Optional) Nested attribute with scaling properties. Only valid when engine_mode is set to serverless. More details below."
  type        = string
  default     = ""
}
variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  type        = string
  default     = ""
}
variable "allocated_storage" {
  description = "(Optional) The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster. (This setting is required to create a Multi-AZ DB cluster)."
  type        = string
  default     = ""
}
variable "backtrack_window" {
  description = "(Optional) The target backtrack window, in seconds. Only available for aurora and aurora-mysql engines currently. To disable backtracking, set this value to 0. Defaults to 0. Must be between 0 and 259200 (72 hours)"
  type        = string
  default     = ""
}
variable "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made."
  type        = string
  default     = ""
}
variable "replication_source_identifier" {
  description = "ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica."
  type        = string
}
variable "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  type        = string
  default     = ""
}
variable "enabled_cloudwatch_logs_exports" {
  description = "(Optional) Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: audit, error, general, slowquery, postgresql (PostgreSQL)."
  type        = string
  default     = ""
}
variable "engine_version" {
  description = "(Optional) The database engine version. Updating this argument results in an outage. See the Aurora MySQL and Aurora Postgres documentation for your configured engine to determine this value. For example with Aurora MySQL 2, a potential value for this argument is 5.7.mysql_aurora.2.03.2. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute engine_version_actual, , see  below."
  type        = string
  default     = ""
}
variable "max_capacity" {
  description = "(Required) The maximum capacity for an Aurora DB cluster in provisioned DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5."
  type        = string
}
variable "preferred_maintenance_window" {
  description = "The maintenance window"
  type        = string
}
variable "source_engine" {
  description = "(Required) Source engine for the backup"
  type        = string
}
variable "auto_pause" {
  description = "(Optional) Whether to enable automatic pause. A DB cluster can be paused only when it's idle (it has no connections). If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. Defaults to true."
  type        = string
  default     = ""
}
variable "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Copy all Cluster tags to snapshots. Default is false."
  type        = string
}
variable "cluster_resource_id" {
  description = "The RDS Cluster Resource ID"
  type        = string
}
variable "engine" {
  description = "The database engine"
  type        = string
}
variable "engine_mode" {
  description = "(Optional) The database engine mode. Valid values: global (only valid for Aurora MySQL 1.21 and earlier), multimaster, parallelquery, provisioned, serverless. Defaults to: provisioned. See the RDS User Guide for limitations when using serverless."
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  type        = string
}
variable "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  type        = string
  default     = ""
}
variable "restore_to_time" {
  description = "(Optional) Date and time in UTC format to restore the database cluster to. Conflicts with use_latest_restorable_time.scaling_configuration Argument Reference~> strongNOTE: scaling_configuration configuration is only valid when engine_mode is set to serverless.Example:"
  type        = string
  default     = ""
}
variable "timeout_action" {
  description = "(Optional) The action to take when the timeout is reached. Valid values: ForceApplyCapacityChange, RollbackCapacityChange. Defaults to RollbackCapacityChange. See documentation.serverlessv2_scaling_configuration Argument Reference~> strongNOTE: serverlessv2_scaling_configuration configuration is only valid when engine_mode is set to provisionedExample:"
  type        = string
  default     = ""
}
variable "db_cluster_instance_class" {
  description = "(Optional) The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see DB instance class in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster)."
  type        = string
  default     = ""
}
variable "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the RDS Cluster."
  type        = string
  default     = ""
}
variable "min_capacity" {
  description = "(Required) The minimum capacity for an Aurora DB cluster in provisioned DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the DB cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  type        = string
}
variable "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  type        = string
}
variable "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see AWS Documentation for availability and limitations."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see Amazon RDS Provisioned IOPS storage to improve performance in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster."
  type        = string
  default     = ""
}
variable "master_password" {
  description = "(Required unless a snapshot_identifier or replication_source_identifier is provided or unless a global_cluster_identifier is provided when the cluster is the \"secondary\" cluster of a global database) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the RDS Naming Constraints"
  type        = string
}
variable "port" {
  description = "The database port"
  type        = string
}
variable "source_cluster_identifier" {
  description = "(Required) The identifier of the source database cluster from which to restore."
  type        = string
}
variable "use_latest_restorable_time" {
  description = "(Optional) Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with restore_to_time."
  type        = string
  default     = ""
}
variable "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  type        = string
}
variable "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  type        = string
  default     = ""
}
variable "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the ClusterS3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBClusterFromS3. Requires that the S3 bucket be in the same region as the RDS cluster you're trying to create. Sample:~> strongNOTE: RDS Aurora Serverless does not support loading data from S3, so its not possible to directly use engine_mode set to serverless with s3_import."
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
output "db_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  value       = aws_rds_cluster.aws_rds_cluster.db_cluster_parameter_group_name
}
output "db_instance_parameter_group_name" {
  description = "(Optional) Instance parameter group to associate with all instances of the DB cluster. The db_instance_parameter_group_name parameter is only valid in combination with the allow_major_version_upgrade parameter."
  value       = aws_rds_cluster.aws_rds_cluster.db_instance_parameter_group_name
}
output "ingestion_role" {
  description = "(Required) Role applied to load the data."
  value       = aws_rds_cluster.aws_rds_cluster.ingestion_role
}
output "seconds_until_auto_pause" {
  description = "(Optional) The time, in seconds, before an Aurora DB cluster in serverless mode is paused. Valid values are 300 through 86400. Defaults to 300."
  value       = aws_rds_cluster.aws_rds_cluster.seconds_until_auto_pause
}
output "enable_http_endpoint" {
  description = "(Optional) Enable HTTP endpoint (data API). Only valid when engine_mode is set to serverless."
  value       = aws_rds_cluster.aws_rds_cluster.enable_http_endpoint
}
output "endpoint" {
  description = "The DNS address of the RDS instance"
  value       = aws_rds_cluster.aws_rds_cluster.endpoint
}
output "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically\nload-balanced across replicas"
  value       = aws_rds_cluster.aws_rds_cluster.reader_endpoint
}
output "master_username" {
  description = "The master username for the database"
  value       = aws_rds_cluster.aws_rds_cluster.master_username
}
output "network_type" {
  description = "(Optional) The network type of the cluster. Valid values: IPV4, DUAL."
  value       = aws_rds_cluster.aws_rds_cluster.network_type
}
output "source_engine_version" {
  description = "(Required) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way. It's only used to initialize the database. This only works currently with the aurora engine. See AWS for currently supported engines and options. See Aurora S3 Migration Docs.restore_to_point_in_time Argument Reference~> strongNOTE:  The DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. Thus, the following arguments should only be specified with the source DB cluster's respective values: database_name, master_username, storage_encrypted, replication_source_identifier, and source_region.Example:"
  value       = aws_rds_cluster.aws_rds_cluster.source_engine_version
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  value       = aws_rds_cluster.aws_rds_cluster.storage_encrypted
}
output "update" {
  description = "(Default 120m)"
  value       = aws_rds_cluster.aws_rds_cluster.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_rds_cluster.aws_rds_cluster.arn
}
output "availability_zones" {
  description = "The availability zone of the instance"
  value       = aws_rds_cluster.aws_rds_cluster.availability_zones
}
output "source_region" {
  description = "(Optional) The source region for an encrypted replica DB cluster."
  value       = aws_rds_cluster.aws_rds_cluster.source_region
}
output "storage_type" {
  description = "(Optional) Specifies the storage type to be associated with the DB cluster. (This setting is required to create a Multi-AZ DB cluster). Valid values: io1, Default: io1."
  value       = aws_rds_cluster.aws_rds_cluster.storage_type
}
output "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_rds_global_cluster."
  value       = aws_rds_cluster.aws_rds_cluster.global_cluster_identifier
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_cluster.aws_rds_cluster.tags_all
}
output "preferred_backup_window" {
  description = "The daily time range during which the backups happen"
  value       = aws_rds_cluster.aws_rds_cluster.preferred_backup_window
}
output "scaling_configuration" {
  description = "(Optional) Nested attribute with scaling properties. Only valid when engine_mode is set to serverless. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.scaling_configuration
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  value       = aws_rds_cluster.aws_rds_cluster.skip_final_snapshot
}
output "allocated_storage" {
  description = "(Optional) The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster. (This setting is required to create a Multi-AZ DB cluster)."
  value       = aws_rds_cluster.aws_rds_cluster.allocated_storage
}
output "backtrack_window" {
  description = "(Optional) The target backtrack window, in seconds. Only available for aurora and aurora-mysql engines currently. To disable backtracking, set this value to 0. Defaults to 0. Must be between 0 and 259200 (72 hours)"
  value       = aws_rds_cluster.aws_rds_cluster.backtrack_window
}
output "enable_global_write_forwarding" {
  description = "(Optional) Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an aws_rds_global_cluster's primary cluster. See the Aurora Userguide documentation for more information."
  value       = aws_rds_cluster.aws_rds_cluster.enable_global_write_forwarding
}
output "id" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster.aws_rds_cluster.id
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  value       = aws_rds_cluster.aws_rds_cluster.snapshot_identifier
}
output "enabled_cloudwatch_logs_exports" {
  description = "(Optional) Set of log types to export to cloudwatch. If omitted, no logs will be exported. The following log types are supported: audit, error, general, slowquery, postgresql (PostgreSQL)."
  value       = aws_rds_cluster.aws_rds_cluster.enabled_cloudwatch_logs_exports
}
output "engine_version" {
  description = "(Optional) The database engine version. Updating this argument results in an outage. See the Aurora MySQL and Aurora Postgres documentation for your configured engine to determine this value. For example with Aurora MySQL 2, a potential value for this argument is 5.7.mysql_aurora.2.03.2. The value can contain a partial version where supported by the API. The actual engine version used is returned in the attribute engine_version_actual, , see  below."
  value       = aws_rds_cluster.aws_rds_cluster.engine_version
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made."
  value       = aws_rds_cluster.aws_rds_cluster.final_snapshot_identifier
}
output "replication_source_identifier" {
  description = "ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica."
  value       = aws_rds_cluster.aws_rds_cluster.replication_source_identifier
}
output "source_engine" {
  description = "(Required) Source engine for the backup"
  value       = aws_rds_cluster.aws_rds_cluster.source_engine
}
output "auto_pause" {
  description = "(Optional) Whether to enable automatic pause. A DB cluster can be paused only when it's idle (it has no connections). If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. Defaults to true."
  value       = aws_rds_cluster.aws_rds_cluster.auto_pause
}
output "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Copy all Cluster tags to snapshots. Default is false."
  value       = aws_rds_cluster.aws_rds_cluster.copy_tags_to_snapshot
}
output "max_capacity" {
  description = "(Required) The maximum capacity for an Aurora DB cluster in provisioned DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5."
  value       = aws_rds_cluster.aws_rds_cluster.max_capacity
}
output "preferred_maintenance_window" {
  description = "The maintenance window"
  value       = aws_rds_cluster.aws_rds_cluster.preferred_maintenance_window
}
output "engine_mode" {
  description = "(Optional) The database engine mode. Valid values: global (only valid for Aurora MySQL 1.21 and earlier), multimaster, parallelquery, provisioned, serverless. Defaults to: provisioned. See the RDS User Guide for limitations when using serverless."
  value       = aws_rds_cluster.aws_rds_cluster.engine_mode
}
output "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  value       = aws_rds_cluster.aws_rds_cluster.bucket_name
}
output "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  value       = aws_rds_cluster.aws_rds_cluster.bucket_prefix
}
output "cluster_resource_id" {
  description = "The RDS Cluster Resource ID"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_resource_id
}
output "engine" {
  description = "The database engine"
  value       = aws_rds_cluster.aws_rds_cluster.engine
}
output "restore_to_time" {
  description = "(Optional) Date and time in UTC format to restore the database cluster to. Conflicts with use_latest_restorable_time.scaling_configuration Argument Reference~> strongNOTE: scaling_configuration configuration is only valid when engine_mode is set to serverless.Example:"
  value       = aws_rds_cluster.aws_rds_cluster.restore_to_time
}
output "timeout_action" {
  description = "(Optional) The action to take when the timeout is reached. Valid values: ForceApplyCapacityChange, RollbackCapacityChange. Defaults to RollbackCapacityChange. See documentation.serverlessv2_scaling_configuration Argument Reference~> strongNOTE: serverlessv2_scaling_configuration configuration is only valid when engine_mode is set to provisionedExample:"
  value       = aws_rds_cluster.aws_rds_cluster.timeout_action
}
output "db_cluster_instance_class" {
  description = "(Optional) The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see DB instance class in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster)."
  value       = aws_rds_cluster.aws_rds_cluster.db_cluster_instance_class
}
output "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the RDS Cluster."
  value       = aws_rds_cluster.aws_rds_cluster.iam_roles
}
output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_identifier
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_rds_cluster.aws_rds_cluster.hosted_zone_id
}
output "min_capacity" {
  description = "(Required) The minimum capacity for an Aurora DB cluster in provisioned DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_cluster.aws_rds_cluster.min_capacity
}
output "tags" {
  description = "(Optional) A map of tags to assign to the DB cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_rds_cluster.aws_rds_cluster.tags
}
output "master_password" {
  description = "(Required unless a snapshot_identifier or replication_source_identifier is provided or unless a global_cluster_identifier is provided when the cluster is the \"secondary\" cluster of a global database) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the RDS Naming Constraints"
  value       = aws_rds_cluster.aws_rds_cluster.master_password
}
output "port" {
  description = "The database port"
  value       = aws_rds_cluster.aws_rds_cluster.port
}
output "source_cluster_identifier" {
  description = "(Required) The identifier of the source database cluster from which to restore."
  value       = aws_rds_cluster.aws_rds_cluster.source_cluster_identifier
}
output "use_latest_restorable_time" {
  description = "(Optional) Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with restore_to_time."
  value       = aws_rds_cluster.aws_rds_cluster.use_latest_restorable_time
}
output "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  value       = aws_rds_cluster.aws_rds_cluster.cluster_identifier_prefix
}
output "deletion_protection" {
  description = "(Optional) If the DB instance should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  value       = aws_rds_cluster.aws_rds_cluster.deletion_protection
}
output "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see AWS Documentation for availability and limitations."
  value       = aws_rds_cluster.aws_rds_cluster.iam_database_authentication_enabled
}
output "iops" {
  description = "(Optional) The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see Amazon RDS Provisioned IOPS storage to improve performance in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster."
  value       = aws_rds_cluster.aws_rds_cluster.iops
}
output "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the ClusterS3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBClusterFromS3. Requires that the S3 bucket be in the same region as the RDS cluster you're trying to create. Sample:~> strongNOTE: RDS Aurora Serverless does not support loading data from S3, so its not possible to directly use engine_mode set to serverless with s3_import."
  value       = aws_rds_cluster.aws_rds_cluster.vpc_security_group_ids
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  value       = aws_rds_cluster.aws_rds_cluster.kms_key_id
}
output "serverlessv2_scaling_configuration" {
  description = "- (Optional) Nested attribute with scaling properties for ServerlessV2. Only valid when engine_mode is set to provisioned. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.serverlessv2_scaling_configuration
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon RDS Documentation for more information."
  value       = aws_rds_cluster.aws_rds_cluster.apply_immediately
}
output "cluster_members" {
  description = " – List of RDS Instances that are a part of this cluster"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_members
}
output "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance. strongNOTE: This must match the db_subnet_group_name specified on every aws_rds_cluster_instance in the cluster."
  value       = aws_rds_cluster.aws_rds_cluster.db_subnet_group_name
}
output "engine_version_actual" {
  description = "The running version of the database."
  value       = aws_rds_cluster.aws_rds_cluster.engine_version_actual
}
output "restore_to_point_in_time" {
  description = "(Optional) Nested attribute for point in time restore. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.restore_to_point_in_time
}
output "restore_type" {
  description = "full-copy (default) and copy-on-write."
  value       = aws_rds_cluster.aws_rds_cluster.restore_type
}
output "allow_major_version_upgrade" {
  description = "(Optional) Enable to allow major engine version upgrades when changing engine versions. Defaults to false."
  value       = aws_rds_cluster.aws_rds_cluster.allow_major_version_upgrade
}
output "backup_retention_period" {
  description = "The backup retention period"
  value       = aws_rds_cluster.aws_rds_cluster.backup_retention_period
}
output "create" {
  description = "(Default 120m)"
  value       = aws_rds_cluster.aws_rds_cluster.create
}
output "database_name" {
  description = "The database name"
  value       = aws_rds_cluster.aws_rds_cluster.database_name
}
output "network_type" {
  description = "(Optional) The network type of the cluster. Valid values: IPV4, DUAL."
  value       = aws_rds_cluster.aws_rds_cluster.network_type
}
output "backup_retention_period" {
  description = "The backup retention period"
  value       = aws_rds_cluster.aws_rds_cluster.backup_retention_period
}
output "seconds_until_auto_pause" {
  description = "(Optional) The time, in seconds, before an Aurora DB cluster in serverless mode is paused. Valid values are 300 through 86400. Defaults to 300."
  value       = aws_rds_cluster.aws_rds_cluster.seconds_until_auto_pause
}
output "scaling_configuration" {
  description = "(Optional) Nested attribute with scaling properties. Only valid when engine_mode is set to serverless. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.scaling_configuration
}
output "storage_type" {
  description = "(Optional) Specifies the storage type to be associated with the DB cluster. (This setting is required to create a Multi-AZ DB cluster). Valid values: io1, Default: io1."
  value       = aws_rds_cluster.aws_rds_cluster.storage_type
}
output "timeout_action" {
  description = "(Optional) The action to take when the timeout is reached. Valid values: ForceApplyCapacityChange, RollbackCapacityChange. Defaults to RollbackCapacityChange. See documentation.serverlessv2_scaling_configuration Argument Reference~> strongNOTE: serverlessv2_scaling_configuration configuration is only valid when engine_mode is set to provisionedExample:"
  value       = aws_rds_cluster.aws_rds_cluster.timeout_action
}
output "master_username" {
  description = "The master username for the database"
  value       = aws_rds_cluster.aws_rds_cluster.master_username
}
output "min_capacity" {
  description = "(Required) The minimum capacity for an Aurora DB cluster in provisioned DB engine mode. The minimum capacity must be lesser than or equal to the maximum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_cluster.aws_rds_cluster.min_capacity
}
output "reader_endpoint" {
  description = "A read-only endpoint for the Aurora cluster, automatically\nload-balanced across replicas"
  value       = aws_rds_cluster.aws_rds_cluster.reader_endpoint
}
output "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled. Please see AWS Documentation for availability and limitations."
  value       = aws_rds_cluster.aws_rds_cluster.iam_database_authentication_enabled
}
output "db_cluster_instance_class" {
  description = "(Optional) The compute and memory capacity of each DB instance in the Multi-AZ DB cluster, for example db.m6g.xlarge. Not all DB instance classes are available in all AWS Regions, or for all database engines. For the full list of DB instance classes and availability for your engine, see DB instance class in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster)."
  value       = aws_rds_cluster.aws_rds_cluster.db_cluster_instance_class
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final DB snapshot when this DB cluster is deleted. If omitted, no final snapshot will be made."
  value       = aws_rds_cluster.aws_rds_cluster.final_snapshot_identifier
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_rds_cluster.aws_rds_cluster.hosted_zone_id
}
output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_identifier
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted"
  value       = aws_rds_cluster.aws_rds_cluster.storage_encrypted
}
output "tags" {
  description = "(Optional) A map of tags to assign to the DB cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_rds_cluster.aws_rds_cluster.tags
}
output "restore_to_time" {
  description = "(Optional) Date and time in UTC format to restore the database cluster to. Conflicts with use_latest_restorable_time.scaling_configuration Argument Reference~> strongNOTE: scaling_configuration configuration is only valid when engine_mode is set to serverless.Example:"
  value       = aws_rds_cluster.aws_rds_cluster.restore_to_time
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_rds_cluster.aws_rds_cluster.arn
}
output "availability_zones" {
  description = "The availability zone of the instance"
  value       = aws_rds_cluster.aws_rds_cluster.availability_zones
}
output "create" {
  description = "(Default 120m)"
  value       = aws_rds_cluster.aws_rds_cluster.create
}
output "iops" {
  description = "(Optional) The amount of Provisioned IOPS (input/output operations per second) to be initially allocated for each DB instance in the Multi-AZ DB cluster. For information about valid Iops values, see Amazon RDS Provisioned IOPS storage to improve performance in the Amazon RDS User Guide. (This setting is required to create a Multi-AZ DB cluster). Must be a multiple between .5 and 50 of the storage amount for the DB cluster."
  value       = aws_rds_cluster.aws_rds_cluster.iops
}
output "serverlessv2_scaling_configuration" {
  description = "- (Optional) Nested attribute with scaling properties for ServerlessV2. Only valid when engine_mode is set to provisioned. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.serverlessv2_scaling_configuration
}
output "source_region" {
  description = "(Optional) The source region for an encrypted replica DB cluster."
  value       = aws_rds_cluster.aws_rds_cluster.source_region
}
output "bucket_prefix" {
  description = "(Optional) Can be blank, but is the path to your backup"
  value       = aws_rds_cluster.aws_rds_cluster.bucket_prefix
}
output "engine_version_actual" {
  description = "The running version of the database."
  value       = aws_rds_cluster.aws_rds_cluster.engine_version_actual
}
output "ingestion_role" {
  description = "(Required) Role applied to load the data."
  value       = aws_rds_cluster.aws_rds_cluster.ingestion_role
}
output "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_rds_global_cluster."
  value       = aws_rds_cluster.aws_rds_cluster.global_cluster_identifier
}
output "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the RDS Cluster."
  value       = aws_rds_cluster.aws_rds_cluster.iam_roles
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  value       = aws_rds_cluster.aws_rds_cluster.kms_key_id
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  value       = aws_rds_cluster.aws_rds_cluster.snapshot_identifier
}
output "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the ClusterS3 Import OptionsFull details on the core parameters and impacts are in the API Docs: RestoreDBClusterFromS3. Requires that the S3 bucket be in the same region as the RDS cluster you're trying to create. Sample:~> strongNOTE: RDS Aurora Serverless does not support loading data from S3, so its not possible to directly use engine_mode set to serverless with s3_import."
  value       = aws_rds_cluster.aws_rds_cluster.vpc_security_group_ids
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_cluster.aws_rds_cluster.tags_all
}
output "engine" {
  description = "The database engine"
  value       = aws_rds_cluster.aws_rds_cluster.engine
}
output "preferred_backup_window" {
  description = "The daily time range during which the backups happen"
  value       = aws_rds_cluster.aws_rds_cluster.preferred_backup_window
}
output "replication_source_identifier" {
  description = "ARN of the source DB cluster or DB instance if this DB cluster is created as a Read Replica."
  value       = aws_rds_cluster.aws_rds_cluster.replication_source_identifier
}
output "delete" {
  description = "(Default 120m"
  value       = aws_rds_cluster.aws_rds_cluster.delete
}
output "master_password" {
  description = "(Required unless a snapshot_identifier or replication_source_identifier is provided or unless a global_cluster_identifier is provided when the cluster is the \"secondary\" cluster of a global database) Password for the master DB user. Note that this may show up in logs, and it will be stored in the state file. Please refer to the RDS Naming Constraints"
  value       = aws_rds_cluster.aws_rds_cluster.master_password
}
output "source_engine_version" {
  description = "(Required) Version of the source engine used to make the backupThis will not recreate the resource if the S3 object changes in some way. It's only used to initialize the database. This only works currently with the aurora engine. See AWS for currently supported engines and options. See Aurora S3 Migration Docs.restore_to_point_in_time Argument Reference~> strongNOTE:  The DB cluster is created from the source DB cluster with the same configuration as the original DB cluster, except that the new DB cluster is created with the default DB security group. Thus, the following arguments should only be specified with the source DB cluster's respective values: database_name, master_username, storage_encrypted, replication_source_identifier, and source_region.Example:"
  value       = aws_rds_cluster.aws_rds_cluster.source_engine_version
}
output "enable_global_write_forwarding" {
  description = "(Optional) Whether cluster should forward writes to an associated global cluster. Applied to secondary clusters to enable them to forward writes to an aws_rds_global_cluster's primary cluster. See the Aurora Userguide documentation for more information."
  value       = aws_rds_cluster.aws_rds_cluster.enable_global_write_forwarding
}
output "source_engine" {
  description = "(Required) Source engine for the backup"
  value       = aws_rds_cluster.aws_rds_cluster.source_engine
}
output "use_latest_restorable_time" {
  description = "(Optional) Set to true to restore the database cluster to the latest restorable backup time. Defaults to false. Conflicts with restore_to_time."
  value       = aws_rds_cluster.aws_rds_cluster.use_latest_restorable_time
}
output "restore_type" {
  description = "full-copy (default) and copy-on-write."
  value       = aws_rds_cluster.aws_rds_cluster.restore_type
}
output "update" {
  description = "(Default 120m)"
  value       = aws_rds_cluster.aws_rds_cluster.update
}
output "allocated_storage" {
  description = "(Optional) The amount of storage in gibibytes (GiB) to allocate to each DB instance in the Multi-AZ DB cluster. (This setting is required to create a Multi-AZ DB cluster)."
  value       = aws_rds_cluster.aws_rds_cluster.allocated_storage
}
output "bucket_name" {
  description = "(Required) The bucket name where your backup is stored"
  value       = aws_rds_cluster.aws_rds_cluster.bucket_name
}
output "port" {
  description = "The database port"
  value       = aws_rds_cluster.aws_rds_cluster.port
}
output "database_name" {
  description = "The database name"
  value       = aws_rds_cluster.aws_rds_cluster.database_name
}
output "endpoint" {
  description = "The DNS address of the RDS instance"
  value       = aws_rds_cluster.aws_rds_cluster.endpoint
}
output "preferred_maintenance_window" {
  description = "The maintenance window"
  value       = aws_rds_cluster.aws_rds_cluster.preferred_maintenance_window
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  value       = aws_rds_cluster.aws_rds_cluster.skip_final_snapshot
}
output "auto_pause" {
  description = "(Optional) Whether to enable automatic pause. A DB cluster can be paused only when it's idle (it has no connections). If a DB cluster is paused for more than seven days, the DB cluster might be backed up with a snapshot. In this case, the DB cluster is restored when there is a request to connect to it. Defaults to true."
  value       = aws_rds_cluster.aws_rds_cluster.auto_pause
}
output "cluster_resource_id" {
  description = "The RDS Cluster Resource ID"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_resource_id
}
output "id" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster.aws_rds_cluster.id
}
output "source_cluster_identifier" {
  description = "(Required) The identifier of the source database cluster from which to restore."
  value       = aws_rds_cluster.aws_rds_cluster.source_cluster_identifier
}
output "cluster_members" {
  description = " – List of RDS Instances that are a part of this cluster"
  value       = aws_rds_cluster.aws_rds_cluster.cluster_members
}
output "max_capacity" {
  description = "(Required) The maximum capacity for an Aurora DB cluster in provisioned DB engine mode. The maximum capacity must be greater than or equal to the minimum capacity. Valid capacity values are in a range of 0.5 up to 128 in steps of 0.5."
  value       = aws_rds_cluster.aws_rds_cluster.max_capacity
}
output "restore_to_point_in_time" {
  description = "(Optional) Nested attribute for point in time restore. More details below."
  value       = aws_rds_cluster.aws_rds_cluster.restore_to_point_in_time
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
      "kind/name"                   = "aws_rds_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
