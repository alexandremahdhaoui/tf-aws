resource "aws_cloudformation_stack_set_instance" "aws_cloudformation_stack_set_instance" {
  account_id             = var.account_id
  call_as                = var.call_as
  operation_preferences  = var.operation_preferences
  organizational_unit_id = var.organizational_unit_id
  parameter_overrides    = var.parameter_overrides
  region                 = var.region
  stack_id               = var.stack_id
  stack_set_name         = var.stack_set_name
  update                 = var.update
  create                 = var.create
  deployment_targets     = var.deployment_targets
  id                     = var.id
  retain_stack           = var.retain_stack
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "operation_preferences" {
  description = "(Optional) Preferences for how AWS CloudFormation performs a stack set operation.deployment_targets Argument ReferenceThe deployment_targets configuration block supports the following arguments:*organizational_unit_ids(Optional) The organization root ID or organizational unit (OU) IDs to which StackSets deploys.operation_preferences Argument ReferenceThe operation_preferences configuration block supports the following arguments:*failure_tolerance_count(Optional) The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.\n*failure_tolerance_percentage(Optional) The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.\n*max_concurrent_countmax_concurrent_percentage(Optional) The maximum percentage of accounts in which to perform this operation at one time.\n*region_concurrency_type(Optional) The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.\n*region_order(Optional) The order of the Regions in where you want to perform the stack operation.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "organizational_unit_id" {
  description = "The organization root ID or organizational unit (OU) IDs specified for deployment_targets."
  type        = string
}
variable "parameter_overrides" {
  description = "(Optional) Key-value map of input parameters to override from the StackSet for this Instance."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Optional) Target AWS Region to create a Stack based on the StackSet. Defaults to current region."
  type        = string
  default     = ""
}
variable "stack_id" {
  description = "Stack identifierTimeoutsConfiguration options:"
  type        = string
}
variable "stack_set_name" {
  description = "(Required) Name of the StackSet."
  type        = string
}
variable "account_id" {
  description = "(Optional) Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account."
  type        = string
  default     = ""
}
variable "call_as" {
  description = "(Optional) Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: SELF (default), DELEGATED_ADMIN."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "id" {
  description = "StackSet name, target AWS account ID, and target AWS region separated by commas (,)"
  type        = string
}
variable "retain_stack" {
  description = "(Optional) During Terraform resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in Terraform state embefore destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to false."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "deployment_targets" {
  description = "(Optional) The AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below."
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
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.create
}
output "deployment_targets" {
  description = "(Optional) The AWS Organizations accounts to which StackSets deploys. StackSets doesn't deploy stack instances to the organization management account, even if the organization management account is in your organization or in an OU in your organization. Drift detection is not possible for this argument. See deployment_targets below."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.deployment_targets
}
output "id" {
  description = "StackSet name, target AWS account ID, and target AWS region separated by commas (,)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.id
}
output "retain_stack" {
  description = "(Optional) During Terraform resource destroy, remove Instance from StackSet while keeping the Stack and its associated resources. Must be enabled in Terraform state embefore destroy operation to take effect. You cannot reassociate a retained Stack or add an existing, saved Stack to a new StackSet. Defaults to false."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.retain_stack
}
output "account_id" {
  description = "(Optional) Target AWS Account ID to create a Stack based on the StackSet. Defaults to current account."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.account_id
}
output "call_as" {
  description = "(Optional) Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: SELF (default), DELEGATED_ADMIN."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.call_as
}
output "operation_preferences" {
  description = "(Optional) Preferences for how AWS CloudFormation performs a stack set operation.deployment_targets Argument ReferenceThe deployment_targets configuration block supports the following arguments:*organizational_unit_ids(Optional) The organization root ID or organizational unit (OU) IDs to which StackSets deploys.operation_preferences Argument ReferenceThe operation_preferences configuration block supports the following arguments:*failure_tolerance_count(Optional) The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region.\n*failure_tolerance_percentage(Optional) The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region.\n*max_concurrent_countmax_concurrent_percentage(Optional) The maximum percentage of accounts in which to perform this operation at one time.\n*region_concurrency_type(Optional) The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time.\n*region_order(Optional) The order of the Regions in where you want to perform the stack operation.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.operation_preferences
}
output "organizational_unit_id" {
  description = "The organization root ID or organizational unit (OU) IDs specified for deployment_targets."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.organizational_unit_id
}
output "parameter_overrides" {
  description = "(Optional) Key-value map of input parameters to override from the StackSet for this Instance."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.parameter_overrides
}
output "region" {
  description = "(Optional) Target AWS Region to create a Stack based on the StackSet. Defaults to current region."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.region
}
output "stack_id" {
  description = "Stack identifierTimeoutsConfiguration options:"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.stack_id
}
output "stack_set_name" {
  description = "(Required) Name of the StackSet."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.stack_set_name
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.update
}
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.delete
}
output "id" {
  description = "StackSet name, target AWS account ID, and target AWS region separated by commas (,)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.id
}
output "organizational_unit_id" {
  description = "The organization root ID or organizational unit (OU) IDs specified for deployment_targets."
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.organizational_unit_id
}
output "stack_id" {
  description = "Stack identifierTimeoutsConfiguration options:"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.stack_id
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set_instance.aws_cloudformation_stack_set_instance.update
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
      "kind/name"                   = "aws_cloudformation_stack_set_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
