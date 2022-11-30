datasource "aws_memorydb_snapshot" "aws_memorydb_snapshot" {
  node_type                = var.node_type
  parameter_group_name     = var.parameter_group_name
  snapshot_window          = var.snapshot_window
  vpc_id                   = var.vpc_id
  source                   = var.source
  description              = var.description
  kms_key_arn              = var.kms_key_arn
  num_shards               = var.num_shards
  port                     = var.port
  subnet_group_name        = var.subnet_group_name
  cluster_configuration    = var.cluster_configuration
  id                       = var.id
  maintenance_window       = var.maintenance_window
  snapshot_retention_limit = var.snapshot_retention_limit
  topic_arn                = var.topic_arn
  arn                      = var.arn
  cluster_name             = var.cluster_name
  engine_version           = var.engine_version
  name                     = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  type        = string
}
variable "id" {
  description = "Name of the snapshot."
  type        = string
}
variable "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  type        = string
}
variable "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  type        = string
}
variable "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  type        = string
}
variable "arn" {
  description = "ARN of the snapshot."
  type        = string
}
variable "cluster_name" {
  description = "Name of the MemoryDB cluster that this snapshot was taken from."
  type        = string
}
variable "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  type        = string
}
variable "name" {
  description = "Name of the cluster."
  type        = string
}
variable "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  type        = string
}
variable "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  type        = string
}
variable "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  type        = string
}
variable "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  type        = string
}
variable "vpc_id" {
  description = "The VPC in which the cluster exists."
  type        = string
}
variable "description" {
  description = "Description for the cluster."
  type        = string
}
variable "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the snapshot at rest."
  type        = string
}
variable "num_shards" {
  description = "Number of shards in the cluster."
  type        = string
}
variable "port" {
  description = "Port number on which the cluster accepts connections."
  type        = string
}
variable "source" {
  description = "Whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  type        = string
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The VPC in which the cluster exists."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the snapshot at rest."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.num_shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "Port number on which the cluster accepts connections."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "Whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_retention_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_name" {
  description = "Name of the MemoryDB cluster that this snapshot was taken from."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_configuration" {
  description = "The configuration of the cluster from which the snapshot was taken.\n"
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_retention_limit" {
  description = "Number of days for which MemoryDB retains automatic snapshots before deleting them."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_retention_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "num_shards" {
  description = "Number of shards in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.num_shards
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter_group_name" {
  description = "Name of the parameter group associated with the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.parameter_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_window" {
  description = "The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of the shard."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.snapshot_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_name" {
  description = "Name of the MemoryDB cluster that this snapshot was taken from."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.cluster_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description for the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "ARN of the KMS key used to encrypt the snapshot at rest."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_group_name" {
  description = "Name of the subnet group used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.subnet_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic_arn" {
  description = "ARN of the SNS topic to which cluster notifications are sent."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the snapshot."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_window" {
  description = "The weekly time range during which maintenance on the cluster is performed."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.maintenance_window
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = "Compute and memory capacity of the nodes in the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "Port number on which the cluster accepts connections."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "Whether the snapshot is from an automatic backup (automated) or was created manually (manual)."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "engine_version" {
  description = "Version number of the Redis engine used by the cluster."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.engine_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The VPC in which the cluster exists."
  value       = aws_memorydb_snapshot.aws_memorydb_snapshot.vpc_id
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
