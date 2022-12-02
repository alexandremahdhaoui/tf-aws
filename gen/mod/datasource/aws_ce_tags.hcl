datasource "aws_ce_tags" "aws_ce_tags" {
  time_period   = var.time_period
  key           = var.key
  match_options = var.match_options
  not           = var.not
  search_string = var.search_string
  sort_order    = var.sort_order
  tag           = var.tag
  cost_category = var.cost_category
  end           = var.end
  id            = var.id
  sort_by       = var.sort_by
  start         = var.start
  and           = var.and
  tag_key       = var.tag_key
  dimension     = var.dimension
  filter        = var.filter
  or            = var.or
  values        = var.values
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "and" {
  description = "(Optional) Return results that match both Dimension objects."
  type        = string
  default     = ""
}
variable "tag_key" {
  description = "(Optional) Key of the tag that you want to return values for.time_period"
  type        = string
  default     = ""
}
variable "dimension" {
  description = "(Optional) Configuration block for the specific Dimension to use for Expression. See below."
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional) Configuration block for the Expression object used to categorize costs. See below."
  type        = string
  default     = ""
}
variable "or" {
  description = "(Optional) Return results that match both Dimension object."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Optional) Specific value of the Cost Category.sort_by"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) key that's used to sort the data. Valid values are: BlendedCost,  UnblendedCost, AmortizedCost, NetAmortizedCost, NetUnblendedCost, UsageQuantity, NormalizedUsageAmount."
  type        = string
}
variable "match_options" {
  description = "(Optional) Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  type        = string
  default     = ""
}
variable "not" {
  description = "(Optional) Return results that match both Dimension object."
  type        = string
  default     = ""
}
variable "search_string" {
  description = "(Optional) Value that you want to search for."
  type        = string
  default     = ""
}
variable "sort_order" {
  description = "(Optional) order that's used to sort the data. Valid values are: ASCENDING,  DESCENDING.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tag" {
  description = "(Optional) Configuration block for the specific Tag to use for Expression. See below.cost_category"
  type        = string
  default     = ""
}
variable "time_period" {
  description = "(Required) Configuration block for the start and end dates for retrieving the dimension values."
  type        = string
}
variable "cost_category" {
  description = "(Optional) Configuration block for the filter that's based on CostCategory values. See below."
  type        = string
  default     = ""
}
variable "end" {
  description = "(Required) Beginning of the time period.filter"
  type        = string
}
variable "id" {
  description = "Unique ID of the tag."
  type        = string
  default     = ""
}
variable "sort_by" {
  description = "(Optional) Configuration block for the value by which you want to sort the data. See below."
  type        = string
  default     = ""
}
variable "start" {
  description = "(Required) End of the time period."
  type        = string
}
output "cost_category" {
  description = "(Optional) Configuration block for the filter that's based on CostCategory values. See below."
  value       = aws_ce_tags.aws_ce_tags.cost_category
}
output "end" {
  description = "(Required) Beginning of the time period.filter"
  value       = aws_ce_tags.aws_ce_tags.end
}
output "id" {
  description = "Unique ID of the tag."
  value       = aws_ce_tags.aws_ce_tags.id
}
output "sort_by" {
  description = "(Optional) Configuration block for the value by which you want to sort the data. See below."
  value       = aws_ce_tags.aws_ce_tags.sort_by
}
output "start" {
  description = "(Required) End of the time period."
  value       = aws_ce_tags.aws_ce_tags.start
}
output "and" {
  description = "(Optional) Return results that match both Dimension objects."
  value       = aws_ce_tags.aws_ce_tags.and
}
output "tag_key" {
  description = "(Optional) Key of the tag that you want to return values for.time_period"
  value       = aws_ce_tags.aws_ce_tags.tag_key
}
output "dimension" {
  description = "(Optional) Configuration block for the specific Dimension to use for Expression. See below."
  value       = aws_ce_tags.aws_ce_tags.dimension
}
output "filter" {
  description = "(Optional) Configuration block for the Expression object used to categorize costs. See below."
  value       = aws_ce_tags.aws_ce_tags.filter
}
output "or" {
  description = "(Optional) Return results that match both Dimension object."
  value       = aws_ce_tags.aws_ce_tags.or
}
output "values" {
  description = "(Optional) Specific value of the Cost Category.sort_by"
  value       = aws_ce_tags.aws_ce_tags.values
}
output "key" {
  description = "(Required) key that's used to sort the data. Valid values are: BlendedCost,  UnblendedCost, AmortizedCost, NetAmortizedCost, NetUnblendedCost, UsageQuantity, NormalizedUsageAmount."
  value       = aws_ce_tags.aws_ce_tags.key
}
output "match_options" {
  description = "(Optional) Match options that you can use to filter your results. MatchOptions is only applicable for actions related to cost category. The default values for MatchOptions is EQUALS and CASE_SENSITIVE. Valid values are: EQUALS,  ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE."
  value       = aws_ce_tags.aws_ce_tags.match_options
}
output "not" {
  description = "(Optional) Return results that match both Dimension object."
  value       = aws_ce_tags.aws_ce_tags.not
}
output "search_string" {
  description = "(Optional) Value that you want to search for."
  value       = aws_ce_tags.aws_ce_tags.search_string
}
output "sort_order" {
  description = "(Optional) order that's used to sort the data. Valid values are: ASCENDING,  DESCENDING.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ce_tags.aws_ce_tags.sort_order
}
output "tag" {
  description = "(Optional) Configuration block for the specific Tag to use for Expression. See below.cost_category"
  value       = aws_ce_tags.aws_ce_tags.tag
}
output "time_period" {
  description = "(Required) Configuration block for the start and end dates for retrieving the dimension values."
  value       = aws_ce_tags.aws_ce_tags.time_period
}
output "id" {
  description = "Unique ID of the tag."
  value       = aws_ce_tags.aws_ce_tags.id
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
