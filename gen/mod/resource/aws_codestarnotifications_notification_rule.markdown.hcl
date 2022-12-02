resource "aws_codestarnotifications_notification_rule.markdown" "aws_codestarnotifications_notification_rule.markdown" {
  arn            = var.arn
  resource       = var.resource
  target         = var.target
  type           = var.type
  tags           = var.tags
  address        = var.address
  detail_type    = var.detail_type
  event_type_ids = var.event_type_ids
  id             = var.id
  name           = var.name
  status         = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "address" {
  description = "(Required) The ARN of notification rule target. For example, a SNS Topic ARN."
  type        = string
}
variable "detail_type" {
  description = "(Required) The level of detail to include in the notifications for this resource. Possible values are BASIC and FULL."
  type        = string
}
variable "event_type_ids" {
  description = "(Required) A list of event types associated with this notification rule.\nFor list of allowed events see here."
  type        = string
}
variable "id" {
  description = "The codestar notification rule ARN."
  type        = string
}
variable "name" {
  description = "(Required) The name of notification rule."
  type        = string
}
variable "status" {
  description = "(Optional) The status of the notification rule. Possible values are ENABLED and DISABLED, default is ENABLED."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The codestar notification rule ARN."
  type        = string
}
variable "resource" {
  description = "(Required) The ARN of the resource to associate with the notification rule."
  type        = string
}
variable "target" {
  description = "(Optional) Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.An target block supports the following arguments:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The type of the notification target. Default value is SNS.In addition to all arguments above, the following attributes are exported:"
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
output "id" {
  description = "The codestar notification rule ARN."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.id
}
output "name" {
  description = "(Required) The name of notification rule."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.name
}
output "status" {
  description = "(Optional) The status of the notification rule. Possible values are ENABLED and DISABLED, default is ENABLED."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.status
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.tags
}
output "address" {
  description = "(Required) The ARN of notification rule target. For example, a SNS Topic ARN."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.address
}
output "detail_type" {
  description = "(Required) The level of detail to include in the notifications for this resource. Possible values are BASIC and FULL."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.detail_type
}
output "event_type_ids" {
  description = "(Required) A list of event types associated with this notification rule.\nFor list of allowed events see here."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.event_type_ids
}
output "type" {
  description = "(Optional) The type of the notification target. Default value is SNS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.type
}
output "arn" {
  description = "The codestar notification rule ARN."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.arn
}
output "resource" {
  description = "(Required) The ARN of the resource to associate with the notification rule."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.resource
}
output "target" {
  description = "(Optional) Configuration blocks containing notification target information. Can be specified multiple times. At least one target must be specified on creation.An target block supports the following arguments:"
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.target
}
output "id" {
  description = "The codestar notification rule ARN."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.tags_all
}
output "arn" {
  description = "The codestar notification rule ARN."
  value       = aws_codestarnotifications_notification_rule.markdown.aws_codestarnotifications_notification_rule.markdown.arn
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
      "kind/name"                   = "aws_codestarnotifications_notification_rule.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
