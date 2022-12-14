resource "aws_docdb_cluster" "aws_docdb_cluster" {
  availability_zones              = var.availability_zones
  cluster_identifier              = var.cluster_identifier
  cluster_members                 = var.cluster_members
  db_subnet_group_name            = var.db_subnet_group_name
  endpoint                        = var.endpoint
  engine                          = var.engine
  preferred_backup_window         = var.preferred_backup_window
  arn                             = var.arn
  reader_endpoint                 = var.reader_endpoint
  storage_encrypted               = var.storage_encrypted
  tags                            = var.tags
  apply_immediately               = var.apply_immediately
  backup_retention_period         = var.backup_retention_period
  cluster_resource_id             = var.cluster_resource_id
  id                              = var.id
  skip_final_snapshot             = var.skip_final_snapshot
  snapshot_identifier             = var.snapshot_identifier
  create                          = var.create
  db_cluster_parameter_group_name = var.db_cluster_parameter_group_name
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  engine_version                  = var.engine_version
  hosted_zone_id                  = var.hosted_zone_id
  deletion_protection             = var.deletion_protection
  vpc_security_group_ids          = var.vpc_security_group_ids
  final_snapshot_identifier       = var.final_snapshot_identifier
  kms_key_id                      = var.kms_key_id
  master_password                 = var.master_password
  preferred_maintenance_window    = var.preferred_maintenance_window
  tags_all                        = var.tags_all
  update                          = var.update
  global_cluster_identifier       = var.global_cluster_identifier
  master_username                 = var.master_username
  port                            = var.port
  cluster_identifier_prefix       = var.cluster_identifier_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "deletion_protection" {
  description = "(Optional) A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled."
  type        = string
  default     = ""
}
variable "vpc_security_group_ids" {
  description = "In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "master_password" {
  description = "(Required unless a snapshot_identifier or unless a global_cluster_identifier"
  type        = string
}
variable "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 120m)"
  type        = string
}
variable "final_snapshot_identifier" {
  description = ""
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) The port on which the DB accepts connections"
  type        = string
  default     = ""
}
variable "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_docdb_global_cluster."
  type        = string
  default     = ""
}
variable "master_username" {
  description = "(Required unless a snapshot_identifier or unless a global_cluster_identifier is provided when the cluster is the \"secondary\" cluster of a global database) Username for the master DB user."
  type        = string
}
variable "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  type        = string
}
variable "cluster_members" {
  description = " ??? List of DocDB Instances that are a part of this cluster"
  type        = string
}
variable "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance."
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "The DNS address of the DocDB instance"
  type        = string
}
variable "engine" {
  description = "(Optional) The name of the database engine to be used for this DB cluster. Defaults to docdb. Valid Values: docdb"
  type        = string
  default     = ""
}
variable "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC\nDefault: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00"
  type        = string
  default     = ""
}
variable "availability_zones" {
  description = ""
  type        = string
}
variable "cluster_identifier" {
  description = "(Optional, Forces new resources) The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
  type        = string
}
variable "storage_encrypted" {
  description = "(Optional) Specifies whether the DB cluster is encrypted. The default is false."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the DB cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  type        = string
}
variable "reader_endpoint" {
  description = "A read-only endpoint for the DocDB cluster, automatically load-balanced across replicas"
  type        = string
}
variable "cluster_resource_id" {
  description = "The DocDB Cluster Resource ID"
  type        = string
}
variable "id" {
  description = "The DocDB Cluster Identifier"
  type        = string
}
variable "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  type        = string
  default     = ""
}
variable "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  type        = string
  default     = ""
}
variable "apply_immediately" {
  description = "false."
  type        = string
}
variable "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Default 1"
  type        = string
  default     = ""
}
variable "enabled_cloudwatch_logs_exports" {
  description = "audit, profiler."
  type        = string
}
variable "engine_version" {
  description = "(Optional) The database engine version. Updating this argument results in an outage."
  type        = string
  default     = ""
}
variable "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  type        = string
}
variable "create" {
  description = "(Default 120m)"
  type        = string
}
variable "db_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
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
output "availability_zones" {
  description = ""
  value       = aws_docdb_cluster.aws_docdb_cluster.availability_zones
}
output "cluster_identifier" {
  description = "(Optional, Forces new resources) The cluster identifier. If omitted, Terraform will assign a random, unique identifier."
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_identifier
}
output "cluster_members" {
  description = " ??? List of DocDB Instances that are a part of this cluster"
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_members
}
output "db_subnet_group_name" {
  description = "(Optional) A DB subnet group to associate with this DB instance."
  value       = aws_docdb_cluster.aws_docdb_cluster.db_subnet_group_name
}
output "endpoint" {
  description = "The DNS address of the DocDB instance"
  value       = aws_docdb_cluster.aws_docdb_cluster.endpoint
}
output "engine" {
  description = "(Optional) The name of the database engine to be used for this DB cluster. Defaults to docdb. Valid Values: docdb"
  value       = aws_docdb_cluster.aws_docdb_cluster.engine
}
output "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled using the BackupRetentionPeriod parameter.Time in UTC\nDefault: A 30-minute window selected at random from an 8-hour block of time per regionE.g., 04:00-09:00"
  value       = aws_docdb_cluster.aws_docdb_cluster.preferred_backup_window
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_docdb_cluster.aws_docdb_cluster.arn
}
output "reader_endpoint" {
  description = "A read-only endpoint for the DocDB cluster, automatically load-balanced across replicas"
  value       = aws_docdb_cluster.aws_docdb_cluster.reader_endpoint
}
output "storage_encrypted" {
  description = "(Optional) Specifies whether the DB cluster is encrypted. The default is false."
  value       = aws_docdb_cluster.aws_docdb_cluster.storage_encrypted
}
output "tags" {
  description = "(Optional) A map of tags to assign to the DB cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_docdb_cluster.aws_docdb_cluster.tags
}
output "apply_immediately" {
  description = "false."
  value       = aws_docdb_cluster.aws_docdb_cluster.apply_immediately
}
output "backup_retention_period" {
  description = "(Optional) The days to retain backups for. Default 1"
  value       = aws_docdb_cluster.aws_docdb_cluster.backup_retention_period
}
output "cluster_resource_id" {
  description = "The DocDB Cluster Resource ID"
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_resource_id
}
output "id" {
  description = "The DocDB Cluster Identifier"
  value       = aws_docdb_cluster.aws_docdb_cluster.id
}
output "skip_final_snapshot" {
  description = "(Optional) Determines whether a final DB snapshot is created before the DB cluster is deleted. If true is specified, no DB snapshot is created. If false is specified, a DB snapshot is created before the DB cluster is deleted, using the value from final_snapshot_identifier. Default is false."
  value       = aws_docdb_cluster.aws_docdb_cluster.skip_final_snapshot
}
output "snapshot_identifier" {
  description = "(Optional) Specifies whether or not to create this cluster from a snapshot. You can use either the name or ARN when specifying a DB cluster snapshot, or the ARN when specifying a DB snapshot."
  value       = aws_docdb_cluster.aws_docdb_cluster.snapshot_identifier
}
output "create" {
  description = "(Default 120m)"
  value       = aws_docdb_cluster.aws_docdb_cluster.create
}
output "db_cluster_parameter_group_name" {
  description = "(Optional) A cluster parameter group to associate with the cluster."
  value       = aws_docdb_cluster.aws_docdb_cluster.db_cluster_parameter_group_name
}
output "enabled_cloudwatch_logs_exports" {
  description = "audit, profiler."
  value       = aws_docdb_cluster.aws_docdb_cluster.enabled_cloudwatch_logs_exports
}
output "engine_version" {
  description = "(Optional) The database engine version. Updating this argument results in an outage."
  value       = aws_docdb_cluster.aws_docdb_cluster.engine_version
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_docdb_cluster.aws_docdb_cluster.hosted_zone_id
}
output "deletion_protection" {
  description = "(Optional) A value that indicates whether the DB cluster has deletion protection enabled. The database can't be deleted when deletion protection is enabled. By default, deletion protection is disabled."
  value       = aws_docdb_cluster.aws_docdb_cluster.deletion_protection
}
output "vpc_security_group_ids" {
  description = "In addition to all arguments above, the following attributes are exported:"
  value       = aws_docdb_cluster.aws_docdb_cluster.vpc_security_group_ids
}
output "final_snapshot_identifier" {
  description = ""
  value       = aws_docdb_cluster.aws_docdb_cluster.final_snapshot_identifier
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, storage_encrypted needs to be set to true."
  value       = aws_docdb_cluster.aws_docdb_cluster.kms_key_id
}
output "master_password" {
  description = "(Required unless a snapshot_identifier or unless a global_cluster_identifier"
  value       = aws_docdb_cluster.aws_docdb_cluster.master_password
}
output "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in (UTC) e.g., wed:04:00-wed:04:30"
  value       = aws_docdb_cluster.aws_docdb_cluster.preferred_maintenance_window
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_docdb_cluster.aws_docdb_cluster.tags_all
}
output "update" {
  description = "(Default 120m)"
  value       = aws_docdb_cluster.aws_docdb_cluster.update
}
output "global_cluster_identifier" {
  description = "(Optional) The global cluster identifier specified on aws_docdb_global_cluster."
  value       = aws_docdb_cluster.aws_docdb_cluster.global_cluster_identifier
}
output "master_username" {
  description = "(Required unless a snapshot_identifier or unless a global_cluster_identifier is provided when the cluster is the \"secondary\" cluster of a global database) Username for the master DB user."
  value       = aws_docdb_cluster.aws_docdb_cluster.master_username
}
output "port" {
  description = "(Optional) The port on which the DB accepts connections"
  value       = aws_docdb_cluster.aws_docdb_cluster.port
}
output "cluster_identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique cluster identifier beginning with the specified prefix. Conflicts with cluster_identifier."
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_identifier_prefix
}
output "cluster_members" {
  description = " ??? List of DocDB Instances that are a part of this cluster"
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_members
}
output "cluster_resource_id" {
  description = "The DocDB Cluster Resource ID"
  value       = aws_docdb_cluster.aws_docdb_cluster.cluster_resource_id
}
output "create" {
  description = "(Default 120m)"
  value       = aws_docdb_cluster.aws_docdb_cluster.create
}
output "delete" {
  description = "(Default 120m"
  value       = aws_docdb_cluster.aws_docdb_cluster.delete
}
output "id" {
  description = "The DocDB Cluster Identifier"
  value       = aws_docdb_cluster.aws_docdb_cluster.id
}
output "reader_endpoint" {
  description = "A read-only endpoint for the DocDB cluster, automatically load-balanced across replicas"
  value       = aws_docdb_cluster.aws_docdb_cluster.reader_endpoint
}
output "update" {
  description = "(Default 120m)"
  value       = aws_docdb_cluster.aws_docdb_cluster.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_docdb_cluster.aws_docdb_cluster.arn
}
output "endpoint" {
  description = "The DNS address of the DocDB instance"
  value       = aws_docdb_cluster.aws_docdb_cluster.endpoint
}
output "hosted_zone_id" {
  description = "The Route53 Hosted Zone ID of the endpoint"
  value       = aws_docdb_cluster.aws_docdb_cluster.hosted_zone_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_docdb_cluster.aws_docdb_cluster.tags_all
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
      "kind/name"                   = "aws_docdb_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
