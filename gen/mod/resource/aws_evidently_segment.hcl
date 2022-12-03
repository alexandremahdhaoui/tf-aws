resource "aws_evidently_segment" "aws_evidently_segment" {
  created_time      = var.created_time
  experiment_count  = var.experiment_count
  id                = var.id
  launch_count      = var.launch_count
  pattern           = var.pattern
  tags              = var.tags
  arn               = var.arn
  description       = var.description
  last_updated_time = var.last_updated_time
  name              = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_time" {
  description = "The date and time that the segment is created."
  type        = string
}
variable "experiment_count" {
  description = "The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running."
  type        = string
}
variable "id" {
  description = "The ID has the same value as the name of the segment."
  type        = string
}
variable "launch_count" {
  description = "The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running."
  type        = string
}
variable "pattern" {
  description = "(Required, Forces new resource) The pattern to use for the segment. For more information about pattern syntax, see Segment rule pattern syntax."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the segment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the segment."
  type        = string
}
variable "description" {
  description = "(Optional, Forces new resource) Specifies the description of the segment."
  type        = string
}
variable "last_updated_time" {
  description = "The date and time that this segment was most recently updated."
  type        = string
}
variable "name" {
  description = "(Required, Forces new resource) A name for the segment."
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
output "arn" {
  description = "The ARN of the segment."
  value       = aws_evidently_segment.aws_evidently_segment.arn
}
output "description" {
  description = "(Optional, Forces new resource) Specifies the description of the segment."
  value       = aws_evidently_segment.aws_evidently_segment.description
}
output "last_updated_time" {
  description = "The date and time that this segment was most recently updated."
  value       = aws_evidently_segment.aws_evidently_segment.last_updated_time
}
output "name" {
  description = "(Required, Forces new resource) A name for the segment."
  value       = aws_evidently_segment.aws_evidently_segment.name
}
output "pattern" {
  description = "(Required, Forces new resource) The pattern to use for the segment. For more information about pattern syntax, see Segment rule pattern syntax."
  value       = aws_evidently_segment.aws_evidently_segment.pattern
}
output "tags" {
  description = "(Optional) Tags to apply to the segment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_evidently_segment.aws_evidently_segment.tags
}
output "created_time" {
  description = "The date and time that the segment is created."
  value       = aws_evidently_segment.aws_evidently_segment.created_time
}
output "experiment_count" {
  description = "The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running."
  value       = aws_evidently_segment.aws_evidently_segment.experiment_count
}
output "id" {
  description = "The ID has the same value as the name of the segment."
  value       = aws_evidently_segment.aws_evidently_segment.id
}
output "launch_count" {
  description = "The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running."
  value       = aws_evidently_segment.aws_evidently_segment.launch_count
}
output "id" {
  description = "The ID has the same value as the name of the segment."
  value       = aws_evidently_segment.aws_evidently_segment.id
}
output "last_updated_time" {
  description = "The date and time that this segment was most recently updated."
  value       = aws_evidently_segment.aws_evidently_segment.last_updated_time
}
output "launch_count" {
  description = "The number of launches that this segment is used in. This count includes all current launches, not just those that are currently running."
  value       = aws_evidently_segment.aws_evidently_segment.launch_count
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_evidently_segment.aws_evidently_segment.tags_all
}
output "arn" {
  description = "The ARN of the segment."
  value       = aws_evidently_segment.aws_evidently_segment.arn
}
output "created_time" {
  description = "The date and time that the segment is created."
  value       = aws_evidently_segment.aws_evidently_segment.created_time
}
output "experiment_count" {
  description = "The number of experiments that this segment is used in. This count includes all current experiments, not just those that are currently running."
  value       = aws_evidently_segment.aws_evidently_segment.experiment_count
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
      "kind/name"                   = "aws_evidently_segment"
      "kind/version"                = "v0.1.0"
    }
  }
}
