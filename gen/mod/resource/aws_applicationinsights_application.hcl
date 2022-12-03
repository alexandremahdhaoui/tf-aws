resource "aws_applicationinsights_application" "aws_applicationinsights_application" {
  grouping_type          = var.grouping_type
  id                     = var.id
  ops_center_enabled     = var.ops_center_enabled
  ops_item_sns_topic_arn = var.ops_item_sns_topic_arn
  resource_group_name    = var.resource_group_name
  tags                   = var.tags
  tags_all               = var.tags_all
  auto_config_enabled    = var.auto_config_enabled
  auto_create            = var.auto_create
  cwe_monitor_enabled    = var.cwe_monitor_enabled
  arn                    = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Name of the resource group."
  type        = string
  default     = ""
}
variable "ops_center_enabled" {
  description = "(Optional) When set to true, creates opsItems for any problems detected on an application."
  type        = string
  default     = ""
}
variable "ops_item_sns_topic_arn" {
  description = "(Optional) SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem."
  type        = string
  default     = ""
}
variable "resource_group_name" {
  description = "(Required) Name of the resource group."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "auto_config_enabled" {
  description = "(Optional)  Indicates whether Application Insights automatically configures unmonitored resources in the resource group."
  type        = string
  default     = ""
}
variable "grouping_type" {
  description = "(Optional) Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to ACCOUNT_BASED."
  type        = string
  default     = ""
}
variable "cwe_monitor_enabled" {
  description = "(Optional)  Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Application."
  type        = string
  default     = ""
}
variable "auto_create" {
  description = "(Optional) Configures all of the resources in the resource group by applying the recommended configurations."
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
output "auto_config_enabled" {
  description = "(Optional)  Indicates whether Application Insights automatically configures unmonitored resources in the resource group."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.auto_config_enabled
}
output "grouping_type" {
  description = "(Optional) Application Insights can create applications based on a resource group or on an account. To create an account-based application using all of the resources in the account, set this parameter to ACCOUNT_BASED."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.grouping_type
}
output "id" {
  description = "Name of the resource group."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.id
}
output "ops_center_enabled" {
  description = "(Optional) When set to true, creates opsItems for any problems detected on an application."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.ops_center_enabled
}
output "ops_item_sns_topic_arn" {
  description = "(Optional) SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.ops_item_sns_topic_arn
}
output "resource_group_name" {
  description = "(Required) Name of the resource group."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.resource_group_name
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_applicationinsights_application.aws_applicationinsights_application.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.tags_all
}
output "arn" {
  description = "ARN of the Application."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.arn
}
output "auto_create" {
  description = "(Optional) Configures all of the resources in the resource group by applying the recommended configurations."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.auto_create
}
output "cwe_monitor_enabled" {
  description = "(Optional)  Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.cwe_monitor_enabled
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.tags_all
}
output "arn" {
  description = "ARN of the Application."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.arn
}
output "id" {
  description = "Name of the resource group."
  value       = aws_applicationinsights_application.aws_applicationinsights_application.id
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
      "kind/name"                   = "aws_applicationinsights_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
