resource "aws_sfn_state_machine" "aws_sfn_state_machine" {
  role_arn               = var.role_arn
  enabled                = var.enabled
  logging_configuration  = var.logging_configuration
  log_destination        = var.log_destination
  name                   = var.name
  include_execution_data = var.include_execution_data
  level                  = var.level
  definition             = var.definition
  status                 = var.status
  tags                   = var.tags
  type                   = var.type
  arn                    = var.arn
  creation_date          = var.creation_date
  tracing_configuration  = var.tracing_configuration
  id                     = var.id
  name_prefix            = var.name_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the state machine."
  type        = string
}
variable "creation_date" {
  description = "The date the state machine was created."
  type        = string
}
variable "definition" {
  description = "(Required) The Amazon States Language definition of the state machine."
  type        = string
}
variable "status" {
  description = "The current status of the state machine. Either ACTIVE or DELETING."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "type" {
  description = "(Optional) Determines whether a Standard or Express state machine is created. The default is STANDARD. You cannot update the type of a state machine once it has been created. Valid values: STANDARD, EXPRESS.logging_configuration Configuration Block"
  type        = string
}
variable "id" {
  description = "The ARN of the state machine."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "tracing_configuration" {
  description = "(Optional) Selects whether AWS X-Ray tracing is enabled."
  type        = string
}
variable "enabled" {
  description = "(Optional) When set to true, AWS X-Ray tracing is enabled. Make sure the State Machine has the correct IAM policies for logging. See the AWS Step Functions Developer Guide for details.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "logging_configuration" {
  description = "(Optional) Defines what execution history events are logged and where they are logged. The logging_configuration parameter is only valid when type is set to EXPRESS. Defaults to OFF. For more information see Logging Express Workflows and Log Levels in the AWS Step Functions User Guide."
  type        = string
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role to use for this state machine."
  type        = string
}
variable "include_execution_data" {
  description = "(Optional) Determines whether execution data is included in your log. When set to false, data is excluded."
  type        = string
}
variable "level" {
  description = "(Optional) Defines which category of execution history events are logged. Valid values: ALL, ERROR, FATAL, OFF"
  type        = string
}
variable "log_destination" {
  description = "(Optional) Amazon Resource Name (ARN) of a CloudWatch log group. Make sure the State Machine has the correct IAM policies for logging. The ARN must end with :*tracing_configuration Configuration Block"
  type        = string
}
variable "name" {
  description = "(Optional) The name of the state machine. The name should only contain 0-9, A-Z, -z, - and _. If omitted, Terraform will assign a random, unique name."
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
output "enabled" {
  description = "(Optional) When set to true, AWS X-Ray tracing is enabled. Make sure the State Machine has the correct IAM policies for logging. See the AWS Step Functions Developer Guide for details.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sfn_state_machine.aws_sfn_state_machine.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging_configuration" {
  description = "(Optional) Defines what execution history events are logged and where they are logged. The logging_configuration parameter is only valid when type is set to EXPRESS. Defaults to OFF. For more information see Logging Express Workflows and Log Levels in the AWS Step Functions User Guide."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.logging_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role to use for this state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "include_execution_data" {
  description = "(Optional) Determines whether execution data is included in your log. When set to false, data is excluded."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.include_execution_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level" {
  description = "(Optional) Defines which category of execution history events are logged. Valid values: ALL, ERROR, FATAL, OFF"
  value       = aws_sfn_state_machine.aws_sfn_state_machine.level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_destination" {
  description = "(Optional) Amazon Resource Name (ARN) of a CloudWatch log group. Make sure the State Machine has the correct IAM policies for logging. The ARN must end with :*tracing_configuration Configuration Block"
  value       = aws_sfn_state_machine.aws_sfn_state_machine.log_destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) The name of the state machine. The name should only contain 0-9, A-Z, -z, - and _. If omitted, Terraform will assign a random, unique name."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date the state machine was created."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "definition" {
  description = "(Required) The Amazon States Language definition of the state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the state machine. Either ACTIVE or DELETING."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Determines whether a Standard or Express state machine is created. The default is STANDARD. You cannot update the type of a state machine once it has been created. Valid values: STANDARD, EXPRESS.logging_configuration Configuration Block"
  value       = aws_sfn_state_machine.aws_sfn_state_machine.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tracing_configuration" {
  description = "(Optional) Selects whether AWS X-Ray tracing is enabled."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.tracing_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_date" {
  description = "The date the state machine was created."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.creation_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the state machine. Either ACTIVE or DELETING."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the state machine."
  value       = aws_sfn_state_machine.aws_sfn_state_machine.arn
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
      "kind/name"                   = "aws_sfn_state_machine"
      "kind/version"                = "v0.1.0"
    }
  }
}
