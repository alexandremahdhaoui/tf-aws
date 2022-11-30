resource "aws_sns_platform_application" "aws_sns_platform_application" {
  event_delivery_failure_topic_arn = var.event_delivery_failure_topic_arn
  event_endpoint_deleted_topic_arn = var.event_endpoint_deleted_topic_arn
  success_feedback_role_arn        = var.success_feedback_role_arn
  success_feedback_sample_rate     = var.success_feedback_sample_rate
  event_endpoint_created_topic_arn = var.event_endpoint_created_topic_arn
  failure_feedback_role_arn        = var.failure_feedback_role_arn
  platform_credential              = var.platform_credential
  platform_principal               = var.platform_principal
  apple_platform_bundle_id         = var.apple_platform_bundle_id
  event_endpoint_updated_topic_arn = var.event_endpoint_updated_topic_arn
  name                             = var.name
  apple_platform_team_id           = var.apple_platform_team_id
  id                               = var.id
  platform                         = var.platform
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The ARN of the SNS platform application"
  type        = string
}
variable "platform" {
  description = "(Required) The platform that the app is registered with. See Platform for supported platforms."
  type        = string
}
variable "apple_platform_team_id" {
  description = "(Required) The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters."
  type        = string
}
variable "event_endpoint_deleted_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application."
  type        = string
}
variable "success_feedback_role_arn" {
  description = "(Optional) The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf."
  type        = string
}
variable "success_feedback_sample_rate" {
  description = "(Optional) The sample rate percentage (0-100) of successfully delivered messages.The following attributes are needed only when using APNS token credentials:"
  type        = string
}
variable "event_delivery_failure_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure."
  type        = string
}
variable "failure_feedback_role_arn" {
  description = "(Optional) The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf."
  type        = string
}
variable "platform_credential" {
  description = "(Required) Application Platform credential. See Credential for type of credential required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
  type        = string
}
variable "platform_principal" {
  description = "(Optional) Application Platform principal. See Principal for type of principal required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
  type        = string
}
variable "event_endpoint_created_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application."
  type        = string
}
variable "event_endpoint_updated_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application."
  type        = string
}
variable "name" {
  description = "(Required) The friendly name for the SNS platform application"
  type        = string
}
variable "apple_platform_bundle_id" {
  description = "(Required) The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).In addition to all arguments above, the following attributes are exported:"
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
output "apple_platform_bundle_id" {
  description = "(Required) The bundle identifier that's assigned to your iOS app. May only include alphanumeric characters, hyphens (-), and periods (.).In addition to all arguments above, the following attributes are exported:"
  value       = aws_sns_platform_application.aws_sns_platform_application.apple_platform_bundle_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_endpoint_updated_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when an existing platform endpoint is changed from your platform application."
  value       = aws_sns_platform_application.aws_sns_platform_application.event_endpoint_updated_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The friendly name for the SNS platform application"
  value       = aws_sns_platform_application.aws_sns_platform_application.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "apple_platform_team_id" {
  description = "(Required) The identifier that's assigned to your Apple developer account team. Must be 10 alphanumeric characters."
  value       = aws_sns_platform_application.aws_sns_platform_application.apple_platform_team_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the SNS platform application"
  value       = aws_sns_platform_application.aws_sns_platform_application.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "(Required) The platform that the app is registered with. See Platform for supported platforms."
  value       = aws_sns_platform_application.aws_sns_platform_application.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "success_feedback_sample_rate" {
  description = "(Optional) The sample rate percentage (0-100) of successfully delivered messages.The following attributes are needed only when using APNS token credentials:"
  value       = aws_sns_platform_application.aws_sns_platform_application.success_feedback_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_delivery_failure_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when a delivery to any of the platform endpoints associated with your platform application encounters a permanent failure."
  value       = aws_sns_platform_application.aws_sns_platform_application.event_delivery_failure_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_endpoint_deleted_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when an existing platform endpoint is deleted from your platform application."
  value       = aws_sns_platform_application.aws_sns_platform_application.event_endpoint_deleted_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "success_feedback_role_arn" {
  description = "(Optional) The IAM role ARN permitted to receive success feedback for this application and give SNS write access to use CloudWatch logs on your behalf."
  value       = aws_sns_platform_application.aws_sns_platform_application.success_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_principal" {
  description = "(Optional) Application Platform principal. See Principal for type of principal required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
  value       = aws_sns_platform_application.aws_sns_platform_application.platform_principal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_endpoint_created_topic_arn" {
  description = "(Optional) The ARN of the SNS Topic triggered when a new platform endpoint is added to your platform application."
  value       = aws_sns_platform_application.aws_sns_platform_application.event_endpoint_created_topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_feedback_role_arn" {
  description = "(Optional) The IAM role ARN permitted to receive failure feedback for this application and give SNS write access to use CloudWatch logs on your behalf."
  value       = aws_sns_platform_application.aws_sns_platform_application.failure_feedback_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_credential" {
  description = "(Required) Application Platform credential. See Credential for type of credential required for platform. The value of this attribute when stored into the Terraform state is only a hash of the real value, so therefore it is not practical to use this as an attribute for other resources."
  value       = aws_sns_platform_application.aws_sns_platform_application.platform_credential
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the SNS platform application"
  value       = aws_sns_platform_application.aws_sns_platform_application.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the SNS platform application"
  value       = aws_sns_platform_application.aws_sns_platform_application.id
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
      "kind/name"                   = "aws_sns_platform_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
