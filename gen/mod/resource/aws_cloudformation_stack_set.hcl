resource "aws_cloudformation_stack_set" "aws_cloudformation_stack_set" {
  name                             = var.name
  region_order                     = var.region_order
  administration_role_arn          = var.administration_role_arn
  arn                              = var.arn
  call_as                          = var.call_as
  failure_tolerance_count          = var.failure_tolerance_count
  max_concurrent_count             = var.max_concurrent_count
  template_body                    = var.template_body
  capabilities                     = var.capabilities
  enabled                          = var.enabled
  permission_model                 = var.permission_model
  stack_set_id                     = var.stack_set_id
  tags_all                         = var.tags_all
  retain_stacks_on_account_removal = var.retain_stacks_on_account_removal
  tags                             = var.tags
  execution_role_name              = var.execution_role_name
  id                               = var.id
  max_concurrent_percentage        = var.max_concurrent_percentage
  parameters                       = var.parameters
  region_concurrency_type          = var.region_concurrency_type
  auto_deployment                  = var.auto_deployment
  description                      = var.description
  failure_tolerance_percentage     = var.failure_tolerance_percentage
  operation_preferences            = var.operation_preferences
  template_url                     = var.template_url
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "capabilities" {
  description = "(Optional) A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Whether or not auto-deployment is enabled."
  type        = string
  default     = ""
}
variable "permission_model" {
  description = "(Optional) Describes how the IAM roles required for your StackSet are created. Valid values: SELF_MANAGED (default), SERVICE_MANAGED."
  type        = string
  default     = ""
}
variable "stack_set_id" {
  description = "Unique identifier of the StackSet."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "template_body" {
  description = "(Optional) String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with template_url."
  type        = string
  default     = ""
}
variable "execution_role_name" {
  description = "(Optional) Name of the IAM Role in all target accounts for StackSet operations. Defaults to AWSCloudFormationStackSetExecutionRole when using the SELF_MANAGED permission model. This should not be defined when using the SERVICE_MANAGED permission model."
  type        = string
  default     = ""
}
variable "id" {
  description = "Name of the StackSet."
  type        = string
}
variable "max_concurrent_percentage" {
  description = "(Optional) The maximum percentage of accounts in which to perform this operation at one time."
  type        = string
  default     = ""
}
variable "parameters" {
  description = "(Optional) Key-value map of input parameters for the StackSet template. All template parameters, including those with a Default, must be configured or ignored with lifecycle configuration block ignore_changes argument. All NoEcho template parameters must be ignored with the lifecycle configuration block ignore_changes argument."
  type        = string
  default     = ""
}
variable "region_concurrency_type" {
  description = "(Optional) The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time."
  type        = string
  default     = ""
}
variable "retain_stacks_on_account_removal" {
  description = "(Optional) Whether or not to retain stacks when the account is removed."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "auto_deployment" {
  description = "(Optional) Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the SERVICE_MANAGED"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the StackSet."
  type        = string
  default     = ""
}
variable "failure_tolerance_percentage" {
  description = "(Optional) The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region."
  type        = string
  default     = ""
}
variable "operation_preferences" {
  description = "(Optional) Preferences for how AWS CloudFormation performs a stack set update."
  type        = string
  default     = ""
}
variable "template_url" {
  description = "(Optional) String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with template_body.operation_preferences Argument ReferenceThe operation_preferences configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "administration_role_arn" {
  description = "(Optional) Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the SELF_MANAGED permission model."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the StackSet."
  type        = string
}
variable "call_as" {
  description = "(Optional) Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: SELF (default), DELEGATED_ADMIN."
  type        = string
  default     = ""
}
variable "failure_tolerance_count" {
  description = "(Optional) The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region."
  type        = string
  default     = ""
}
variable "max_concurrent_count" {
  description = "(Optional) The maximum number of accounts in which to perform this operation at one time."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters."
  type        = string
}
variable "region_order" {
  description = "(Optional) The order of the Regions in where you want to perform the stack operation.In addition to all arguments above, the following attributes are exported:"
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
output "auto_deployment" {
  description = "(Optional) Configuration block containing the auto-deployment model for your StackSet. This can only be defined when using the SERVICE_MANAGED"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.auto_deployment
}
output "description" {
  description = "(Optional) Description of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.description
}
output "failure_tolerance_percentage" {
  description = "(Optional) The percentage of accounts, per Region, for which this stack operation can fail before AWS CloudFormation stops the operation in that Region."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.failure_tolerance_percentage
}
output "operation_preferences" {
  description = "(Optional) Preferences for how AWS CloudFormation performs a stack set update."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.operation_preferences
}
output "template_url" {
  description = "(Optional) String containing the location of a file containing the CloudFormation template body. The URL must point to a template that is located in an Amazon S3 bucket. Maximum location file size: 460,800 bytes. Conflicts with template_body.operation_preferences Argument ReferenceThe operation_preferences configuration block supports the following arguments:"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.template_url
}
output "administration_role_arn" {
  description = "(Optional) Amazon Resource Number (ARN) of the IAM Role in the administrator account. This must be defined when using the SELF_MANAGED permission model."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.administration_role_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.arn
}
output "call_as" {
  description = "(Optional) Specifies whether you are acting as an account administrator in the organization's management account or as a delegated administrator in a member account. Valid values: SELF (default), DELEGATED_ADMIN."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.call_as
}
output "failure_tolerance_count" {
  description = "(Optional) The number of accounts, per Region, for which this operation can fail before AWS CloudFormation stops the operation in that Region."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.failure_tolerance_count
}
output "max_concurrent_count" {
  description = "(Optional) The maximum number of accounts in which to perform this operation at one time."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.max_concurrent_count
}
output "name" {
  description = "(Required) Name of the StackSet. The name must be unique in the region where you create your StackSet. The name can contain only alphanumeric characters (case-sensitive) and hyphens. It must start with an alphabetic character and cannot be longer than 128 characters."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.name
}
output "region_order" {
  description = "(Optional) The order of the Regions in where you want to perform the stack operation.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.region_order
}
output "capabilities" {
  description = "(Optional) A list of capabilities. Valid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, CAPABILITY_AUTO_EXPAND."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.capabilities
}
output "enabled" {
  description = "(Optional) Whether or not auto-deployment is enabled."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.enabled
}
output "permission_model" {
  description = "(Optional) Describes how the IAM roles required for your StackSet are created. Valid values: SELF_MANAGED (default), SERVICE_MANAGED."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.permission_model
}
output "stack_set_id" {
  description = "Unique identifier of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.stack_set_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.tags_all
}
output "template_body" {
  description = "(Optional) String containing the CloudFormation template body. Maximum size: 51,200 bytes. Conflicts with template_url."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.template_body
}
output "execution_role_name" {
  description = "(Optional) Name of the IAM Role in all target accounts for StackSet operations. Defaults to AWSCloudFormationStackSetExecutionRole when using the SELF_MANAGED permission model. This should not be defined when using the SERVICE_MANAGED permission model."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.execution_role_name
}
output "id" {
  description = "Name of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.id
}
output "max_concurrent_percentage" {
  description = "(Optional) The maximum percentage of accounts in which to perform this operation at one time."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.max_concurrent_percentage
}
output "parameters" {
  description = "(Optional) Key-value map of input parameters for the StackSet template. All template parameters, including those with a Default, must be configured or ignored with lifecycle configuration block ignore_changes argument. All NoEcho template parameters must be ignored with the lifecycle configuration block ignore_changes argument."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.parameters
}
output "region_concurrency_type" {
  description = "(Optional) The concurrency type of deploying StackSets operations in Regions, could be in parallel or one Region at a time."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.region_concurrency_type
}
output "retain_stacks_on_account_removal" {
  description = "(Optional) Whether or not to retain stacks when the account is removed."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.retain_stacks_on_account_removal
}
output "tags" {
  description = "(Optional) Key-value map of tags to associate with this StackSet and the Stacks created from it. AWS CloudFormation also propagates these tags to supported resources that are created in the Stacks. A maximum number of 50 tags can be specified. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.tags_all
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.arn
}
output "id" {
  description = "Name of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.id
}
output "stack_set_id" {
  description = "Unique identifier of the StackSet."
  value       = aws_cloudformation_stack_set.aws_cloudformation_stack_set.stack_set_id
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
      "kind/name"                   = "aws_cloudformation_stack_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
