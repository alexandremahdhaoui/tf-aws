datasource "aws_elasticache_cluster" "aws_elasticache_cluster" {
  cluster_id                 = var.cluster_id
  engine                     = var.engine
  log_delivery_configuration = var.log_delivery_configuration
  node_type                  = var.node_type
  num_cache_nodes            = var.num_cache_nodes
  security_group_names       = var.security_group_names
  snapshot_retention_limit   = var.snapshot_retention_limit
  cache_nodes                = var.cache_nodes
  configuration_endpoint     = var.configuration_endpoint
  engine_version             = var.engine_version
  cluster_address            = var.cluster_address
  parameter_group_name       = var.parameter_group_name
  security_group_ids         = var.security_group_ids
  snapshot_window            = var.snapshot_window
  availability_zone          = var.availability_zone
  notification_topic_arn     = var.notification_topic_arn
  port                       = var.port
  replication_group_id       = var.replication_group_id
  subnet_group_name          = var.subnet_group_name
  maintenance_window         = var.maintenance_window
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "port" {
  description = ""
  type        = string
}
variable "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  type        = string
}
variable "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  type        = string
}
variable "maintenance_window" {
  description = ""
  type        = string
}
variable "notification_topic_arn" {
  description = ""
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
variable "node_type" {
  description = " – The cluster node type."
  type        = string
}
variable "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  type        = string
}
variable "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  type        = string
}
variable "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  type        = string
}
variable "cluster_id" {
  description = " – (Required) Group identifier.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "engine_version" {
  description = " – Version number of the cache engine."
  type        = string
}
variable "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  type        = string
}
variable "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  type        = string
}
variable "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  type        = string
}
variable "snapshot_window" {
  description = ""
  type        = string
}
variable "availability_zone" {
  description = "Availability Zone for the cache cluster."
  type        = string
}
variable "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  type        = string
}
output "maintenance_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_topic_arn" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_id" {
  description = " – (Required) Group identifier.In addition to all arguments above, the following attributes are exported:"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = " – Name of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.num_cache_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = " – Version number of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "Availability Zone for the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = " – Name of the subnet group associated to the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine" {
  description = " – Name of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = " – Version number of the cache engine."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_cache_nodes" {
  description = " – The number of cache nodes that the cache cluster has."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.num_cache_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = " – Name of the parameter group associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = " – List VPC security groups associated with the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_window" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "Availability Zone for the cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_address" {
  description = "(Memcached only) DNS name of the cache cluster without the port appended."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cluster_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = " – The cluster node type."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_names" {
  description = " – List of security group names associated with this cache cluster."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.security_group_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_nodes" {
  description = "List of node objects including id, address, port and availability_zone$${data.aws_elasticache_cluster.bar.cache_nodes.0.address}"
  value       = aws_elasticache_cluster.aws_elasticache_cluster.cache_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_endpoint" {
  description = "(Memcached only) Configuration endpoint to allow host discovery."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.configuration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replication_group_id" {
  description = "The replication group to which this cache cluster belongs."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.replication_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_retention_limit" {
  description = "The number of days for which ElastiCache will\nretain automatic cache cluster snapshots before deleting them."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.snapshot_retention_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_delivery_configuration" {
  description = "Redis SLOWLOG or Redis Engine Log delivery settings."
  value       = aws_elasticache_cluster.aws_elasticache_cluster.log_delivery_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_topic_arn" {
  description = ""
  value       = aws_elasticache_cluster.aws_elasticache_cluster.notification_topic_arn
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
}
