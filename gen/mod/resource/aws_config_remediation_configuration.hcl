resource "aws_config_remediation_configuration" "aws_config_remediation_configuration" {
  automatic                            = var.automatic
  concurrent_execution_rate_percentage = var.concurrent_execution_rate_percentage
  config_rule_name                     = var.config_rule_name
  name                                 = var.name
  target_id                            = var.target_id
  parameter                            = var.parameter
  resource_value                       = var.resource_value
  retry_attempt_seconds                = var.retry_attempt_seconds
  ssm_controls                         = var.ssm_controls
  static_value                         = var.static_value
  static_values                        = var.static_values
  maximum_automatic_attempts           = var.maximum_automatic_attempts
  resource_type                        = var.resource_type
  target_version                       = var.target_version
  arn                                  = var.arn
  error_percentage                     = var.error_percentage
  execution_controls                   = var.execution_controls
  target_type                          = var.target_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "config_rule_name" {
  description = "(Required) Name of the AWS Config rule."
  type        = string
}
variable "name" {
  description = "(Required) Name of the attribute."
  type        = string
}
variable "target_id" {
  description = "(Required) Target ID is the name of the public document."
  type        = string
}
variable "automatic" {
  description = "(Optional) Remediation is triggered automatically if true."
  type        = string
  default     = ""
}
variable "concurrent_execution_rate_percentage" {
  description = "(Optional) Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%."
  type        = string
  default     = ""
}
variable "retry_attempt_seconds" {
  description = "(Optional) Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds."
  type        = string
  default     = ""
}
variable "ssm_controls" {
  description = "(Required) Configuration block for SSM controls. See below.ssm_controlsOne or both of these values are required."
  type        = string
}
variable "static_value" {
  description = "(Optional) Value is static and does not change at run-time."
  type        = string
  default     = ""
}
variable "static_values" {
  description = "(Optional) List of static values.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "parameter" {
  description = "(Optional) Can be specified multiple times for each parameter. Each parameter block supports arguments below."
  type        = string
  default     = ""
}
variable "resource_value" {
  description = "(Optional) Value is dynamic and changes at run-time."
  type        = string
  default     = ""
}
variable "target_version" {
  description = "(Optional) Version of the target. For example, version of the SSM documentexecution_controls"
  type        = string
  default     = ""
}
variable "maximum_automatic_attempts" {
  description = "(Optional) Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5."
  type        = string
  default     = ""
}
variable "resource_type" {
  description = "(Optional) Type of resource."
  type        = string
  default     = ""
}
variable "execution_controls" {
  description = "(Optional) Configuration block for execution controls. See below."
  type        = string
  default     = ""
}
variable "target_type" {
  description = "(Required) Type of the target. Target executes remediation. For example, SSM document."
  type        = string
}
variable "arn" {
  description = "ARN of the Config Remediation Configuration."
  type        = string
  default     = ""
}
variable "error_percentage" {
  description = "(Optional) Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.parameterThe value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value."
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
output "arn" {
  description = "ARN of the Config Remediation Configuration."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.arn
}
output "error_percentage" {
  description = "(Optional) Percentage of errors that are allowed before SSM stops running automations on non-compliant resources for that specific rule. The default is 50%.parameterThe value is either a dynamic (resource) value or a static value. You must select either a dynamic value or a static value."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.error_percentage
}
output "execution_controls" {
  description = "(Optional) Configuration block for execution controls. See below."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.execution_controls
}
output "target_type" {
  description = "(Required) Type of the target. Target executes remediation. For example, SSM document."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.target_type
}
output "automatic" {
  description = "(Optional) Remediation is triggered automatically if true."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.automatic
}
output "concurrent_execution_rate_percentage" {
  description = "(Optional) Maximum percentage of remediation actions allowed to run in parallel on the non-compliant resources for that specific rule. The default value is 10%."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.concurrent_execution_rate_percentage
}
output "config_rule_name" {
  description = "(Required) Name of the AWS Config rule."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.config_rule_name
}
output "name" {
  description = "(Required) Name of the attribute."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.name
}
output "target_id" {
  description = "(Required) Target ID is the name of the public document."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.target_id
}
output "parameter" {
  description = "(Optional) Can be specified multiple times for each parameter. Each parameter block supports arguments below."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.parameter
}
output "resource_value" {
  description = "(Optional) Value is dynamic and changes at run-time."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.resource_value
}
output "retry_attempt_seconds" {
  description = "(Optional) Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.retry_attempt_seconds
}
output "ssm_controls" {
  description = "(Required) Configuration block for SSM controls. See below.ssm_controlsOne or both of these values are required."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.ssm_controls
}
output "static_value" {
  description = "(Optional) Value is static and does not change at run-time."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.static_value
}
output "static_values" {
  description = "(Optional) List of static values.In addition to all arguments above, the following attributes are exported:"
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.static_values
}
output "maximum_automatic_attempts" {
  description = "(Optional) Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.maximum_automatic_attempts
}
output "resource_type" {
  description = "(Optional) Type of resource."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.resource_type
}
output "target_version" {
  description = "(Optional) Version of the target. For example, version of the SSM documentexecution_controls"
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.target_version
}
output "arn" {
  description = "ARN of the Config Remediation Configuration."
  value       = aws_config_remediation_configuration.aws_config_remediation_configuration.arn
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
      "kind/name"                   = "aws_config_remediation_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
