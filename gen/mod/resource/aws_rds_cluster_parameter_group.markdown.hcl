resource "aws_rds_cluster_parameter_group.markdown" "aws_rds_cluster_parameter_group.markdown" {
  arn          = var.arn
  id           = var.id
  name_prefix  = var.name_prefix
  apply_method = var.apply_method
  description  = var.description
  family       = var.family
  name         = var.name
  parameter    = var.parameter
  tags         = var.tags
  value        = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The name of the DB parameter."
  type        = string
}
variable "parameter" {
  description = "(Optional) A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-cluster-parameters after initial creation of the group."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Parameter blocks support the following:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value of the DB parameter."
  type        = string
}
variable "apply_method" {
  description = "(Optional) \"immediate\" (default), or \"pending-reboot\". Some\nengines can't apply some parameters without a reboot, and you will need to\nspecify \"pending-reboot\" here.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the DB cluster parameter group. Defaults to \"Managed by Terraform\"."
  type        = string
  default     = ""
}
variable "family" {
  description = "(Required) The family of the DB cluster parameter group."
  type        = string
}
variable "arn" {
  description = "The ARN of the db cluster parameter group."
  type        = string
}
variable "id" {
  description = "The db cluster parameter group name."
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
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
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Parameter blocks support the following:"
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.tags
}
output "value" {
  description = "(Required) The value of the DB parameter."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.value
}
output "apply_method" {
  description = "(Optional) \"immediate\" (default), or \"pending-reboot\". Some\nengines can't apply some parameters without a reboot, and you will need to\nspecify \"pending-reboot\" here.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.apply_method
}
output "description" {
  description = "(Optional) The description of the DB cluster parameter group. Defaults to \"Managed by Terraform\"."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.description
}
output "family" {
  description = "(Required) The family of the DB cluster parameter group."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.family
}
output "name" {
  description = "(Required) The name of the DB parameter."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.name
}
output "parameter" {
  description = "(Optional) A list of DB parameters to apply. Note that parameters may differ from a family to an other. Full list of all parameters can be discovered via aws rds describe-db-cluster-parameters after initial creation of the group."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.parameter
}
output "arn" {
  description = "The ARN of the db cluster parameter group."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.arn
}
output "id" {
  description = "The db cluster parameter group name."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.id
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.name_prefix
}
output "arn" {
  description = "The ARN of the db cluster parameter group."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.arn
}
output "id" {
  description = "The db cluster parameter group name."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_rds_cluster_parameter_group.markdown.aws_rds_cluster_parameter_group.markdown.tags_all
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
      "kind/name"                   = "aws_rds_cluster_parameter_group.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
