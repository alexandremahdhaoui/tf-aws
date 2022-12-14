datasource "aws_redshift_cluster" "aws_redshift_cluster" {
  enable_logging                       = var.enable_logging
  iam_roles                            = var.iam_roles
  kms_key_id                           = var.kms_key_id
  log_destination_type                 = var.log_destination_type
  node_type                            = var.node_type
  number_of_nodes                      = var.number_of_nodes
  tags                                 = var.tags
  aqua_configuration_status            = var.aqua_configuration_status
  vpc_id                               = var.vpc_id
  database_name                        = var.database_name
  enhanced_vpc_routing                 = var.enhanced_vpc_routing
  private_ip_address                   = var.private_ip_address
  cluster_subnet_group_name            = var.cluster_subnet_group_name
  endpoint                             = var.endpoint
  publicly_accessible                  = var.publicly_accessible
  vpc_security_group_ids               = var.vpc_security_group_ids
  cluster_revision_number              = var.cluster_revision_number
  encrypted                            = var.encrypted
  cluster_public_key                   = var.cluster_public_key
  cluster_identifier                   = var.cluster_identifier
  cluster_security_groups              = var.cluster_security_groups
  default_iam_role_arn                 = var.default_iam_role_arn
  manual_snapshot_retention_period     = var.manual_snapshot_retention_period
  node_role                            = var.node_role
  automated_snapshot_retention_period  = var.automated_snapshot_retention_period
  maintenance_track_name               = var.maintenance_track_name
  master_username                      = var.master_username
  preferred_maintenance_window         = var.preferred_maintenance_window
  cluster_nodes                        = var.cluster_nodes
  arn                                  = var.arn
  availability_zone                    = var.availability_zone
  bucket_name                          = var.bucket_name
  cluster_type                         = var.cluster_type
  log_exports                          = var.log_exports
  allow_version_upgrade                = var.allow_version_upgrade
  cluster_parameter_group_name         = var.cluster_parameter_group_name
  elastic_ip                           = var.elastic_ip
  port                                 = var.port
  s3_key_prefix                        = var.s3_key_prefix
  availability_zone_relocation_enabled = var.availability_zone_relocation_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_public_key" {
  description = "Public key for the cluster"
  type        = string
}
variable "encrypted" {
  description = "Whether the cluster data is encrypted"
  type        = string
}
variable "manual_snapshot_retention_period" {
  description = "(Optional)  The default number of days to retain a manual snapshot."
  type        = string
  default     = ""
}
variable "node_role" {
  description = "Whether the node is a leader node or a compute node"
  type        = string
}
variable "automated_snapshot_retention_period" {
  description = "The backup retention period"
  type        = string
}
variable "cluster_identifier" {
  description = "Cluster identifier"
  type        = string
}
variable "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  type        = string
}
variable "default_iam_role_arn" {
  description = "???The ARN for the IAM role that was set as default for the cluster when the cluster was created."
  type        = string
}
variable "cluster_nodes" {
  description = "Nodes in the cluster. Cluster node blocks are documented below"
  type        = string
}
variable "maintenance_track_name" {
  description = "The name of the maintenance track for the restored cluster."
  type        = string
}
variable "master_username" {
  description = "Username for the master DB user"
  type        = string
}
variable "preferred_maintenance_window" {
  description = "The maintenance window"
  type        = string
}
variable "cluster_type" {
  description = "Cluster type"
  type        = string
}
variable "log_exports" {
  description = "Collection of exported log types. Log types include the connection log, user log and user activity log."
  type        = string
}
variable "allow_version_upgrade" {
  description = "Whether major version upgrades can be applied during maintenance period"
  type        = string
}
variable "arn" {
  description = "ARN of cluster."
  type        = string
}
variable "availability_zone" {
  description = "Availability zone of the cluster"
  type        = string
}
variable "bucket_name" {
  description = "Name of the S3 bucket where the log files are to be stored"
  type        = string
}
variable "s3_key_prefix" {
  description = "Folder inside the S3 bucket where the log files are stored"
  type        = string
}
variable "availability_zone_relocation_enabled" {
  description = "Indicates whether the cluster is able to be relocated to another availability zone."
  type        = string
}
variable "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  type        = string
}
variable "elastic_ip" {
  description = "Elastic IP of the cluster"
  type        = string
}
variable "port" {
  description = "Port the cluster responds on"
  type        = string
}
variable "log_destination_type" {
  description = "The log destination type."
  type        = string
}
variable "node_type" {
  description = "Cluster node type"
  type        = string
}
variable "number_of_nodes" {
  description = "Number of nodes in the cluster"
  type        = string
}
variable "tags" {
  description = "Tags associated to the cluster"
  type        = string
}
variable "aqua_configuration_status" {
  description = "The value represents how the cluster is configured to use AQUA."
  type        = string
}
variable "enable_logging" {
  description = "Whether cluster logging is enabled"
  type        = string
}
variable "iam_roles" {
  description = "IAM roles associated to the cluster"
  type        = string
}
variable "kms_key_id" {
  description = "KMS encryption key associated to the cluster"
  type        = string
}
variable "vpc_id" {
  description = "VPC Id associated with the cluster"
  type        = string
}
variable "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  type        = string
}
variable "database_name" {
  description = "Name of the default database in the cluster"
  type        = string
}
variable "enhanced_vpc_routing" {
  description = "Whether enhanced VPC routing is enabled"
  type        = string
}
variable "private_ip_address" {
  description = "Private IP address of a node within a cluster"
  type        = string
}
variable "cluster_revision_number" {
  description = "The cluster revision number"
  type        = string
}
variable "endpoint" {
  description = "Cluster endpoint"
  type        = string
}
variable "publicly_accessible" {
  description = "Whether the cluster is publicly accessible"
  type        = string
}
variable "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the clusterCluster nodes (for cluster_nodes) support the following attributes:"
  type        = string
}
output "publicly_accessible" {
  description = "Whether the cluster is publicly accessible"
  value       = aws_redshift_cluster.aws_redshift_cluster.publicly_accessible
}
output "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the clusterCluster nodes (for cluster_nodes) support the following attributes:"
  value       = aws_redshift_cluster.aws_redshift_cluster.vpc_security_group_ids
}
output "cluster_revision_number" {
  description = "The cluster revision number"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_revision_number
}
output "endpoint" {
  description = "Cluster endpoint"
  value       = aws_redshift_cluster.aws_redshift_cluster.endpoint
}
output "cluster_public_key" {
  description = "Public key for the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_public_key
}
output "encrypted" {
  description = "Whether the cluster data is encrypted"
  value       = aws_redshift_cluster.aws_redshift_cluster.encrypted
}
output "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_security_groups
}
output "default_iam_role_arn" {
  description = "???The ARN for the IAM role that was set as default for the cluster when the cluster was created."
  value       = aws_redshift_cluster.aws_redshift_cluster.default_iam_role_arn
}
output "manual_snapshot_retention_period" {
  description = "(Optional)  The default number of days to retain a manual snapshot."
  value       = aws_redshift_cluster.aws_redshift_cluster.manual_snapshot_retention_period
}
output "node_role" {
  description = "Whether the node is a leader node or a compute node"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_role
}
output "automated_snapshot_retention_period" {
  description = "The backup retention period"
  value       = aws_redshift_cluster.aws_redshift_cluster.automated_snapshot_retention_period
}
output "cluster_identifier" {
  description = "Cluster identifier"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_identifier
}
output "master_username" {
  description = "Username for the master DB user"
  value       = aws_redshift_cluster.aws_redshift_cluster.master_username
}
output "preferred_maintenance_window" {
  description = "The maintenance window"
  value       = aws_redshift_cluster.aws_redshift_cluster.preferred_maintenance_window
}
output "cluster_nodes" {
  description = "Nodes in the cluster. Cluster node blocks are documented below"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_nodes
}
output "maintenance_track_name" {
  description = "The name of the maintenance track for the restored cluster."
  value       = aws_redshift_cluster.aws_redshift_cluster.maintenance_track_name
}
output "availability_zone" {
  description = "Availability zone of the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.availability_zone
}
output "bucket_name" {
  description = "Name of the S3 bucket where the log files are to be stored"
  value       = aws_redshift_cluster.aws_redshift_cluster.bucket_name
}
output "cluster_type" {
  description = "Cluster type"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_type
}
output "log_exports" {
  description = "Collection of exported log types. Log types include the connection log, user log and user activity log."
  value       = aws_redshift_cluster.aws_redshift_cluster.log_exports
}
output "allow_version_upgrade" {
  description = "Whether major version upgrades can be applied during maintenance period"
  value       = aws_redshift_cluster.aws_redshift_cluster.allow_version_upgrade
}
output "arn" {
  description = "ARN of cluster."
  value       = aws_redshift_cluster.aws_redshift_cluster.arn
}
output "elastic_ip" {
  description = "Elastic IP of the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.elastic_ip
}
output "port" {
  description = "Port the cluster responds on"
  value       = aws_redshift_cluster.aws_redshift_cluster.port
}
output "s3_key_prefix" {
  description = "Folder inside the S3 bucket where the log files are stored"
  value       = aws_redshift_cluster.aws_redshift_cluster.s3_key_prefix
}
output "availability_zone_relocation_enabled" {
  description = "Indicates whether the cluster is able to be relocated to another availability zone."
  value       = aws_redshift_cluster.aws_redshift_cluster.availability_zone_relocation_enabled
}
output "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_parameter_group_name
}
output "iam_roles" {
  description = "IAM roles associated to the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.iam_roles
}
output "kms_key_id" {
  description = "KMS encryption key associated to the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.kms_key_id
}
output "log_destination_type" {
  description = "The log destination type."
  value       = aws_redshift_cluster.aws_redshift_cluster.log_destination_type
}
output "node_type" {
  description = "Cluster node type"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_type
}
output "number_of_nodes" {
  description = "Number of nodes in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.number_of_nodes
}
output "tags" {
  description = "Tags associated to the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.tags
}
output "aqua_configuration_status" {
  description = "The value represents how the cluster is configured to use AQUA."
  value       = aws_redshift_cluster.aws_redshift_cluster.aqua_configuration_status
}
output "enable_logging" {
  description = "Whether cluster logging is enabled"
  value       = aws_redshift_cluster.aws_redshift_cluster.enable_logging
}
output "vpc_id" {
  description = "VPC Id associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.vpc_id
}
output "enhanced_vpc_routing" {
  description = "Whether enhanced VPC routing is enabled"
  value       = aws_redshift_cluster.aws_redshift_cluster.enhanced_vpc_routing
}
output "private_ip_address" {
  description = "Private IP address of a node within a cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.private_ip_address
}
output "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_subnet_group_name
}
output "database_name" {
  description = "Name of the default database in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.database_name
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
