resource "aws_docdb_cluster_instance" "aws_docdb_cluster_instance" {
  cluster_identifier           = var.cluster_identifier
  db.r4.large                  = var.db.r4.large
  dbi_resource_id              = var.dbi_resource_id
  instance_class               = var.instance_class
  availability_zone            = var.availability_zone
  arn                          = var.arn
  identifier_prefix            = var.identifier_prefix
  preferred_backup_window      = var.preferred_backup_window
  apply_immediately            = var.apply_immediately
  kms_key_id                   = var.kms_key_id
  storage_encrypted            = var.storage_encrypted
  tags                         = var.tags
  tags_all                     = var.tags_all
  db.r4.4xlarge                = var.db.r4.4xlarge
  identifier                   = var.identifier
  preferred_maintenance_window = var.preferred_maintenance_window
  promotion_tier               = var.promotion_tier
  db.r4.2xlarge                = var.db.r4.2xlarge
  create                       = var.create
  db.r4.xlarge                 = var.db.r4.xlarge
  db.r5.2xlarge                = var.db.r5.2xlarge
  db.r5.24xlarge               = var.db.r5.24xlarge
  db.r5.large                  = var.db.r5.large
  db_subnet_group_name         = var.db_subnet_group_name
  endpoint                     = var.endpoint
  ca_cert_identifier           = var.ca_cert_identifier
  port                         = var.port
  engine_version               = var.engine_version
  update                       = var.update
  db.r5.xlarge                 = var.db.r5.xlarge
  db.r5.12xlarge               = var.db.r5.12xlarge
  engine                       = var.engine
  writer                       = var.writer
  db.r5.4xlarge                = var.db.r5.4xlarge
  db.r4.8xlarge                = var.db.r4.8xlarge
  db.r4.16xlarge               = var.db.r4.16xlarge
  db.t3.medium                 = var.db.t3.medium
  auto_minor_version_upgrade   = var.auto_minor_version_upgrade
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "db_subnet_group_name" {
  description = "The DB subnet group to associate with this DB instance."
  type        = string
}
variable "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  type        = string
}
variable "ca_cert_identifier" {
  description = "(Optional) The identifier of the CA certificate for the DB instance.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 90m"
  type        = string
}
variable "db.r4.xlarge" {
  description = ""
  type        = string
}
variable "db.r5.2xlarge" {
  description = ""
  type        = string
}
variable "db.r5.24xlarge" {
  description = ""
  type        = string
}
variable "db.r5.large" {
  description = ""
  type        = string
}
variable "port" {
  description = "The database port"
  type        = string
}
variable "db.r5.xlarge" {
  description = ""
  type        = string
}
variable "engine_version" {
  description = "The database engine version"
  type        = string
}
variable "update" {
  description = "(Default 90m)"
  type        = string
}
variable "db.r5.4xlarge" {
  description = ""
  type        = string
}
variable "db.r5.12xlarge" {
  description = ""
  type        = string
}
variable "engine" {
  description = "(Optional) The name of the database engine to be used for the DocDB instance. Defaults to docdb. Valid Values: docdb."
  type        = string
  default     = ""
}
variable "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default true."
  type        = string
  default     = ""
}
variable "db.r4.8xlarge" {
  description = ""
  type        = string
}
variable "db.r4.16xlarge" {
  description = ""
  type        = string
}
variable "db.t3.medium" {
  description = ""
  type        = string
}
variable "availability_zone" {
  description = "(Optional, Computed) The EC2 Availability Zone that the DB instance is created in. See docs about the details."
  type        = string
}
variable "cluster_identifier" {
  description = "(Required) The identifier of the aws_docdb_cluster in which to launch this instance."
  type        = string
}
variable "db.r4.large" {
  description = ""
  type        = string
}
variable "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  type        = string
}
variable "instance_class" {
  description = "(Required) The instance class to use. For details on CPU and memory, see Scaling for DocDB InstancesAWS Documentation"
  type        = string
}
variable "apply_immediately" {
  description = "(Optional) Specifies whether any database modifications\nare applied immediately, or during the next maintenance window. Default isfalse."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  type        = string
}
variable "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  type        = string
}
variable "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  type        = string
}
variable "db.r4.4xlarge" {
  description = ""
  type        = string
}
variable "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  type        = string
}
variable "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "db.r4.2xlarge" {
  description = ""
  type        = string
}
variable "identifier" {
  description = "(Optional, Forces new resource) The identifier for the DocDB instance, if omitted, Terraform will assign a random, unique identifier."
  type        = string
}
variable "preferred_maintenance_window" {
  description = "(Optional) The window to perform maintenance in.\nSyntax: \"ddd:hh24:mi-ddd:hh24:mi\". Eg: \"Mon:00:00-Mon:03:00\"."
  type        = string
  default     = ""
}
variable "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer."
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
output "db.r4.2xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.2xlarge
}
output "identifier" {
  description = "(Optional, Forces new resource) The identifier for the DocDB instance, if omitted, Terraform will assign a random, unique identifier."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.identifier
}
output "preferred_maintenance_window" {
  description = "(Optional) The window to perform maintenance in.\nSyntax: \"ddd:hh24:mi-ddd:hh24:mi\". Eg: \"Mon:00:00-Mon:03:00\"."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.preferred_maintenance_window
}
output "promotion_tier" {
  description = "(Optional) Default 0. Failover Priority setting on instance level. The reader who has lower tier has higher priority to get promoter to writer."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.promotion_tier
}
output "ca_cert_identifier" {
  description = "(Optional) The identifier of the CA certificate for the DB instance.TimeoutsConfiguration options:"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.ca_cert_identifier
}
output "create" {
  description = "(Default 90m"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.create
}
output "db.r4.xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.xlarge
}
output "db.r5.2xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.2xlarge
}
output "db.r5.24xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.24xlarge
}
output "db.r5.large" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.large
}
output "db_subnet_group_name" {
  description = "The DB subnet group to associate with this DB instance."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db_subnet_group_name
}
output "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.endpoint
}
output "port" {
  description = "The database port"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.port
}
output "db.r5.xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.xlarge
}
output "engine_version" {
  description = "The database engine version"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.engine_version
}
output "update" {
  description = "(Default 90m)"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.update
}
output "db.r5.4xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.4xlarge
}
output "db.r5.12xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r5.12xlarge
}
output "engine" {
  description = "(Optional) The name of the database engine to be used for the DocDB instance. Defaults to docdb. Valid Values: docdb."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.engine
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.writer
}
output "auto_minor_version_upgrade" {
  description = "(Optional) Indicates that minor engine upgrades will be applied automatically to the DB instance during the maintenance window. Default true."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.auto_minor_version_upgrade
}
output "db.r4.8xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.8xlarge
}
output "db.r4.16xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.16xlarge
}
output "db.t3.medium" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.t3.medium
}
output "availability_zone" {
  description = "(Optional, Computed) The EC2 Availability Zone that the DB instance is created in. See docs about the details."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.availability_zone
}
output "cluster_identifier" {
  description = "(Required) The identifier of the aws_docdb_cluster in which to launch this instance."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.cluster_identifier
}
output "db.r4.large" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.large
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.dbi_resource_id
}
output "instance_class" {
  description = "(Required) The instance class to use. For details on CPU and memory, see Scaling for DocDB InstancesAWS Documentation"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.instance_class
}
output "apply_immediately" {
  description = "(Optional) Specifies whether any database modifications\nare applied immediately, or during the next maintenance window. Default isfalse."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.apply_immediately
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.arn
}
output "identifier_prefix" {
  description = "(Optional, Forces new resource) Creates a unique identifier beginning with the specified prefix. Conflicts with identifier."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.identifier_prefix
}
output "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.preferred_backup_window
}
output "db.r4.4xlarge" {
  description = ""
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db.r4.4xlarge
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.kms_key_id
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.storage_encrypted
}
output "tags" {
  description = "(Optional) A map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster instance"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.arn
}
output "ca_cert_identifier" {
  description = "(Optional) The identifier of the CA certificate for the DB instance.TimeoutsConfiguration options:"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.ca_cert_identifier
}
output "create" {
  description = "(Default 90m"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.create
}
output "db_subnet_group_name" {
  description = "The DB subnet group to associate with this DB instance."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.db_subnet_group_name
}
output "engine_version" {
  description = "The database engine version"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.engine_version
}
output "storage_encrypted" {
  description = "Specifies whether the DB cluster is encrypted."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.storage_encrypted
}
output "kms_key_id" {
  description = "The ARN for the KMS encryption key if one is set to the cluster."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.kms_key_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.tags_all
}
output "update" {
  description = "(Default 90m)"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.update
}
output "writer" {
  description = " – Boolean indicating if this instance is writable. False indicates this instance is a read replica."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.writer
}
output "dbi_resource_id" {
  description = "The region-unique, immutable identifier for the DB instance."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.dbi_resource_id
}
output "delete" {
  description = "(Default 90m"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.delete
}
output "endpoint" {
  description = "The DNS address for this instance. May not be writable"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.endpoint
}
output "port" {
  description = "The database port"
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.port
}
output "preferred_backup_window" {
  description = "The daily time range during which automated backups are created if automated backups are enabled."
  value       = aws_docdb_cluster_instance.aws_docdb_cluster_instance.preferred_backup_window
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
      "kind/name"                   = "aws_docdb_cluster_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
