resource "aws_elasticache_cluster" "aws_elasticache_cluster" {
  arn                          = var.arn
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
  cache_nodes                  = var.cache_nodes
  node_type                    = var.node_type
  num_cache_nodes              = var.num_cache_nodes
  destination_type             = var.destination_type
  port                         = var.port
  notification_topic_arn       = var.notification_topic_arn
  replication_group_id         = var.replication_group_id
  security_group_names         = var.security_group_names
  snapshot_window              = var.snapshot_window
  subnet_group_name            = var.subnet_group_name
  availability_zone            = var.availability_zone
  destination                  = var.destination
  engine                       = var.engine
  configuration_endpoint       = var.configuration_endpoint
  final_snapshot_identifier    = var.final_snapshot_identifier
  log_type                     = var.log_type
  tags                         = var.tags
  cluster_id                   = var.cluster_id
  engine_version               = var.engine_version
  engine_version_actual        = var.engine_version_actual
  log_delivery_configuration   = var.log_delivery_configuration
  maintenance_window           = var.maintenance_window
  parameter_group_name         = var.parameter_group_name
  security_group_ids           = var.security_group_ids
  apply_immediately            = var.apply_immediately
  az_mode                      = var.az_mode
  cluster_address              = var.cluster_address
  log_format                   = var.log_format
  preferred_availability_zones = var.preferred_availability_zones
  snapshot_name                = var.snapshot_name
  snapshot_arns                = var.snapshot_arns
  snapshot_retention_limit     = var.snapshot_retention_limit
  tags_all                     = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "log_format" {
  description = "Valid values are json or text"
  type        = string
  default     = ""
}
variable "preferred_availability_zones" {
  description = "(Optional, Memcached only) List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference."
  type        = string
  default     = ""
}
variable "snapshot_name" {
  description = "(Optional, Redis only) Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource."
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "(Optional) Whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information.."
  type        = string
  default     = ""
}
variable "az_mode" {
  description = "(Optional, Memcached only) Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1."
  type        = string
  default     = ""
}
variable "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  type        = string
  default     = ""
}
variable "snapshot_arns" {
  description = " – (Optional, Redis only) Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource."
  type        = string
  default     = ""
}
variable "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  type        = string
  default     = ""
}
variable "node_type" {
  description = " – (Required unless replication_group_id is provided) The instance class used. See AWS documentation for information on supported node types for Redis and guidance on selecting node types for Redis. See AWS documentation for information on supported node types for Memcached and guidance on selecting node types for Memcached. For Memcached, changing this value will re-create the resource."
  type        = string
}
variable "num_cache_nodes" {
  description = " – (Required unless replication_group_id is provided) The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed."
  type        = string
}
variable "arn" {
  description = "The ARN of the created ElastiCache Cluster."
  type        = string
  default     = ""
}
variable "auto_minor_version_upgrade" {
  description = "\"redis\"true."
  type        = string
  default     = ""
}
variable "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone."
  type        = string
  default     = ""
}
variable "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
  type        = string
  default     = ""
}
variable "port" {
  description = " – (Optional) The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with replication_group_id. Changing this value will re-create the resource."
  type        = string
  default     = ""
}
variable "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00"
  type        = string
  default     = ""
}
variable "subnet_group_name" {
  description = " – (Optional, VPC only) Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource."
  type        = string
  default     = ""
}
variable "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic."
  type        = string
  default     = ""
}
variable "replication_group_id" {
  description = "(Optional, Required if engine is not specified) ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group."
  type        = string
  default     = ""
}
variable "security_group_names" {
  description = " – (Optional, EC2 Classic only) List of security group names to associate with this cache cluster. Changing this value will re-create the resource."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "(Optional) Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource."
  type        = string
  default     = ""
}
variable "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  type        = string
  default     = ""
}
variable "engine" {
  description = " – (Optional, Required if replication_group_id is not specified) Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis."
  type        = string
}
variable "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  type        = string
  default     = ""
}
variable "final_snapshot_identifier" {
  description = "(Optional, Redis only) Name of your final cluster snapshot. If omitted, no final snapshot will be made."
  type        = string
  default     = ""
}
variable "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each."
  type        = string
  default     = ""
}
variable "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  type        = string
  default     = ""
}
variable "maintenance_window" {
  description = "ddd:hh24:mi-ddd:hh24:misun:05:00-sun:09:00."
  type        = string
  default     = ""
}
variable "parameter_group_name" {
  description = " – (Required unless replication_group_id is provided) The name of the parameter group to associate with this cache cluster."
  type        = string
}
variable "security_group_ids" {
  description = " – (Optional, VPC only) One or more VPC security groups associated with the cache cluster"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "cluster_id" {
  description = " – (Required) Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource."
  type        = string
}
variable "engine_version" {
  description = "Describe Cache Engine Versionsengine is redis and the version is 6 or higher, the major and minor version can be set, e.g., 6.26.x5.0.6engine_version_actual, see  below."
  type        = string
  default     = ""
}
variable "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
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
output "availability_zone" {
  description = "(Optional) Availability Zone for the cache cluster. If you want to create cache nodes in multi-az, use preferred_availability_zones instead. Default: System chosen Availability Zone. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.availability_zone
}
output "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.destination
}
output "engine" {
  description = " – (Optional, Required if replication_group_id is not specified) Name of the cache engine to be used for this cache cluster. Valid values are memcached or redis."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "final_snapshot_identifier" {
  description = "(Optional, Redis only) Name of your final cluster snapshot. If omitted, no final snapshot will be made."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.final_snapshot_identifier
}
output "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_type
}
output "parameter_group_name" {
  description = " – (Required unless replication_group_id is provided) The name of the parameter group to associate with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.parameter_group_name
}
output "security_group_ids" {
  description = " – (Optional, VPC only) One or more VPC security groups associated with the cache cluster"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.tags
}
output "cluster_id" {
  description = " – (Required) Group identifier. ElastiCache converts this name to lowercase. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_id
}
output "engine_version" {
  description = "Describe Cache Engine Versionsengine is redis and the version is 6 or higher, the major and minor version can be set, e.g., 6.26.x5.0.6engine_version_actual, see  below."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version
}
output "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version_actual
}
output "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "maintenance_window" {
  description = "ddd:hh24:mi-ddd:hh24:misun:05:00-sun:09:00."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "snapshot_name" {
  description = "(Optional, Redis only) Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_name
}
output "apply_immediately" {
  description = "(Optional) Whether any database modifications are applied immediately, or during the next maintenance window. Default is false. See Amazon ElastiCache Documentation for more information.."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.apply_immediately
}
output "az_mode" {
  description = "(Optional, Memcached only) Whether the nodes in this Memcached node group are created in a single Availability Zone or created across multiple Availability Zones in the cluster's region. Valid values for this parameter are single-az or cross-az, default is single-az. If you want to choose cross-az, num_cache_nodes must be greater than 1."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.az_mode
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "log_format" {
  description = "Valid values are json or text"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_format
}
output "preferred_availability_zones" {
  description = "(Optional, Memcached only) List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.preferred_availability_zones
}
output "snapshot_arns" {
  description = " – (Optional, Redis only) Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_arns
}
output "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.tags_all
}
output "arn" {
  description = "The ARN of the created ElastiCache Cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.arn
}
output "auto_minor_version_upgrade" {
  description = "\"redis\"true."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.auto_minor_version_upgrade
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "node_type" {
  description = " – (Required unless replication_group_id is provided) The instance class used. See AWS documentation for information on supported node types for Redis and guidance on selecting node types for Redis. See AWS documentation for information on supported node types for Memcached and guidance on selecting node types for Memcached. For Memcached, changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.node_type
}
output "num_cache_nodes" {
  description = " – (Required unless replication_group_id is provided) The initial number of cache nodes that the cache cluster will have. For Redis, this value must be 1. For Memcached, this value must be between 1 and 40. If this number is reduced on subsequent runs, the highest numbered nodes will be removed."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.num_cache_nodes
}
output "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.destination_type
}
output "port" {
  description = " – (Optional) The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with replication_group_id. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
}
output "replication_group_id" {
  description = "(Optional, Required if engine is not specified) ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "security_group_names" {
  description = " – (Optional, EC2 Classic only) List of security group names to associate with this cache cluster. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
}
output "subnet_group_name" {
  description = " – (Optional, VPC only) Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
}
output "security_group_names" {
  description = " – (Optional, EC2 Classic only) List of security group names to associate with this cache cluster. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "arn" {
  description = "The ARN of the created ElastiCache Cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.arn
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "destination_type" {
  description = "For CloudWatch Logs use cloudwatch-logs or for Kinesis Data Firehose use kinesis-firehose."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.destination_type
}
output "log_delivery_configuration" {
  description = "(Optional, Redis only) Specifies the destination and format of Redis SLOWLOG or Redis Engine Log. See the documentation on Amazon ElastiCache. See Log Delivery Configuration below for more details."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "port" {
  description = " – (Optional) The port number on which each of the cache nodes will accept connections. For Memcached the default is 11211, and for Redis the default port is 6379. Cannot be provided with replication_group_id. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "replication_group_id" {
  description = "(Optional, Required if engine is not specified) ID of the replication group to which this cluster should belong. If this parameter is specified, the cluster is added to the specified replication group as a read replica; otherwise, the cluster is a standalone primary that is not part of any replication group."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "security_group_ids" {
  description = " – (Optional, VPC only) One or more VPC security groups associated with the cache cluster"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "engine_version_actual" {
  description = "Because ElastiCache pulls the latest minor or patch for a version, this attribute returns the running version of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version_actual
}
output "notification_topic_arn" {
  description = " – (Optional) ARN of an SNS topic to send ElastiCache notifications to. Example: arn:aws:sns:us-east-1:012345678999:my_sns_topic."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
}
output "preferred_availability_zones" {
  description = "(Optional, Memcached only) List of the Availability Zones in which cache nodes are created. If you are creating your cluster in an Amazon VPC you can only locate nodes in Availability Zones that are associated with the subnets in the selected subnet group. The number of Availability Zones listed must equal the value of num_cache_nodes. If you want all the nodes in the same Availability Zone, use availability_zone instead, or repeat the Availability Zone multiple times in the list. Default: System chosen Availability Zones. Detecting drift of existing node availability zone is not currently supported. Updating this argument by itself to migrate existing node availability zones is not currently supported and will show a perpetual difference."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.preferred_availability_zones
}
output "snapshot_arns" {
  description = " – (Optional, Redis only) Single-element string list containing an Amazon Resource Name (ARN) of a Redis RDB snapshot file stored in Amazon S3. The object name cannot contain any commas. Changing snapshot_arns forces a new resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_arns
}
output "subnet_group_name" {
  description = " – (Optional, VPC only) Name of the subnet group to be used for the cache cluster. Changing this value will re-create the resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Log Delivery ConfigurationThe log_delivery_configuration block allows the streaming of Redis SLOWLOG or Redis Engine Log to CloudWatch Logs or Kinesis Data Firehose. Max of 2 blocks."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.tags_all
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "destination" {
  description = "Name of either the CloudWatch Logs LogGroup or Kinesis Data Firehose resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.destination
}
output "final_snapshot_identifier" {
  description = "(Optional, Redis only) Name of your final cluster snapshot. If omitted, no final snapshot will be made."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.final_snapshot_identifier
}
output "log_type" {
  description = "Valid values are  slow-log or engine-log. Max 1 of each."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_type
}
output "maintenance_window" {
  description = "ddd:hh24:mi-ddd:hh24:misun:05:00-sun:09:00."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "snapshot_retention_limit" {
  description = "(Optional, Redis only) Number of days for which ElastiCache will retain automatic cache cluster snapshots before deleting them. For example, if you set SnapshotRetentionLimit to 5, then a snapshot that was taken today will be retained for 5 days before being deleted. If the value of SnapshotRetentionLimit is set to zero (0), backups are turned off. Please note that setting a snapshot_retention_limit is not supported on cache.t1.micro cache nodes"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.tags
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "log_format" {
  description = "Valid values are json or text"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_format
}
output "snapshot_name" {
  description = "(Optional, Redis only) Name of a snapshot from which to restore data into the new node group. Changing snapshot_name forces a new resource."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_name
}
output "snapshot_window" {
  description = "(Optional, Redis only) Daily time range (in UTC) during which ElastiCache will begin taking a daily snapshot of your cache cluster. Example: 05:00-09:00"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
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
      "kind/name"                   = "aws_elasticache_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
