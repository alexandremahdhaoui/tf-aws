resource "aws_pinpoint_email_channel.markdown" "aws_pinpoint_email_channel.markdown" {
  application_id    = var.application_id
  configuration_set = var.configuration_set
  enabled           = var.enabled
  from_address      = var.from_address
  identity          = var.identity
  role_arn          = var.role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether the channel is enabled or disabled. Defaults to true."
  type        = string
}
variable "from_address" {
  description = "(Required) The email address used to send emails from. You can use email only (user@example.com) or friendly address (User <user@example.com>). This field comply with RFC 5322."
  type        = string
}
variable "identity" {
  description = "(Required) The ARN of an identity verified with SES."
  type        = string
}
variable "role_arn" {
  description = "(Optional) The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "application_id" {
  description = "(Required) The application ID."
  type        = string
}
variable "configuration_set" {
  description = "(Optional) The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel."
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
output "application_id" {
  description = "(Required) The application ID."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.application_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_set" {
  description = "(Optional) The ARN of the Amazon SES configuration set that you want to apply to messages that you send through the channel."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.configuration_set
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) Whether the channel is enabled or disabled. Defaults to true."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "from_address" {
  description = "(Required) The email address used to send emails from. You can use email only (user@example.com) or friendly address (User <user@example.com>). This field comply with RFC 5322."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.from_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity" {
  description = "(Required) The ARN of an identity verified with SES."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.identity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Optional) The ARN of an IAM Role used to submit events to Mobile Analytics' event ingestion service.In addition to all arguments above, the following attributes are exported:"
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "messages_per_second" {
  description = "Messages per second that can be sent."
  value       = aws_pinpoint_email_channel.markdown.aws_pinpoint_email_channel.markdown.messages_per_second
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
      "kind/name"                   = "aws_pinpoint_email_channel.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
