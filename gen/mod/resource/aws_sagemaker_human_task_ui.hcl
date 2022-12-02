resource "aws_sagemaker_human_task_ui" "aws_sagemaker_human_task_ui" {
  content            = var.content
  content_sha256     = var.content_sha256
  human_task_ui_name = var.human_task_ui_name
  id                 = var.id
  tags               = var.tags
  tags_all           = var.tags_all
  ui_template        = var.ui_template
  arn                = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "ui_template" {
  description = "(Required) The Liquid template for the worker user interface. See UI Template below.UI Template"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI."
  type        = string
}
variable "content" {
  description = "(Required) The content of the Liquid template for the worker user interface.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "content_sha256" {
  description = "The SHA-256 digest of the contents of the template."
  type        = string
}
variable "human_task_ui_name" {
  description = "(Required) The name of the Human Task UI."
  type        = string
}
variable "id" {
  description = "The name of the Human Task UI."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "human_task_ui_name" {
  description = "(Required) The name of the Human Task UI."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.human_task_ui_name
}
output "id" {
  description = "The name of the Human Task UI."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.tags_all
}
output "ui_template" {
  description = "(Required) The Liquid template for the worker user interface. See UI Template below.UI Template"
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.ui_template
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.arn
}
output "content" {
  description = "(Required) The content of the Liquid template for the worker user interface.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.content
}
output "content_sha256" {
  description = "The SHA-256 digest of the contents of the template."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.content_sha256
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Human Task UI."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.arn
}
output "content_sha256" {
  description = "The SHA-256 digest of the contents of the template."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.content_sha256
}
output "id" {
  description = "The name of the Human Task UI."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.tags_all
}
output "ui_template" {
  description = "(Required) The Liquid template for the worker user interface. See UI Template below.UI Template"
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.ui_template
}
output "url" {
  description = "The URL for the user interface template."
  value       = aws_sagemaker_human_task_ui.aws_sagemaker_human_task_ui.url
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
      "kind/name"                   = "aws_sagemaker_human_task_ui"
      "kind/version"                = "v0.1.0"
    }
  }
}
