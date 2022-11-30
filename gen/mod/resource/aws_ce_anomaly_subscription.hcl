resource "aws_ce_anomaly_subscription" "aws_ce_anomaly_subscription" {
  id               = var.id
  subscriber       = var.subscriber
  type             = var.type
  address          = var.address
  arn              = var.arn
  frequency        = var.frequency
  tags             = var.tags
  threshold        = var.threshold
  account_id       = var.account_id
  monitor_arn_list = var.monitor_arn_list
  name             = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Unique ID of the anomaly subscription. Same as arn."
  type        = string
}
variable "subscriber" {
  description = ""
  type        = string
}
variable "type" {
  description = "(Required) The type of subscription. Valid Values: SNS | EMAIL."
  type        = string
}
variable "address" {
  description = "(Required) The address of the subscriber. If type is SNS, this will be the arn of the sns topic. If type is EMAIL, this will be the destination email address."
  type        = string
}
variable "arn" {
  description = "ARN of the anomaly subscription."
  type        = string
}
variable "frequency" {
  description = "(Required) The frequency that anomaly reports are sent. Valid Values: DAILY | IMMEDIATE | WEEKLY."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "threshold" {
  description = "(Required) The dollar value that triggers a notification if the threshold is exceeded."
  type        = string
}
variable "account_id" {
  description = "(Optional) The unique identifier for the AWS account in which the anomaly subscription ought to be created."
  type        = string
}
variable "monitor_arn_list" {
  description = "(Required) A list of cost anomaly monitors."
  type        = string
}
variable "name" {
  description = "(Required) The name for the subscription."
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
output "monitor_arn_list" {
  description = "(Required) A list of cost anomaly monitors."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.monitor_arn_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name for the subscription."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "threshold" {
  description = "(Required) The dollar value that triggers a notification if the threshold is exceeded."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "(Optional) The unique identifier for the AWS account in which the anomaly subscription ought to be created."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the anomaly subscription."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "frequency" {
  description = "(Required) The frequency that anomaly reports are sent. Valid Values: DAILY | IMMEDIATE | WEEKLY."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID of the anomaly subscription. Same as arn."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subscriber" {
  description = ""
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.subscriber
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) The type of subscription. Valid Values: SNS | EMAIL."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "address" {
  description = "(Required) The address of the subscriber. If type is SNS, this will be the arn of the sns topic. If type is EMAIL, this will be the destination email address."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the anomaly subscription."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID of the anomaly subscription. Same as arn."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ce_anomaly_subscription.aws_ce_anomaly_subscription.tags_all
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
      "kind/name"                   = "aws_ce_anomaly_subscription"
      "kind/version"                = "v0.1.0"
    }
  }
}
