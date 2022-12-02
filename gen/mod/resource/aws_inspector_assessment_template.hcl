resource "aws_inspector_assessment_template" "aws_inspector_assessment_template" {
  arn                = var.arn
  event              = var.event
  tags               = var.tags
  target_arn         = var.target_arn
  duration           = var.duration
  event_subscription = var.event_subscription
  name               = var.name
  rules_package_arns = var.rules_package_arns
  topic_arn          = var.topic_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "event" {
  description = "(Required) The event for which you want to receive SNS notifications. Valid values are ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, and FINDING_REPORTED."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of tags for the Inspector assessment template. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Event SubscriptionsThe event subscription configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "target_arn" {
  description = "(Required) The assessment target ARN to attach the template to."
  type        = string
}
variable "arn" {
  description = "The template assessment ARN."
  type        = string
}
variable "event_subscription" {
  description = "(Optional) A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the assessment template."
  type        = string
}
variable "rules_package_arns" {
  description = "(Required) The rules to be used during the run."
  type        = string
}
variable "topic_arn" {
  description = "(Required) The ARN of the SNS topic to which notifications are sent.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "duration" {
  description = "(Required) The duration of the inspector run."
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
output "topic_arn" {
  description = "(Required) The ARN of the SNS topic to which notifications are sent.In addition to all arguments above, the following attributes are exported:"
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.topic_arn
}
output "duration" {
  description = "(Required) The duration of the inspector run."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.duration
}
output "event_subscription" {
  description = "(Optional) A block that enables sending notifications about a specified assessment template event to a designated SNS topic. See Event Subscriptions for details."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.event_subscription
}
output "name" {
  description = "(Required) The name of the assessment template."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.name
}
output "rules_package_arns" {
  description = "(Required) The rules to be used during the run."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.rules_package_arns
}
output "arn" {
  description = "The template assessment ARN."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.arn
}
output "event" {
  description = "(Required) The event for which you want to receive SNS notifications. Valid values are ASSESSMENT_RUN_STARTED, ASSESSMENT_RUN_COMPLETED, ASSESSMENT_RUN_STATE_CHANGED, and FINDING_REPORTED."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.event
}
output "tags" {
  description = "(Optional) Key-value map of tags for the Inspector assessment template. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Event SubscriptionsThe event subscription configuration block supports the following arguments:"
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.tags
}
output "target_arn" {
  description = "(Required) The assessment target ARN to attach the template to."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.target_arn
}
output "arn" {
  description = "The template assessment ARN."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_inspector_assessment_template.aws_inspector_assessment_template.tags_all
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
      "kind/name"                   = "aws_inspector_assessment_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
