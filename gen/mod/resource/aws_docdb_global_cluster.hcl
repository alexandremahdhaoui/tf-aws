resource "aws_docdb_global_cluster" "aws_docdb_global_cluster" {
  arn                          = var.arn
  engine                       = var.engine
  is_writer                    = var.is_writer
  storage_encrypted            = var.storage_encrypted
  create                       = var.create
  db_cluster_arn               = var.db_cluster_arn
  engine_version               = var.engine_version
  global_cluster_members       = var.global_cluster_members
  source_db_cluster_identifier = var.source_db_cluster_identifier
  id                           = var.id
  update                       = var.update
  database_name                = var.database_name
  deletion_protection          = var.deletion_protection
  global_cluster_identifier    = var.global_cluster_identifier
  global_cluster_resource_id   = var.global_cluster_resource_id
  strong                       = var.strong
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "DocDB Global Cluster.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "database_name" {
  description = "(Optional, Forces new resources) Name for an automatically created database on cluster creation."
  type        = string
}
variable "deletion_protection" {
  description = "(Optional) If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  type        = string
  default     = ""
}
variable "global_cluster_identifier" {
  description = "(Required, Forces new resources) The global cluster identifier."
  type        = string
}
variable "global_cluster_resource_id" {
  description = "AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed."
  type        = string
}
variable "strong" {
  description = "NOTE: Upgrading major versions is not supported."
  type        = string
}
variable "arn" {
  description = "Global Cluster Amazon Resource Name (ARN)"
  type        = string
}
variable "engine" {
  description = "(Optional, Forces new resources) Name of the database engine to be used for this DB cluster. Terraform will only perform drift detection if a configuration value is provided. Current Valid values: docdb. Defaults to docdb. Conflicts with source_db_cluster_identifier."
  type        = string
}
variable "is_writer" {
  description = "Whether the member is the primary DB Cluster."
  type        = string
}
variable "storage_encrypted" {
  description = "(Optional, Forces new resources) Specifies whether the DB cluster is encrypted. The default is false unless source_db_cluster_identifier is specified and encrypted. Terraform will only perform drift detection if a configuration value is provided.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "db_cluster_arn" {
  description = "Amazon Resource Name (ARN) of member DB Cluster."
  type        = string
}
variable "engine_version" {
  description = "(Optional) Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.\n"
  type        = string
  default     = ""
}
variable "global_cluster_members" {
  description = ""
  type        = string
}
variable "source_db_cluster_identifier" {
  description = "(Optional) Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. Terraform cannot perform drift detection of this value."
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
output "arn" {
  description = "Global Cluster Amazon Resource Name (ARN)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.arn
}
output "engine" {
  description = "(Optional, Forces new resources) Name of the database engine to be used for this DB cluster. Terraform will only perform drift detection if a configuration value is provided. Current Valid values: docdb. Defaults to docdb. Conflicts with source_db_cluster_identifier."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.engine
}
output "is_writer" {
  description = "Whether the member is the primary DB Cluster."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.is_writer
}
output "storage_encrypted" {
  description = "(Optional, Forces new resources) Specifies whether the DB cluster is encrypted. The default is false unless source_db_cluster_identifier is specified and encrypted. Terraform will only perform drift detection if a configuration value is provided.In addition to all arguments above, the following attributes are exported:"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.storage_encrypted
}
output "create" {
  description = "(Default 5m)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.create
}
output "db_cluster_arn" {
  description = "Amazon Resource Name (ARN) of member DB Cluster."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.db_cluster_arn
}
output "engine_version" {
  description = "(Optional) Engine version of the global database. Upgrading the engine version will result in all cluster members being immediately updated and will.\n"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.engine_version
}
output "global_cluster_members" {
  description = ""
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.global_cluster_members
}
output "source_db_cluster_identifier" {
  description = "(Optional) Amazon Resource Name (ARN) to use as the primary DB Cluster of the Global Cluster on creation. Terraform cannot perform drift detection of this value."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.source_db_cluster_identifier
}
output "id" {
  description = "DocDB Global Cluster.TimeoutsConfiguration options:"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.id
}
output "update" {
  description = "(Default 5m)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.update
}
output "database_name" {
  description = "(Optional, Forces new resources) Name for an automatically created database on cluster creation."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.database_name
}
output "deletion_protection" {
  description = "(Optional) If the Global Cluster should have deletion protection enabled. The database can't be deleted when this value is set to true. The default is false."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.deletion_protection
}
output "global_cluster_identifier" {
  description = "(Required, Forces new resources) The global cluster identifier."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.global_cluster_identifier
}
output "global_cluster_resource_id" {
  description = "AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.global_cluster_resource_id
}
output "strong" {
  description = "NOTE: Upgrading major versions is not supported."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.strong
}
output "update" {
  description = "(Default 5m)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.update
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.delete
}
output "global_cluster_members" {
  description = ""
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.global_cluster_members
}
output "global_cluster_resource_id" {
  description = "AWS Region-unique, immutable identifier for the global database cluster. This identifier is found in AWS CloudTrail log entries whenever the AWS KMS key for the DB cluster is accessed."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.global_cluster_resource_id
}
output "is_writer" {
  description = "Whether the member is the primary DB Cluster."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.is_writer
}
output "arn" {
  description = "Global Cluster Amazon Resource Name (ARN)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.create
}
output "db_cluster_arn" {
  description = "Amazon Resource Name (ARN) of member DB Cluster."
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.db_cluster_arn
}
output "id" {
  description = "DocDB Global Cluster.TimeoutsConfiguration options:"
  value       = aws_docdb_global_cluster.aws_docdb_global_cluster.id
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
      "kind/name"                   = "aws_docdb_global_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
