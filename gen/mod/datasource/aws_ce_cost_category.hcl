datasource "aws_ce_cost_category" "aws_ce_cost_category" {
  dimension_key     = var.dimension_key
  dimension_name    = var.dimension_name
  cost_category_arn = var.cost_category_arn
  source            = var.source
  value             = var.value
  and               = var.and
  match_options     = var.match_options
  method            = var.method
  parameter         = var.parameter
  dimension         = var.dimension
  inherited_value   = var.inherited_value
  key               = var.key
  or                = var.or
  type              = var.type
  arn               = var.arn
  effective_end     = var.effective_end
  split_charge_rule = var.split_charge_rule
  cost_category     = var.cost_category
  id                = var.id
  rule              = var.rule
  tags              = var.tags
  values            = var.values
  effective_start   = var.effective_start
  not               = var.not
  rule_version      = var.rule_version
  tag               = var.tag
  targets           = var.targets
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cost_category_arn" {
  description = "(Required) Unique name for the Cost Category.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source" {
  description = "Cost Category value that you want to split."
  type        = string
}
variable "value" {
  description = "Default value for the cost category.inherited_value"
  type        = string
}
variable "and" {
  description = "Return results that match both Dimension objects."
  type        = string
}
variable "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  type        = string
}
variable "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  type        = string
}
variable "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  type        = string
}
variable "type" {
  description = "Parameter type."
  type        = string
}
variable "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  type        = string
}
variable "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  type        = string
}
variable "key" {
  description = "Key for the tag."
  type        = string
}
variable "or" {
  description = "Return results that match both Dimension object."
  type        = string
}
variable "arn" {
  description = "ARN of the cost category."
  type        = string
}
variable "effective_end" {
  description = "Effective end data of your Cost Category."
  type        = string
}
variable "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  type        = string
}
variable "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  type        = string
}
variable "id" {
  description = "Unique ID of the cost category."
  type        = string
}
variable "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  type        = string
}
variable "tags" {
  description = "Resource tags.rule"
  type        = string
}
variable "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  type        = string
}
variable "effective_start" {
  description = "Effective state data of your Cost Category."
  type        = string
}
variable "not" {
  description = "Return results that match both Dimension object."
  type        = string
}
variable "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  type        = string
}
variable "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  type        = string
}
variable "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  type        = string
}
variable "dimension_key" {
  description = "Key to extract cost category values."
  type        = string
}
variable "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  type        = string
}
output "dimension_key" {
  description = "Key to extract cost category values."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cost_category_arn" {
  description = "(Required) Unique name for the Cost Category.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "Cost Category value that you want to split."
  value       = aws_ce_cost_category.aws_ce_cost_category.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Default value for the cost category.inherited_value"
  value       = aws_ce_cost_category.aws_ce_cost_category.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "and" {
  description = "Return results that match both Dimension objects."
  value       = aws_ce_cost_category.aws_ce_cost_category.and
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_cost_category.aws_ce_cost_category.match_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  value       = aws_ce_cost_category.aws_ce_cost_category.method
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.inherited_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "Key for the tag."
  value       = aws_ce_cost_category.aws_ce_cost_category.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "or" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.or
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Parameter type."
  value       = aws_ce_cost_category.aws_ce_cost_category.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.split_charge_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Resource tags.rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.not
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_cost_category.aws_ce_cost_category.tag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  value       = aws_ce_cost_category.aws_ce_cost_category.targets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match_options" {
  description = "Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_cost_category.aws_ce_cost_category.match_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "not" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.not
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = "Configuration block for the parameters for a split charge method. This is only required for the FIXED method. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag" {
  description = "Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_cost_category.aws_ce_cost_category.tag
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "targets" {
  description = "Cost Category values that you want to split costs across. These values can't be used as a source in other split charge rules.parameter"
  value       = aws_ce_cost_category.aws_ce_cost_category.targets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Default value for the cost category.inherited_value"
  value       = aws_ce_cost_category.aws_ce_cost_category.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_end" {
  description = "Effective end data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_end
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique ID of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "method" {
  description = "Method that's used to define how to split your source costs across your targets. Valid values are FIXED, PROPORTIONAL, EVEN"
  value       = aws_ce_cost_category.aws_ce_cost_category.method
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_version" {
  description = "Rule schema version in this particular Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "split_charge_rule" {
  description = "Configuration block for the split charge rules used to allocate your charges between your Cost Category values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.split_charge_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Parameter type."
  value       = aws_ce_cost_category.aws_ce_cost_category.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension_name" {
  description = "Name of the dimension that's used to group costs. If you specify LINKED_ACCOUNT_NAME, the cost category value is based on account name. If you specify TAG, the cost category value will be based on the value of the specified tag key. Valid values are LINKED_ACCOUNT_NAME, TAGrule"
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cost_category" {
  description = "Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.cost_category
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension" {
  description = "Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dimension_key" {
  description = "Key to extract cost category values."
  value       = aws_ce_cost_category.aws_ce_cost_category.dimension_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "effective_start" {
  description = "Effective state data of your Cost Category."
  value       = aws_ce_cost_category.aws_ce_cost_category.effective_start
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "Key for the tag."
  value       = aws_ce_cost_category.aws_ce_cost_category.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = "Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "Cost Category value that you want to split."
  value       = aws_ce_cost_category.aws_ce_cost_category.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "and" {
  description = "Return results that match both Dimension objects."
  value       = aws_ce_cost_category.aws_ce_cost_category.and
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "values" {
  description = "Specific value of the Cost Category.split_charge_rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "inherited_value" {
  description = "Configuration block for the value the line item is categorized as if the line item contains the matched dimension. See below."
  value       = aws_ce_cost_category.aws_ce_cost_category.inherited_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "or" {
  description = "Return results that match both Dimension object."
  value       = aws_ce_cost_category.aws_ce_cost_category.or
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Resource tags.rule"
  value       = aws_ce_cost_category.aws_ce_cost_category.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the cost category."
  value       = aws_ce_cost_category.aws_ce_cost_category.arn
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
}
