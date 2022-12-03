resource "aws_networkfirewall_rule_group" "aws_networkfirewall_rule_group" {
  action_definition                  = var.action_definition
  flags                              = var.flags
  from_port                          = var.from_port
  ip_set                             = var.ip_set
  stateless_rule                     = var.stateless_rule
  actions                            = var.actions
  definition                         = var.definition
  match_attributes                   = var.match_attributes
  stateful_rule                      = var.stateful_rule
  description                        = var.description
  port_sets                          = var.port_sets
  tags                               = var.tags
  targets                            = var.targets
  generated_rules_type               = var.generated_rules_type
  publish_metric_action              = var.publish_metric_action
  rules_source_list                  = var.rules_source_list
  direction                          = var.direction
  ip_sets                            = var.ip_sets
  rule_option                        = var.rule_option
  action_name                        = var.action_name
  source                             = var.source
  stateful_rule_options              = var.stateful_rule_options
  address_definition                 = var.address_definition
  destination                        = var.destination
  protocols                          = var.protocols
  source_port                        = var.source_port
  protocol                           = var.protocol
  port_set                           = var.port_set
  rule_definition                    = var.rule_definition
  rules_string                       = var.rules_string
  stateless_rules_and_custom_actions = var.stateless_rules_and_custom_actions
  tcp_flag                           = var.tcp_flag
  destination_port                   = var.destination_port
  dimension                          = var.dimension
  masks                              = var.masks
  rule_variables                     = var.rule_variables
  rules_source                       = var.rules_source
  tags_all                           = var.tags_all
  target_types                       = var.target_types
  action                             = var.action
  keyword                            = var.keyword
  rule_group                         = var.rule_group
  capacity                           = var.capacity
  custom_action                      = var.custom_action
  name                               = var.name
  priority                           = var.priority
  to_port                            = var.to_port
  key                                = var.key
  rule_order                         = var.rule_order
  arn                                = var.arn
  header                             = var.header
  id                                 = var.id
  settings                           = var.settings
  type                               = var.type
  rules                              = var.rules
  value                              = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "generated_rules_type" {
  description = "(Required) String value to specify whether domains in the target list are allowed or denied access. Valid values: ALLOWLIST, DENYLIST."
  type        = string
}
variable "publish_metric_action" {
  description = "(Required) A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.Publish Metric ActionThe publish_metric_action block supports the following argument:"
  type        = string
}
variable "rules_source_list" {
  description = "(Optional) A configuration block containing strongstateful inspection criteria for a domain list rule group. See Rules Source List below for details."
  type        = string
  default     = ""
}
variable "direction" {
  description = "(Required) The direction of traffic flow to inspect. Valid values: ANY or FORWARD."
  type        = string
}
variable "ip_sets" {
  description = "(Optional) Set of configuration blocks that define IP address information. See IP Sets below for details."
  type        = string
  default     = ""
}
variable "rule_option" {
  description = "(Required) Set of configuration blocks containing additional settings for a stateful rule. See Rule Option below for details.Stateless Rules and Custom ActionsThe stateless_rules_and_custom_actions block supports the following arguments:"
  type        = string
}
variable "action_name" {
  description = "(Required, Forces new resource) A friendly name of the custom action.Stateless RuleThe stateless_rule block supports the following arguments:"
  type        = string
}
variable "source" {
  description = "(Optional) Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details."
  type        = string
  default     = ""
}
variable "stateful_rule_options" {
  description = "(Optional) A configuration block that defines stateful rule options for the rule group. See Stateful Rule Options below for details.Rule VariablesThe rule_variables block supports the following arguments:"
  type        = string
  default     = ""
}
variable "address_definition" {
  description = "(Required)  An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.Source PortThe source_port block supports the following arguments:"
  type        = string
}
variable "destination" {
  description = "(Optional) Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details."
  type        = string
  default     = ""
}
variable "protocols" {
  description = "(Optional) Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). If not specified, this matches with any protocol."
  type        = string
  default     = ""
}
variable "source_port" {
  description = "(Optional) Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Port below for details."
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Required) The protocol to inspect. Valid values: IP, TCP, UDP, ICMP, HTTP, FTP, TLS, SMB, DNS, DCERPC, SSH, SMTP, IMAP, MSN, KRB5, IKEV2, TFTP, NTP, DHCP."
  type        = string
}
variable "port_set" {
  description = "(Required) A configuration block that defines a set of port ranges. See Port Set below for details.Port SetThe port_set configuration block suppports the following argument:"
  type        = string
}
variable "rule_definition" {
  description = "(Required) A configuration block defining the stateless 5-tuple packet inspection criteria and the action to take on a packet that matches the criteria. See Rule Definition below for details.Rule DefinitionThe rule_definition block supports the following arguments:"
  type        = string
}
variable "rules_string" {
  description = "(Optional) The fully qualified name of a file in an S3 bucket that contains Suricata compatible intrusion preventions system (IPS) rules or the Suricata rules as a string. These rules contain strongstateful inspection criteria and the action to take for traffic that matches the criteria."
  type        = string
  default     = ""
}
variable "stateless_rules_and_custom_actions" {
  description = "(Optional) A configuration block containing strongstateless inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.Stateful Rule OptionsThe stateful_rule_options block supports the following argument:~> strongNOTE: If the STRICT_ORDER rule order is specified, this rule group can only be referenced in firewall policies that also utilize STRICT_ORDER for the stateful engine. STRICT_ORDER can only be specified when using a rules_source of rules_string or stateful_rule."
  type        = string
  default     = ""
}
variable "tcp_flag" {
  description = "(Optional) Set of configuration blocks containing the TCP flags and masks to inspect for. If not specified, this matches with any settings.Action DefinitionThe action_definition block supports the following argument:"
  type        = string
  default     = ""
}
variable "destination_port" {
  description = "(Optional) Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Port below for details."
  type        = string
  default     = ""
}
variable "dimension" {
  description = "(Required) Set of configuration blocks containing the dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for details.DimensionThe dimension block supports the following argument:"
  type        = string
}
variable "masks" {
  description = "(Optional) Set of flags to consider in the inspection. To inspect all flags, leave this empty.\nValid values: FIN, SYN, RST, PSH, ACK, URG, ECE, CWR.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "rule_variables" {
  description = "(Optional) A configuration block that defines additional settings available to use in the rules defined in the rule group. Can only be specified for strongstateful rule groups. See Rule Variables below for details."
  type        = string
  default     = ""
}
variable "rules_source" {
  description = "(Required) A configuration block that defines the stateful or stateless rules for the rule group. See Rules Source below for details."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "target_types" {
  description = "(Required) Set of types of domain specifications that are provided in the targets argument. Valid values: HTTP_HOST, TLS_SNI."
  type        = string
}
variable "action" {
  description = "(Required) Action to take with packets in a traffic flow when the flow matches the stateful rule criteria. For all actions, AWS Network Firewall performs the specified action and discontinues stateful inspection of the traffic flow. Valid values: ALERT, DROP or PASS."
  type        = string
}
variable "keyword" {
  description = "(Required) Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.\nSee Snort General Rule Options or Suricata Rule Options for more details."
  type        = string
}
variable "rule_group" {
  description = "(Optional) A configuration block that defines the rule group rules. Required unless rules is specified. See Rule Group below for details."
  type        = string
  default     = ""
}
variable "capacity" {
  description = "(Required, Forces new resource) The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules."
  type        = string
}
variable "custom_action" {
  description = "(Optional) Set of configuration blocks containing custom action definitions that are available for use by the set of stateless rule. See Custom Action below for details."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required, Forces new resource) A friendly name of the rule group."
  type        = string
}
variable "priority" {
  description = "(Required) A setting that indicates the order in which to run this rule relative to all of the rules that are defined for a stateless rule group. AWS Network Firewall evaluates the rules in a rule group starting with the lowest priority setting."
  type        = string
}
variable "to_port" {
  description = "(Optional) The upper limit of the port range. This must be greater than or equal to the from_port.TCP FlagThe tcp_flag block supports the following arguments:"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) An unique alphanumeric string to identify the port_set."
  type        = string
}
variable "rule_order" {
  description = "(Required) Indicates how to manage the order of the rule evaluation for the rule group. Default value: DEFAULT_ACTION_ORDER. Valid values: DEFAULT_ACTION_ORDER, STRICT_ORDER.Rules Source ListThe rules_source_list block supports the following arguments:"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  type        = string
}
variable "header" {
  description = "(Required) A configuration block containing the stateful 5-tuple inspection criteria for the rule, used to inspect traffic flows. See Header below for details."
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  type        = string
}
variable "settings" {
  description = "(Optional) Set of strings for additional settings to use in stateful rule inspection.Custom ActionThe custom_action block supports the following arguments:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: STATEFUL or STATELESS.Rule GroupThe rule_group block supports the following argument:"
  type        = string
}
variable "rules" {
  description = "(Optional) The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless rule_group is specified."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value to use in the custom metric dimension.DestinationThe destination block supports the following argument:"
  type        = string
}
variable "action_definition" {
  description = "(Required) A configuration block describing the custom action associated with the action_name. See Action Definition below for details."
  type        = string
}
variable "flags" {
  description = "(Required) Set of flags to look for in a packet. This setting can only specify values that are also specified in masksFIN, SYN, RST, PSH, ACK, URG, ECE, CWR."
  type        = string
}
variable "from_port" {
  description = "(Required) The lower limit of the port range. This must be less than or equal to the to_port."
  type        = string
}
variable "ip_set" {
  description = "(Required) A configuration block that defines a set of IP addresses. See IP Set below for details.IP SetThe ip_set configuration block supports the following argument:"
  type        = string
}
variable "stateless_rule" {
  description = "(Required) Set of configuration blocks containing the stateless rules for use in the stateless rule group. See Stateless Rule below for details.HeaderThe header block supports the following arguments:"
  type        = string
}
variable "actions" {
  description = "(Required) Set of actions to take on a packet that matches one of the stateless rule definition's match_attributes. For every rule you must specify 1 standard action, and you can add custom actions. Standard actions include: aws:pass, aws:drop, aws:forward_to_sfe."
  type        = string
}
variable "definition" {
  description = "(Required) Set of port ranges.Rules SourceThe rules_source block supports the following arguments:~> strongNOTE: Only one of rules_source_list, rules_string, stateful_rule, or stateless_rules_and_custom_actions must be specified."
  type        = string
}
variable "match_attributes" {
  description = "(Required) A configuration block containing criteria for AWS Network Firewall to use to inspect an individual packet in stateless rule inspection. See Match Attributes below for details.Match AttributesThe match_attributes block supports the following arguments:"
  type        = string
}
variable "stateful_rule" {
  description = "(Optional) Set of configuration blocks containing strongstateful inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A friendly description of the rule group."
  type        = string
  default     = ""
}
variable "port_sets" {
  description = "(Optional) Set of configuration blocks that define port range information. See Port Sets below for details.IP SetsThe ip_sets block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of key:value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "targets" {
  description = "(Required) Set of domains that you want to inspect for in your traffic flows.Stateful RuleThe stateful_rule block supports the following arguments:"
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
output "port_sets" {
  description = "(Optional) Set of configuration blocks that define port range information. See Port Sets below for details.IP SetsThe ip_sets block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.port_sets
}
output "tags" {
  description = "(Optional) A map of key:value pairs to associate with the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.tags
}
output "targets" {
  description = "(Required) Set of domains that you want to inspect for in your traffic flows.Stateful RuleThe stateful_rule block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.targets
}
output "description" {
  description = "(Optional) A friendly description of the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.description
}
output "publish_metric_action" {
  description = "(Required) A configuration block describing the stateless inspection criteria that publishes the specified metrics to Amazon CloudWatch for the matching packet. You can pair this custom action with any of the standard stateless rule actions. See Publish Metric Action below for details.Publish Metric ActionThe publish_metric_action block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.publish_metric_action
}
output "rules_source_list" {
  description = "(Optional) A configuration block containing strongstateful inspection criteria for a domain list rule group. See Rules Source List below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rules_source_list
}
output "generated_rules_type" {
  description = "(Required) String value to specify whether domains in the target list are allowed or denied access. Valid values: ALLOWLIST, DENYLIST."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.generated_rules_type
}
output "ip_sets" {
  description = "(Optional) Set of configuration blocks that define IP address information. See IP Sets below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.ip_sets
}
output "rule_option" {
  description = "(Required) Set of configuration blocks containing additional settings for a stateful rule. See Rule Option below for details.Stateless Rules and Custom ActionsThe stateless_rules_and_custom_actions block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rule_option
}
output "direction" {
  description = "(Required) The direction of traffic flow to inspect. Valid values: ANY or FORWARD."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.direction
}
output "source" {
  description = "(Optional) Set of configuration blocks describing the source IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any source address. See Source below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.source
}
output "stateful_rule_options" {
  description = "(Optional) A configuration block that defines stateful rule options for the rule group. See Stateful Rule Options below for details.Rule VariablesThe rule_variables block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.stateful_rule_options
}
output "action_name" {
  description = "(Required, Forces new resource) A friendly name of the custom action.Stateless RuleThe stateless_rule block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.action_name
}
output "destination" {
  description = "(Optional) Set of configuration blocks describing the destination IP address and address ranges to inspect for, in CIDR notation. If not specified, this matches with any destination address. See Destination below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.destination
}
output "protocols" {
  description = "(Optional) Set of protocols to inspect for, specified using the protocol's assigned internet protocol number (IANA). If not specified, this matches with any protocol."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.protocols
}
output "source_port" {
  description = "(Optional) Set of configuration blocks describing the source ports to inspect for. If not specified, this matches with any source port. See Source Port below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.source_port
}
output "address_definition" {
  description = "(Required)  An IP address or a block of IP addresses in CIDR notation. AWS Network Firewall supports all address ranges for IPv4.Source PortThe source_port block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.address_definition
}
output "protocol" {
  description = "(Required) The protocol to inspect. Valid values: IP, TCP, UDP, ICMP, HTTP, FTP, TLS, SMB, DNS, DCERPC, SSH, SMTP, IMAP, MSN, KRB5, IKEV2, TFTP, NTP, DHCP."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.protocol
}
output "rule_definition" {
  description = "(Required) A configuration block defining the stateless 5-tuple packet inspection criteria and the action to take on a packet that matches the criteria. See Rule Definition below for details.Rule DefinitionThe rule_definition block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rule_definition
}
output "rules_string" {
  description = "(Optional) The fully qualified name of a file in an S3 bucket that contains Suricata compatible intrusion preventions system (IPS) rules or the Suricata rules as a string. These rules contain strongstateful inspection criteria and the action to take for traffic that matches the criteria."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rules_string
}
output "stateless_rules_and_custom_actions" {
  description = "(Optional) A configuration block containing strongstateless inspection criteria for a stateless rule group. See Stateless Rules and Custom Actions below for details.Stateful Rule OptionsThe stateful_rule_options block supports the following argument:~> strongNOTE: If the STRICT_ORDER rule order is specified, this rule group can only be referenced in firewall policies that also utilize STRICT_ORDER for the stateful engine. STRICT_ORDER can only be specified when using a rules_source of rules_string or stateful_rule."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.stateless_rules_and_custom_actions
}
output "port_set" {
  description = "(Required) A configuration block that defines a set of port ranges. See Port Set below for details.Port SetThe port_set configuration block suppports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.port_set
}
output "dimension" {
  description = "(Required) Set of configuration blocks containing the dimension settings to use for Amazon CloudWatch custom metrics. See Dimension below for details.DimensionThe dimension block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.dimension
}
output "masks" {
  description = "(Optional) Set of flags to consider in the inspection. To inspect all flags, leave this empty.\nValid values: FIN, SYN, RST, PSH, ACK, URG, ECE, CWR.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.masks
}
output "rule_variables" {
  description = "(Optional) A configuration block that defines additional settings available to use in the rules defined in the rule group. Can only be specified for strongstateful rule groups. See Rule Variables below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rule_variables
}
output "rules_source" {
  description = "(Required) A configuration block that defines the stateful or stateless rules for the rule group. See Rules Source below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rules_source
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.tags_all
}
output "target_types" {
  description = "(Required) Set of types of domain specifications that are provided in the targets argument. Valid values: HTTP_HOST, TLS_SNI."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.target_types
}
output "tcp_flag" {
  description = "(Optional) Set of configuration blocks containing the TCP flags and masks to inspect for. If not specified, this matches with any settings.Action DefinitionThe action_definition block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.tcp_flag
}
output "destination_port" {
  description = "(Optional) Set of configuration blocks describing the destination ports to inspect for. If not specified, this matches with any destination port. See Destination Port below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.destination_port
}
output "keyword" {
  description = "(Required) Keyword defined by open source detection systems like Snort or Suricata for stateful rule inspection.\nSee Snort General Rule Options or Suricata Rule Options for more details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.keyword
}
output "rule_group" {
  description = "(Optional) A configuration block that defines the rule group rules. Required unless rules is specified. See Rule Group below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rule_group
}
output "action" {
  description = "(Required) Action to take with packets in a traffic flow when the flow matches the stateful rule criteria. For all actions, AWS Network Firewall performs the specified action and discontinues stateful inspection of the traffic flow. Valid values: ALERT, DROP or PASS."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.action
}
output "custom_action" {
  description = "(Optional) Set of configuration blocks containing custom action definitions that are available for use by the set of stateless rule. See Custom Action below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.custom_action
}
output "name" {
  description = "(Required, Forces new resource) A friendly name of the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.name
}
output "priority" {
  description = "(Required) A setting that indicates the order in which to run this rule relative to all of the rules that are defined for a stateless rule group. AWS Network Firewall evaluates the rules in a rule group starting with the lowest priority setting."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.priority
}
output "to_port" {
  description = "(Optional) The upper limit of the port range. This must be greater than or equal to the from_port.TCP FlagThe tcp_flag block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.to_port
}
output "capacity" {
  description = "(Required, Forces new resource) The maximum number of operating resources that this rule group can use. For a stateless rule group, the capacity required is the sum of the capacity requirements of the individual rules. For a stateful rule group, the minimum capacity required is the number of individual rules."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.capacity
}
output "rule_order" {
  description = "(Required) Indicates how to manage the order of the rule evaluation for the rule group. Default value: DEFAULT_ACTION_ORDER. Valid values: DEFAULT_ACTION_ORDER, STRICT_ORDER.Rules Source ListThe rules_source_list block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rule_order
}
output "key" {
  description = "(Required) An unique alphanumeric string to identify the port_set."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.key
}
output "header" {
  description = "(Required) A configuration block containing the stateful 5-tuple inspection criteria for the rule, used to inspect traffic flows. See Header below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.header
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.id
}
output "settings" {
  description = "(Optional) Set of strings for additional settings to use in stateful rule inspection.Custom ActionThe custom_action block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.settings
}
output "type" {
  description = "(Required) Whether the rule group is stateless (containing stateless rules) or stateful (containing stateful rules). Valid values include: STATEFUL or STATELESS.Rule GroupThe rule_group block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.type
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.arn
}
output "value" {
  description = "(Required) The value to use in the custom metric dimension.DestinationThe destination block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.value
}
output "rules" {
  description = "(Optional) The stateful rule group rules specifications in Suricata file format, with one rule per line. Use this to import your existing Suricata compatible rule groups. Required unless rule_group is specified."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.rules
}
output "flags" {
  description = "(Required) Set of flags to look for in a packet. This setting can only specify values that are also specified in masksFIN, SYN, RST, PSH, ACK, URG, ECE, CWR."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.flags
}
output "from_port" {
  description = "(Required) The lower limit of the port range. This must be less than or equal to the to_port."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.from_port
}
output "ip_set" {
  description = "(Required) A configuration block that defines a set of IP addresses. See IP Set below for details.IP SetThe ip_set configuration block supports the following argument:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.ip_set
}
output "stateless_rule" {
  description = "(Required) Set of configuration blocks containing the stateless rules for use in the stateless rule group. See Stateless Rule below for details.HeaderThe header block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.stateless_rule
}
output "action_definition" {
  description = "(Required) A configuration block describing the custom action associated with the action_name. See Action Definition below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.action_definition
}
output "definition" {
  description = "(Required) Set of port ranges.Rules SourceThe rules_source block supports the following arguments:~> strongNOTE: Only one of rules_source_list, rules_string, stateful_rule, or stateless_rules_and_custom_actions must be specified."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.definition
}
output "match_attributes" {
  description = "(Required) A configuration block containing criteria for AWS Network Firewall to use to inspect an individual packet in stateless rule inspection. See Match Attributes below for details.Match AttributesThe match_attributes block supports the following arguments:"
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.match_attributes
}
output "stateful_rule" {
  description = "(Optional) Set of configuration blocks containing strongstateful inspection criteria for 5-tuple rules to be used together in a rule group. See Stateful Rule below for details."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.stateful_rule
}
output "actions" {
  description = "(Required) Set of actions to take on a packet that matches one of the stateless rule definition's match_attributes. For every rule you must specify 1 standard action, and you can add custom actions. Standard actions include: aws:pass, aws:drop, aws:forward_to_sfe."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.actions
}
output "id" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.tags_all
}
output "update_token" {
  description = "A string token used when updating the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.update_token
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the rule group."
  value       = aws_networkfirewall_rule_group.aws_networkfirewall_rule_group.arn
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
      "kind/name"                   = "aws_networkfirewall_rule_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
