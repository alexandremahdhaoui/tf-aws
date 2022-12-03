resource "aws_neptune_cluster" "aws_neptune_cluster" {
  skip_final_snapshot                  = var.skip_final_snapshot
  backup_retention_period              = var.backup_retention_period
  cluster_identifier_prefix            = var.cluster_identifier_prefix
  engine                               = var.engine
  replication_source_identifier        = var.replication_source_identifier
  iam_roles                            = var.iam_roles
  neptune_cluster_parameter_group_name = var.neptune_cluster_parameter_group_name
  neptune_subnet_group_name            = var.neptune_subnet_group_name
  preferred_backup_window              = var.preferred_backup_window
  allow_major_version_upgrade          = var.allow_major_version_upgrade
  cluster_members                      = var.cluster_members
  cluster_resource_id                  = var.cluster_resource_id
  enable_cloudwatch_logs_exports       = var.enable_cloudwatch_logs_exports
  tags                                 = var.tags
  copy_tags_to_snapshot                = var.copy_tags_to_snapshot
  endpoint                             = var.endpoint
  tags_all                             = var.tags_all
  vpc_security_group_ids               = var.vpc_security_group_ids
  final_snapshot_identifier            = var.final_snapshot_identifier
  preferred_maintenance_window         = var.preferred_maintenance_window
  id                                   = var.id
  update                               = var.update
  availability_zones                   = var.availability_zones
  cluster_identifier                   = var.cluster_identifier
  reader_endpoint                      = var.reader_endpoint
  kms_key_arn                          = var.kms_key_arn
  port                                 = var.port
  snapshot_identifier                  = var.snapshot_identifier
  storage_encrypted                    = var.storage_encrypted
  apply_immediately                    = var.apply_immediately
  create                               = var.create
  engine_version                       = var.engine_version
  hosted_zone_id                       = var.hosted_zone_id
  arn                                  = var.arn
  deletion_protection                  = var.deletion_protection
  iam_database_authentication_enabled  = var.iam_database_authentication_enabled
  status                               = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "availability_zones" {
  description = "(Optional) A list of EC2 Availability Zones that instances in the Neptune cluster can be created in."
  type        = string
  default     = ""
}
variable "cluster_identifier" {
  description = "(Optional, Forces new resources) The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
  type        = string
}
variable "reader_endpoint" {
  description = "A read-only endpoint for the Neptune cluster, automatically load-balanced across replicas"
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_arn, storage_encrypted needs to be set to true."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) The port on which the Neptune accepts connections. Default is 8182."
  type        = string
  default     = ""
}
variable "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot."
  type        = string
  default     = ""
}
variable "storage_encrypted" {
  description = "(Optional) Specifies whether the Neptune cluster is encrypted. The default is false if not specified."
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "engine_version" {
  description = "(Optional) The database engine version."
  type        = string
  default     = ""
}
variable "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  type        = string
}
variable "arn" {
  description = "The Neptune Cluster Amazon Resource Name (ARN)"
  type        = string
}
variable "deletion_protection" {
  description = "(Optional) A value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
  type        = string
  default     = ""
}
variable "status" {
  description = "The Neptune instance status"
  type        = string
}
variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  type        = string
  default     = ""
}
variable "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Default 1"
  type        = string
  default     = ""
}
variable "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  type        = string
}
variable "engine" {
  description = "(Optional) The name of the database engine to be used for this Neptune cluster. Defaults to neptune."
  type        = string
  default     = ""
}
variable "replication_source_identifier" {
  description = "(Optional) ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica."
  type        = string
  default     = ""
}
variable "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the Neptune Cluster."
  type        = string
  default     = ""
}
variable "neptune_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  type        = string
  default     = ""
}
variable "neptune_subnet_group_name" {
  description = "(Optional) A Neptune subnet group to associate with this Neptune instance."
  type        = string
  default     = ""
}
variable "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00"
  type        = string
  default     = ""
}
variable "allow_major_version_upgrade" {
  description = "(Optional) Specifies whether upgrades between different major versions are allowed. You must set it to true when providing an engine_version parameter that uses a different major version than the DB cluster's current version. Default is false."
  type        = string
  default     = ""
}
variable "cluster_members" {
  description = " – List of Neptune Instances that are a part of this cluster"
  type        = string
}
variable "cluster_resource_id" {
  description = "The Neptune Cluster Resource ID"
  type        = string
}
variable "enable_cloudwatch_logs_exports" {
  description = "(Optional) A list of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports audit."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the Neptune cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "copy_tags_to_snapshot" {
  description = "(Optional) If set to true, tags are copied to any snapshot of the DB cluster that is created."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The DNS address of the Neptune instance"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the Cluster"
  type        = string
  default     = ""
}
variable "final_snapshot_identifier" {
  description = "(Optional) The name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made."
  type        = string
  default     = ""
}
variable "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30"
  type        = string
  default     = ""
}
variable "id" {
  description = "The Neptune Cluster Identifier"
  type        = string
}
variable "update" {
  description = "(Default 120m)"
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
output "port" {
  description = "(Optional) The port on which the Neptune accepts connections. Default is 8182."
  value       = aws_neptune_cluster.aws_neptune_cluster.port
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a Neptune cluster snapshot, or the ARN when specifying a Neptune snapshot."
  value       = aws_neptune_cluster.aws_neptune_cluster.snapshot_identifier
}
output "storage_encrypted" {
  description = "(Optional) Specifies whether the Neptune cluster is encrypted. The default is false if not specified."
  value       = aws_neptune_cluster.aws_neptune_cluster.storage_encrypted
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. Default is false."
  value       = aws_neptune_cluster.aws_neptune_cluster.apply_immediately
}
output "create" {
  description = "(Default 120m)"
  value       = aws_neptune_cluster.aws_neptune_cluster.create
}
output "engine_version" {
  description = "(Optional) The database engine version."
  value       = aws_neptune_cluster.aws_neptune_cluster.engine_version
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_neptune_cluster.aws_neptune_cluster.hosted_zone_id
}
output "kms_key_arn" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_arn, storage_encrypted needs to be set to true."
  value       = aws_neptune_cluster.aws_neptune_cluster.kms_key_arn
}
output "arn" {
  description = "The Neptune Cluster Amazon Resource Name (ARN)"
  value       = aws_neptune_cluster.aws_neptune_cluster.arn
}
output "deletion_protection" {
  description = "(Optional) A value that indicates whether the DB cluster has deletion protection enabled.The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled.In addition to all arguments above, the following attributes are exported:"
  value       = aws_neptune_cluster.aws_neptune_cluster.deletion_protection
}
output "iam_database_authentication_enabled" {
  description = "(Optional) Specifies whether or not mappings of AWS Identity and Access Management (IAM) accounts to database accounts is enabled."
  value       = aws_neptune_cluster.aws_neptune_cluster.iam_database_authentication_enabled
}
output "status" {
  description = "The Neptune instance status"
  value       = aws_neptune_cluster.aws_neptune_cluster.status
}
output "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Default 1"
  value       = aws_neptune_cluster.aws_neptune_cluster.backup_retention_period
}
output "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_identifier_prefix
}
output "engine" {
  description = "(Optional) The name of the database engine to be used for this Neptune cluster. Defaults to neptune."
  value       = aws_neptune_cluster.aws_neptune_cluster.engine
}
output "replication_source_identifier" {
  description = "(Optional) ARN of a source Neptune cluster or Neptune instance if this Neptune cluster is to be created as a Read Replica."
  value       = aws_neptune_cluster.aws_neptune_cluster.replication_source_identifier
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final Neptune snapshot is created before the Neptune cluster is deleted. If true is specified, no Neptune snapshot is created. If false is specified, a Neptune snapshot is created before the Neptune cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  value       = aws_neptune_cluster.aws_neptune_cluster.skip_final_snapshot
}
output "neptune_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  value       = aws_neptune_cluster.aws_neptune_cluster.neptune_cluster_parameter_group_name
}
output "neptune_subnet_group_name" {
  description = "(Optional) A Neptune subnet group to associate with this Neptune instance."
  value       = aws_neptune_cluster.aws_neptune_cluster.neptune_subnet_group_name
}
output "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter. Time in UTC. Default: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00"
  value       = aws_neptune_cluster.aws_neptune_cluster.preferred_backup_window
}
output "allow_major_version_upgrade" {
  description = "(Optional) Specifies whether upgrades between different major versions are allowed. You must set it to true when providing an engine_version parameter that uses a different major version than the DB cluster's current version. Default is false."
  value       = aws_neptune_cluster.aws_neptune_cluster.allow_major_version_upgrade
}
output "cluster_members" {
  description = " – List of Neptune Instances that are a part of this cluster"
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_members
}
output "cluster_resource_id" {
  description = "The Neptune Cluster Resource ID"
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_resource_id
}
output "enable_cloudwatch_logs_exports" {
  description = "(Optional) A list of the log types this DB cluster is configured to export to Cloudwatch Logs. Currently only supports audit."
  value       = aws_neptune_cluster.aws_neptune_cluster.enable_cloudwatch_logs_exports
}
output "iam_roles" {
  description = "(Optional) A List of ARNs for the IAM roles to associate to the Neptune Cluster."
  value       = aws_neptune_cluster.aws_neptune_cluster.iam_roles
}
output "tags" {
  description = "(Optional) A map of tags to assign to the Neptune cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_neptune_cluster.aws_neptune_cluster.tags
}
output "copy_tags_to_snapshot" {
  description = "(Optional) If set to true, tags are copied to any snapshot of the DB cluster that is created."
  value       = aws_neptune_cluster.aws_neptune_cluster.copy_tags_to_snapshot
}
output "endpoint" {
  description = "The DNS address of the Neptune instance"
  value       = aws_neptune_cluster.aws_neptune_cluster.endpoint
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster.aws_neptune_cluster.tags_all
}
output "vpc_security_group_ids" {
  description = "(Optional) List of VPC security groups to associate with the Cluster"
  value       = aws_neptune_cluster.aws_neptune_cluster.vpc_security_group_ids
}
output "final_snapshot_identifier" {
  description = "(Optional) The name of your final Neptune snapshot when this Neptune cluster is deleted. If omitted, no final snapshot will be made."
  value       = aws_neptune_cluster.aws_neptune_cluster.final_snapshot_identifier
}
output "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30"
  value       = aws_neptune_cluster.aws_neptune_cluster.preferred_maintenance_window
}
output "id" {
  description = "The Neptune Cluster Identifier"
  value       = aws_neptune_cluster.aws_neptune_cluster.id
}
output "update" {
  description = "(Default 120m)"
  value       = aws_neptune_cluster.aws_neptune_cluster.update
}
output "availability_zones" {
  description = "(Optional) A list of EC2 Availability Zones that instances in the Neptune cluster can be created in."
  value       = aws_neptune_cluster.aws_neptune_cluster.availability_zones
}
output "cluster_identifier" {
  description = "(Optional, Forces new resources) The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_identifier
}
output "reader_endpoint" {
  description = "A read-only endpoint for the Neptune cluster, automatically load-balanced across replicas"
  value       = aws_neptune_cluster.aws_neptune_cluster.reader_endpoint
}
output "arn" {
  description = "The Neptune Cluster Amazon Resource Name (ARN)"
  value       = aws_neptune_cluster.aws_neptune_cluster.arn
}
output "cluster_resource_id" {
  description = "The Neptune Cluster Resource ID"
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_resource_id
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_neptune_cluster.aws_neptune_cluster.delete
}
output "endpoint" {
  description = "The DNS address of the Neptune instance"
  value       = aws_neptune_cluster.aws_neptune_cluster.endpoint
}
output "id" {
  description = "The Neptune Cluster Identifier"
  value       = aws_neptune_cluster.aws_neptune_cluster.id
}
output "status" {
  description = "The Neptune instance status"
  value       = aws_neptune_cluster.aws_neptune_cluster.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_neptune_cluster.aws_neptune_cluster.tags_all
}
output "cluster_members" {
  description = " – List of Neptune Instances that are a part of this cluster"
  value       = aws_neptune_cluster.aws_neptune_cluster.cluster_members
}
output "create" {
  description = "(Default 120m)"
  value       = aws_neptune_cluster.aws_neptune_cluster.create
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_neptune_cluster.aws_neptune_cluster.hosted_zone_id
}
output "reader_endpoint" {
  description = "A read-only endpoint for the Neptune cluster, automatically load-balanced across replicas"
  value       = aws_neptune_cluster.aws_neptune_cluster.reader_endpoint
}
output "update" {
  description = "(Default 120m)"
  value       = aws_neptune_cluster.aws_neptune_cluster.update
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
      "kind/name"                   = "aws_neptune_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
