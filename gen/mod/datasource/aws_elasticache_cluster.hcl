datasource "aws_elasticache_cluster" "aws_elasticache_cluster" {
  availability_zone          = var.availability_zone
  engine_version             = var.engine_version
  maintenance_window         = var.maintenance_window
  node_type                  = var.node_type
  parameter_group_name       = var.parameter_group_name
  replication_group_id       = var.replication_group_id
  snapshot_retention_limit   = var.snapshot_retention_limit
  snapshot_window            = var.snapshot_window
  cluster_id                 = var.cluster_id
  engine                     = var.engine
  log_delivery_configuration = var.log_delivery_configuration
  subnet_group_name          = var.subnet_group_name
  cache_nodes                = var.cache_nodes
  configuration_endpoint     = var.configuration_endpoint
  cluster_address            = var.cluster_address
  notification_topic_arn     = var.notification_topic_arn
  num_cache_nodes            = var.num_cache_nodes
  port                       = var.port
  security_group_ids         = var.security_group_ids
  security_group_names       = var.security_group_names
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_id" {
  description = " – (Required) Group identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "engine" {
  description = " – Name of the cache engine."
  type        = string
}
variable "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  type        = string
}
variable "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  type        = string
}
variable "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  type        = string
}
variable "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  type        = string
}
variable "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  type        = string
}
variable "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  type        = string
}
variable "notification_topic_arn" {
  description = ""
  type        = string
}
variable "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  type        = string
}
variable "port" {
  description = ""
  type        = string
}
variable "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  type        = string
}
variable "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  type        = string
}
variable "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache will\nbegin taking a daily snapshot of the cache cluster."
  type        = string
}
variable "availability_zone" {
  description = "Availability Zone for the cache cluster."
  type        = string
}
variable "engine_version" {
  description = " – Version number of the cache engine."
  type        = string
}
variable "maintenance_window" {
  description = ""
  type        = string
}
variable "node_type" {
  description = " – The cluster node type."
  type        = string
}
variable "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  type        = string
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "notification_topic_arn" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
}
output "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.num_cache_nodes
}
output "port" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "availability_zone" {
  description = "Availability Zone for the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.availability_zone
}
output "engine_version" {
  description = " – Version number of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version
}
output "maintenance_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.node_type
}
output "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.parameter_group_name
}
output "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache will\nbegin taking a daily snapshot of the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
}
output "cluster_id" {
  description = " – (Required) Group identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_id
}
output "engine" {
  description = " – Name of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "availability_zone" {
  description = "Availability Zone for the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.availability_zone
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.parameter_group_name
}
output "engine" {
  description = " – Name of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.node_type
}
output "notification_topic_arn" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
}
output "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.num_cache_nodes
}
output "port" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which ElastiCache will\nbegin taking a daily snapshot of the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "engine_version" {
  description = " – Version number of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "maintenance_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
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
