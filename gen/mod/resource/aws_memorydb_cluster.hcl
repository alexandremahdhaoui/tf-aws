resource "aws_memorydb_cluster" "aws_memorydb_cluster" {
  arn                        = var.arn
  name                       = var.name
  snapshot_arns              = var.snapshot_arns
  snapshot_window            = var.snapshot_window
  engine_patch_version       = var.engine_patch_version
  kms_key_arn                = var.kms_key_arn
  port                       = var.port
  security_group_ids         = var.security_group_ids
  name_prefix                = var.name_prefix
  shards                     = var.shards
  slots                      = var.slots
  acl_name                   = var.acl_name
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  availability_zone          = var.availability_zone
  final_snapshot_name        = var.final_snapshot_name
  id                         = var.id
  snapshot_retention_limit   = var.snapshot_retention_limit
  sns_topic_arn              = var.sns_topic_arn
  create                     = var.create
  nodes                      = var.nodes
  endpoint                   = var.endpoint
  num_nodes                  = var.num_nodes
  num_shards                 = var.num_shards
  parameter_group_name       = var.parameter_group_name
  snapshot_name              = var.snapshot_name
  tags                       = var.tags
  tls_enabled                = var.tls_enabled
  address                    = var.address
  create_time                = var.create_time
  description                = var.description
  maintenance_window         = var.maintenance_window
  subnet_group_name          = var.subnet_group_name
  tags_all                   = var.tags_all
  update                     = var.update
  cluster_endpoint           = var.cluster_endpoint
  delete                     = var.delete
  engine_version             = var.engine_version
  node_type                  = var.node_type
  num_replicas_per_shard     = var.num_replicas_per_shard
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "parameter_group_name" {
  description = "(Optional) The name of the parameter group associated with the cluster."
  type        = string
}
variable "snapshot_name" {
  description = "(Optional, Forces new resource) The name of a snapshot from which to restore data into the new cluster."
  type        = string
}
variable "endpoint" {
  description = ""
  type        = string
}
variable "num_nodes" {
  description = "Number of individual nodes in this shard."
  type        = string
}
variable "num_shards" {
  description = "(Optional) The number of shards in the cluster. Defaults to 1."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "maintenance_window" {
  description = "(Optional) Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:23:00-mon:01:30."
  type        = string
}
variable "subnet_group_name" {
  description = "(Optional, Forces new resource) The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets."
  type        = string
}
variable "tls_enabled" {
  description = "(Optional, Forces new resource) A flag to enable in-transit encryption on the cluster. When set to false, the acl_name must be open-access. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "address" {
  description = "DNS hostname of the node."
  type        = string
}
variable "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  type        = string
}
variable "description" {
  description = "(Optional) Description for the cluster. Defaults to \"Managed by Terraform\"."
  type        = string
}
variable "node_type" {
  description = "(Required) The compute and memory capacity of the nodes in the cluster. See AWS documentation on supported node types as well as vertical scaling."
  type        = string
}
variable "num_replicas_per_shard" {
  description = "(Optional) The number of replicas to apply to each shard, up to a maximum of 5. Defaults to 1 (i.e. 2 nodes per shard)."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 120m)"
  type        = string
}
variable "cluster_endpoint" {
  description = ""
  type        = string
}
variable "delete" {
  description = "(Default 120m)"
  type        = string
}
variable "engine_version" {
  description = "(Optional) Version number of the Redis engine to be used for the cluster. Downgrades are not supported."
  type        = string
}
variable "snapshot_window" {
  description = "(Optional) The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: 05:00-09:00."
  type        = string
}
variable "arn" {
  description = "The ARN of the cluster."
  type        = string
}
variable "name" {
  description = "Name of this node."
  type        = string
}
variable "snapshot_arns" {
  description = "(Optional, Forces new resource) List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) Set of VPC Security Group ID-s to associate with this cluster."
  type        = string
}
variable "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional, Forces new resource) ARN of the KMS key used to encrypt the cluster at rest."
  type        = string
}
variable "port" {
  description = "Port number that this node is listening on."
  type        = string
}
variable "final_snapshot_name" {
  description = "(Optional) Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made."
  type        = string
}
variable "id" {
  description = "Same as name."
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "shards" {
  description = ""
  type        = string
}
variable "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  type        = string
}
variable "acl_name" {
  description = "(Required) The name of the Access Control List to associate with the cluster."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional, Forces new resource) When set to true, the cluster will automatically receive minor engine version upgrades after launch. Defaults to true."
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone in which the node resides."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "(Optional) The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to 0, automatic backups are disabled. Defaults to 0."
  type        = string
}
variable "sns_topic_arn" {
  description = "(Optional) ARN of the SNS topic to which cluster notifications are sent."
  type        = string
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "nodes" {
  description = "Set of nodes in this shard.\n"
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
output "arn" {
  description = "The ARN of the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of this node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_arns" {
  description = "(Optional, Forces new resource) List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_window" {
  description = "(Optional) The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: 05:00-09:00."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_patch_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional, Forces new resource) ARN of the KMS key used to encrypt the cluster at rest."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "Port number that this node is listening on."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) Set of VPC Security Group ID-s to associate with this cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.slots
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acl_name" {
  description = "(Required) The name of the Access Control List to associate with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.acl_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_minor_version_upgrade" {
  description = "(Optional, Forces new resource) When set to true, the cluster will automatically receive minor engine version upgrades after launch. Defaults to true."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.auto_minor_version_upgrade
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The Availability Zone in which the node resides."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "final_snapshot_name" {
  description = "(Optional) Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.final_snapshot_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Same as name."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shards" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_retention_limit" {
  description = "(Optional) The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to 0, automatic backups are disabled. Defaults to 0."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_retention_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_topic_arn" {
  description = "(Optional) ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.sns_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nodes" {
  description = "Set of nodes in this shard.\n"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_nodes" {
  description = "Number of individual nodes in this shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_shards" {
  description = "(Optional) The number of shards in the cluster. Defaults to 1."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = "(Optional) The name of the parameter group associated with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_name" {
  description = "(Optional, Forces new resource) The name of a snapshot from which to restore data into the new cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "DNS hostname of the node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description for the cluster. Defaults to \"Managed by Terraform\"."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window" {
  description = "(Optional) Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: sun:23:00-mon:01:30."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = "(Optional, Forces new resource) The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tls_enabled" {
  description = "(Optional, Forces new resource) A flag to enable in-transit encryption on the cluster. When set to false, the acl_name must be open-access. Defaults to true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tls_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.cluster_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "(Optional) Version number of the Redis engine to be used for the cluster. Downgrades are not supported."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = "(Required) The compute and memory capacity of the nodes in the cluster. See AWS documentation on supported node types as well as vertical scaling."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_replicas_per_shard" {
  description = "(Optional) The number of replicas to apply to each shard, up to a maximum of 5. Defaults to 1 (i.e. 2 nodes per shard)."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_replicas_per_shard
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "DNS hostname of the node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.cluster_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Same as name."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_nodes" {
  description = "Number of individual nodes in this shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "Port number that this node is listening on."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "shards" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_patch_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of this node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nodes" {
  description = "Set of nodes in this shard.\n"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 120m)"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The Availability Zone in which the node resides."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.slots
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tags_all
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
      "kind/name"                   = "aws_memorydb_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
