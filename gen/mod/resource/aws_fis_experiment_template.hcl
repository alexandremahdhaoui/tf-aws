resource "aws_fis_experiment_template" "aws_fis_experiment_template" {
  key            = var.key
  parameter      = var.parameter
  selection_mode = var.selection_mode
  value          = var.value
  stop_condition = var.stop_condition
  tags           = var.tags
  values         = var.values
  action         = var.action
  filter         = var.filter
  id             = var.id
  name           = var.name
  resource_arns  = var.resource_arns
  role_arn       = var.role_arn
  start_after    = var.start_after
  action_id      = var.action_id
  description    = var.description
  path           = var.path
  resource_tag   = var.resource_tag
  resource_type  = var.resource_type
  source         = var.source
  target         = var.target
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "stop_condition" {
  description = "(Required) When an ongoing experiment should be stopped. See below."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) Set of attribute values for the filter.~> strongNOTE: Values specified in a filter are joined with an OR clause, while values across multiple filter blocks are joined with an AND clause. For more information, see Targets for AWS FIS.resource_tag"
  type        = string
}
variable "action" {
  description = "(Required) Action to be performed during an experiment. See below."
  type        = string
}
variable "filter" {
  description = "(Optional) Filter(s) for the target. Filters can be used to select resources based on specific attributes returned by the respective describe action of the resource type. For more information, see Targets for AWS FIS. See below."
  type        = string
  default     = ""
}
variable "id" {
  description = "Experiment Template ID."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Friendly name given to the target."
  type        = string
}
variable "resource_arns" {
  description = "(Optional) Set of ARNs of the resources to target with an action. Conflicts with resource_tag."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf."
  type        = string
}
variable "start_after" {
  description = "(Optional) Set of action names that must complete before this action can be executed."
  type        = string
  default     = ""
}
variable "action_id" {
  description = "(Required) ID of the action. To find out what actions are supported see AWS FIS actions reference."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the action."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Required) Attribute path for the filter."
  type        = string
}
variable "resource_tag" {
  description = "(Optional) Tag(s) the resources need to have to be considered a valid target for an action. Conflicts with resource_arns. See below.~> strongNOTE: The target configuration block requires either resource_arns or resource_tag.filter"
  type        = string
  default     = ""
}
variable "resource_type" {
  description = "(Required) AWS resource type. The resource type must be supported for the specified action. To find out what resource types are supported, see Targets for AWS FIS."
  type        = string
}
variable "source" {
  description = "(Required) Source of the condition. One of none, aws:cloudwatch:alarm."
  type        = string
}
variable "target" {
  description = "(Optional) Action's target, if applicable. See below.parameter"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Tag key."
  type        = string
}
variable "parameter" {
  description = "(Optional) Parameter(s) for the action, if applicable. See below."
  type        = string
  default     = ""
}
variable "selection_mode" {
  description = "(Required) Scopes the identified resources. Valid values are ALL (all identified resources), COUNT(n) (randomly select n of the identified resources), PERCENT(n) (randomly select n percent of the identified resources)."
  type        = string
}
variable "value" {
  description = "(Required) Tag value.In addition to all arguments above, the following attributes are exported:"
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
output "name" {
  description = "(Required) Friendly name given to the target."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.name
}
output "resource_arns" {
  description = "(Optional) Set of ARNs of the resources to target with an action. Conflicts with resource_tag."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.resource_arns
}
output "role_arn" {
  description = "(Required) ARN of an IAM role that grants the AWS FIS service permission to perform service actions on your behalf."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.role_arn
}
output "start_after" {
  description = "(Optional) Set of action names that must complete before this action can be executed."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.start_after
}
output "values" {
  description = "(Required) Set of attribute values for the filter.~> strongNOTE: Values specified in a filter are joined with an OR clause, while values across multiple filter blocks are joined with an AND clause. For more information, see Targets for AWS FIS.resource_tag"
  value       = aws_fis_experiment_template.aws_fis_experiment_template.values
}
output "action" {
  description = "(Required) Action to be performed during an experiment. See below."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.action
}
output "filter" {
  description = "(Optional) Filter(s) for the target. Filters can be used to select resources based on specific attributes returned by the respective describe action of the resource type. For more information, see Targets for AWS FIS. See below."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.filter
}
output "id" {
  description = "Experiment Template ID."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.id
}
output "resource_tag" {
  description = "(Optional) Tag(s) the resources need to have to be considered a valid target for an action. Conflicts with resource_arns. See below.~> strongNOTE: The target configuration block requires either resource_arns or resource_tag.filter"
  value       = aws_fis_experiment_template.aws_fis_experiment_template.resource_tag
}
output "resource_type" {
  description = "(Required) AWS resource type. The resource type must be supported for the specified action. To find out what resource types are supported, see Targets for AWS FIS."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.resource_type
}
output "source" {
  description = "(Required) Source of the condition. One of none, aws:cloudwatch:alarm."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.source
}
output "target" {
  description = "(Optional) Action's target, if applicable. See below.parameter"
  value       = aws_fis_experiment_template.aws_fis_experiment_template.target
}
output "action_id" {
  description = "(Required) ID of the action. To find out what actions are supported see AWS FIS actions reference."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.action_id
}
output "description" {
  description = "(Optional) Description of the action."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.description
}
output "path" {
  description = "(Required) Attribute path for the filter."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.path
}
output "value" {
  description = "(Required) Tag value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fis_experiment_template.aws_fis_experiment_template.value
}
output "key" {
  description = "(Required) Tag key."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.key
}
output "parameter" {
  description = "(Optional) Parameter(s) for the action, if applicable. See below."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.parameter
}
output "selection_mode" {
  description = "(Required) Scopes the identified resources. Valid values are ALL (all identified resources), COUNT(n) (randomly select n of the identified resources), PERCENT(n) (randomly select n percent of the identified resources)."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.selection_mode
}
output "stop_condition" {
  description = "(Required) When an ongoing experiment should be stopped. See below."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.stop_condition
}
output "tags" {
  description = "(Optional) Key-value mapping of tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.tags
}
output "id" {
  description = "Experiment Template ID."
  value       = aws_fis_experiment_template.aws_fis_experiment_template.id
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
      "kind/name"                   = "aws_fis_experiment_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
