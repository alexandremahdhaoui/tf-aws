resource "aws_dms_event_subscription" "aws_dms_event_subscription" {
  update           = var.update
  arn              = var.arn
  event_categories = var.event_categories
  name             = var.name
  sns_topic_arn    = var.sns_topic_arn
  tags             = var.tags
  create           = var.create
  enabled          = var.enabled
  source_ids       = var.source_ids
  source_type      = var.source_type
  tags_all         = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "enabled" {
  description = "(Optional, Default: true) Whether the event subscription should be enabled."
  type        = string
}
variable "source_ids" {
  description = "(Required) Ids of sources to listen to."
  type        = string
}
variable "source_type" {
  description = "(Optional, Default: all events) Type of source for events. Valid values: replication-instance or replication-task"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DMS Event Subscription."
  type        = string
}
variable "event_categories" {
  description = "(Optional) List of event categories to listen for, see DescribeEventCategories for a canonical list."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of event subscription."
  type        = string
}
variable "sns_topic_arn" {
  description = "(Required) SNS topic arn to send events on."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of resource tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 10m)"
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
  description = "Amazon Resource Name (ARN) of the DMS Event Subscription."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.arn
}
output "event_categories" {
  description = "(Optional) List of event categories to listen for, see DescribeEventCategories for a canonical list."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.event_categories
}
output "name" {
  description = "(Required) Name of event subscription."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.name
}
output "sns_topic_arn" {
  description = "(Required) SNS topic arn to send events on."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.sns_topic_arn
}
output "tags" {
  description = "(Optional) Map of resource tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.tags
}
output "update" {
  description = "(Default 10m)"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.update
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.create
}
output "enabled" {
  description = "(Optional, Default: true) Whether the event subscription should be enabled."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.enabled
}
output "source_ids" {
  description = "(Required) Ids of sources to listen to."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.source_ids
}
output "source_type" {
  description = "(Optional, Default: all events) Type of source for events. Valid values: replication-instance or replication-task"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.source_type
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DMS Event Subscription."
  value       = aws_dms_event_subscription.aws_dms_event_subscription.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.delete
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.tags_all
}
output "update" {
  description = "(Default 10m)"
  value       = aws_dms_event_subscription.aws_dms_event_subscription.update
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
      "kind/name"                   = "aws_dms_event_subscription"
      "kind/version"                = "v0.1.0"
    }
  }
}
