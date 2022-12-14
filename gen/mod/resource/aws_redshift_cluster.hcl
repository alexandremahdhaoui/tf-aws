resource "aws_redshift_cluster" "aws_redshift_cluster" {
  automated_snapshot_retention_period  = var.automated_snapshot_retention_period
  bucket_name                          = var.bucket_name
  cluster_version                      = var.cluster_version
  database_name                        = var.database_name
  encrypted                            = var.encrypted
  grant_name                           = var.grant_name
  apply_immediately                    = var.apply_immediately
  arn                                  = var.arn
  owner_account                        = var.owner_account
  iam_roles                            = var.iam_roles
  node_type                            = var.node_type
  skip_final_snapshot                  = var.skip_final_snapshot
  cluster_revision_number              = var.cluster_revision_number
  master_username                      = var.master_username
  id                                   = var.id
  retention_period                     = var.retention_period
  snapshot_cluster_identifier          = var.snapshot_cluster_identifier
  destination_region                   = var.destination_region
  dns_name                             = var.dns_name
  port                                 = var.port
  public_ip_address                    = var.public_ip_address
  snapshot_copy                        = var.snapshot_copy
  publicly_accessible                  = var.publicly_accessible
  master_password                      = var.master_password
  availability_zone                    = var.availability_zone
  elastic_ip                           = var.elastic_ip
  final_snapshot_identifier            = var.final_snapshot_identifier
  private_ip_address                   = var.private_ip_address
  tags                                 = var.tags
  availability_zone_relocation_enabled = var.availability_zone_relocation_enabled
  cluster_parameter_group_name         = var.cluster_parameter_group_name
  kms_key_id                           = var.kms_key_id
  node_role                            = var.node_role
  update                               = var.update
  cluster_identifier                   = var.cluster_identifier
  cluster_public_key                   = var.cluster_public_key
  allow_version_upgrade                = var.allow_version_upgrade
  vpc_security_group_ids               = var.vpc_security_group_ids
  logging                              = var.logging
  maintenance_track_name               = var.maintenance_track_name
  number_of_nodes                      = var.number_of_nodes
  create                               = var.create
  enable                               = var.enable
  default_iam_role_arn                 = var.default_iam_role_arn
  enhanced_vpc_routing                 = var.enhanced_vpc_routing
  endpoint                             = var.endpoint
  snapshot_identifier                  = var.snapshot_identifier
  manual_snapshot_retention_period     = var.manual_snapshot_retention_period
  cluster_nodes                        = var.cluster_nodes
  cluster_security_groups              = var.cluster_security_groups
  s3_key_prefix                        = var.s3_key_prefix
  cluster_type                         = var.cluster_type
  log_destination_type                 = var.log_destination_type
  log_exports                          = var.log_exports
  preferred_maintenance_window         = var.preferred_maintenance_window
  tags_all                             = var.tags_all
  aqua_configuration_status            = var.aqua_configuration_status
  cluster_subnet_group_name            = var.cluster_subnet_group_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "maintenance_track_name" {
  description = "(Optional) The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is current."
  type        = string
  default     = ""
}
variable "number_of_nodes" {
  description = "(Optional) The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 75m)"
  type        = string
}
variable "enable" {
  description = "(Required) Enables logging information such as queries and connection attempts, for the specified Amazon Redshift cluster."
  type        = string
}
variable "logging" {
  description = "(Optional) Logging, documented below."
  type        = string
  default     = ""
}
variable "default_iam_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created."
  type        = string
  default     = ""
}
variable "enhanced_vpc_routing" {
  description = "(Optional) If true , enhanced VPC routing is enabled."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The connection endpoint"
  type        = string
}
variable "snapshot_identifier" {
  description = "(Optional) The name of the snapshot from which to create the new cluster."
  type        = string
  default     = ""
}
variable "cluster_nodes" {
  description = "The nodes in the cluster. Cluster node blocks are documented below"
  type        = string
}
variable "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  type        = string
}
variable "manual_snapshot_retention_period" {
  description = "(Optional)  The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between -1 and 3653. Default value is -1."
  type        = string
  default     = ""
}
variable "cluster_type" {
  description = "The cluster type"
  type        = string
}
variable "log_destination_type" {
  description = "(Optional) The log destination type. An enum with possible values of s3 and cloudwatch."
  type        = string
  default     = ""
}
variable "s3_key_prefix" {
  description = "(Optional) The prefix applied to the log file names."
  type        = string
  default     = ""
}
variable "preferred_maintenance_window" {
  description = "The backup window"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Cluster nodes (for cluster_nodes) support the following attributes:"
  type        = string
}
variable "aqua_configuration_status" {
  description = "(Optional) The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values are enabled, disabled, and auto. Requires Cluster reboot."
  type        = string
  default     = ""
}
variable "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  type        = string
}
variable "log_exports" {
  description = "(Optional) The collection of exported log types. Log types include the connection log, user log and user activity log. Required when log_destination_type is cloudwatch. Valid log types are connectionlog, userlog, and useractivitylog.snapshot_copy"
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Optional, required when enable is true and log_destination_type is s3documentation"
  type        = string
}
variable "cluster_version" {
  description = "The version of Redshift engine software"
  type        = string
}
variable "database_name" {
  description = "The name of the default database in the Cluster"
  type        = string
}
variable "encrypted" {
  description = "Whether the data in the cluster is encrypted"
  type        = string
}
variable "grant_name" {
  description = "(Optional) The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  type        = string
}
variable "automated_snapshot_retention_period" {
  description = "The backup retention period"
  type        = string
}
variable "iam_roles" {
  description = "(Optional) A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time."
  type        = string
  default     = ""
}
variable "node_type" {
  description = "The type of nodes in the cluster"
  type        = string
}
variable "owner_account" {
  description = "(Optional) The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot."
  type        = string
  default     = ""
}
variable "cluster_revision_number" {
  description = "The specific revision number of the database in the cluster"
  type        = string
}
variable "master_username" {
  description = "(Required unless a snapshot_identifier is provided) Username for the master DB user."
  type        = string
}
variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false."
  type        = string
  default     = ""
}
variable "retention_period" {
  description = "(Optional) The number of days to retain automated snapshots in the destination region after they are copied from the source region. Defaults to 7."
  type        = string
  default     = ""
}
variable "snapshot_cluster_identifier" {
  description = "(Optional) The name of the cluster the source snapshot was created from."
  type        = string
  default     = ""
}
variable "destination_region" {
  description = "(Required) The destination region that you want to copy snapshots to."
  type        = string
}
variable "dns_name" {
  description = "The DNS name of the cluster"
  type        = string
}
variable "id" {
  description = "The Redshift Cluster ID."
  type        = string
}
variable "port" {
  description = "The Port the cluster responds on"
  type        = string
}
variable "public_ip_address" {
  description = "The public IP address of a node within a clusterTimeoutsConfiguration options:"
  type        = string
}
variable "snapshot_copy" {
  description = "(Optional) Configuration of automatic copy of snapshots from one region to another. Documented below."
  type        = string
  default     = ""
}
variable "publicly_accessible" {
  description = "(Optional) If true, the cluster can be accessed from a public network. Default is true."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "The availability zone of the Cluster"
  type        = string
}
variable "elastic_ip" {
  description = "(Optional) The Elastic IP (EIP) address for the cluster."
  type        = string
  default     = ""
}
variable "master_password" {
  description = "(Required unless a snapshot_identifier"
  type        = string
}
variable "private_ip_address" {
  description = "The private IP address of a node within a cluster"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blockslogging"
  type        = string
  default     = ""
}
variable "availability_zone_relocation_enabled" {
  description = "(Optional) If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is false. Available for use on clusters from the RA3 instance family."
  type        = string
  default     = ""
}
variable "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  type        = string
}
variable "final_snapshot_identifier" {
  description = "(Optional) The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, skip_final_snapshot must be false."
  type        = string
  default     = ""
}
variable "node_role" {
  description = "Whether the node is a leader node or a compute node"
  type        = string
}
variable "update" {
  description = "(Default 75m)"
  type        = string
}
variable "cluster_identifier" {
  description = "The Cluster Identifier"
  type        = string
}
variable "cluster_public_key" {
  description = "The public key for the cluster"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
  type        = string
  default     = ""
}
variable "allow_version_upgrade" {
  description = "(Optional) If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is true."
  type        = string
  default     = ""
}
variable "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the cluster"
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
output "snapshot_cluster_identifier" {
  description = "(Optional) The name of the cluster the source snapshot was created from."
  value       = aws_redshift_cluster.aws_redshift_cluster.snapshot_cluster_identifier
}
output "destination_region" {
  description = "(Required) The destination region that you want to copy snapshots to."
  value       = aws_redshift_cluster.aws_redshift_cluster.destination_region
}
output "dns_name" {
  description = "The DNS name of the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.dns_name
}
output "id" {
  description = "The Redshift Cluster ID."
  value       = aws_redshift_cluster.aws_redshift_cluster.id
}
output "retention_period" {
  description = "(Optional) The number of days to retain automated snapshots in the destination region after they are copied from the source region. Defaults to 7."
  value       = aws_redshift_cluster.aws_redshift_cluster.retention_period
}
output "port" {
  description = "The Port the cluster responds on"
  value       = aws_redshift_cluster.aws_redshift_cluster.port
}
output "public_ip_address" {
  description = "The public IP address of a node within a clusterTimeoutsConfiguration options:"
  value       = aws_redshift_cluster.aws_redshift_cluster.public_ip_address
}
output "snapshot_copy" {
  description = "(Optional) Configuration of automatic copy of snapshots from one region to another. Documented below."
  value       = aws_redshift_cluster.aws_redshift_cluster.snapshot_copy
}
output "publicly_accessible" {
  description = "(Optional) If true, the cluster can be accessed from a public network. Default is true."
  value       = aws_redshift_cluster.aws_redshift_cluster.publicly_accessible
}
output "availability_zone" {
  description = "The availability zone of the Cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.availability_zone
}
output "elastic_ip" {
  description = "(Optional) The Elastic IP (EIP) address for the cluster."
  value       = aws_redshift_cluster.aws_redshift_cluster.elastic_ip
}
output "master_password" {
  description = "(Required unless a snapshot_identifier"
  value       = aws_redshift_cluster.aws_redshift_cluster.master_password
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Blockslogging"
  value       = aws_redshift_cluster.aws_redshift_cluster.tags
}
output "availability_zone_relocation_enabled" {
  description = "(Optional) If true, the cluster can be relocated to another availabity zone, either automatically by AWS or when requested. Default is false. Available for use on clusters from the RA3 instance family."
  value       = aws_redshift_cluster.aws_redshift_cluster.availability_zone_relocation_enabled
}
output "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_parameter_group_name
}
output "final_snapshot_identifier" {
  description = "(Optional) The identifier of the final snapshot that is to be created immediately before deleting the cluster. If this parameter is provided, skip_final_snapshot must be false."
  value       = aws_redshift_cluster.aws_redshift_cluster.final_snapshot_identifier
}
output "private_ip_address" {
  description = "The private IP address of a node within a cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.private_ip_address
}
output "update" {
  description = "(Default 75m)"
  value       = aws_redshift_cluster.aws_redshift_cluster.update
}
output "cluster_identifier" {
  description = "The Cluster Identifier"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_identifier
}
output "cluster_public_key" {
  description = "The public key for the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_public_key
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
  value       = aws_redshift_cluster.aws_redshift_cluster.kms_key_id
}
output "node_role" {
  description = "Whether the node is a leader node or a compute node"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_role
}
output "allow_version_upgrade" {
  description = "(Optional) If true , major version upgrades can be applied during the maintenance window to the Amazon Redshift engine that is running on the cluster. Default is true."
  value       = aws_redshift_cluster.aws_redshift_cluster.allow_version_upgrade
}
output "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.vpc_security_group_ids
}
output "number_of_nodes" {
  description = "(Optional) The number of compute nodes in the cluster. This parameter is required when the ClusterType parameter is specified as multi-node. Default is 1."
  value       = aws_redshift_cluster.aws_redshift_cluster.number_of_nodes
}
output "create" {
  description = "(Default 75m)"
  value       = aws_redshift_cluster.aws_redshift_cluster.create
}
output "enable" {
  description = "(Required) Enables logging information such as queries and connection attempts, for the specified Amazon Redshift cluster."
  value       = aws_redshift_cluster.aws_redshift_cluster.enable
}
output "logging" {
  description = "(Optional) Logging, documented below."
  value       = aws_redshift_cluster.aws_redshift_cluster.logging
}
output "maintenance_track_name" {
  description = "(Optional) The name of the maintenance track for the restored cluster. When you take a snapshot, the snapshot inherits the MaintenanceTrack value from the cluster. The snapshot might be on a different track than the cluster that was the source for the snapshot. For example, suppose that you take a snapshot of  a cluster that is on the current track and then change the cluster to be on the trailing track. In this case, the snapshot and the source cluster are on different tracks. Default value is current."
  value       = aws_redshift_cluster.aws_redshift_cluster.maintenance_track_name
}
output "default_iam_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the IAM role that was set as default for the cluster when the cluster was created."
  value       = aws_redshift_cluster.aws_redshift_cluster.default_iam_role_arn
}
output "enhanced_vpc_routing" {
  description = "(Optional) If true , enhanced VPC routing is enabled."
  value       = aws_redshift_cluster.aws_redshift_cluster.enhanced_vpc_routing
}
output "endpoint" {
  description = "The connection endpoint"
  value       = aws_redshift_cluster.aws_redshift_cluster.endpoint
}
output "snapshot_identifier" {
  description = "(Optional) The name of the snapshot from which to create the new cluster."
  value       = aws_redshift_cluster.aws_redshift_cluster.snapshot_identifier
}
output "cluster_nodes" {
  description = "The nodes in the cluster. Cluster node blocks are documented below"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_nodes
}
output "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_security_groups
}
output "manual_snapshot_retention_period" {
  description = "(Optional)  The default number of days to retain a manual snapshot. If the value is -1, the snapshot is retained indefinitely. This setting doesn't change the retention period of existing snapshots. Valid values are between -1 and 3653. Default value is -1."
  value       = aws_redshift_cluster.aws_redshift_cluster.manual_snapshot_retention_period
}
output "cluster_type" {
  description = "The cluster type"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_type
}
output "log_destination_type" {
  description = "(Optional) The log destination type. An enum with possible values of s3 and cloudwatch."
  value       = aws_redshift_cluster.aws_redshift_cluster.log_destination_type
}
output "s3_key_prefix" {
  description = "(Optional) The prefix applied to the log file names."
  value       = aws_redshift_cluster.aws_redshift_cluster.s3_key_prefix
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Cluster nodes (for cluster_nodes) support the following attributes:"
  value       = aws_redshift_cluster.aws_redshift_cluster.tags_all
}
output "aqua_configuration_status" {
  description = "(Optional) The value represents how the cluster is configured to use AQUA (Advanced Query Accelerator) after the cluster is restored. Possible values are enabled, disabled, and auto. Requires Cluster reboot."
  value       = aws_redshift_cluster.aws_redshift_cluster.aqua_configuration_status
}
output "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_subnet_group_name
}
output "log_exports" {
  description = "(Optional) The collection of exported log types. Log types include the connection log, user log and user activity log. Required when log_destination_type is cloudwatch. Valid log types are connectionlog, userlog, and useractivitylog.snapshot_copy"
  value       = aws_redshift_cluster.aws_redshift_cluster.log_exports
}
output "preferred_maintenance_window" {
  description = "The backup window"
  value       = aws_redshift_cluster.aws_redshift_cluster.preferred_maintenance_window
}
output "cluster_version" {
  description = "The version of Redshift engine software"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_version
}
output "database_name" {
  description = "The name of the default database in the Cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.database_name
}
output "encrypted" {
  description = "Whether the data in the cluster is encrypted"
  value       = aws_redshift_cluster.aws_redshift_cluster.encrypted
}
output "grant_name" {
  description = "(Optional) The name of the snapshot copy grant to use when snapshots of an AWS KMS-encrypted cluster are copied to the destination region.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_cluster.aws_redshift_cluster.grant_name
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false."
  value       = aws_redshift_cluster.aws_redshift_cluster.apply_immediately
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.arn
}
output "automated_snapshot_retention_period" {
  description = "The backup retention period"
  value       = aws_redshift_cluster.aws_redshift_cluster.automated_snapshot_retention_period
}
output "bucket_name" {
  description = "(Optional, required when enable is true and log_destination_type is s3documentation"
  value       = aws_redshift_cluster.aws_redshift_cluster.bucket_name
}
output "iam_roles" {
  description = "(Optional) A list of IAM Role ARNs to associate with the cluster. A Maximum of 10 can be associated to the cluster at any time."
  value       = aws_redshift_cluster.aws_redshift_cluster.iam_roles
}
output "node_type" {
  description = "The type of nodes in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_type
}
output "owner_account" {
  description = "(Optional) The AWS customer account used to create or copy the snapshot. Required if you are restoring a snapshot you do not own, optional if you own the snapshot."
  value       = aws_redshift_cluster.aws_redshift_cluster.owner_account
}
output "cluster_revision_number" {
  description = "The specific revision number of the database in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_revision_number
}
output "master_username" {
  description = "(Required unless a snapshot_identifier is provided) Username for the master DB user."
  value       = aws_redshift_cluster.aws_redshift_cluster.master_username
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final snapshot of the cluster is created before Amazon Redshift deletes the cluster. If true , a final cluster snapshot is not created. If false , a final cluster snapshot is created before the cluster is deleted. Default is false."
  value       = aws_redshift_cluster.aws_redshift_cluster.skip_final_snapshot
}
output "cluster_security_groups" {
  description = "The security groups associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_security_groups
}
output "node_type" {
  description = "The type of nodes in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_type
}
output "public_ip_address" {
  description = "The public IP address of a node within a clusterTimeoutsConfiguration options:"
  value       = aws_redshift_cluster.aws_redshift_cluster.public_ip_address
}
output "cluster_subnet_group_name" {
  description = "The name of a cluster subnet group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_subnet_group_name
}
output "create" {
  description = "(Default 75m)"
  value       = aws_redshift_cluster.aws_redshift_cluster.create
}
output "node_role" {
  description = "Whether the node is a leader node or a compute node"
  value       = aws_redshift_cluster.aws_redshift_cluster.node_role
}
output "cluster_type" {
  description = "The cluster type"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_type
}
output "cluster_version" {
  description = "The version of Redshift engine software"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_version
}
output "vpc_security_group_ids" {
  description = "The VPC security group Ids associated with the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.vpc_security_group_ids
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.arn
}
output "availability_zone" {
  description = "The availability zone of the Cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.availability_zone
}
output "cluster_nodes" {
  description = "The nodes in the cluster. Cluster node blocks are documented below"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_nodes
}
output "database_name" {
  description = "The name of the default database in the Cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.database_name
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_redshift_cluster.aws_redshift_cluster.delete
}
output "cluster_identifier" {
  description = "The Cluster Identifier"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_identifier
}
output "dns_name" {
  description = "The DNS name of the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.dns_name
}
output "id" {
  description = "The Redshift Cluster ID."
  value       = aws_redshift_cluster.aws_redshift_cluster.id
}
output "encrypted" {
  description = "Whether the data in the cluster is encrypted"
  value       = aws_redshift_cluster.aws_redshift_cluster.encrypted
}
output "endpoint" {
  description = "The connection endpoint"
  value       = aws_redshift_cluster.aws_redshift_cluster.endpoint
}
output "cluster_parameter_group_name" {
  description = "The name of the parameter group to be associated with this cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_parameter_group_name
}
output "cluster_revision_number" {
  description = "The specific revision number of the database in the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_revision_number
}
output "preferred_maintenance_window" {
  description = "The backup window"
  value       = aws_redshift_cluster.aws_redshift_cluster.preferred_maintenance_window
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Cluster nodes (for cluster_nodes) support the following attributes:"
  value       = aws_redshift_cluster.aws_redshift_cluster.tags_all
}
output "update" {
  description = "(Default 75m)"
  value       = aws_redshift_cluster.aws_redshift_cluster.update
}
output "automated_snapshot_retention_period" {
  description = "The backup retention period"
  value       = aws_redshift_cluster.aws_redshift_cluster.automated_snapshot_retention_period
}
output "cluster_public_key" {
  description = "The public key for the cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.cluster_public_key
}
output "port" {
  description = "The Port the cluster responds on"
  value       = aws_redshift_cluster.aws_redshift_cluster.port
}
output "private_ip_address" {
  description = "The private IP address of a node within a cluster"
  value       = aws_redshift_cluster.aws_redshift_cluster.private_ip_address
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
      "kind/name"                   = "aws_redshift_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
