resource "aws_rum_app_monitor" "aws_rum_app_monitor" {
  excluded_pages            = var.excluded_pages
  id                        = var.id
  included_pages            = var.included_pages
  name                      = var.name
  app_monitor_id            = var.app_monitor_id
  cw_log_enabled            = var.cw_log_enabled
  cw_log_group              = var.cw_log_group
  enable_xray               = var.enable_xray
  tags                      = var.tags
  allow_cookies             = var.allow_cookies
  arn                       = var.arn
  favorite_pages            = var.favorite_pages
  session_sample_rate       = var.session_sample_rate
  domain                    = var.domain
  telemetries               = var.telemetries
  app_monitor_configuration = var.app_monitor_configuration
  guest_role_arn            = var.guest_role_arn
  identity_pool_id          = var.identity_pool_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "domain" {
  description = "(Required) The top-level internet domain name for which your application has administrative authority."
  type        = string
}
variable "telemetries" {
  description = "(Optional) An array that lists the types of telemetry data that this app monitor is to collect. Valid values are errors, performance, and http.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "app_monitor_configuration" {
  description = "(Optional) configuration data for the app monitor. See app_monitor_configuration below."
  type        = string
}
variable "guest_role_arn" {
  description = "(Optional) The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM."
  type        = string
}
variable "identity_pool_id" {
  description = "(Optional) The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM."
  type        = string
}
variable "app_monitor_id" {
  description = "The unique ID of the app monitor. Useful for JS templates."
  type        = string
}
variable "cw_log_enabled" {
  description = "(Optional) Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter  specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is false."
  type        = string
}
variable "cw_log_group" {
  description = "The name of the log group where the copies are stored."
  type        = string
}
variable "enable_xray" {
  description = "(Optional) If you set this to true, RUM enables X-Ray tracing for the user sessions  that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests."
  type        = string
}
variable "excluded_pages" {
  description = "(Optional) A list of URLs in your website or application to exclude from RUM data collection."
  type        = string
}
variable "id" {
  description = "The CloudWatch RUM name as it is the identifier of a RUM."
  type        = string
}
variable "included_pages" {
  description = "(Optional)  If this app monitor is to collect data from only certain pages in your application, this structure lists those pages."
  type        = string
}
variable "name" {
  description = "(Required) The name of the log stream."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.app_monitor_configuration"
  type        = string
}
variable "allow_cookies" {
  description = "(Optional) If you set this to true, RUM web client sets two cookies, a session cookie  and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the app monitor."
  type        = string
}
variable "favorite_pages" {
  description = "(Optional) A list of pages in the CloudWatch RUM console that are to be displayed with a \"favorite\" icon."
  type        = string
}
variable "session_sample_rate" {
  description = "(Optional) Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is 0.1."
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
  description = "The Amazon Resource Name (ARN) specifying the app monitor."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "favorite_pages" {
  description = "(Optional) A list of pages in the CloudWatch RUM console that are to be displayed with a \"favorite\" icon."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.favorite_pages
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "session_sample_rate" {
  description = "(Optional) Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is 0.1."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.session_sample_rate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_cookies" {
  description = "(Optional) If you set this to true, RUM web client sets two cookies, a session cookie  and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.allow_cookies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "telemetries" {
  description = "(Optional) An array that lists the types of telemetry data that this app monitor is to collect. Valid values are errors, performance, and http.In addition to all arguments above, the following attributes are exported:"
  value       = aws_rum_app_monitor.aws_rum_app_monitor.telemetries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain" {
  description = "(Required) The top-level internet domain name for which your application has administrative authority."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "guest_role_arn" {
  description = "(Optional) The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.guest_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identity_pool_id" {
  description = "(Optional) The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.identity_pool_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "app_monitor_configuration" {
  description = "(Optional) configuration data for the app monitor. See app_monitor_configuration below."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.app_monitor_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cw_log_enabled" {
  description = "(Optional) Data collected by RUM is kept by RUM for 30 days and then deleted. This parameter  specifies whether RUM sends a copy of this telemetry data to Amazon CloudWatch Logs in your account. This enables you to keep the telemetry data for more than 30 days, but it does incur Amazon CloudWatch Logs charges. Default value is false."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.cw_log_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cw_log_group" {
  description = "The name of the log group where the copies are stored."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.cw_log_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_xray" {
  description = "(Optional) If you set this to true, RUM enables X-Ray tracing for the user sessions  that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.enable_xray
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excluded_pages" {
  description = "(Optional) A list of URLs in your website or application to exclude from RUM data collection."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.excluded_pages
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The CloudWatch RUM name as it is the identifier of a RUM."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "included_pages" {
  description = "(Optional)  If this app monitor is to collect data from only certain pages in your application, this structure lists those pages."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.included_pages
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the log stream."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "app_monitor_id" {
  description = "The unique ID of the app monitor. Useful for JS templates."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.app_monitor_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.app_monitor_configuration"
  value       = aws_rum_app_monitor.aws_rum_app_monitor.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cw_log_group" {
  description = "The name of the log group where the copies are stored."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.cw_log_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The CloudWatch RUM name as it is the identifier of a RUM."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "app_monitor_id" {
  description = "The unique ID of the app monitor. Useful for JS templates."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.app_monitor_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the app monitor."
  value       = aws_rum_app_monitor.aws_rum_app_monitor.arn
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
      "kind/name"                   = "aws_rum_app_monitor"
      "kind/version"                = "v0.1.0"
    }
  }
}