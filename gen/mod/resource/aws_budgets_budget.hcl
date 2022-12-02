resource "aws_budgets_budget" "aws_budgets_budget" {
  cost_types                 = var.cost_types
  include_support            = var.include_support
  name_prefix                = var.name_prefix
  Service                    = var.Service
  cost_filters               = var.cost_filters
  include_discount           = var.include_discount
  include_other_subscription = var.include_other_subscription
  arn                        = var.arn
  include_recurring          = var.include_recurring
  limit_unit                 = var.limit_unit
  name                       = var.name
  subscriber_sns_topic_arns  = var.subscriber_sns_topic_arns
  time_unit                  = var.time_unit
  usage                      = var.usage
  amount                     = var.amount
  cost                       = var.cost
  planned_limit              = var.planned_limit
  subscriber_email_addresses = var.subscriber_email_addresses
  threshold_type             = var.threshold_type
  account_id                 = var.account_id
  budget_type                = var.budget_type
  limit_amount               = var.limit_amount
  notification_type          = var.notification_type
  threshold                  = var.threshold
  time_period_start          = var.time_period_start
  auto_adjust_data           = var.auto_adjust_data
  start_time                 = var.start_time
  UsageType:<service name>   = var.UsageType:<service name>
  Operation                  = var.Operation
  PurchaseType               = var.PurchaseType
  comparison_operator        = var.comparison_operator
  cost_filter                = var.cost_filter
  include_subscription       = var.include_subscription
  include_tax                = var.include_tax
  include_upfront            = var.include_upfront
  AZ                         = var.AZ
  use_blended                = var.use_blended
  time_period_end            = var.time_period_end
  TagKeyValue                = var.TagKeyValue
  id                         = var.id
  include_credit             = var.include_credit
  include_refund             = var.include_refund
  notification               = var.notification
  use_amortized              = var.use_amortized
  LinkedAccount              = var.LinkedAccount
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the budget.Auto Adjust DataThe parameters that determine the budget amount for an auto-adjusting budget.auto_adjust_type (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: FORECAST,HISTORICALhistorical_options (Optional) - Configuration block of Historical Options. Required for auto_adjust_type of HISTORICALlast_auto_adjust_time (Optional) - The last time that your budget was auto-adjusted.Historical Optionsbudget_adjustment_periodlookback_available_periods (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the budget_adjustment_period and your historical cost data.Cost TypesValid keys for cost_types parameter."
  type        = string
  default     = ""
}
variable "cost_filters" {
  description = "(Optional, strongDeprecated) Map of CostFilters key/value pairs to apply to the budget."
  type        = string
}
variable "include_discount" {
  description = "Whether a budget includes discounts. Defaults to true"
  type        = string
}
variable "include_other_subscription" {
  description = "A boolean value whether to include other subscription costs in the cost budget. Defaults to true"
  type        = string
}
variable "subscriber_sns_topic_arns" {
  description = "(Optional) SNS topics to notify. Either this or subscriber_email_addresses is required.Planned Budget LimitsValid keys for planned_limit parameter."
  type        = string
  default     = ""
}
variable "time_unit" {
  description = "(Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY."
  type        = string
}
variable "usage" {
  description = ""
  type        = string
}
variable "amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  type        = string
}
variable "include_recurring" {
  description = "A boolean value whether to include recurring costs in the cost budget. Defaults to true"
  type        = string
}
variable "limit_unit" {
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See Spend documentation."
  type        = string
}
variable "name" {
  description = "(Optional) The name of a budget. Unique within accounts."
  type        = string
  default     = ""
}
variable "threshold_type" {
  description = "(Required) What kind of threshold is defined. Can be PERCENTAGE OR ABSOLUTE_VALUE."
  type        = string
}
variable "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
  type        = string
  default     = ""
}
variable "cost" {
  description = ""
  type        = string
}
variable "planned_limit" {
  description = "(Optional) Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See PlannedBudgetLimits documentation.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "subscriber_email_addresses" {
  description = "(Optional) E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
  type        = string
  default     = ""
}
variable "threshold" {
  description = "(Required) Threshold when the notification should be sent."
  type        = string
}
variable "time_period_start" {
  description = "(Optional) The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: 2017-01-01_12:00."
  type        = string
  default     = ""
}
variable "auto_adjust_data" {
  description = "(Optional) Object containing [AutoAdjustData] which determines the budget amount for an auto-adjusting budget."
  type        = string
  default     = ""
}
variable "budget_type" {
  description = "(Required) Whether this budget tracks monetary cost or usage."
  type        = string
}
variable "limit_amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  type        = string
}
variable "notification_type" {
  description = "(Required) What kind of budget value to notify on. Can be ACTUAL or FORECASTED"
  type        = string
}
variable "UsageType:<service name>" {
  description = ""
  type        = string
}
variable "start_time" {
  description = "(Required) The start time of the budget limit. Format: 2017-01-01_12:00. See PlannedBudgetLimits documentation."
  type        = string
}
variable "cost_filter" {
  description = "(Optional) A list of CostFilter name/values pair to apply to budget."
  type        = string
  default     = ""
}
variable "include_subscription" {
  description = "A boolean value whether to include subscriptions in the cost budget. Defaults to true"
  type        = string
}
variable "include_tax" {
  description = "A boolean value whether to include tax in the cost budget. Defaults to true"
  type        = string
}
variable "include_upfront" {
  description = "A boolean value whether to include upfront costs in the cost budget. Defaults to true"
  type        = string
}
variable "AZ" {
  description = ""
  type        = string
}
variable "Operation" {
  description = ""
  type        = string
}
variable "PurchaseType" {
  description = ""
  type        = string
}
variable "comparison_operator" {
  description = "(Required) Comparison operator to use to evaluate the condition. Can be LESS_THAN, EQUAL_TO or GREATER_THAN."
  type        = string
}
variable "time_period_end" {
  description = "(Optional) The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01_12:00."
  type        = string
  default     = ""
}
variable "use_blended" {
  description = "A boolean value whether to use blended costs in the cost budget. Defaults to falseRefer to AWS CostTypes documentation for further detail.Cost FilterValid name for cost_filter parameter vary depending on the budget_type value."
  type        = string
}
variable "include_refund" {
  description = "A boolean value whether to include refunds in the cost budget. Defaults to true"
  type        = string
}
variable "notification" {
  description = "(Optional) Object containing Budget Notifications. Can be used multiple times to define more than one budget notification."
  type        = string
  default     = ""
}
variable "use_amortized" {
  description = "Whether a budget uses the amortized rate. Defaults to false"
  type        = string
}
variable "LinkedAccount" {
  description = ""
  type        = string
}
variable "TagKeyValue" {
  description = "Refer to AWS CostFilter documentation for further detail.Cost FiltersstrongNote: Attribute cost_filters is deprecated. Use cost_filter instead.Valid key for cost_filters is same as cost_filter. Please refer to Cost Filter.Budget NotificationValid keys for notification parameter."
  type        = string
}
variable "id" {
  description = "id of resource."
  type        = string
}
variable "include_credit" {
  description = "A boolean value whether to include credits in the cost budget. Defaults to true"
  type        = string
}
variable "Service" {
  description = ""
  type        = string
}
variable "cost_types" {
  description = "(Optional) Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions."
  type        = string
  default     = ""
}
variable "include_support" {
  description = "A boolean value whether to include support costs in the cost budget. Defaults to true"
  type        = string
}
variable "name_prefix" {
  description = "(Optional) The prefix of the name of a budget. Unique within accounts."
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
output "auto_adjust_data" {
  description = "(Optional) Object containing [AutoAdjustData] which determines the budget amount for an auto-adjusting budget."
  value       = aws_budgets_budget.aws_budgets_budget.auto_adjust_data
}
output "budget_type" {
  description = "(Required) Whether this budget tracks monetary cost or usage."
  value       = aws_budgets_budget.aws_budgets_budget.budget_type
}
output "limit_amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  value       = aws_budgets_budget.aws_budgets_budget.limit_amount
}
output "notification_type" {
  description = "(Required) What kind of budget value to notify on. Can be ACTUAL or FORECASTED"
  value       = aws_budgets_budget.aws_budgets_budget.notification_type
}
output "threshold" {
  description = "(Required) Threshold when the notification should be sent."
  value       = aws_budgets_budget.aws_budgets_budget.threshold
}
output "time_period_start" {
  description = "(Optional) The start of the time period covered by the budget. If you don't specify a start date, AWS defaults to the start of your chosen time period. The start date must come before the end date. Format: 2017-01-01_12:00."
  value       = aws_budgets_budget.aws_budgets_budget.time_period_start
}
output "UsageType:<service name>" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.UsageType:<service name>
}
output "start_time" {
  description = "(Required) The start time of the budget limit. Format: 2017-01-01_12:00. See PlannedBudgetLimits documentation."
  value       = aws_budgets_budget.aws_budgets_budget.start_time
}
output "AZ" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.AZ
}
output "Operation" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.Operation
}
output "PurchaseType" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.PurchaseType
}
output "comparison_operator" {
  description = "(Required) Comparison operator to use to evaluate the condition. Can be LESS_THAN, EQUAL_TO or GREATER_THAN."
  value       = aws_budgets_budget.aws_budgets_budget.comparison_operator
}
output "cost_filter" {
  description = "(Optional) A list of CostFilter name/values pair to apply to budget."
  value       = aws_budgets_budget.aws_budgets_budget.cost_filter
}
output "include_subscription" {
  description = "A boolean value whether to include subscriptions in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_subscription
}
output "include_tax" {
  description = "A boolean value whether to include tax in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_tax
}
output "include_upfront" {
  description = "A boolean value whether to include upfront costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_upfront
}
output "time_period_end" {
  description = "(Optional) The end of the time period covered by the budget. There are no restrictions on the end date. Format: 2017-01-01_12:00."
  value       = aws_budgets_budget.aws_budgets_budget.time_period_end
}
output "use_blended" {
  description = "A boolean value whether to use blended costs in the cost budget. Defaults to falseRefer to AWS CostTypes documentation for further detail.Cost FilterValid name for cost_filter parameter vary depending on the budget_type value."
  value       = aws_budgets_budget.aws_budgets_budget.use_blended
}
output "LinkedAccount" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.LinkedAccount
}
output "TagKeyValue" {
  description = "Refer to AWS CostFilter documentation for further detail.Cost FiltersstrongNote: Attribute cost_filters is deprecated. Use cost_filter instead.Valid key for cost_filters is same as cost_filter. Please refer to Cost Filter.Budget NotificationValid keys for notification parameter."
  value       = aws_budgets_budget.aws_budgets_budget.TagKeyValue
}
output "id" {
  description = "id of resource."
  value       = aws_budgets_budget.aws_budgets_budget.id
}
output "include_credit" {
  description = "A boolean value whether to include credits in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_credit
}
output "include_refund" {
  description = "A boolean value whether to include refunds in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_refund
}
output "notification" {
  description = "(Optional) Object containing Budget Notifications. Can be used multiple times to define more than one budget notification."
  value       = aws_budgets_budget.aws_budgets_budget.notification
}
output "use_amortized" {
  description = "Whether a budget uses the amortized rate. Defaults to false"
  value       = aws_budgets_budget.aws_budgets_budget.use_amortized
}
output "Service" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.Service
}
output "cost_types" {
  description = "(Optional) Object containing CostTypes The types of cost included in a budget, such as tax and subscriptions."
  value       = aws_budgets_budget.aws_budgets_budget.cost_types
}
output "include_support" {
  description = "A boolean value whether to include support costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_support
}
output "name_prefix" {
  description = "(Optional) The prefix of the name of a budget. Unique within accounts."
  value       = aws_budgets_budget.aws_budgets_budget.name_prefix
}
output "arn" {
  description = "The ARN of the budget.Auto Adjust DataThe parameters that determine the budget amount for an auto-adjusting budget.auto_adjust_type (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: FORECAST,HISTORICALhistorical_options (Optional) - Configuration block of Historical Options. Required for auto_adjust_type of HISTORICALlast_auto_adjust_time (Optional) - The last time that your budget was auto-adjusted.Historical Optionsbudget_adjustment_periodlookback_available_periods (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the budget_adjustment_period and your historical cost data.Cost TypesValid keys for cost_types parameter."
  value       = aws_budgets_budget.aws_budgets_budget.arn
}
output "cost_filters" {
  description = "(Optional, strongDeprecated) Map of CostFilters key/value pairs to apply to the budget."
  value       = aws_budgets_budget.aws_budgets_budget.cost_filters
}
output "include_discount" {
  description = "Whether a budget includes discounts. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_discount
}
output "include_other_subscription" {
  description = "A boolean value whether to include other subscription costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_other_subscription
}
output "amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  value       = aws_budgets_budget.aws_budgets_budget.amount
}
output "include_recurring" {
  description = "A boolean value whether to include recurring costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_recurring
}
output "limit_unit" {
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See Spend documentation."
  value       = aws_budgets_budget.aws_budgets_budget.limit_unit
}
output "name" {
  description = "(Optional) The name of a budget. Unique within accounts."
  value       = aws_budgets_budget.aws_budgets_budget.name
}
output "subscriber_sns_topic_arns" {
  description = "(Optional) SNS topics to notify. Either this or subscriber_email_addresses is required.Planned Budget LimitsValid keys for planned_limit parameter."
  value       = aws_budgets_budget.aws_budgets_budget.subscriber_sns_topic_arns
}
output "time_unit" {
  description = "(Required) The length of time until a budget resets the actual and forecasted spend. Valid values: MONTHLY, QUARTERLY, ANNUALLY, and DAILY."
  value       = aws_budgets_budget.aws_budgets_budget.time_unit
}
output "usage" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.usage
}
output "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
  value       = aws_budgets_budget.aws_budgets_budget.account_id
}
output "cost" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.cost
}
output "planned_limit" {
  description = "(Optional) Object containing Planned Budget Limits. Can be used multiple times to plan more than one budget limit. See PlannedBudgetLimits documentation.In addition to all arguments above, the following attributes are exported:"
  value       = aws_budgets_budget.aws_budgets_budget.planned_limit
}
output "subscriber_email_addresses" {
  description = "(Optional) E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
  value       = aws_budgets_budget.aws_budgets_budget.subscriber_email_addresses
}
output "threshold_type" {
  description = "(Required) What kind of threshold is defined. Can be PERCENTAGE OR ABSOLUTE_VALUE."
  value       = aws_budgets_budget.aws_budgets_budget.threshold_type
}
output "include_discount" {
  description = "Whether a budget includes discounts. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_discount
}
output "include_refund" {
  description = "A boolean value whether to include refunds in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_refund
}
output "include_subscription" {
  description = "A boolean value whether to include subscriptions in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_subscription
}
output "include_support" {
  description = "A boolean value whether to include support costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_support
}
output "threshold_type" {
  description = "(Required) What kind of threshold is defined. Can be PERCENTAGE OR ABSOLUTE_VALUE."
  value       = aws_budgets_budget.aws_budgets_budget.threshold_type
}
output "AZ" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.AZ
}
output "LinkedAccount" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.LinkedAccount
}
output "TagKeyValue" {
  description = "Refer to AWS CostFilter documentation for further detail.Cost FiltersstrongNote: Attribute cost_filters is deprecated. Use cost_filter instead.Valid key for cost_filters is same as cost_filter. Please refer to Cost Filter.Budget NotificationValid keys for notification parameter."
  value       = aws_budgets_budget.aws_budgets_budget.TagKeyValue
}
output "UsageType:<service name>" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.UsageType:<service name>
}
output "amount" {
  description = "(Required) The amount of cost or usage being measured for a budget."
  value       = aws_budgets_budget.aws_budgets_budget.amount
}
output "cost" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.cost
}
output "Service" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.Service
}
output "include_other_subscription" {
  description = "A boolean value whether to include other subscription costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_other_subscription
}
output "start_time" {
  description = "(Required) The start time of the budget limit. Format: 2017-01-01_12:00. See PlannedBudgetLimits documentation."
  value       = aws_budgets_budget.aws_budgets_budget.start_time
}
output "unit" {
  description = "(Required) The unit of measurement used for the budget forecast, actual spend, or budget threshold, such as dollars or GB. See Spend documentation."
  value       = aws_budgets_budget.aws_budgets_budget.unit
}
output "use_amortized" {
  description = "Whether a budget uses the amortized rate. Defaults to false"
  value       = aws_budgets_budget.aws_budgets_budget.use_amortized
}
output "use_blended" {
  description = "A boolean value whether to use blended costs in the cost budget. Defaults to falseRefer to AWS CostTypes documentation for further detail.Cost FilterValid name for cost_filter parameter vary depending on the budget_type value."
  value       = aws_budgets_budget.aws_budgets_budget.use_blended
}
output "usage" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.usage
}
output "arn" {
  description = "The ARN of the budget.Auto Adjust DataThe parameters that determine the budget amount for an auto-adjusting budget.auto_adjust_type (Required) - The string that defines whether your budget auto-adjusts based on historical or forecasted data. Valid values: FORECAST,HISTORICALhistorical_options (Optional) - Configuration block of Historical Options. Required for auto_adjust_type of HISTORICALlast_auto_adjust_time (Optional) - The last time that your budget was auto-adjusted.Historical Optionsbudget_adjustment_periodlookback_available_periods (Optional) - The integer that describes how many budget periods in your BudgetAdjustmentPeriod are included in the calculation of your current budget limit. If the first budget period in your BudgetAdjustmentPeriod has no cost data, then that budget period isn’t included in the average that determines your budget limit. You can’t set your own LookBackAvailablePeriods. The value is automatically calculated from the budget_adjustment_period and your historical cost data.Cost TypesValid keys for cost_types parameter."
  value       = aws_budgets_budget.aws_budgets_budget.arn
}
output "notification_type" {
  description = "(Required) What kind of budget value to notify on. Can be ACTUAL or FORECASTED"
  value       = aws_budgets_budget.aws_budgets_budget.notification_type
}
output "threshold" {
  description = "(Required) Threshold when the notification should be sent."
  value       = aws_budgets_budget.aws_budgets_budget.threshold
}
output "Operation" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.Operation
}
output "id" {
  description = "id of resource."
  value       = aws_budgets_budget.aws_budgets_budget.id
}
output "include_recurring" {
  description = "A boolean value whether to include recurring costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_recurring
}
output "include_tax" {
  description = "A boolean value whether to include tax in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_tax
}
output "PurchaseType" {
  description = ""
  value       = aws_budgets_budget.aws_budgets_budget.PurchaseType
}
output "comparison_operator" {
  description = "(Required) Comparison operator to use to evaluate the condition. Can be LESS_THAN, EQUAL_TO or GREATER_THAN."
  value       = aws_budgets_budget.aws_budgets_budget.comparison_operator
}
output "include_credit" {
  description = "A boolean value whether to include credits in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_credit
}
output "include_upfront" {
  description = "A boolean value whether to include upfront costs in the cost budget. Defaults to true"
  value       = aws_budgets_budget.aws_budgets_budget.include_upfront
}
output "subscriber_email_addresses" {
  description = "(Optional) E-Mail addresses to notify. Either this or subscriber_sns_topic_arns is required."
  value       = aws_budgets_budget.aws_budgets_budget.subscriber_email_addresses
}
output "subscriber_sns_topic_arns" {
  description = "(Optional) SNS topics to notify. Either this or subscriber_email_addresses is required.Planned Budget LimitsValid keys for planned_limit parameter."
  value       = aws_budgets_budget.aws_budgets_budget.subscriber_sns_topic_arns
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
      "kind/name"                   = "aws_budgets_budget"
      "kind/version"                = "v0.1.0"
    }
  }
}
