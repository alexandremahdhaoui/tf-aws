resource "aws_neptune_cluster_endpoint" "aws_neptune_cluster_endpoint" {
  static_members              = var.static_members
  cluster_identifier          = var.cluster_identifier
  id                          = var.id
  endpoint                    = var.endpoint
  endpoint_type               = var.endpoint_type
  excluded_members            = var.excluded_members
  tags                        = var.tags
  arn                         = var.arn
  cluster_endpoint_identifier = var.cluster_endpoint_identifier
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The Neptune Cluster Endpoint Identifier."
  type        = string
}
variable "static_members" {
  description = "(Optional) List of DB instance identifiers that are part of the custom endpoint group."
  type        = string
  default     = ""
}
variable "cluster_identifier" {
  description = "(Required, Forces new resources) The DB cluster identifier of the DB cluster associated with the endpoint."
  type        = string
}
variable "cluster_endpoint_identifier" {
  description = "(Required, Forces new resources) The identifier of the endpoint."
  type        = string
}
variable "endpoint" {
  description = "The DNS address of the endpoint."
  type        = string
}
variable "endpoint_type" {
  description = "(Required) The type of the endpoint. One of: READER, WRITER, ANY."
  type        = string
}
variable "excluded_members" {
  description = "(Optional) List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the Neptune cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Neptune Cluster Endpoint Amazon Resource Name (ARN)."
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
output "static_members" {
  description = "(Optional) List of DB instance identifiers that are part of the custom endpoint group."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.static_members
}
output "cluster_identifier" {
  description = "(Required, Forces new resources) The DB cluster identifier of the DB cluster associated with the endpoint."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.cluster_identifier
}
output "id" {
  description = "The Neptune Cluster Endpoint Identifier."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.id
}
output "endpoint" {
  description = "The DNS address of the endpoint."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.endpoint
}
output "endpoint_type" {
  description = "(Required) The type of the endpoint. One of: READER, WRITER, ANY."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.endpoint_type
}
output "excluded_members" {
  description = "(Optional) List of DB instance identifiers that aren't part of the custom endpoint group. All other eligible instances are reachable through the custom endpoint. Only relevant if the list of static members is empty."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.excluded_members
}
output "tags" {
  description = "(Optional) A map of tags to assign to the Neptune cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.tags
}
output "arn" {
  description = "The Neptune Cluster Endpoint Amazon Resource Name (ARN)."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.arn
}
output "cluster_endpoint_identifier" {
  description = "(Required, Forces new resources) The identifier of the endpoint."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.cluster_endpoint_identifier
}
output "arn" {
  description = "The Neptune Cluster Endpoint Amazon Resource Name (ARN)."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.arn
}
output "endpoint" {
  description = "The DNS address of the endpoint."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.endpoint
}
output "id" {
  description = "The Neptune Cluster Endpoint Identifier."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_neptune_cluster_endpoint.aws_neptune_cluster_endpoint.tags_all
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
      "kind/name"                   = "aws_neptune_cluster_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
