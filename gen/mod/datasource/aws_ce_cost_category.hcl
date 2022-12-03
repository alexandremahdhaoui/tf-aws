datasource "aws_ce_cost_category" "aws_ce_cost_category" {
  dimension         = var.dimension
  rule              = var.rule
  tag               = var.tag
  tags              = var.tags
  cost_category_arn = var.cost_category_arn
  match_options     = var.match_options
  or                = var.or
  type              = var.type
  value             = var.value
  values            = var.values
  rule_version      = var.rule_version
  split_charge_rule = var.split_charge_rule
  inherited_value   = var.inherited_value
  and               = var.and
  cost_category     = var.cost_category
  effective_start   = var.effective_start
  not               = var.not
  source            = var.source
  targets           = var.targets
  dimension_name    = var.dimension_name
  id                = var.id
  parameter         = var.parameter
  key               = var.key
  method            = var.method
  arn               = var.arn
  dimension_key     = var.dimension_key
  effective_end     = var.effective_end
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "and" {
  description = "Return results that match both Dimension objects."
  type        = string
}
variable "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  type        = string
}
variable "effective_start" {
  description = "Effective state data of your Cost Category."
  type        = string
}
variable "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  type        = string
}
variable "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  type        = string
}
variable "id" {
  description = "Unique ID of the cost category."
  type        = string
}
variable "not" {
  description = "Return results that match both Dimension object."
  type        = string
}
variable "source" {
  description = "Cost Category value that you want to split."
  type        = string
}
variable "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  type        = string
}
variable "arn" {
  description = "ARN of the cost category."
  type        = string
}
variable "dimension_key" {
  description = "Key to extract cost category values."
  type        = string
}
variable "effective_end" {
  description = "Effective end data of your Cost Category."
  type        = string
}
variable "key" {
  description = "Key for the tag."
  type        = string
}
variable "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  type        = string
}
variable "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  type        = string
}
variable "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  type        = string
}
variable "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  type        = string
}
variable "tags" {
  description = "Resource tags.rule"
  type        = string
}
variable "cost_category_arn" {
  description = "(Required) Unique name for the Cost Category.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  type        = string
}
variable "or" {
  description = "Return results that match both Dimension object."
  type        = string
}
variable "type" {
  description = "Parameter type."
  type        = string
}
variable "value" {
  description = "Default value for the cost category.inherited_value"
  type        = string
}
variable "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  type        = string
}
variable "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  type        = string
}
variable "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  type        = string
}
variable "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  type        = string
}
output "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule_version
}
output "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.split_charge_rule
}
output "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.inherited_value
}
output "and" {
  description = "Return results that match both Dimension objects."
  value       = aws_ce_cost_category.aws_ce_cost_category.and
}
output "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  value       = aws_ce_cost_category.aws_ce_cost_category.targets
}
output "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_name
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "not" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.not
}
output "source" {
  description = "Cost Category value that you want to split."
  value       = aws_ce_cost_category.aws_ce_cost_category.source
}
output "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.parameter
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
}
output "dimension_key" {
  description = "Key to extract cost category values."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_key
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "key" {
  description = "Key for the tag."
  value       = aws_ce_cost_category.aws_ce_cost_category.key
}
output "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  value       = aws_ce_cost_category.aws_ce_cost_category.method
}
output "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension
}
output "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule
}
output "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_cost_category.aws_ce_cost_category.tag
}
output "tags" {
  description = "Resource tags.rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.tags
}
output "cost_category_arn" {
  description = "(Required) Unique name for the Cost Category.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category_arn
}
output "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_cost_category.aws_ce_cost_category.match_options
}
output "or" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.or
}
output "type" {
  description = "Parameter type."
  value       = aws_ce_cost_category.aws_ce_cost_category.type
}
output "value" {
  description = "Default value for the cost category.inherited_value"
  value       = aws_ce_cost_category.aws_ce_cost_category.value
}
output "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.values
}
output "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category
}
output "key" {
  description = "Key for the tag."
  value       = aws_ce_cost_category.aws_ce_cost_category.key
}
output "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.parameter
}
output "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.split_charge_rule
}
output "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_cost_category.aws_ce_cost_category.tag
}
output "type" {
  description = "Parameter type."
  value       = aws_ce_cost_category.aws_ce_cost_category.type
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
}
output "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule
}
output "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule_version
}
output "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  value       = aws_ce_cost_category.aws_ce_cost_category.targets
}
output "and" {
  description = "Return results that match both Dimension objects."
  value       = aws_ce_cost_category.aws_ce_cost_category.and
}
output "dimension_key" {
  description = "Key to extract cost category values."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_key
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.inherited_value
}
output "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  value       = aws_ce_cost_category.aws_ce_cost_category.method
}
output "not" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.not
}
output "or" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.or
}
output "source" {
  description = "Cost Category value that you want to split."
  value       = aws_ce_cost_category.aws_ce_cost_category.source
}
output "tags" {
  description = "Resource tags.rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.tags
}
output "value" {
  description = "Default value for the cost category.inherited_value"
  value       = aws_ce_cost_category.aws_ce_cost_category.value
}
output "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.values
}
output "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension
}
output "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_name
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_cost_category.aws_ce_cost_category.match_options
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
}
