resource "aws_redshift_event_subscription" "aws_redshift_event_subscription" {
  arn              = var.arn
  name             = var.name
  sns_topic_arn    = var.sns_topic_arn
  source_ids       = var.source_ids
  source_type      = var.source_type
  tags             = var.tags
  customer_aws_id  = var.customer_aws_id
  enabled          = var.enabled
  event_categories = var.event_categories
  id               = var.id
  severity         = var.severity
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "event_categories" {
  description = "(Optional) A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run aws redshift describe-event-categories."
  type        = string
}
variable "id" {
  description = "The name of the Redshift event notification subscription"
  type        = string
}
variable "severity" {
  description = "(Optional) The event severity to be published by the notification subscription. Valid options are INFO or ERROR. Default value of INFO."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "customer_aws_id" {
  description = "The AWS customer account associated with the Redshift event notification subscription"
  type        = string
}
variable "enabled" {
  description = "(Optional) A boolean flag to enable/disable the subscription. Defaults to true."
  type        = string
}
variable "sns_topic_arn" {
  description = "(Required) The ARN of the SNS topic to send events to."
  type        = string
}
variable "source_ids" {
  description = "(Optional) A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a source_type must also be specified."
  type        = string
}
variable "source_type" {
  description = "(Optional) The type of source that will be generating the events. Valid options are cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, or scheduled-action. If not set, all sources will be subscribed to."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift event notification subscription"
  type        = string
}
variable "name" {
  description = "(Required) The name of the Redshift event subscription."
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
output "event_categories" {
  description = "(Optional) A list of event categories for a SourceType that you want to subscribe to. See https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-event-notifications.html or run aws redshift describe-event-categories."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.event_categories
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "severity" {
  description = "(Optional) The event severity to be published by the notification subscription. Valid options are INFO or ERROR. Default value of INFO."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.severity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_aws_id" {
  description = "The AWS customer account associated with the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.customer_aws_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) A boolean flag to enable/disable the subscription. Defaults to true."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_topic_arn" {
  description = "(Required) The ARN of the SNS topic to send events to."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.sns_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_ids" {
  description = "(Optional) A list of identifiers of the event sources for which events will be returned. If not specified, then all sources are included in the response. If specified, a source_type must also be specified."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.source_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_type" {
  description = "(Optional) The type of source that will be generating the events. Valid options are cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot, or scheduled-action. If not set, all sources will be subscribed to."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.source_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the Redshift event subscription."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "customer_aws_id" {
  description = "The AWS customer account associated with the Redshift event notification subscription"
  value       = aws_redshift_event_subscription.aws_redshift_event_subscription.customer_aws_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_redshift_event_subscription"
      "kind/version"                = "v0.1.0"
    }
  }
}
