resource "aws_elasticache_replication_group" "aws_elasticache_replication_group" {
  engine_version                 = var.engine_version
  member_clusters                = var.member_clusters
  port                           = var.port
  preferred_cache_cluster_azs    = var.preferred_cache_cluster_azs
  replicas_per_node_group        = var.replicas_per_node_group
  multi_az_enabled               = var.multi_az_enabled
  arn                            = var.arn
  apply_immediately              = var.apply_immediately
  log_type                       = var.log_type
  snapshot_name                  = var.snapshot_name
  snapshot_window                = var.snapshot_window
  destination_type               = var.destination_type
  global_replication_group_id    = var.global_replication_group_id
  num_cache_clusters             = var.num_cache_clusters
  replication_group_id           = var.replication_group_id
  availability_zones             = var.availability_zones
  kms_key_id                     = var.kms_key_id
  replication_group_description  = var.replication_group_description
  snapshot_retention_limit       = var.snapshot_retention_limit
  automatic_failover_enabled     = var.automatic_failover_enabled
  subnet_group_name              = var.subnet_group_name
  maintenance_window             = var.maintenance_window
  reader_endpoint_address        = var.reader_endpoint_address
  update                         = var.update
  cluster_enabled                = var.cluster_enabled
  node_type                      = var.node_type
  num_node_groups                = var.num_node_groups
  number_cache_clusters          = var.number_cache_clusters
  security_group_names           = var.security_group_names
  snapshot_arns                  = var.snapshot_arns
  auto_minor_version_upgrade     = var.auto_minor_version_upgrade
  destination                    = var.destination
  delete                         = var.delete
  primary_endpoint_address       = var.primary_endpoint_address
  tags_all                       = var.tags_all
  transit_encryption_enabled     = var.transit_encryption_enabled
  log_format                     = var.log_format
  engine_version_actual          = var.engine_version_actual
  final_snapshot_identifier      = var.final_snapshot_identifier
  parameter_group_name           = var.parameter_group_name
  at_rest_encryption_enabled     = var.at_rest_encryption_enabled
  auth_token                     = var.auth_token
  create                         = var.create
  data_tiering_enabled           = var.data_tiering_enabled
  security_group_ids             = var.security_group_ids
  description                    = var.description
  id                             = var.id
  log_delivery_configuration     = var.log_delivery_configuration
  notification_topic_arn         = var.notification_topic_arn
  cluster_mode                   = var.cluster_mode
  configuration_endpoint_address = var.configuration_endpoint_address
  engine                         = var.engine
  tags                           = var.tags
  user_group_ids                 = var.user_group_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true."
  type        = string
  default     = ""
}
variable "replication_group_description" {
  description = " – (strongDeprecated use description instead) User-created description for the replication group. Must not be empty."
  type        = string
}
variable "replication_group_id" {
  description = " – (Required) Replication group identifier. This parameter is stored as a lowercase string."
  type        = string
}
variable "availability_zones" {
  description = "(Optional, strongDeprecated use preferred_cache_cluster_azs instead) List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is not considered."
  type        = string
  default     = ""
}
variable "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of snapshot_retention_limit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  type        = string
  default     = ""
}
variable "automatic_failover_enabled" {
  description = "(Optional) Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, num_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to false."
  type        = string
  default     = ""
}
variable "subnet_group_name" {
  description = "(Optional) Name of the cache subnet group to be used for the replication group."
  type        = string
  default     = ""
}
variable "maintenance_window" {
  description = " – (Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00"
  type        = string
  default     = ""
}
variable "reader_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 40m)"
  type        = string
  default     = ""
}
variable "number_cache_clusters" {
  description = "(Optional, strongDeprecated use num_cache_clusters instead) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_cache_clusters, num_node_groups, or the deprecated cluster_mode. Defaults to 1."
  type        = string
  default     = ""
}
variable "security_group_names" {
  description = "(Optional) List of cache security group names to associate with this replication group."
  type        = string
  default     = ""
}
variable "snapshot_arns" {
  description = " – (Optional) List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas."
  type        = string
  default     = ""
}
variable "cluster_enabled" {
  description = "Indicates if cluster mode is enabled."
  type        = string
  default     = ""
}
variable "node_type" {
  description = "(Optional) Instance class to be used. See AWS documentation for information on supported node types and guidance on selecting node types. Required unless global_replication_group_id is set. Cannot be set if global_replication_group_id is set."
  type        = string
  default     = ""
}
variable "num_node_groups" {
  description = "(Optional, strongDeprecated use root-level num_node_groups instead) Number of node groups (shards) for this Redis replication group. Changing this number will trigger an online resizing operation before other settings modifications. Required unless global_replication_group_id is set."
  type        = string
  default     = ""
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.\nOnly supported for engine type \"redis\"true."
  type        = string
  default     = ""
}
variable "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "transit_encryption_enabled" {
  description = "(Optional) Whether to enable encryption in transit."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 40m)"
  type        = string
  default     = ""
}
variable "primary_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled."
  type        = string
  default     = ""
}
variable "log_format" {
  description = "Valid values are json or text"
  type        = string
  default     = ""
}
variable "parameter_group_name" {
  description = "(Optional) Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable \"cluster mode\", i.e., data sharding, use a parameter group that has the parameter cluster-enabled set to true."
  type        = string
  default     = ""
}
variable "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
  type        = string
  default     = ""
}
variable "final_snapshot_identifier" {
  description = "(Optional) The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 60m)"
  type        = string
  default     = ""
}
variable "data_tiering_enabled" {
  description = "(Optional) Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes."
  type        = string
  default     = ""
}
variable "at_rest_encryption_enabled" {
  description = "(Optional) Whether to enable encryption at rest."
  type        = string
  default     = ""
}
variable "auth_token" {
  description = "(Optional) Password used to access a password protected server. Can be specified only if transit_encryption_enabled = true."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Optional) One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud"
  type        = string
  default     = ""
}
variable "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  type        = string
  default     = ""
}
variable "description" {
  description = " – (Required) User-created description for the replication group. Must not be empty."
  type        = string
}
variable "id" {
  description = "ID of the ElastiCache Replication Group."
  type        = string
  default     = ""
}
variable "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "user_group_ids" {
  description = "(Optional) User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. strongNOTE: This argument emis a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.cluster_mode (strongDEPRECATED)"
  type        = string
  default     = ""
}
variable "cluster_mode" {
  description = "(Optional, strongDeprecated use root-level num_node_groups and replicas_per_node_group instead) Create a native Redis cluster. automatic_failover_enabled must be set to true. Cluster Mode documented below. Only 1 cluster_mode block is allowed. Note that configuring this block does not enable cluster mode, i.e., data sharding, this requires using a parameter group that has the parameter cluster-enabled set to true."
  type        = string
  default     = ""
}
variable "configuration_endpoint_address" {
  description = "Address of the replication group configuration endpoint when cluster mode is enabled."
  type        = string
  default     = ""
}
variable "engine" {
  description = "(Optional) Name of the cache engine to be used for the clusters in this replication group. The only valid value is redis."
  type        = string
  default     = ""
}
variable "preferred_cache_cluster_azs" {
  description = "(Optional) List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating."
  type        = string
  default     = ""
}
variable "replicas_per_node_group" {
  description = "(Optional, Required with cluster_mode num_node_groups, strongDeprecated use root-level replicas_per_node_group instead) Number of replica nodes in each node group. Valid values are 0 to 5. Changing this number will trigger an online resizing operation before other settings modifications.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  type        = string
  default     = ""
}
variable "engine_version" {
  description = "(Optional) Version number of the cache engine to be used for the cache clusters in this replication group.\nIf the version is 6 or higher, the major and minor version can be set, e.g., 6.26.x5.0.6engine_version_actual, see  below."
  type        = string
  default     = ""
}
variable "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  type        = string
  default     = ""
}
variable "port" {
  description = " – (Optional) Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379."
  type        = string
  default     = ""
}
variable "multi_az_enabled" {
  description = "(Optional) Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  type        = string
  default     = ""
}
variable "snapshot_name" {
  description = "(Optional) Name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource."
  type        = string
  default     = ""
}
variable "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: 05:00-09:00"
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = string
  default     = ""
}
variable "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "global_replication_group_id" {
  description = "(Optional) The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If global_replication_group_id is set, the num_node_groups parameter (or the num_node_groups parameter of the deprecated cluster_mode block) cannot be set."
  type        = string
  default     = ""
}
variable "num_cache_clusters" {
  description = "(Optional) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_node_groups, the deprecatednumber_cache_clusters, or the deprecated cluster_mode. Defaults to 1."
  type        = string
  default     = ""
}
variable "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
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
output "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_type
}
output "snapshot_name" {
  description = "(Optional) Name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_name
}
output "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: 05:00-09:00"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_window
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any modifications are applied immediately, or during the next maintenance window. Default is false."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.apply_immediately
}
output "global_replication_group_id" {
  description = "(Optional) The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If global_replication_group_id is set, the num_node_groups parameter (or the num_node_groups parameter of the deprecated cluster_mode block) cannot be set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.global_replication_group_id
}
output "num_cache_clusters" {
  description = "(Optional) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_node_groups, the deprecatednumber_cache_clusters, or the deprecated cluster_mode. Defaults to 1."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_cache_clusters
}
output "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.destination_type
}
output "availability_zones" {
  description = "(Optional, strongDeprecated use preferred_cache_cluster_azs instead) List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is not considered."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.availability_zones
}
output "kms_key_id" {
  description = "(Optional) The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.kms_key_id
}
output "replication_group_description" {
  description = " – (strongDeprecated use description instead) User-created description for the replication group. Must not be empty."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replication_group_description
}
output "replication_group_id" {
  description = " – (Required) Replication group identifier. This parameter is stored as a lowercase string."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replication_group_id
}
output "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of snapshot_retention_limit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_retention_limit
}
output "subnet_group_name" {
  description = "(Optional) Name of the cache subnet group to be used for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.subnet_group_name
}
output "automatic_failover_enabled" {
  description = "(Optional) Specifies whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails. If enabled, num_cache_clusters must be greater than 1. Must be enabled for Redis (cluster mode enabled) replication groups. Defaults to false."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.automatic_failover_enabled
}
output "reader_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.reader_endpoint_address
}
output "update" {
  description = "(Default 40m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.update
}
output "maintenance_window" {
  description = " – (Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.maintenance_window
}
output "node_type" {
  description = "(Optional) Instance class to be used. See AWS documentation for information on supported node types and guidance on selecting node types. Required unless global_replication_group_id is set. Cannot be set if global_replication_group_id is set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.node_type
}
output "num_node_groups" {
  description = "(Optional, strongDeprecated use root-level num_node_groups instead) Number of node groups (shards) for this Redis replication group. Changing this number will trigger an online resizing operation before other settings modifications. Required unless global_replication_group_id is set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_node_groups
}
output "number_cache_clusters" {
  description = "(Optional, strongDeprecated use num_cache_clusters instead) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_cache_clusters, num_node_groups, or the deprecated cluster_mode. Defaults to 1."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.number_cache_clusters
}
output "security_group_names" {
  description = "(Optional) List of cache security group names to associate with this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.security_group_names
}
output "snapshot_arns" {
  description = " – (Optional) List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_arns
}
output "cluster_enabled" {
  description = "Indicates if cluster mode is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.cluster_enabled
}
output "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.destination
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Specifies whether minor version engine upgrades will be applied automatically to the underlying Cache Cluster instances during the maintenance window.\nOnly supported for engine type \"redis\"true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.auto_minor_version_upgrade
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.delete
}
output "primary_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.primary_endpoint_address
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.tags_all
}
output "transit_encryption_enabled" {
  description = "(Optional) Whether to enable encryption in transit."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.transit_encryption_enabled
}
output "log_format" {
  description = "Valid values are json or text"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_format
}
output "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.engine_version_actual
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.final_snapshot_identifier
}
output "parameter_group_name" {
  description = "(Optional) Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable \"cluster mode\", i.e., data sharding, use a parameter group that has the parameter cluster-enabled set to true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.parameter_group_name
}
output "auth_token" {
  description = "(Optional) Password used to access a password protected server. Can be specified only if transit_encryption_enabled = true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.auth_token
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.create
}
output "data_tiering_enabled" {
  description = "(Optional) Enables data tiering. Data tiering is only supported for replication groups using the r6gd node type. This parameter must be set to true when using r6gd nodes."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.data_tiering_enabled
}
output "at_rest_encryption_enabled" {
  description = "(Optional) Whether to enable encryption at rest."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.at_rest_encryption_enabled
}
output "security_group_ids" {
  description = "(Optional) One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.security_group_ids
}
output "id" {
  description = "ID of the ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.id
}
output "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_delivery_configuration
}
output "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.notification_topic_arn
}
output "description" {
  description = " – (Required) User-created description for the replication group. Must not be empty."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.description
}
output "configuration_endpoint_address" {
  description = "Address of the replication group configuration endpoint when cluster mode is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.configuration_endpoint_address
}
output "engine" {
  description = "(Optional) Name of the cache engine to be used for the clusters in this replication group. The only valid value is redis."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.engine
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.tags
}
output "user_group_ids" {
  description = "(Optional) User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. strongNOTE: This argument emis a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.cluster_mode (strongDEPRECATED)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.user_group_ids
}
output "cluster_mode" {
  description = "(Optional, strongDeprecated use root-level num_node_groups and replicas_per_node_group instead) Create a native Redis cluster. automatic_failover_enabled must be set to true. Cluster Mode documented below. Only 1 cluster_mode block is allowed. Note that configuring this block does not enable cluster mode, i.e., data sharding, this requires using a parameter group that has the parameter cluster-enabled set to true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.cluster_mode
}
output "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.member_clusters
}
output "port" {
  description = " – (Optional) Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.port
}
output "preferred_cache_cluster_azs" {
  description = "(Optional) List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.preferred_cache_cluster_azs
}
output "replicas_per_node_group" {
  description = "(Optional, Required with cluster_mode num_node_groups, strongDeprecated use root-level replicas_per_node_group instead) Number of replica nodes in each node group. Valid values are 0 to 5. Changing this number will trigger an online resizing operation before other settings modifications.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replicas_per_node_group
}
output "engine_version" {
  description = "(Optional) Version number of the cache engine to be used for the cache clusters in this replication group.\nIf the version is 6 or higher, the major and minor version can be set, e.g., 6.26.x5.0.6engine_version_actual, see  below."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.engine_version
}
output "multi_az_enabled" {
  description = "(Optional) Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to false."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.multi_az_enabled
}
output "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.arn
}
output "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.notification_topic_arn
}
output "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of snapshot_retention_limit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_retention_limit
}
output "transit_encryption_enabled" {
  description = "(Optional) Whether to enable encryption in transit."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.transit_encryption_enabled
}
output "user_group_ids" {
  description = "(Optional) User Group ID to associate with the replication group. Only a maximum of one (1) user group ID is valid. strongNOTE: This argument emis a set because the AWS specification allows for multiple IDs. However, in practice, AWS only allows a maximum size of one.cluster_mode (strongDEPRECATED)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.user_group_ids
}
output "kms_key_id" {
  description = "(Optional) The ARN of the key that you wish to use if encrypting at rest. If not supplied, uses service managed encryption. Can be specified only if at_rest_encryption_enabled = true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.kms_key_id
}
output "num_node_groups" {
  description = "(Optional, strongDeprecated use root-level num_node_groups instead) Number of node groups (shards) for this Redis replication group. Changing this number will trigger an online resizing operation before other settings modifications. Required unless global_replication_group_id is set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_node_groups
}
output "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.destination_type
}
output "port" {
  description = " – (Optional) Port number on which each of the cache nodes will accept connections. For Memcache the default is 11211, and for Redis the default port is 6379."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.port
}
output "preferred_cache_cluster_azs" {
  description = "(Optional) List of EC2 availability zones in which the replication group's cache clusters will be created. The order of the availability zones in the list is considered. The first item in the list will be the primary node. Ignored when updating."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.preferred_cache_cluster_azs
}
output "replicas_per_node_group" {
  description = "(Optional, Required with cluster_mode num_node_groups, strongDeprecated use root-level replicas_per_node_group instead) Number of replica nodes in each node group. Valid values are 0 to 5. Changing this number will trigger an online resizing operation before other settings modifications.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replicas_per_node_group
}
output "subnet_group_name" {
  description = "(Optional) Name of the cache subnet group to be used for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.subnet_group_name
}
output "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_delivery_configuration
}
output "reader_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the reader node in the replication group, if the cluster mode is disabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.reader_endpoint_address
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. Adding tags to this resource will add or overwrite any existing tags on the clusters in the replication group and not to the group itself. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.tags
}
output "cluster_enabled" {
  description = "Indicates if cluster mode is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.cluster_enabled
}
output "create" {
  description = "(Default 60m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.create
}
output "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.destination
}
output "global_replication_group_id" {
  description = "(Optional) The ID of the global replication group to which this replication group should belong. If this parameter is specified, the replication group is added to the specified global replication group as a secondary replication group; otherwise, the replication group is not part of any global replication group. If global_replication_group_id is set, the num_node_groups parameter (or the num_node_groups parameter of the deprecated cluster_mode block) cannot be set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.global_replication_group_id
}
output "id" {
  description = "ID of the ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.id
}
output "maintenance_window" {
  description = " – (Optional) Specifies the weekly time range for when maintenance on the cache cluster is performed. The format is ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:05:00-sun:09:00"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.maintenance_window
}
output "num_cache_clusters" {
  description = "(Optional) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_node_groups, the deprecatednumber_cache_clusters, or the deprecated cluster_mode. Defaults to 1."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_cache_clusters
}
output "parameter_group_name" {
  description = "(Optional) Name of the parameter group to associate with this replication group. If this argument is omitted, the default cache parameter group for the specified engine is used. To enable \"cluster mode\", i.e., data sharding, use a parameter group that has the parameter cluster-enabled set to true."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.parameter_group_name
}
output "security_group_ids" {
  description = "(Optional) One or more Amazon VPC security groups associated with this replication group. Use this parameter only when you are creating a replication group in an Amazon Virtual Private Cloud"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.security_group_ids
}
output "snapshot_arns" {
  description = " – (Optional) List of ARNs that identify Redis RDB snapshot files stored in Amazon S3. The names object names cannot contain any commas."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_arns
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final node group (shard) snapshot. ElastiCache creates the snapshot from the primary node in the cluster. If omitted, no final snapshot will be made."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.final_snapshot_identifier
}
output "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_type
}
output "multi_az_enabled" {
  description = "(Optional) Specifies whether to enable Multi-AZ Support for the replication group. If true, automatic_failover_enabled must also be enabled. Defaults to false."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.multi_az_enabled
}
output "number_cache_clusters" {
  description = "(Optional, strongDeprecated use num_cache_clusters instead) Number of cache clusters (primary and replicas) this replication group will have. If Multi-AZ is enabled, the value of this parameter must be at least 2. Updates will occur before other modifications. Conflicts with num_cache_clusters, num_node_groups, or the deprecated cluster_mode. Defaults to 1."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.number_cache_clusters
}
output "security_group_names" {
  description = "(Optional) List of cache security group names to associate with this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.security_group_names
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.tags_all
}
output "update" {
  description = "(Default 40m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.update
}
output "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.arn
}
output "configuration_endpoint_address" {
  description = "Address of the replication group configuration endpoint when cluster mode is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.configuration_endpoint_address
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.delete
}
output "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.member_clusters
}
output "primary_endpoint_address" {
  description = "(Redis only) Address of the endpoint for the primary node in the replication group, if the cluster mode is disabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.primary_endpoint_address
}
output "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. The minimum snapshot window is a 60 minute period. Example: 05:00-09:00"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_window
}
output "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.engine_version_actual
}
output "log_format" {
  description = "Valid values are json or text"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_format
}
output "node_type" {
  description = "(Optional) Instance class to be used. See AWS documentation for information on supported node types and guidance on selecting node types. Required unless global_replication_group_id is set. Cannot be set if global_replication_group_id is set."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.node_type
}
output "snapshot_name" {
  description = "(Optional) Name of a snapshot from which to restore data into the new node group. Changing the snapshot_name forces a new resource."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_name
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
      "kind/name"                   = "aws_elasticache_replication_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
