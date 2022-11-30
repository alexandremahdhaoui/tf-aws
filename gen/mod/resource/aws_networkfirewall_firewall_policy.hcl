resource "aws_networkfirewall_firewall_policy" "aws_networkfirewall_firewall_policy" {
  name                               = var.name
  rule_order                         = var.rule_order
  stateful_default_actions           = var.stateful_default_actions
  stateless_default_actions          = var.stateless_default_actions
  stateless_fragment_default_actions = var.stateless_fragment_default_actions
  value                              = var.value
  action_name                        = var.action_name
  dimension                          = var.dimension
  stateful_engine_options            = var.stateful_engine_options
  tags                               = var.tags
  firewall_policy                    = var.firewall_policy
  publish_metric_action              = var.publish_metric_action
  stateful_rule_group_reference      = var.stateful_rule_group_reference
  description                        = var.description
  priority                           = var.priority
  arn                                = var.arn
  id                                 = var.id
  override                           = var.override
  resource_arn                       = var.resource_arn
  stateless_custom_action            = var.stateless_custom_action
  stateless_rule_group_reference     = var.stateless_rule_group_reference
  action                             = var.action
  action_definition                  = var.action_definition
  tags_all                           = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required, Forces new resource) A friendly name of the firewall policy."
  type        = string
}
variable "rule_order" {
  description = "(Required) Indicates how to manage the order of stateful rule evaluation for the policy. Default value: DEFAULT_ACTION_ORDER. Valid values: DEFAULT_ACTION_ORDER, STRICT_ORDER.Stateful Rule Group ReferenceThe stateful_rule_group_reference block supports the following arguments:"
  type        = string
}
variable "stateful_default_actions" {
  description = "(Optional) Set of actions to take on a packet if it does not match any stateful rules in the policy. This can only be specified if the policy has a stateful_engine_options block with a rule_order value of STRICT_ORDER. You can specify one of either or neither values of aws:drop_strict or aws:drop_established, as well as any combination of aws:alert_strict and aws:alert_established."
  type        = string
}
variable "stateless_default_actions" {
  description = "(Required) Set of actions to take on a packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: aws:drop, aws:pass, or aws:forward_to_sfeaws:forward_to_sfe."
  type        = string
}
variable "stateless_fragment_default_actions" {
  description = "(Required) Set of actions to take on a fragmented packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: aws:drop, aws:pass, or aws:forward_to_sfeaws:forward_to_sfe."
  type        = string
}
variable "value" {
  description = "(Required) The string value to use in the custom metric dimension.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "action_name" {
  description = "(Required, Forces new resource) A friendly name of the custom action.Stateless Rule Group ReferenceThe stateless_rule_group_reference block supports the following arguments:"
  type        = string
}
variable "dimension" {
  description = "(Required) Set of configuration blocks describing dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for more details.DimensionThe dimension block supports the following argument:"
  type        = string
}
variable "stateful_engine_options" {
  description = "(Optional) A configuration block that defines options on how the policy handles stateful rules. See Stateful Engine Options below for details."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Firewall PolicyThe firewall_policy block supports the following arguments:"
  type        = string
}
variable "firewall_policy" {
  description = "(Required) A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details."
  type        = string
}
variable "publish_metric_action" {
  description = "(Required) A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.Publish Metric ActionThe publish_metric_action block supports the following argument:"
  type        = string
}
variable "stateful_rule_group_reference" {
  description = "(Optional) Set of configuration blocks containing references to the stateful rule groups that are used in the policy. See Stateful Rule Group Reference below for details."
  type        = string
}
variable "description" {
  description = "(Optional) A friendly description of the firewall policy."
  type        = string
}
variable "priority" {
  description = "(Required) An integer setting that indicates the order in which to run the stateless rule groups in a single policy. AWS Network Firewall applies each stateless rule group to a packet starting with the group that has the lowest priority setting."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  type        = string
}
variable "override" {
  description = "(Optional) Configuration block for override valuesOverride"
  type        = string
}
variable "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the stateless rule group.Action DefinitionThe action_definition block supports the following argument:"
  type        = string
}
variable "stateless_custom_action" {
  description = "(Optional) Set of configuration blocks describing the custom action definitions that are available for use in the firewall policy's stateless_default_actions. See Stateless Custom Action below for details."
  type        = string
}
variable "stateless_rule_group_reference" {
  description = "(Optional) Set of configuration blocks containing references to the stateless rule groups that are used in the policy. See Stateless Rule Group Reference below for details.Stateful Engine OptionsThe stateful_engine_options block supports the following argument:~> strongNOTE: If the STRICT_ORDER rule order is specified, this firewall policy can only reference stateful rule groups that utilize STRICT_ORDER."
  type        = string
}
variable "action" {
  description = "(Optional) The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.Stateless Custom ActionThe stateless_custom_action block supports the following arguments:"
  type        = string
}
variable "action_definition" {
  description = "(Required) A configuration block describing the custom action associated with the action_name. See Action Definition below for details."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
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
output "stateless_fragment_default_actions" {
  description = "(Required) Set of actions to take on a fragmented packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: aws:drop, aws:pass, or aws:forward_to_sfeaws:forward_to_sfe."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateless_fragment_default_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) The string value to use in the custom metric dimension.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action_name" {
  description = "(Required, Forces new resource) A friendly name of the custom action.Stateless Rule Group ReferenceThe stateless_rule_group_reference block supports the following arguments:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.action_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension" {
  description = "(Required) Set of configuration blocks describing dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for more details.DimensionThe dimension block supports the following argument:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.dimension
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required, Forces new resource) A friendly name of the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_order" {
  description = "(Required) Indicates how to manage the order of stateful rule evaluation for the policy. Default value: DEFAULT_ACTION_ORDER. Valid values: DEFAULT_ACTION_ORDER, STRICT_ORDER.Stateful Rule Group ReferenceThe stateful_rule_group_reference block supports the following arguments:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.rule_order
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateful_default_actions" {
  description = "(Optional) Set of actions to take on a packet if it does not match any stateful rules in the policy. This can only be specified if the policy has a stateful_engine_options block with a rule_order value of STRICT_ORDER. You can specify one of either or neither values of aws:drop_strict or aws:drop_established, as well as any combination of aws:alert_strict and aws:alert_established."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateful_default_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateless_default_actions" {
  description = "(Required) Set of actions to take on a packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: aws:drop, aws:pass, or aws:forward_to_sfeaws:forward_to_sfe."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateless_default_actions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firewall_policy" {
  description = "(Required) A configuration block describing the rule groups and policy actions to use in the firewall policy. See Firewall Policy below for details."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.firewall_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "publish_metric_action" {
  description = "(Required) A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.Publish Metric ActionThe publish_metric_action block supports the following argument:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.publish_metric_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateful_engine_options" {
  description = "(Optional) A configuration block that defines options on how the policy handles stateful rules. See Stateful Engine Options below for details."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateful_engine_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of resource tags to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Firewall PolicyThe firewall_policy block supports the following arguments:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A friendly description of the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Required) An integer setting that indicates the order in which to run the stateless rule groups in a single policy. AWS Network Firewall applies each stateless rule group to a packet starting with the group that has the lowest priority setting."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateful_rule_group_reference" {
  description = "(Optional) Set of configuration blocks containing references to the stateful rule groups that are used in the policy. See Stateful Rule Group Reference below for details."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateful_rule_group_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateless_custom_action" {
  description = "(Optional) Set of configuration blocks describing the custom action definitions that are available for use in the firewall policy's stateless_default_actions. See Stateless Custom Action below for details."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateless_custom_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stateless_rule_group_reference" {
  description = "(Optional) Set of configuration blocks containing references to the stateless rule groups that are used in the policy. See Stateless Rule Group Reference below for details.Stateful Engine OptionsThe stateful_engine_options block supports the following argument:~> strongNOTE: If the STRICT_ORDER rule order is specified, this firewall policy can only reference stateful rule groups that utilize STRICT_ORDER."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.stateless_rule_group_reference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action" {
  description = "(Optional) The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.Stateless Custom ActionThe stateless_custom_action block supports the following arguments:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action_definition" {
  description = "(Required) A configuration block describing the custom action associated with the action_name. See Action Definition below for details."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.action_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "override" {
  description = "(Optional) Configuration block for override valuesOverride"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.override
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the stateless rule group.Action DefinitionThe action_definition block supports the following argument:"
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_token" {
  description = "A string token used when updating a firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.update_token
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the firewall policy."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_firewall_policy.aws_networkfirewall_firewall_policy.tags_all
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
      "kind/name"                   = "aws_networkfirewall_firewall_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
