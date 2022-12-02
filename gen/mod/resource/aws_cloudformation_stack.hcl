resource "aws_cloudformation_stack" "aws_cloudformation_stack" {
  update             = var.update
  iam_role_arn       = var.iam_role_arn
  on_failure         = var.on_failure
  outputs            = var.outputs
  template_body      = var.template_body
  template_url       = var.template_url
  timeout_in_minutes = var.timeout_in_minutes
  name               = var.name
  parameters         = var.parameters
  policy_body        = var.policy_body
  tags_all           = var.tags_all
  notification_arns  = var.notification_arns
  tags               = var.tags
  policy_url         = var.policy_url
  capabilities       = var.capabilities
  create             = var.create
  disable_rollback   = var.disable_rollback
  id                 = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Stack name."
  type        = string
}
variable "parameters" {
  description = "(Optional) A map of Parameter structures that specify input parameters for the stack."
  type        = string
  default     = ""
}
variable "policy_body" {
  description = "(Optional) Structure containing the stack policy body.\nConflicts w/ policy_url."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "template_url" {
  description = "(Optional) Location of a file containing the template body (max size: 460,800 bytes)."
  type        = string
  default     = ""
}
variable "timeout_in_minutes" {
  description = "(Optional) The amount of time that can pass before the stack status becomes CREATE_FAILED.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "notification_arns" {
  description = "(Optional) A list of SNS topic ARNs to publish stack related events."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of resource tags to associate with this stack. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "capabilities" {
  description = "(Optional) A list of capabilities.\nValid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, or CAPABILITY_AUTO_EXPAND"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "disable_rollback" {
  description = "on_failure."
  type        = string
}
variable "id" {
  description = "A unique identifier of the stack."
  type        = string
}
variable "policy_url" {
  description = "(Optional) Location of a file containing the stack policy.\nConflicts w/ policy_body."
  type        = string
  default     = ""
}
variable "iam_role_arn" {
  description = "(Optional) The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials."
  type        = string
  default     = ""
}
variable "on_failure" {
  description = "(Optional) Action to be taken if stack creation fails. This must be\none of: DO_NOTHING, ROLLBACK, or DELETE. Conflicts with disable_rollback."
  type        = string
  default     = ""
}
variable "outputs" {
  description = "A map of outputs from the stack."
  type        = string
}
variable "template_body" {
  description = "(Optional) Structure containing the template body (max size: 51,200 bytes)."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
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
output "on_failure" {
  description = "(Optional) Action to be taken if stack creation fails. This must be\none of: DO_NOTHING, ROLLBACK, or DELETE. Conflicts with disable_rollback."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.on_failure
}
output "outputs" {
  description = "A map of outputs from the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.outputs
}
output "template_body" {
  description = "(Optional) Structure containing the template body (max size: 51,200 bytes)."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.template_body
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.update
}
output "iam_role_arn" {
  description = "(Optional) The ARN of an IAM role that AWS CloudFormation assumes to create the stack. If you don't specify a value, AWS CloudFormation uses the role that was previously associated with the stack. If no role is available, AWS CloudFormation uses a temporary session that is generated from your user credentials."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.iam_role_arn
}
output "parameters" {
  description = "(Optional) A map of Parameter structures that specify input parameters for the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.parameters
}
output "policy_body" {
  description = "(Optional) Structure containing the stack policy body.\nConflicts w/ policy_url."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.policy_body
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.tags_all
}
output "template_url" {
  description = "(Optional) Location of a file containing the template body (max size: 460,800 bytes)."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.template_url
}
output "timeout_in_minutes" {
  description = "(Optional) The amount of time that can pass before the stack status becomes CREATE_FAILED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.timeout_in_minutes
}
output "name" {
  description = "(Required) Stack name."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.name
}
output "tags" {
  description = "(Optional) Map of resource tags to associate with this stack. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.tags
}
output "notification_arns" {
  description = "(Optional) A list of SNS topic ARNs to publish stack related events."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.notification_arns
}
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.create
}
output "disable_rollback" {
  description = "on_failure."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.disable_rollback
}
output "id" {
  description = "A unique identifier of the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.id
}
output "policy_url" {
  description = "(Optional) Location of a file containing the stack policy.\nConflicts w/ policy_body."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.policy_url
}
output "capabilities" {
  description = "(Optional) A list of capabilities.\nValid values: CAPABILITY_IAM, CAPABILITY_NAMED_IAM, or CAPABILITY_AUTO_EXPAND"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.capabilities
}
output "create" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.delete
}
output "id" {
  description = "A unique identifier of the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.id
}
output "outputs" {
  description = "A map of outputs from the stack."
  value       = aws_cloudformation_stack.aws_cloudformation_stack.outputs
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.tags_all
}
output "update" {
  description = "(Default 30m)"
  value       = aws_cloudformation_stack.aws_cloudformation_stack.update
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
      "kind/name"                   = "aws_cloudformation_stack"
      "kind/version"                = "v0.1.0"
    }
  }
}
