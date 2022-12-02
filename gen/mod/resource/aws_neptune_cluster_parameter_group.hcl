resource "aws_neptune_cluster_parameter_group" "aws_neptune_cluster_parameter_group" {
  description  = var.description
  id           = var.id
  name         = var.name
  name_prefix  = var.name_prefix
  parameter    = var.parameter
  tags         = var.tags
  apply_method = var.apply_method
  arn          = var.arn
  family       = var.family
  value        = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Parameter blocks support the following:"
  type        = string
  default     = ""
}
variable "apply_method" {
  description = "(Optional) Valid values are immediate and pending-reboot. Defaults to pending-reboot.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the neptune cluster parameter group."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the neptune cluster parameter group. Defaults to \"Managed by Terraform\"."
  type        = string
  default     = ""
}
variable "id" {
  description = "The neptune cluster parameter group name."
  type        = string
}
variable "name" {
  description = "(Required) The name of the neptune parameter."
  type        = string
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "parameter" {
  description = "(Optional) A list of neptune parameters to apply."
  type        = string
  default     = ""
}
variable "family" {
  description = "(Required) The family of the neptune cluster parameter group."
  type        = string
}
variable "value" {
  description = "(Required) The value of the neptune parameter."
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
output "description" {
  description = "(Optional) The description of the neptune cluster parameter group. Defaults to \"Managed by Terraform\"."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.description
}
output "id" {
  description = "The neptune cluster parameter group name."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.id
}
output "name" {
  description = "(Required) The name of the neptune parameter."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.name
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.name_prefix
}
output "parameter" {
  description = "(Optional) A list of neptune parameters to apply."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.parameter
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Parameter blocks support the following:"
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.tags
}
output "apply_method" {
  description = "(Optional) Valid values are immediate and pending-reboot. Defaults to pending-reboot.In addition to all arguments above, the following attributes are exported:"
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.apply_method
}
output "arn" {
  description = "The ARN of the neptune cluster parameter group."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.arn
}
output "family" {
  description = "(Required) The family of the neptune cluster parameter group."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.family
}
output "value" {
  description = "(Required) The value of the neptune parameter."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.value
}
output "arn" {
  description = "The ARN of the neptune cluster parameter group."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.arn
}
output "id" {
  description = "The neptune cluster parameter group name."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_neptune_cluster_parameter_group.aws_neptune_cluster_parameter_group.tags_all
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
      "kind/name"                   = "aws_neptune_cluster_parameter_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
