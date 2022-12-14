resource "aws_config_organization_custom_rule" "aws_config_organization_custom_rule" {
  arn                         = var.arn
  description                 = var.description
  excluded_accounts           = var.excluded_accounts
  delete                      = var.delete
  input_parameters            = var.input_parameters
  lambda_function_arn         = var.lambda_function_arn
  tag_key_scope               = var.tag_key_scope
  trigger_types               = var.trigger_types
  name                        = var.name
  resource_id_scope           = var.resource_id_scope
  tag_value_scope             = var.tag_value_scope
  create                      = var.create
  maximum_execution_frequency = var.maximum_execution_frequency
  resource_types_scope        = var.resource_types_scope
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tag_key_scope" {
  description = "(Optional, Required if tag_value_scope is configured) Tag key of AWS resources to evaluate"
  type        = string
}
variable "trigger_types" {
  description = "(Required) List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, and ScheduledNotification"
  type        = string
}
variable "delete" {
  description = "(Default 5m)"
  type        = string
}
variable "input_parameters" {
  description = "(Optional) A string in JSON format that is passed to the AWS Config Rule Lambda Function"
  type        = string
  default     = ""
}
variable "lambda_function_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the rule Lambda Function"
  type        = string
}
variable "name" {
  description = "(Required) The name of the rule"
  type        = string
}
variable "resource_id_scope" {
  description = "(Optional) Identifier of the AWS resource to evaluate"
  type        = string
  default     = ""
}
variable "tag_value_scope" {
  description = "(Optional) Tag value of AWS resources to evaluateIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "maximum_execution_frequency" {
  description = "(Optional) The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to TwentyFour_Hours for periodic frequency triggered rules. Valid values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, or TwentyFour_Hours."
  type        = string
  default     = ""
}
variable "resource_types_scope" {
  description = "(Optional) List of types of AWS resources to evaluate"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the ruleTimeoutsConfiguration options:"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the rule"
  type        = string
  default     = ""
}
variable "excluded_accounts" {
  description = "(Optional) List of AWS account identifiers to exclude from the rule"
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
output "name" {
  description = "(Required) The name of the rule"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.name
}
output "resource_id_scope" {
  description = "(Optional) Identifier of the AWS resource to evaluate"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.resource_id_scope
}
output "tag_value_scope" {
  description = "(Optional) Tag value of AWS resources to evaluateIn addition to all arguments above, the following attributes are exported:"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.tag_value_scope
}
output "create" {
  description = "(Default 5m)"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.create
}
output "maximum_execution_frequency" {
  description = "(Optional) The maximum frequency with which AWS Config runs evaluations for a rule, if the rule is triggered at a periodic frequency. Defaults to TwentyFour_Hours for periodic frequency triggered rules. Valid values: One_Hour, Three_Hours, Six_Hours, Twelve_Hours, or TwentyFour_Hours."
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.maximum_execution_frequency
}
output "resource_types_scope" {
  description = "(Optional) List of types of AWS resources to evaluate"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.resource_types_scope
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the ruleTimeoutsConfiguration options:"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.arn
}
output "description" {
  description = "(Optional) Description of the rule"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.description
}
output "excluded_accounts" {
  description = "(Optional) List of AWS account identifiers to exclude from the rule"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.excluded_accounts
}
output "tag_key_scope" {
  description = "(Optional, Required if tag_value_scope is configured) Tag key of AWS resources to evaluate"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.tag_key_scope
}
output "trigger_types" {
  description = "(Required) List of notification types that trigger AWS Config to run an evaluation for the rule. Valid values: ConfigurationItemChangeNotification, OversizedConfigurationItemChangeNotification, and ScheduledNotification"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.trigger_types
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.delete
}
output "input_parameters" {
  description = "(Optional) A string in JSON format that is passed to the AWS Config Rule Lambda Function"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.input_parameters
}
output "lambda_function_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the rule Lambda Function"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.lambda_function_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the ruleTimeoutsConfiguration options:"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.create
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.delete
}
output "update" {
  description = "(Default 5m)"
  value       = aws_config_organization_custom_rule.aws_config_organization_custom_rule.update
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
      "kind/name"                   = "aws_config_organization_custom_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
