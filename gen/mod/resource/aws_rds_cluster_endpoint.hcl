resource "aws_rds_cluster_endpoint" "aws_rds_cluster_endpoint" {
  cluster_identifier          = var.cluster_identifier
  custom_endpoint_type        = var.custom_endpoint_type
  static_members              = var.static_members
  tags                        = var.tags
  arn                         = var.arn
  cluster_endpoint_identifier = var.cluster_endpoint_identifier
  endpoint                    = var.endpoint
  excluded_members            = var.excluded_members
  id                          = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  type        = string
}
variable "cluster_endpoint_identifier" {
  description = "(Required, Forces new resources) The identifier to use for the new endpoint. This parameter is stored as a lowercase string."
  type        = string
}
variable "endpoint" {
  description = "A custom endpoint for the Aurora cluster"
  type        = string
}
variable "excluded_members" {
  description = "(Optional) List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with static_members."
  type        = string
  default     = ""
}
variable "id" {
  description = "The RDS Cluster Endpoint Identifier"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "cluster_identifier" {
  description = "(Required, Forces new resources) The cluster identifier."
  type        = string
}
variable "custom_endpoint_type" {
  description = "(Required) The type of the endpoint. One of: READER , ANY ."
  type        = string
}
variable "static_members" {
  description = "(Optional) List of DB instance identifiers that are part of the custom endpoint group. Conflicts with excluded_members."
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
output "cluster_identifier" {
  description = "(Required, Forces new resources) The cluster identifier."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.cluster_identifier
}
output "custom_endpoint_type" {
  description = "(Required) The type of the endpoint. One of: READER , ANY ."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.custom_endpoint_type
}
output "static_members" {
  description = "(Optional) List of DB instance identifiers that are part of the custom endpoint group. Conflicts with excluded_members."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.static_members
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.arn
}
output "cluster_endpoint_identifier" {
  description = "(Required, Forces new resources) The identifier to use for the new endpoint. This parameter is stored as a lowercase string."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.cluster_endpoint_identifier
}
output "endpoint" {
  description = "A custom endpoint for the Aurora cluster"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.endpoint
}
output "excluded_members" {
  description = "(Optional) List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty. Conflicts with static_members."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.excluded_members
}
output "id" {
  description = "The RDS Cluster Endpoint Identifier"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.id
}
output "id" {
  description = "The RDS Cluster Endpoint Identifier"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of cluster"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.arn
}
output "endpoint" {
  description = "A custom endpoint for the Aurora cluster"
  value       = aws_rds_cluster_endpoint.aws_rds_cluster_endpoint.endpoint
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
      "kind/name"                   = "aws_rds_cluster_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
