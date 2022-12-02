resource "aws_budgets_budget_action" "aws_budgets_budget_action" {
  address                = var.address
  id                     = var.id
  action_sub_type        = var.action_sub_type
  action_threshold       = var.action_threshold
  iam_action_definition  = var.iam_action_definition
  instance_ids           = var.instance_ids
  notification_type      = var.notification_type
  subscriber             = var.subscriber
  action_type            = var.action_type
  definition             = var.definition
  region                 = var.region
  ssm_action_definition  = var.ssm_action_definition
  subscription_type      = var.subscription_type
  approval_model         = var.approval_model
  action_threshold_value = var.action_threshold_value
  policy_id              = var.policy_id
  account_id             = var.account_id
  action_id              = var.action_id
  roles                  = var.roles
  arn                    = var.arn
  budget_name            = var.budget_name
  groups                 = var.groups
  scp_action_definition  = var.scp_action_definition
  action_threshold_type  = var.action_threshold_type
  target_ids             = var.target_ids
  users                  = var.users
  execution_role_arn     = var.execution_role_arn
  policy_arn             = var.policy_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "budget_name" {
  description = "(Required) The name of a budget."
  type        = string
}
variable "roles" {
  description = "(Optional) A list of roles to be attached. There must be at least one role."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the budget action."
  type        = string
}
variable "groups" {
  description = "(Optional) A list of groups to be attached. There must be at least one group."
  type        = string
  default     = ""
}
variable "scp_action_definition" {
  description = "(Optional) The service control policies (SCPs) action definition details. See SCP Action Definition.IAM Action Definition"
  type        = string
  default     = ""
}
variable "action_threshold_type" {
  description = "(Required) The type of threshold for a notification. Valid values are PERCENTAGE or ABSOLUTE_VALUE."
  type        = string
}
variable "policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the policy to be attached."
  type        = string
}
variable "target_ids" {
  description = "(Optional) A list of target IDs.SSM Action Definition"
  type        = string
  default     = ""
}
variable "users" {
  description = "(Optional) A list of users to be attached. There must be at least one user.SCP Action Definition"
  type        = string
  default     = ""
}
variable "execution_role_arn" {
  description = "(Required) The role passed for action execution and reversion. Roles and actions must be in the same account."
  type        = string
}
variable "action_threshold" {
  description = "(Required) The trigger threshold of the action. See Action Threshold."
  type        = string
}
variable "address" {
  description = "(Required) The address that AWS sends budget notifications to, either an SNS topic or an email."
  type        = string
}
variable "id" {
  description = "ID of resource."
  type        = string
}
variable "action_sub_type" {
  description = "(Required) The action subType. Valid values are STOP_EC2_INSTANCES or STOP_RDS_INSTANCES."
  type        = string
}
variable "definition" {
  description = "(Required) Specifies all of the type-specific parameters. See Definition."
  type        = string
}
variable "iam_action_definition" {
  description = "(Optional) The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition."
  type        = string
  default     = ""
}
variable "instance_ids" {
  description = "(Required) The EC2 and RDS instance IDs."
  type        = string
}
variable "notification_type" {
  description = "(Required) The type of a notification. Valid values are ACTUAL or FORECASTED."
  type        = string
}
variable "subscriber" {
  description = "(Required) A list of subscribers. See Subscriber.Action Threshold"
  type        = string
}
variable "action_type" {
  description = "(Required) The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are APPLY_IAM_POLICY, APPLY_SCP_POLICY, and RUN_SSM_DOCUMENTS."
  type        = string
}
variable "approval_model" {
  description = "(Required) This specifies if the action needs manual or automatic approval. Valid values are AUTOMATIC and MANUAL."
  type        = string
}
variable "region" {
  description = "(Required) The Region to run the SSM document.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ssm_action_definition" {
  description = "(Optional) The AWS Systems Manager (SSM) action definition details. See SSM Action Definition."
  type        = string
  default     = ""
}
variable "subscription_type" {
  description = "(Required) The type of notification that AWS sends to a subscriber. Valid values are SNS or EMAIL.Definition"
  type        = string
}
variable "action_id" {
  description = "The id of the budget action."
  type        = string
}
variable "action_threshold_value" {
  description = "(Required) The threshold of a notification.Subscriber"
  type        = string
}
variable "policy_id" {
  description = "(Required) The policy ID attached."
  type        = string
}
variable "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
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
output "id" {
  description = "ID of resource."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.id
}
output "action_sub_type" {
  description = "(Required) The action subType. Valid values are STOP_EC2_INSTANCES or STOP_RDS_INSTANCES."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_sub_type
}
output "action_threshold" {
  description = "(Required) The trigger threshold of the action. See Action Threshold."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold
}
output "address" {
  description = "(Required) The address that AWS sends budget notifications to, either an SNS topic or an email."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.address
}
output "instance_ids" {
  description = "(Required) The EC2 and RDS instance IDs."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.instance_ids
}
output "notification_type" {
  description = "(Required) The type of a notification. Valid values are ACTUAL or FORECASTED."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.notification_type
}
output "subscriber" {
  description = "(Required) A list of subscribers. See Subscriber.Action Threshold"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.subscriber
}
output "action_type" {
  description = "(Required) The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are APPLY_IAM_POLICY, APPLY_SCP_POLICY, and RUN_SSM_DOCUMENTS."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_type
}
output "definition" {
  description = "(Required) Specifies all of the type-specific parameters. See Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.definition
}
output "iam_action_definition" {
  description = "(Optional) The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.iam_action_definition
}
output "ssm_action_definition" {
  description = "(Optional) The AWS Systems Manager (SSM) action definition details. See SSM Action Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.ssm_action_definition
}
output "subscription_type" {
  description = "(Required) The type of notification that AWS sends to a subscriber. Valid values are SNS or EMAIL.Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.subscription_type
}
output "approval_model" {
  description = "(Required) This specifies if the action needs manual or automatic approval. Valid values are AUTOMATIC and MANUAL."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.approval_model
}
output "region" {
  description = "(Required) The Region to run the SSM document.In addition to all arguments above, the following attributes are exported:"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.region
}
output "policy_id" {
  description = "(Required) The policy ID attached."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.policy_id
}
output "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.account_id
}
output "action_id" {
  description = "The id of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_id
}
output "action_threshold_value" {
  description = "(Required) The threshold of a notification.Subscriber"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold_value
}
output "arn" {
  description = "The ARN of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.arn
}
output "budget_name" {
  description = "(Required) The name of a budget."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.budget_name
}
output "roles" {
  description = "(Optional) A list of roles to be attached. There must be at least one role."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.roles
}
output "groups" {
  description = "(Optional) A list of groups to be attached. There must be at least one group."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.groups
}
output "scp_action_definition" {
  description = "(Optional) The service control policies (SCPs) action definition details. See SCP Action Definition.IAM Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.scp_action_definition
}
output "action_threshold_type" {
  description = "(Required) The type of threshold for a notification. Valid values are PERCENTAGE or ABSOLUTE_VALUE."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold_type
}
output "users" {
  description = "(Optional) A list of users to be attached. There must be at least one user.SCP Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.users
}
output "execution_role_arn" {
  description = "(Required) The role passed for action execution and reversion. Roles and actions must be in the same account."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.execution_role_arn
}
output "policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the policy to be attached."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.policy_arn
}
output "target_ids" {
  description = "(Optional) A list of target IDs.SSM Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.target_ids
}
output "status" {
  description = "The status of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.status
}
output "action_id" {
  description = "The id of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_id
}
output "arn" {
  description = "The ARN of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.arn
}
output "id" {
  description = "ID of resource."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.id
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
      "kind/name"                   = "aws_budgets_budget_action"
      "kind/version"                = "v0.1.0"
    }
  }
}
