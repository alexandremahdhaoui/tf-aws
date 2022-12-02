datasource "aws_elasticache_replication_group" "aws_elasticache_replication_group" {
  arn                            = var.arn
  description                    = var.description
  number_cache_clusters          = var.number_cache_clusters
  replicas_per_node_group        = var.replicas_per_node_group
  multi_az_enabled               = var.multi_az_enabled
  primary_endpoint_address       = var.primary_endpoint_address
  replication_group_description  = var.replication_group_description
  replication_group_id           = var.replication_group_id
  auth_token_enabled             = var.auth_token_enabled
  automatic_failover_enabled     = var.automatic_failover_enabled
  log_delivery_configuration     = var.log_delivery_configuration
  num_cache_clusters             = var.num_cache_clusters
  num_node_groups                = var.num_node_groups
  port                           = var.port
  snapshot_retention_limit       = var.snapshot_retention_limit
  configuration_endpoint_address = var.configuration_endpoint_address
  member_clusters                = var.member_clusters
  node_type                      = var.node_type
  snapshot_window                = var.snapshot_window
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  type        = string
}
variable "node_type" {
  description = " – The cluster node type."
  type        = string
}
variable "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard)."
  type        = string
}
variable "configuration_endpoint_address" {
  description = "The configuration endpoint address to allow host discovery."
  type        = string
}
variable "description" {
  description = "Description of the replication group."
  type        = string
}
variable "number_cache_clusters" {
  description = " – (strongDeprecated use num_cache_clusters instead) Number of cache clusters that the replication group has."
  type        = string
}
variable "replicas_per_node_group" {
  description = "Number of replica nodes in each node group."
  type        = string
}
variable "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  type        = string
}
variable "primary_endpoint_address" {
  description = "The endpoint of the primary node in this node group (shard)."
  type        = string
}
variable "replication_group_description" {
  description = "(strongDeprecated use description instead) Description of the replication group."
  type        = string
}
variable "replication_group_id" {
  description = " – (Required) Identifier for the replication group.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "multi_az_enabled" {
  description = "Whether Multi-AZ Support is enabled for the replication group."
  type        = string
}
variable "automatic_failover_enabled" {
  description = "A flag whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
  type        = string
}
variable "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  type        = string
}
variable "num_cache_clusters" {
  description = " – The number of cache clusters that the replication group has."
  type        = string
}
variable "num_node_groups" {
  description = "Number of node groups (shards) for the replication group."
  type        = string
}
variable "port" {
  description = " – The port number on which the configuration endpoint will accept connections."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them."
  type        = string
}
variable "auth_token_enabled" {
  description = "Whether an AuthToken (password) is enabled."
  type        = string
}
output "configuration_endpoint_address" {
  description = "The configuration endpoint address to allow host discovery."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.configuration_endpoint_address
}
output "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.member_clusters
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.node_type
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard)."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_window
}
output "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.arn
}
output "description" {
  description = "Description of the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.description
}
output "number_cache_clusters" {
  description = " – (strongDeprecated use num_cache_clusters instead) Number of cache clusters that the replication group has."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.number_cache_clusters
}
output "replicas_per_node_group" {
  description = "Number of replica nodes in each node group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replicas_per_node_group
}
output "multi_az_enabled" {
  description = "Whether Multi-AZ Support is enabled for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.multi_az_enabled
}
output "primary_endpoint_address" {
  description = "The endpoint of the primary node in this node group (shard)."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.primary_endpoint_address
}
output "replication_group_description" {
  description = "(strongDeprecated use description instead) Description of the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replication_group_description
}
output "replication_group_id" {
  description = " – (Required) Identifier for the replication group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replication_group_id
}
output "auth_token_enabled" {
  description = "Whether an AuthToken (password) is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.auth_token_enabled
}
output "automatic_failover_enabled" {
  description = "A flag whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.automatic_failover_enabled
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_delivery_configuration
}
output "num_cache_clusters" {
  description = " – The number of cache clusters that the replication group has."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_cache_clusters
}
output "num_node_groups" {
  description = "Number of node groups (shards) for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_node_groups
}
output "port" {
  description = " – The port number on which the configuration endpoint will accept connections."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.port
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_retention_limit
}
output "configuration_endpoint_address" {
  description = "The configuration endpoint address to allow host discovery."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.configuration_endpoint_address
}
output "num_node_groups" {
  description = "Number of node groups (shards) for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_node_groups
}
output "replicas_per_node_group" {
  description = "Number of replica nodes in each node group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replicas_per_node_group
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.node_type
}
output "num_cache_clusters" {
  description = " – The number of cache clusters that the replication group has."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.num_cache_clusters
}
output "port" {
  description = " – The port number on which the configuration endpoint will accept connections."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.port
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_retention_limit
}
output "auth_token_enabled" {
  description = "Whether an AuthToken (password) is enabled."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.auth_token_enabled
}
output "automatic_failover_enabled" {
  description = "A flag whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.automatic_failover_enabled
}
output "member_clusters" {
  description = "Identifiers of all the nodes that are part of this replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.member_clusters
}
output "primary_endpoint_address" {
  description = "The endpoint of the primary node in this node group (shard)."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.primary_endpoint_address
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard)."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.snapshot_window
}
output "replication_group_description" {
  description = "(strongDeprecated use description instead) Description of the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.replication_group_description
}
output "arn" {
  description = "ARN of the created ElastiCache Replication Group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.arn
}
output "description" {
  description = "Description of the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.description
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.log_delivery_configuration
}
output "multi_az_enabled" {
  description = "Whether Multi-AZ Support is enabled for the replication group."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.multi_az_enabled
}
output "number_cache_clusters" {
  description = " – (strongDeprecated use num_cache_clusters instead) Number of cache clusters that the replication group has."
  value       = aws_elasticache_replication_group.aws_elasticache_replication_group.number_cache_clusters
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
