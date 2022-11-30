resource "aws_config_config_rule" "aws_config_config_rule" {
  maximum_execution_frequency                  = var.maximum_execution_frequency
  message_type                                 = var.message_type
  source                                       = var.source
  tag_value                                    = var.tag_value
  tags                                         = var.tags
  OversizedConfigurationItemChangeNotification = var.OversizedConfigurationItemChangeNotification
  input_parameters                             = var.input_parameters
  owner                                        = var.owner
  rule_id                                      = var.rule_id
  source_identifier                            = var.source_identifier
  tag_key                                      = var.tag_key
  event_source                                 = var.event_source
  name                                         = var.name
  arn                                          = var.arn
  custom_policy_details                        = var.custom_policy_details
  enable_debug_log_delivery                    = var.enable_debug_log_delivery
  scope                                        = var.scope
  ConfigurationItemChangeNotification          = var.ConfigurationItemChangeNotification
  ConfigurationSnapshotDeliveryCompleted       = var.ConfigurationSnapshotDeliveryCompleted
  compliance_resource_types                    = var.compliance_resource_types
  description                                  = var.description
  policy_runtime                               = var.policy_runtime
  policy_text                                  = var.policy_text
  source_detail                                = var.source_detail
  ScheduledNotification                        = var.ScheduledNotification
  compliance_resource_id                       = var.compliance_resource_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "OversizedConfigurationItemChangeNotification" {
  description = "Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS."
  type        = string
}
variable "input_parameters" {
  description = "(Optional) A string in JSON format that is passed to the AWS Config rule Lambda function."
  type        = string
}
variable "maximum_execution_frequency" {
  description = "(Optional) The frequency that you want AWS Config to run evaluations for a rule that istriggered periodically. If specified, requires message_type to be ScheduledNotification."
  type        = string
}
variable "message_type" {
  description = "(Optional) The type of notification that triggers AWS Config to run an evaluation for a rule. You canspecify the following notification types:\n"
  type        = string
}
variable "source" {
  description = "(Required) Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Scope Below."
  type        = string
}
variable "tag_value" {
  description = "(Optional) The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.SourceProvides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Scope"
  type        = string
}
variable "event_source" {
  description = "(Optional) The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWSresources. This defaults to aws.config and is the only valid value."
  type        = string
}
variable "name" {
  description = "(Required) The name of the rule"
  type        = string
}
variable "owner" {
  description = "(Required) Indicates whether AWS or the customer owns and manages the AWS Config rule. Valid values are AWS, CUSTOM_LAMBDA or CUSTOM_POLICY. For more information about managed rules, see the AWS Config Managed Rules documentation. For more information about custom rules, see the AWS Config Custom Rules documentation. Custom Lambda Functions require permissions to allow the AWS Config service to invoke them, e.g., via the aws_lambda_permission resource."
  type        = string
}
variable "rule_id" {
  description = "The ID of the config rule"
  type        = string
}
variable "source_identifier" {
  description = "(Optional) For AWS Config managed rules, a predefined identifier, e.g IAM_PASSWORD_POLICY. For custom Lambda rules, the identifier is the ARN of the Lambda Function, such as arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name or the arn attribute of the aws_lambda_function resource."
  type        = string
}
variable "tag_key" {
  description = "(Optional, Required if tag_value is specified) The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule."
  type        = string
}
variable "ConfigurationItemChangeNotification" {
  description = "Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change."
  type        = string
}
variable "ConfigurationSnapshotDeliveryCompleted" {
  description = "Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.Custom Policy Details"
  type        = string
}
variable "arn" {
  description = "The ARN of the config rule"
  type        = string
}
variable "custom_policy_details" {
  description = "(Optional) Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to CUSTOM_POLICY. See Custom Policy Details Below.Source Detail"
  type        = string
}
variable "enable_debug_log_delivery" {
  description = "(Optional) The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is false."
  type        = string
}
variable "scope" {
  description = "(Optional) Scope defines which resources can trigger an evaluation for the rule. See Source Below."
  type        = string
}
variable "ScheduledNotification" {
  description = "Triggers a periodic evaluation at the frequency specified for maximum_execution_frequency."
  type        = string
}
variable "compliance_resource_id" {
  description = "(Optional) The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for compliance_resource_types."
  type        = string
}
variable "compliance_resource_types" {
  description = "(Optional) A list of resource types of only those AWS resources that you want to trigger an evaluation for the ruleE.g., AWS::EC2::Instance. You can only specify one type if you also specify a resource ID for compliance_resource_id. See relevant part of AWS Docs for available types."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the rule"
  type        = string
}
variable "policy_runtime" {
  description = "(Required) The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the Guard GitHub Repository."
  type        = string
}
variable "policy_text" {
  description = "(Required) The policy definition containing the logic for your Config Custom Policy rule.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source_detail" {
  description = "(Optional) Provides the source and type of the event that causes AWS Config to evaluate your AWS resources. Only valid if owner is CUSTOM_LAMBDA or CUSTOM_POLICY. See Source Detail Below."
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
output "ConfigurationItemChangeNotification" {
  description = "Triggers an evaluation when AWS Config delivers a configuration item as a result of a resource change."
  value       = aws_config_config_rule.aws_config_config_rule.ConfigurationItemChangeNotification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ConfigurationSnapshotDeliveryCompleted" {
  description = "Triggers a periodic evaluation when AWS Config delivers a configuration snapshot.Custom Policy Details"
  value       = aws_config_config_rule.aws_config_config_rule.ConfigurationSnapshotDeliveryCompleted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the config rule"
  value       = aws_config_config_rule.aws_config_config_rule.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_policy_details" {
  description = "(Optional) Provides the runtime system, policy definition, and whether debug logging is enabled. Required when owner is set to CUSTOM_POLICY. See Custom Policy Details Below.Source Detail"
  value       = aws_config_config_rule.aws_config_config_rule.custom_policy_details
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_debug_log_delivery" {
  description = "(Optional) The boolean expression for enabling debug logging for your Config Custom Policy rule. The default value is false."
  value       = aws_config_config_rule.aws_config_config_rule.enable_debug_log_delivery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Optional) Scope defines which resources can trigger an evaluation for the rule. See Source Below."
  value       = aws_config_config_rule.aws_config_config_rule.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ScheduledNotification" {
  description = "Triggers a periodic evaluation at the frequency specified for maximum_execution_frequency."
  value       = aws_config_config_rule.aws_config_config_rule.ScheduledNotification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_resource_id" {
  description = "(Optional) The IDs of the only AWS resource that you want to trigger an evaluation for the rule. If you specify a resource ID, you must specify one resource type for compliance_resource_types."
  value       = aws_config_config_rule.aws_config_config_rule.compliance_resource_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compliance_resource_types" {
  description = "(Optional) A list of resource types of only those AWS resources that you want to trigger an evaluation for the ruleE.g., AWS::EC2::Instance. You can only specify one type if you also specify a resource ID for compliance_resource_id. See relevant part of AWS Docs for available types."
  value       = aws_config_config_rule.aws_config_config_rule.compliance_resource_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of the rule"
  value       = aws_config_config_rule.aws_config_config_rule.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_runtime" {
  description = "(Required) The runtime system for your Config Custom Policy rule. Guard is a policy-as-code language that allows you to write policies that are enforced by Config Custom Policy rules. For more information about Guard, see the Guard GitHub Repository."
  value       = aws_config_config_rule.aws_config_config_rule.policy_runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_text" {
  description = "(Required) The policy definition containing the logic for your Config Custom Policy rule.In addition to all arguments above, the following attributes are exported:"
  value       = aws_config_config_rule.aws_config_config_rule.policy_text
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_detail" {
  description = "(Optional) Provides the source and type of the event that causes AWS Config to evaluate your AWS resources. Only valid if owner is CUSTOM_LAMBDA or CUSTOM_POLICY. See Source Detail Below."
  value       = aws_config_config_rule.aws_config_config_rule.source_detail
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "OversizedConfigurationItemChangeNotification" {
  description = "Triggers an evaluation when AWS Config delivers an oversized configuration item. AWS Config may generate this notification type when a resource changes and the notification exceeds the maximum size allowed by Amazon SNS."
  value       = aws_config_config_rule.aws_config_config_rule.OversizedConfigurationItemChangeNotification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_parameters" {
  description = "(Optional) A string in JSON format that is passed to the AWS Config rule Lambda function."
  value       = aws_config_config_rule.aws_config_config_rule.input_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_execution_frequency" {
  description = "(Optional) The frequency that you want AWS Config to run evaluations for a rule that istriggered periodically. If specified, requires message_type to be ScheduledNotification."
  value       = aws_config_config_rule.aws_config_config_rule.maximum_execution_frequency
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "message_type" {
  description = "(Optional) The type of notification that triggers AWS Config to run an evaluation for a rule. You canspecify the following notification types:\n"
  value       = aws_config_config_rule.aws_config_config_rule.message_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "(Required) Source specifies the rule owner, the rule identifier, and the notifications that cause the function to evaluate your AWS resources. See Scope Below."
  value       = aws_config_config_rule.aws_config_config_rule.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_value" {
  description = "(Optional) The tag value applied to only those AWS resources that you want to trigger an evaluation for the rule.SourceProvides the rule owner (AWS or customer), the rule identifier, and the notifications that cause the function to evaluate your AWS resources."
  value       = aws_config_config_rule.aws_config_config_rule.tag_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Scope"
  value       = aws_config_config_rule.aws_config_config_rule.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "event_source" {
  description = "(Optional) The source of the event, such as an AWS service, that triggers AWS Config to evaluate your AWSresources. This defaults to aws.config and is the only valid value."
  value       = aws_config_config_rule.aws_config_config_rule.event_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the rule"
  value       = aws_config_config_rule.aws_config_config_rule.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "(Required) Indicates whether AWS or the customer owns and manages the AWS Config rule. Valid values are AWS, CUSTOM_LAMBDA or CUSTOM_POLICY. For more information about managed rules, see the AWS Config Managed Rules documentation. For more information about custom rules, see the AWS Config Custom Rules documentation. Custom Lambda Functions require permissions to allow the AWS Config service to invoke them, e.g., via the aws_lambda_permission resource."
  value       = aws_config_config_rule.aws_config_config_rule.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_id" {
  description = "The ID of the config rule"
  value       = aws_config_config_rule.aws_config_config_rule.rule_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_identifier" {
  description = "(Optional) For AWS Config managed rules, a predefined identifier, e.g IAM_PASSWORD_POLICY. For custom Lambda rules, the identifier is the ARN of the Lambda Function, such as arn:aws:lambda:us-east-1:123456789012:function:custom_rule_name or the arn attribute of the aws_lambda_function resource."
  value       = aws_config_config_rule.aws_config_config_rule.source_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_key" {
  description = "(Optional, Required if tag_value is specified) The tag key that is applied to only those AWS resources that you want you want to trigger an evaluation for the rule."
  value       = aws_config_config_rule.aws_config_config_rule.tag_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the config rule"
  value       = aws_config_config_rule.aws_config_config_rule.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_id" {
  description = "The ID of the config rule"
  value       = aws_config_config_rule.aws_config_config_rule.rule_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_config_config_rule.aws_config_config_rule.tags_all
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
      "kind/name"                   = "aws_config_config_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
