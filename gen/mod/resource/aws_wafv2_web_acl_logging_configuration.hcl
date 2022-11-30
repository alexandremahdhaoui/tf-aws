resource "aws_wafv2_web_acl_logging_configuration" "aws_wafv2_web_acl_logging_configuration" {
  filter                  = var.filter
  label_name              = var.label_name
  logging_filter          = var.logging_filter
  query_string            = var.query_string
  single_header           = var.single_header
  label_name_condition    = var.label_name_condition
  log_destination_configs = var.log_destination_configs
  name                    = var.name
  method                  = var.method
  redacted_fields         = var.redacted_fields
  requirement             = var.requirement
  body                    = var.body
  condition               = var.condition
  default_behavior        = var.default_behavior
  behavior                = var.behavior
  resource_arn            = var.resource_arn
  single_query_argument   = var.single_query_argument
  uri_path                = var.uri_path
  action                  = var.action
  action_condition        = var.action_condition
  all_query_arguments     = var.all_query_arguments
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "filter" {
  description = "(Required) Filter(s) that you want to apply to the logs. See Filter below for more details.FilterThe filter block supports the following arguments:"
  type        = string
}
variable "label_name" {
  description = "(Required) The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.Redacted FieldsThe redacted_fields block supports the following arguments:~> strongNOTE: Only one of method, query_string, single_header or uri_path can be specified."
  type        = string
}
variable "logging_filter" {
  description = "(Optional) A configuration block that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation. See Logging Filter below for more details."
  type        = string
}
variable "label_name_condition" {
  description = "(Optional) A single label name condition. See Label Name Condition below for more details.Action ConditionThe action_condition block supports the following argument:"
  type        = string
}
variable "log_destination_configs" {
  description = "(Required) The Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) that you want to associate with the web ACL."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the query header to redact. This setting must be provided as lower case characters.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "query_string" {
  description = "(Optional) Redact the query string. Must be specified as an empty configuration block {}. This is the part of a URL that appears after a ? character, if any."
  type        = string
}
variable "single_header" {
  description = "(Optional) Redact a single header. See Single Header below for details."
  type        = string
}
variable "body" {
  description = "(Optional, strongDEPRECATED) Redact the request body, which immediately follows the request headers."
  type        = string
}
variable "condition" {
  description = "(Required) Match condition(s) for the filter. See Condition below for more details."
  type        = string
}
variable "default_behavior" {
  description = "(Required) Default handling for logs that don't match any of the specified filtering conditions. Valid values: KEEP or DROP."
  type        = string
}
variable "method" {
  description = "(Optional) Redact the HTTP method. Must be specified as an empty configuration block {}. The method indicates the type of operation that the request is asking the origin to perform."
  type        = string
}
variable "redacted_fields" {
  description = "(Optional) The parts of the request that you want to keep out of the logs. Up to 100 redacted_fields blocks are supported. See Redacted Fields below for more details."
  type        = string
}
variable "requirement" {
  description = "(Required) Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition. Valid values: MEETS_ALL or MEETS_ANY.ConditionThe condition block supports the following arguments:~> strongNote: Either action_condition or label_name_condition must be specified."
  type        = string
}
variable "action" {
  description = "(Required) The action setting that a log record must contain in order to meet the condition. Valid values: ALLOW, BLOCK, COUNT.Label Name ConditionThe label_name_condition block supports the following argument:"
  type        = string
}
variable "action_condition" {
  description = "(Optional) A single action condition. See Action Condition below for more details."
  type        = string
}
variable "all_query_arguments" {
  description = "(Optional, strongDEPRECATED) Redact all query arguments."
  type        = string
}
variable "behavior" {
  description = "(Required) How to handle logs that satisfy the filter's conditions and requirement. Valid values: KEEP or DROP."
  type        = string
}
variable "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the web ACL that you want to associate with log_destination_configs.Logging FilterThe logging_filter block supports the following arguments:"
  type        = string
}
variable "single_query_argument" {
  description = "(Optional, strongDEPRECATED) Redact a single query argument. See Single Query Argument below for details."
  type        = string
}
variable "uri_path" {
  description = "(Optional) Redact the request URI path. Must be specified as an empty configuration block {}. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Single HeaderRedact a single header. Provide the name of the header to redact, for example, User-Agent or Referer (provided as lowercase strings).The single_header block supports the following arguments:"
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
output "filter" {
  description = "(Required) Filter(s) that you want to apply to the logs. See Filter below for more details.FilterThe filter block supports the following arguments:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label_name" {
  description = "(Required) The label name that a log record must contain in order to meet the condition. This must be a fully qualified label name. Fully qualified labels have a prefix, optional namespaces, and label name. The prefix identifies the rule group or web ACL context of the rule that added the label.Redacted FieldsThe redacted_fields block supports the following arguments:~> strongNOTE: Only one of method, query_string, single_header or uri_path can be specified."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.label_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging_filter" {
  description = "(Optional) A configuration block that specifies which web requests are kept in the logs and which are dropped. You can filter on the rule action and on the web request labels that were applied by matching rules during web ACL evaluation. See Logging Filter below for more details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.logging_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "label_name_condition" {
  description = "(Optional) A single label name condition. See Label Name Condition below for more details.Action ConditionThe action_condition block supports the following argument:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.label_name_condition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_destination_configs" {
  description = "(Required) The Amazon Kinesis Data Firehose, Cloudwatch Log log group, or S3 bucket Amazon Resource Names (ARNs) that you want to associate with the web ACL."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.log_destination_configs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The name of the query header to redact. This setting must be provided as lower case characters.In addition to all arguments above, the following attributes are exported:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "query_string" {
  description = "(Optional) Redact the query string. Must be specified as an empty configuration block {}. This is the part of a URL that appears after a ? character, if any."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.query_string
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_header" {
  description = "(Optional) Redact a single header. See Single Header below for details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.single_header
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "body" {
  description = "(Optional, strongDEPRECATED) Redact the request body, which immediately follows the request headers."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.body
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "condition" {
  description = "(Required) Match condition(s) for the filter. See Condition below for more details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.condition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_behavior" {
  description = "(Required) Default handling for logs that don't match any of the specified filtering conditions. Valid values: KEEP or DROP."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.default_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "method" {
  description = "(Optional) Redact the HTTP method. Must be specified as an empty configuration block {}. The method indicates the type of operation that the request is asking the origin to perform."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.method
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redacted_fields" {
  description = "(Optional) The parts of the request that you want to keep out of the logs. Up to 100 redacted_fields blocks are supported. See Redacted Fields below for more details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.redacted_fields
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requirement" {
  description = "(Required) Logic to apply to the filtering conditions. You can specify that, in order to satisfy the filter, a log must match all conditions or must match at least one condition. Valid values: MEETS_ALL or MEETS_ANY.ConditionThe condition block supports the following arguments:~> strongNote: Either action_condition or label_name_condition must be specified."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.requirement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action" {
  description = "(Required) The action setting that a log record must contain in order to meet the condition. Valid values: ALLOW, BLOCK, COUNT.Label Name ConditionThe label_name_condition block supports the following argument:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "action_condition" {
  description = "(Optional) A single action condition. See Action Condition below for more details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.action_condition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "all_query_arguments" {
  description = "(Optional, strongDEPRECATED) Redact all query arguments."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.all_query_arguments
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "behavior" {
  description = "(Required) How to handle logs that satisfy the filter's conditions and requirement. Valid values: KEEP or DROP."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the web ACL that you want to associate with log_destination_configs.Logging FilterThe logging_filter block supports the following arguments:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "single_query_argument" {
  description = "(Optional, strongDEPRECATED) Redact a single query argument. See Single Query Argument below for details."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.single_query_argument
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri_path" {
  description = "(Optional) Redact the request URI path. Must be specified as an empty configuration block {}. This is the part of a web request that identifies a resource, for example, /images/daily-ad.jpg.Single HeaderRedact a single header. Provide the name of the header to redact, for example, User-Agent or Referer (provided as lowercase strings).The single_header block supports the following arguments:"
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.uri_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the WAFv2 Web ACL."
  value       = aws_wafv2_web_acl_logging_configuration.aws_wafv2_web_acl_logging_configuration.id
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
      "kind/name"                   = "aws_wafv2_web_acl_logging_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
