resource "aws_ce_cost_category" "aws_ce_cost_category" {
  default_value     = var.default_value
  dimension_name    = var.dimension_name
  name              = var.name
  tag               = var.tag
  id                = var.id
  and               = var.and
  or                = var.or
  source            = var.source
  split_charge_rule = var.split_charge_rule
  values            = var.values
  effective_start   = var.effective_start
  rule_version      = var.rule_version
  tags_all          = var.tags_all
  type              = var.type
  cost_category     = var.cost_category
  dimension         = var.dimension
  dimension_key     = var.dimension_key
  effective_end     = var.effective_end
  parameter         = var.parameter
  rule              = var.rule
  targets           = var.targets
  value             = var.value
  key               = var.key
  match_options     = var.match_options
  arn               = var.arn
  inherited_value   = var.inherited_value
  method            = var.method
  not               = var.not
  tags              = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cost_category" {
  description = "(Optional) Configuration block for the filter that's based on CostCategory values. See below."
  type        = string
  default     = ""
}
variable "dimension" {
  description = "(Optional) Configuration block for the specific Dimension to use for Expression. See below."
  type        = string
  default     = ""
}
variable "dimension_key" {
  description = "(Optional) Key to extract cost category values."
  type        = string
  default     = ""
}
variable "effective_end" {
  description = "Effective end data of your Cost Category."
  type        = string
  default     = ""
}
variable "parameter" {
  description = "(Optional) Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  type        = string
  default     = ""
}
variable "rule" {
  description = "(Optional) Configuration block for the Expression object used to categorize costs. See below."
  type        = string
  default     = ""
}
variable "targets" {
  description = "(Required) Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  type        = string
}
variable "value" {
  description = "(Optional) Default value for the cost category.inherited_value"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Optional) Key for the tag."
  type        = string
  default     = ""
}
variable "match_options" {
  description = "(Optional) Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the cost category."
  type        = string
  default     = ""
}
variable "inherited_value" {
  description = "(Optional) Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  type        = string
  default     = ""
}
variable "method" {
  description = "(Required) Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  type        = string
}
variable "not" {
  description = "(Optional) Return results that match both Dimension object."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.rule"
  type        = string
  default     = ""
}
variable "default_value" {
  description = "(Optional) Default value for the cost category."
  type        = string
  default     = ""
}
variable "dimension_name" {
  description = "(Optional) Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Unique name for the Cost Category."
  type        = string
}
variable "tag" {
  description = "(Optional) Configuration block for the specific Tag to use for Expression. See below.cost_category"
  type        = string
  default     = ""
}
variable "id" {
  description = "Unique ID of the cost category."
  type        = string
  default     = ""
}
variable "and" {
  description = "(Optional) Return results that match both Dimension objects."
  type        = string
  default     = ""
}
variable "or" {
  description = "(Optional) Return results that match both Dimension object."
  type        = string
  default     = ""
}
variable "source" {
  description = "(Required) Cost Category value that you want to split."
  type        = string
}
variable "split_charge_rule" {
  description = "(Optional) Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Optional) Parameter values.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "effective_start" {
  description = "Effective state data of your Cost Category."
  type        = string
  default     = ""
}
variable "rule_version" {
  description = "(Required) Rule schema version in this particular Cost Category."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Parameter type."
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
output "values" {
  description = "(Optional) Parameter values.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ce_cost_category.aws_ce_cost_category.values
}
output "and" {
  description = "(Optional) Return results that match both Dimension objects."
  value       = aws_ce_cost_category.aws_ce_cost_category.and
}
output "or" {
  description = "(Optional) Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.or
}
output "source" {
  description = "(Required) Cost Category value that you want to split."
  value       = aws_ce_cost_category.aws_ce_cost_category.source
}
output "split_charge_rule" {
  description = "(Optional) Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.split_charge_rule
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "rule_version" {
  description = "(Required) Rule schema version in this particular Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule_version
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ce_cost_category.aws_ce_cost_category.tags_all
}
output "type" {
  description = "(Optional) Parameter type."
  value       = aws_ce_cost_category.aws_ce_cost_category.type
}
output "parameter" {
  description = "(Optional) Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.parameter
}
output "rule" {
  description = "(Optional) Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule
}
output "targets" {
  description = "(Required) Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  value       = aws_ce_cost_category.aws_ce_cost_category.targets
}
output "value" {
  description = "(Optional) Default value for the cost category.inherited_value"
  value       = aws_ce_cost_category.aws_ce_cost_category.value
}
output "cost_category" {
  description = "(Optional) Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category
}
output "dimension" {
  description = "(Optional) Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension
}
output "dimension_key" {
  description = "(Optional) Key to extract cost category values."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_key
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "key" {
  description = "(Optional) Key for the tag."
  value       = aws_ce_cost_category.aws_ce_cost_category.key
}
output "match_options" {
  description = "(Optional) Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_cost_category.aws_ce_cost_category.match_options
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.tags
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
}
output "inherited_value" {
  description = "(Optional) Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.inherited_value
}
output "method" {
  description = "(Required) Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  value       = aws_ce_cost_category.aws_ce_cost_category.method
}
output "not" {
  description = "(Optional) Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.not
}
output "default_value" {
  description = "(Optional) Default value for the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.default_value
}
output "dimension_name" {
  description = "(Optional) Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_name
}
output "name" {
  description = "(Required) Unique name for the Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.name
}
output "tag" {
  description = "(Optional) Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_cost_category.aws_ce_cost_category.tag
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ce_cost_category.aws_ce_cost_category.tags_all
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
      "kind/name"                   = "aws_ce_cost_category"
      "kind/version"                = "v0.1.0"
    }
  }
}
