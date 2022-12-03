resource "aws_db_proxy_target" "aws_db_proxy_target" {
  rds_resource_id        = var.rds_resource_id
  target_group_name      = var.target_group_name
  port                   = var.port
  db_instance_identifier = var.db_instance_identifier
  db_proxy_name          = var.db_proxy_name
  endpoint               = var.endpoint
  id                     = var.id
  target_arn             = var.target_arn
  tracked_cluster_id     = var.tracked_cluster_id
  db_cluster_identifier  = var.db_cluster_identifier
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "db_cluster_identifier" {
  description = "(Optional, Forces new resource) DB cluster identifier.strongNOTE: Either db_instance_identifier or db_cluster_identifier should be specified and both should not be specified togetherIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "db_instance_identifier" {
  description = "(Optional, Forces new resource) DB instance identifier."
  type        = string
}
variable "db_proxy_name" {
  description = "(Required, Forces new resource) The name of the DB proxy."
  type        = string
}
variable "endpoint" {
  description = "Hostname for the target RDS DB Instance. Only returned for RDS_INSTANCE type."
  type        = string
}
variable "id" {
  description = "Identifier of  db_proxy_name, target_group_name, target type (e.g., RDS_INSTANCE or TRACKED_CLUSTER), and resource identifier separated by forward slashes (/)."
  type        = string
}
variable "target_arn" {
  description = "Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API."
  type        = string
}
variable "tracked_cluster_id" {
  description = "DB Cluster identifier for the DB Instance target. Not returned unless manually importing an RDS_INSTANCE target that is part of a DB Cluster."
  type        = string
}
variable "port" {
  description = "Port for the target RDS DB Instance or Aurora DB Cluster."
  type        = string
}
variable "rds_resource_id" {
  description = "Identifier representing the DB Instance or DB Cluster target."
  type        = string
}
variable "target_group_name" {
  description = "(Required, Forces new resource) The name of the target group."
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
output "target_arn" {
  description = "Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API."
  value       = aws_db_proxy_target.aws_db_proxy_target.target_arn
}
output "tracked_cluster_id" {
  description = "DB Cluster identifier for the DB Instance target. Not returned unless manually importing an RDS_INSTANCE target that is part of a DB Cluster."
  value       = aws_db_proxy_target.aws_db_proxy_target.tracked_cluster_id
}
output "db_cluster_identifier" {
  description = "(Optional, Forces new resource) DB cluster identifier.strongNOTE: Either db_instance_identifier or db_cluster_identifier should be specified and both should not be specified togetherIn addition to all arguments above, the following attributes are exported:"
  value       = aws_db_proxy_target.aws_db_proxy_target.db_cluster_identifier
}
output "db_instance_identifier" {
  description = "(Optional, Forces new resource) DB instance identifier."
  value       = aws_db_proxy_target.aws_db_proxy_target.db_instance_identifier
}
output "db_proxy_name" {
  description = "(Required, Forces new resource) The name of the DB proxy."
  value       = aws_db_proxy_target.aws_db_proxy_target.db_proxy_name
}
output "endpoint" {
  description = "Hostname for the target RDS DB Instance. Only returned for RDS_INSTANCE type."
  value       = aws_db_proxy_target.aws_db_proxy_target.endpoint
}
output "id" {
  description = "Identifier of  db_proxy_name, target_group_name, target type (e.g., RDS_INSTANCE or TRACKED_CLUSTER), and resource identifier separated by forward slashes (/)."
  value       = aws_db_proxy_target.aws_db_proxy_target.id
}
output "port" {
  description = "Port for the target RDS DB Instance or Aurora DB Cluster."
  value       = aws_db_proxy_target.aws_db_proxy_target.port
}
output "rds_resource_id" {
  description = "Identifier representing the DB Instance or DB Cluster target."
  value       = aws_db_proxy_target.aws_db_proxy_target.rds_resource_id
}
output "target_group_name" {
  description = "(Required, Forces new resource) The name of the target group."
  value       = aws_db_proxy_target.aws_db_proxy_target.target_group_name
}
output "endpoint" {
  description = "Hostname for the target RDS DB Instance. Only returned for RDS_INSTANCE type."
  value       = aws_db_proxy_target.aws_db_proxy_target.endpoint
}
output "id" {
  description = "Identifier of  db_proxy_name, target_group_name, target type (e.g., RDS_INSTANCE or TRACKED_CLUSTER), and resource identifier separated by forward slashes (/)."
  value       = aws_db_proxy_target.aws_db_proxy_target.id
}
output "port" {
  description = "Port for the target RDS DB Instance or Aurora DB Cluster."
  value       = aws_db_proxy_target.aws_db_proxy_target.port
}
output "rds_resource_id" {
  description = "Identifier representing the DB Instance or DB Cluster target."
  value       = aws_db_proxy_target.aws_db_proxy_target.rds_resource_id
}
output "target_arn" {
  description = "Amazon Resource Name (ARN) for the DB instance or DB cluster. Currently not returned by the RDS API."
  value       = aws_db_proxy_target.aws_db_proxy_target.target_arn
}
output "tracked_cluster_id" {
  description = "DB Cluster identifier for the DB Instance target. Not returned unless manually importing an RDS_INSTANCE target that is part of a DB Cluster."
  value       = aws_db_proxy_target.aws_db_proxy_target.tracked_cluster_id
}
output "type" {
  description = "Type of targetE.g., RDS_INSTANCE or TRACKED_CLUSTER"
  value       = aws_db_proxy_target.aws_db_proxy_target.type
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
      "kind/name"                   = "aws_db_proxy_target"
      "kind/version"                = "v0.1.0"
    }
  }
}
