resource "aws_rds_cluster_instance" "aws_rds_cluster_instance" {
  arn                                   = var.arn
  availability_zone                     = var.availability_zone
  port                                  = var.port
  preferred_backup_window               = var.preferred_backup_window
  preferred_maintenance_window          = var.preferred_maintenance_window
  engine_version                        = var.engine_version
  identifier                            = var.identifier
  identifier_prefix                     = var.identifier_prefix
  kms_key_id                            = var.kms_key_id
  publicly_accessible                   = var.publicly_accessible
  tags                                  = var.tags
  tags_all                              = var.tags_all
  ca_cert_identifier                    = var.ca_cert_identifier
  create                                = var.create
  id                                    = var.id
  apply_immediately                     = var.apply_immediately
  db_parameter_group_name               = var.db_parameter_group_name
  performance_insights_enabled          = var.performance_insights_enabled
  promotion_tier                        = var.promotion_tier
  storage_encrypted                     = var.storage_encrypted
  auto_minor_version_upgrade            = var.auto_minor_version_upgrade
  dbi_resource_id                       = var.dbi_resource_id
  endpoint                              = var.endpoint
  engine_version_actual                 = var.engine_version_actual
  performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period
  copy_tags_to_snapshot                 = var.copy_tags_to_snapshot
  db_subnet_group_name                  = var.db_subnet_group_name
  engine                                = var.engine
  network_type                          = var.network_type
  cluster_identifier                    = var.cluster_identifier
  monitoring_interval                   = var.monitoring_interval
  update                                = var.update
  writer                                = var.writer
  instance_class                        = var.instance_class
  monitoring_role_arn                   = var.monitoring_role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default true."
  type        = string
  default     = ""
}
variable "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  type        = string
}
variable "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  type        = string
}
variable "engine_version_actual" {
  description = "The database engine version"
  type        = string
}
variable "performance_insights_kms_key_id" {
  description = "The ARN for the KMS encryption key used by Performance Insights."
  type        = string
}
variable "performance_insights_retention_period" {
  description = "(Optional) Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'."
  type        = string
  default     = ""
}
variable "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default false."
  type        = string
}
variable "db_subnet_group_name" {
  description = "(Required if publicly_accessible = false, Optional otherwise, Forces new resource) A DB subnet group to associate with this DB instance. strongNOTE: This must match the db_subnet_group_name of the attached aws_rds_cluster."
  type        = string
}
variable "engine" {
  description = "The database engine"
  type        = string
}
variable "network_type" {
  description = "The network type of the DB instance."
  type        = string
}
variable "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  type        = string
}
variable "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 90m)"
  type        = string
}
variable "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  type        = string
}
variable "instance_class" {
  description = "(Required) The instance class to use. For details on CPU\nand memory, see Scaling Aurora DB Instances. Aurora uses db.* instance classes/types. Please see AWS Documentation for currently available instance classes and complete details."
  type        = string
}
variable "monitoring_role_arn" {
  description = "AWS Documentation"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  type        = string
}
variable "availability_zone" {
  description = "The availability zone of the instance"
  type        = string
}
variable "port" {
  description = "The database port"
  type        = string
}
variable "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled. Eg: \"04:00-09:00\". strongNOTE: If preferred_backup_window is set at the cluster level, this argument strongmust be omitted."
  type        = string
  default     = ""
}
variable "preferred_maintenance_window" {
  description = ""
  type        = string
}
variable "engine_version" {
  description = "(Optional) The database engine version."
  type        = string
  default     = ""
}
variable "identifier" {
  description = "The Instance identifier"
  type        = string
}
variable "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  type        = string
}
variable "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible.\nDefault false. See the documentation on Creating DB Instances"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "ca_cert_identifier" {
  description = "(Optional) The identifier of the CA certificate for the DB instance."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 90m)"
  type        = string
}
variable "id" {
  description = "The Instance identifier"
  type        = string
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any database modifications\nare applied immediately, or during the next maintenance window. Default isfalse."
  type        = string
  default     = ""
}
variable "db_parameter_group_name" {
  description = "(Optional) The name of the DB parameter group to associate with this instance."
  type        = string
  default     = ""
}
variable "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not."
  type        = string
}
variable "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer."
  type        = string
  default     = ""
}
variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
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
output "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.tags_all
}
output "engine_version" {
  description = "(Optional) The database engine version."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.engine_version
}
output "identifier" {
  description = "The Instance identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.identifier
}
output "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.identifier_prefix
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.kms_key_id
}
output "publicly_accessible" {
  description = "(Optional) Bool to control if instance is publicly accessible.\nDefault false. See the documentation on Creating DB Instances"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.publicly_accessible
}
output "ca_cert_identifier" {
  description = "(Optional) The identifier of the CA certificate for the DB instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.ca_cert_identifier
}
output "create" {
  description = "(Default 90m)"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.create
}
output "id" {
  description = "The Instance identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.id
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any database modifications\nare applied immediately, or during the next maintenance window. Default isfalse."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.apply_immediately
}
output "db_parameter_group_name" {
  description = "(Optional) The name of the DB parameter group to associate with this instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.db_parameter_group_name
}
output "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.performance_insights_enabled
}
output "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoted to writer."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.promotion_tier
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.storage_encrypted
}
output "performance_insights_retention_period" {
  description = "(Optional) Amount of time in days to retain Performance Insights data. Valid values are 7, 731 (2 years) or a multiple of 31. When specifying performance_insights_retention_period, performance_insights_enabled needs to be set to true. Defaults to '7'."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.performance_insights_retention_period
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default true."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.auto_minor_version_upgrade
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.dbi_resource_id
}
output "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.endpoint
}
output "engine_version_actual" {
  description = "The database engine version"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.engine_version_actual
}
output "performance_insights_kms_key_id" {
  description = "The ARN for the KMS encryption key used by Performance Insights."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.performance_insights_kms_key_id
}
output "copy_tags_to_snapshot" {
  description = " – (Optional, boolean) Indicates whether to copy all of the user-defined tags from the DB instance to snapshots of the DB instance. Default false."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.copy_tags_to_snapshot
}
output "db_subnet_group_name" {
  description = "(Required if publicly_accessible = false, Optional otherwise, Forces new resource) A DB subnet group to associate with this DB instance. strongNOTE: This must match the db_subnet_group_name of the attached aws_rds_cluster."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.db_subnet_group_name
}
output "engine" {
  description = "The database engine"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.engine
}
output "network_type" {
  description = "The network type of the DB instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.network_type
}
output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.cluster_identifier
}
output "monitoring_interval" {
  description = "(Optional) The interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance. To disable collecting Enhanced Monitoring metrics, specify 0. The default is 0. Valid Values: 0, 1, 5, 10, 15, 30, 60."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.monitoring_interval
}
output "update" {
  description = "(Default 90m)"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.update
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.writer
}
output "instance_class" {
  description = "(Required) The instance class to use. For details on CPU\nand memory, see Scaling Aurora DB Instances. Aurora uses db.* instance classes/types. Please see AWS Documentation for currently available instance classes and complete details."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.instance_class
}
output "monitoring_role_arn" {
  description = "AWS Documentation"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.monitoring_role_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.arn
}
output "availability_zone" {
  description = "The availability zone of the instance"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.availability_zone
}
output "port" {
  description = "The database port"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.port
}
output "preferred_backup_window" {
  description = "(Optional) The daily time range during which automated backups are created if automated backups are enabled. Eg: \"04:00-09:00\". strongNOTE: If preferred_backup_window is set at the cluster level, this argument strongmust be omitted."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.preferred_backup_window
}
output "preferred_maintenance_window" {
  description = ""
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.preferred_maintenance_window
}
output "cluster_identifier" {
  description = "The RDS Cluster Identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.cluster_identifier
}
output "create" {
  description = "(Default 90m)"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.create
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.storage_encrypted
}
output "performance_insights_kms_key_id" {
  description = "The ARN for the KMS encryption key used by Performance Insights."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.performance_insights_kms_key_id
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.writer
}
output "availability_zone" {
  description = "The availability zone of the instance"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.availability_zone
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.dbi_resource_id
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.delete
}
output "engine" {
  description = "The database engine"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.engine
}
output "engine_version_actual" {
  description = "The database engine version"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.engine_version_actual
}
output "port" {
  description = "The database port"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.port
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.tags_all
}
output "update" {
  description = "(Default 90m)"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.arn
}
output "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.endpoint
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.kms_key_id
}
output "network_type" {
  description = "The network type of the DB instance."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.network_type
}
output "performance_insights_enabled" {
  description = "Specifies whether Performance Insights is enabled or not."
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.performance_insights_enabled
}
output "id" {
  description = "The Instance identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.id
}
output "identifier" {
  description = "The Instance identifier"
  value       = aws_rds_cluster_instance.aws_rds_cluster_instance.identifier
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
      "kind/name"                   = "aws_rds_cluster_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
