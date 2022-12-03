datasource "aws_memorydb_cluster" "aws_memorydb_cluster" {
  create_time                = var.create_time
  nodes                      = var.nodes
  shards                     = var.shards
  address                    = var.address
  kms_key_arn                = var.kms_key_arn
  name                       = var.name
  snapshot_retention_limit   = var.snapshot_retention_limit
  subnet_group_name          = var.subnet_group_name
  cluster_endpoint           = var.cluster_endpoint
  final_snapshot_name        = var.final_snapshot_name
  num_shards                 = var.num_shards
  id                         = var.id
  maintenance_window         = var.maintenance_window
  sns_topic_arn              = var.sns_topic_arn
  arn                        = var.arn
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  endpoint                   = var.endpoint
  engine_patch_version       = var.engine_patch_version
  slots                      = var.slots
  security_group_ids         = var.security_group_ids
  acl_name                   = var.acl_name
  availability_zone          = var.availability_zone
  node_type                  = var.node_type
  port                       = var.port
  snapshot_window            = var.snapshot_window
  tls_enabled                = var.tls_enabled
  description                = var.description
  engine_version             = var.engine_version
  num_nodes                  = var.num_nodes
  num_replicas_per_shard     = var.num_replicas_per_shard
  parameter_group_name       = var.parameter_group_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "security_group_ids" {
  description = "Set of VPC Security Group ID-s associated with this cluster."
  type        = string
}
variable "snapshot_window" {
  description = "Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: 05:00-09:00."
  type        = string
}
variable "tls_enabled" {
  description = "When true, in-transit encryption is enabled for the cluster."
  type        = string
}
variable "acl_name" {
  description = "Name of the Access Control List associated with the cluster."
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone in which the node resides."
  type        = string
}
variable "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  type        = string
}
variable "port" {
  description = "Port number that this node is listening on."
  type        = string
}
variable "parameter_group_name" {
  description = "The name of the parameter group associated with the cluster."
  type        = string
}
variable "description" {
  description = "Description for the cluster."
  type        = string
}
variable "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  type        = string
}
variable "num_nodes" {
  description = "Number of individual nodes in this shard."
  type        = string
}
variable "num_replicas_per_shard" {
  description = "The number of replicas to apply to each shard."
  type        = string
}
variable "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  type        = string
}
variable "nodes" {
  description = ""
  type        = string
}
variable "shards" {
  description = ""
  type        = string
}
variable "subnet_group_name" {
  description = " -The name of the subnet group used for the cluster."
  type        = string
}
variable "address" {
  description = "DNS hostname of the node."
  type        = string
}
variable "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the cluster at rest."
  type        = string
}
variable "name" {
  description = "Name of this node."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to 0, automatic backups are disabled."
  type        = string
}
variable "cluster_endpoint" {
  description = ""
  type        = string
}
variable "final_snapshot_name" {
  description = "Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made."
  type        = string
}
variable "num_shards" {
  description = "Number of shards in the cluster."
  type        = string
}
variable "id" {
  description = "Same as name."
  type        = string
}
variable "maintenance_window" {
  description = "Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). Example: sun:23:00-mon:01:30."
  type        = string
}
variable "sns_topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  type        = string
}
variable "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  type        = string
}
variable "arn" {
  description = "ARN of the cluster."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "True when the cluster allows automatic minor version upgrades."
  type        = string
}
variable "endpoint" {
  description = ""
  type        = string
}
variable "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  type        = string
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.arn
}
output "auto_minor_version_upgrade" {
  description = "True when the cluster allows automatic minor version upgrades."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.auto_minor_version_upgrade
}
output "endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.endpoint
}
output "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_patch_version
}
output "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.slots
}
output "security_group_ids" {
  description = "Set of VPC Security Group ID-s associated with this cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.security_group_ids
}
output "acl_name" {
  description = "Name of the Access Control List associated with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.acl_name
}
output "availability_zone" {
  description = "The Availability Zone in which the node resides."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.availability_zone
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.node_type
}
output "port" {
  description = "Port number that this node is listening on."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.port
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: 05:00-09:00."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_window
}
output "tls_enabled" {
  description = "When true, in-transit encryption is enabled for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tls_enabled
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.description
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_version
}
output "num_nodes" {
  description = "Number of individual nodes in this shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_nodes
}
output "num_replicas_per_shard" {
  description = "The number of replicas to apply to each shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_replicas_per_shard
}
output "parameter_group_name" {
  description = "The name of the parameter group associated with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.parameter_group_name
}
output "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create_time
}
output "nodes" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.nodes
}
output "shards" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.shards
}
output "address" {
  description = "DNS hostname of the node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.address
}
output "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the cluster at rest."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.kms_key_arn
}
output "name" {
  description = "Name of this node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.name
}
output "snapshot_retention_limit" {
  description = "The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to 0, automatic backups are disabled."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_retention_limit
}
output "subnet_group_name" {
  description = " -The name of the subnet group used for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.subnet_group_name
}
output "cluster_endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.cluster_endpoint
}
output "final_snapshot_name" {
  description = "Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.final_snapshot_name
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_shards
}
output "id" {
  description = "Same as name."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.id
}
output "maintenance_window" {
  description = "Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). Example: sun:23:00-mon:01:30."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.maintenance_window
}
output "sns_topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.sns_topic_arn
}
output "id" {
  description = "Same as name."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.id
}
output "maintenance_window" {
  description = "Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). Example: sun:23:00-mon:01:30."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.maintenance_window
}
output "num_nodes" {
  description = "Number of individual nodes in this shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_nodes
}
output "shards" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.shards
}
output "sns_topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.sns_topic_arn
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.arn
}
output "cluster_endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.cluster_endpoint
}
output "endpoint" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.endpoint
}
output "subnet_group_name" {
  description = " -The name of the subnet group used for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.subnet_group_name
}
output "availability_zone" {
  description = "The Availability Zone in which the node resides."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.availability_zone
}
output "engine_patch_version" {
  description = "Patch version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_patch_version
}
output "security_group_ids" {
  description = "Set of VPC Security Group ID-s associated with this cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.security_group_ids
}
output "parameter_group_name" {
  description = "The name of the parameter group associated with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.parameter_group_name
}
output "snapshot_window" {
  description = "Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: 05:00-09:00."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_window
}
output "tls_enabled" {
  description = "When true, in-transit encryption is enabled for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.tls_enabled
}
output "acl_name" {
  description = "Name of the Access Control List associated with the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.acl_name
}
output "final_snapshot_name" {
  description = "Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.final_snapshot_name
}
output "nodes" {
  description = ""
  value       = aws_memorydb_cluster.aws_memorydb_cluster.nodes
}
output "address" {
  description = "DNS hostname of the node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.address
}
output "auto_minor_version_upgrade" {
  description = "True when the cluster allows automatic minor version upgrades."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.auto_minor_version_upgrade
}
output "create_time" {
  description = "The date and time when the node was created. Example: 2022-01-01T21:00:00Z."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.create_time
}
output "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the cluster at rest."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.kms_key_arn
}
output "name" {
  description = "Name of this node."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.name
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_shards
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.engine_version
}
output "port" {
  description = "Port number that this node is listening on."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.port
}
output "slots" {
  description = "Keyspace for this shard. Example: 0-16383."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.slots
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.description
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.node_type
}
output "num_replicas_per_shard" {
  description = "The number of replicas to apply to each shard."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.num_replicas_per_shard
}
output "snapshot_retention_limit" {
  description = "The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to 0, automatic backups are disabled."
  value       = aws_memorydb_cluster.aws_memorydb_cluster.snapshot_retention_limit
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
