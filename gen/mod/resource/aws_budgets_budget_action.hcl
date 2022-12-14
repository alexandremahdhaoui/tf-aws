resource "aws_budgets_budget_action" "aws_budgets_budget_action" {
  iam_action_definition  = var.iam_action_definition
  policy_id              = var.policy_id
  action_threshold_type  = var.action_threshold_type
  definition             = var.definition
  subscription_type      = var.subscription_type
  account_id             = var.account_id
  action_id              = var.action_id
  action_sub_type        = var.action_sub_type
  action_threshold       = var.action_threshold
  subscriber             = var.subscriber
  target_ids             = var.target_ids
  arn                    = var.arn
  groups                 = var.groups
  id                     = var.id
  scp_action_definition  = var.scp_action_definition
  execution_role_arn     = var.execution_role_arn
  notification_type      = var.notification_type
  users                  = var.users
  action_threshold_value = var.action_threshold_value
  action_type            = var.action_type
  instance_ids           = var.instance_ids
  region                 = var.region
  address                = var.address
  roles                  = var.roles
  ssm_action_definition  = var.ssm_action_definition
  approval_model         = var.approval_model
  budget_name            = var.budget_name
  policy_arn             = var.policy_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "approval_model" {
  description = "(Required) This specifies if the action needs manual or automatic approval. Valid values are AUTOMATIC and MANUAL."
  type        = string
}
variable "budget_name" {
  description = "(Required) The name of a budget."
  type        = string
}
variable "policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the policy to be attached."
  type        = string
}
variable "iam_action_definition" {
  description = "(Optional) The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition."
  type        = string
  default     = ""
}
variable "policy_id" {
  description = "(Required) The policy ID attached."
  type        = string
}
variable "definition" {
  description = "(Required) Specifies all of the type-specific parameters. See Definition."
  type        = string
}
variable "subscription_type" {
  description = "(Required) The type of notification that AWS sends to a subscriber. Valid values are SNS or EMAIL.Definition"
  type        = string
}
variable "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
  type        = string
  default     = ""
}
variable "action_id" {
  description = "The id of the budget action."
  type        = string
}
variable "action_sub_type" {
  description = "(Required) The action subType. Valid values are STOP_EC2_INSTANCES or STOP_RDS_INSTANCES."
  type        = string
}
variable "action_threshold" {
  description = "(Required) The trigger threshold of the action. See Action Threshold."
  type        = string
}
variable "action_threshold_type" {
  description = "(Required) The type of threshold for a notification. Valid values are PERCENTAGE or ABSOLUTE_VALUE."
  type        = string
}
variable "target_ids" {
  description = "(Optional) A list of target IDs.SSM Action Definition"
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
variable "id" {
  description = "ID of resource."
  type        = string
}
variable "scp_action_definition" {
  description = "(Optional) The service control policies (SCPs) action definition details. See SCP Action Definition.IAM Action Definition"
  type        = string
  default     = ""
}
variable "subscriber" {
  description = "(Required) A list of subscribers. See Subscriber.Action Threshold"
  type        = string
}
variable "execution_role_arn" {
  description = "(Required) The role passed for action execution and reversion. Roles and actions must be in the same account."
  type        = string
}
variable "notification_type" {
  description = "(Required) The type of a notification. Valid values are ACTUAL or FORECASTED."
  type        = string
}
variable "action_threshold_value" {
  description = "(Required) The threshold of a notification.Subscriber"
  type        = string
}
variable "action_type" {
  description = "(Required) The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are APPLY_IAM_POLICY, APPLY_SCP_POLICY, and RUN_SSM_DOCUMENTS."
  type        = string
}
variable "instance_ids" {
  description = "(Required) The EC2 and RDS instance IDs."
  type        = string
}
variable "region" {
  description = "(Required) The Region to run the SSM document.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "users" {
  description = "(Optional) A list of users to be attached. There must be at least one user.SCP Action Definition"
  type        = string
  default     = ""
}
variable "address" {
  description = "(Required) The address that AWS sends budget notifications to, either an SNS topic or an email."
  type        = string
}
variable "roles" {
  description = "(Optional) A list of roles to be attached. There must be at least one role."
  type        = string
  default     = ""
}
variable "ssm_action_definition" {
  description = "(Optional) The AWS Systems Manager (SSM) action definition details. See SSM Action Definition."
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
output "address" {
  description = "(Required) The address that AWS sends budget notifications to, either an SNS topic or an email."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.address
}
output "roles" {
  description = "(Optional) A list of roles to be attached. There must be at least one role."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.roles
}
output "ssm_action_definition" {
  description = "(Optional) The AWS Systems Manager (SSM) action definition details. See SSM Action Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.ssm_action_definition
}
output "approval_model" {
  description = "(Required) This specifies if the action needs manual or automatic approval. Valid values are AUTOMATIC and MANUAL."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.approval_model
}
output "budget_name" {
  description = "(Required) The name of a budget."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.budget_name
}
output "policy_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the policy to be attached."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.policy_arn
}
output "iam_action_definition" {
  description = "(Optional) The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.iam_action_definition
}
output "policy_id" {
  description = "(Required) The policy ID attached."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.policy_id
}
output "subscription_type" {
  description = "(Required) The type of notification that AWS sends to a subscriber. Valid values are SNS or EMAIL.Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.subscription_type
}
output "account_id" {
  description = "(Optional) The ID of the target account for budget. Will use current user's account_id by default if omitted."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.account_id
}
output "action_id" {
  description = "The id of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_id
}
output "action_sub_type" {
  description = "(Required) The action subType. Valid values are STOP_EC2_INSTANCES or STOP_RDS_INSTANCES."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_sub_type
}
output "action_threshold" {
  description = "(Required) The trigger threshold of the action. See Action Threshold."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold
}
output "action_threshold_type" {
  description = "(Required) The type of threshold for a notification. Valid values are PERCENTAGE or ABSOLUTE_VALUE."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold_type
}
output "definition" {
  description = "(Required) Specifies all of the type-specific parameters. See Definition."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.definition
}
output "arn" {
  description = "The ARN of the budget action."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.arn
}
output "groups" {
  description = "(Optional) A list of groups to be attached. There must be at least one group."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.groups
}
output "id" {
  description = "ID of resource."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.id
}
output "scp_action_definition" {
  description = "(Optional) The service control policies (SCPs) action definition details. See SCP Action Definition.IAM Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.scp_action_definition
}
output "subscriber" {
  description = "(Required) A list of subscribers. See Subscriber.Action Threshold"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.subscriber
}
output "target_ids" {
  description = "(Optional) A list of target IDs.SSM Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.target_ids
}
output "execution_role_arn" {
  description = "(Required) The role passed for action execution and reversion. Roles and actions must be in the same account."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.execution_role_arn
}
output "notification_type" {
  description = "(Required) The type of a notification. Valid values are ACTUAL or FORECASTED."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.notification_type
}
output "action_threshold_value" {
  description = "(Required) The threshold of a notification.Subscriber"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_threshold_value
}
output "action_type" {
  description = "(Required) The type of action. This defines the type of tasks that can be carried out by this action. This field also determines the format for definition. Valid values are APPLY_IAM_POLICY, APPLY_SCP_POLICY, and RUN_SSM_DOCUMENTS."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.action_type
}
output "instance_ids" {
  description = "(Required) The EC2 and RDS instance IDs."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.instance_ids
}
output "region" {
  description = "(Required) The Region to run the SSM document.In addition to all arguments above, the following attributes are exported:"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.region
}
output "users" {
  description = "(Optional) A list of users to be attached. There must be at least one user.SCP Action Definition"
  value       = aws_budgets_budget_action.aws_budgets_budget_action.users
}
output "id" {
  description = "ID of resource."
  value       = aws_budgets_budget_action.aws_budgets_budget_action.id
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
