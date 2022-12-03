resource "aws_sesv2_configuration_set" "aws_sesv2_configuration_set" {
  custom_redirect_domain     = var.custom_redirect_domain
  delivery_options           = var.delivery_options
  tags                       = var.tags
  configuration_set_name     = var.configuration_set_name
  reputation_metrics_enabled = var.reputation_metrics_enabled
  arn                        = var.arn
  reputation_options         = var.reputation_options
  sending_enabled            = var.sending_enabled
  sending_options            = var.sending_options
  suppressed_reasons         = var.suppressed_reasons
  suppression_options        = var.suppression_options
  tls_policy                 = var.tls_policy
  sending_pool_name          = var.sending_pool_name
  tracking_options           = var.tracking_options
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "sending_pool_name" {
  description = "(Optional) The name of the dedicated IP pool to associate with the configuration set."
  type        = string
  default     = ""
}
variable "tracking_options" {
  description = "(Optional) An object that defines the open and click tracking options for emails that you send using the configuration set.delivery_options"
  type        = string
  default     = ""
}
variable "custom_redirect_domain" {
  description = "(Required) The domain to use for tracking open and click events.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "delivery_options" {
  description = "(Optional) An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "configuration_set_name" {
  description = "(Required) The name of the configuration set."
  type        = string
}
variable "reputation_metrics_enabled" {
  description = "(Optional) If true, tracking of reputation metrics is enabled for the configuration set. If false, tracking of reputation metrics is disabled for the configuration set.sending_options"
  type        = string
  default     = ""
}
variable "suppression_options" {
  description = "(Optional) An object that contains information about the suppression list preferences for your account."
  type        = string
  default     = ""
}
variable "tls_policy" {
  description = "(Optional) Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). Valid values: REQUIRE, OPTIONAL.reputation_options"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Configuration Set."
  type        = string
}
variable "reputation_options" {
  description = "An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.\n"
  type        = string
}
variable "sending_enabled" {
  description = "(Optional) If true, email sending is enabled for the configuration set. If false, email sending is disabled for the configuration set.suppression_options"
  type        = string
  default     = ""
}
variable "sending_options" {
  description = "(Optional) An object that defines whether or not Amazon SES can send email that you send using the configuration set."
  type        = string
  default     = ""
}
variable "suppressed_reasons" {
  description = "(Optional) A list that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: BOUNCE, COMPLAINT.tracking_options"
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
output "reputation_metrics_enabled" {
  description = "(Optional) If true, tracking of reputation metrics is enabled for the configuration set. If false, tracking of reputation metrics is disabled for the configuration set.sending_options"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.reputation_metrics_enabled
}
output "configuration_set_name" {
  description = "(Required) The name of the configuration set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.configuration_set_name
}
output "reputation_options" {
  description = "An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.\n"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.reputation_options
}
output "sending_enabled" {
  description = "(Optional) If true, email sending is enabled for the configuration set. If false, email sending is disabled for the configuration set.suppression_options"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.sending_enabled
}
output "sending_options" {
  description = "(Optional) An object that defines whether or not Amazon SES can send email that you send using the configuration set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.sending_options
}
output "suppressed_reasons" {
  description = "(Optional) A list that contains the reasons that email addresses are automatically added to the suppression list for your account. Valid values: BOUNCE, COMPLAINT.tracking_options"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.suppressed_reasons
}
output "suppression_options" {
  description = "(Optional) An object that contains information about the suppression list preferences for your account."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.suppression_options
}
output "tls_policy" {
  description = "(Optional) Specifies whether messages that use the configuration set are required to use Transport Layer Security (TLS). Valid values: REQUIRE, OPTIONAL.reputation_options"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.tls_policy
}
output "arn" {
  description = "ARN of the Configuration Set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.arn
}
output "tracking_options" {
  description = "(Optional) An object that defines the open and click tracking options for emails that you send using the configuration set.delivery_options"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.tracking_options
}
output "sending_pool_name" {
  description = "(Optional) The name of the dedicated IP pool to associate with the configuration set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.sending_pool_name
}
output "delivery_options" {
  description = "(Optional) An object that defines the dedicated IP pool that is used to send emails that you send using the configuration set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.delivery_options
}
output "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.tags
}
output "custom_redirect_domain" {
  description = "(Required) The domain to use for tracking open and click events.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.custom_redirect_domain
}
output "arn" {
  description = "ARN of the Configuration Set."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.arn
}
output "last_fresh_start" {
  description = "The date and time (in Unix time) when the reputation metrics were last given a fresh start. When your account is given a fresh start, your reputation metrics are calculated starting from the date of the fresh start."
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.last_fresh_start
}
output "reputation_options" {
  description = "An object that defines whether or not Amazon SES collects reputation metrics for the emails that you send that use the configuration set.\n"
  value       = aws_sesv2_configuration_set.aws_sesv2_configuration_set.reputation_options
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
      "kind/name"                   = "aws_sesv2_configuration_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
