resource "aws_batch_job_definition" "aws_batch_job_definition" {
  attempts                 = var.attempts
  container_properties     = var.container_properties
  evaluate_on_exit         = var.evaluate_on_exit
  on_exit_code             = var.on_exit_code
  on_reason                = var.on_reason
  on_status_reason         = var.on_status_reason
  parameters               = var.parameters
  arn                      = var.arn
  timeout                  = var.timeout
  platform_capabilities    = var.platform_capabilities
  type                     = var.type
  action                   = var.action
  name                     = var.name
  retry_strategy           = var.retry_strategy
  revision                 = var.revision
  attempt_duration_seconds = var.attempt_duration_seconds
  tags                     = var.tags
  propagate_tags           = var.propagate_tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "on_status_reason" {
  description = "(Optional) A glob pattern to match against the status reason returned for a job.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "parameters" {
  description = "(Optional) Specifies the parameter substitution placeholders to set in the job definition."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name of the job definition."
  type        = string
}
variable "attempts" {
  description = "(Optional) The number of times to move a job to the RUNNABLE status. You may specify between 1 and 10 attempts."
  type        = string
  default     = ""
}
variable "container_properties" {
  description = "(Optional) A valid container propertiestype parameter is container."
  type        = string
  default     = ""
}
variable "evaluate_on_exit" {
  description = "(Optional) The evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the attempts parameter must also be specified. You may specify up to 5 configuration blocks.timeouttimeout supports the following:"
  type        = string
  default     = ""
}
variable "on_exit_code" {
  description = "(Optional) A glob pattern to match against the decimal representation of the exit code returned for a job."
  type        = string
  default     = ""
}
variable "on_reason" {
  description = "(Optional) A glob pattern to match against the reason returned for a job."
  type        = string
  default     = ""
}
variable "platform_capabilities" {
  description = "(Optional) The platform capabilities required by the job definition. If no value is specified, it defaults to EC2. To run the job on Fargate resources, specify FARGATE."
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Optional) Specifies the timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of timeout is 1. Defined below."
  type        = string
  default     = ""
}
variable "action" {
  description = "(Required) Specifies the action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: RETRY, EXIT."
  type        = string
}
variable "type" {
  description = "(Required) The type of job definition.  Must be container.retry_strategyretry_strategy supports the following:"
  type        = string
}
variable "attempt_duration_seconds" {
  description = "(Optional) The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds.evaluate_on_exit"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Specifies the name of the job definition."
  type        = string
}
variable "retry_strategy" {
  description = "retry_strategy is 1.  Defined below."
  type        = string
}
variable "revision" {
  description = "The revision of the job definition."
  type        = string
}
variable "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is false."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the job definition to the corresponding Amazon ECS task. Default is false."
  value       = aws_batch_job_definition.aws_batch_job_definition.propagate_tags
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_batch_job_definition.aws_batch_job_definition.tags
}
output "on_exit_code" {
  description = "(Optional) A glob pattern to match against the decimal representation of the exit code returned for a job."
  value       = aws_batch_job_definition.aws_batch_job_definition.on_exit_code
}
output "on_reason" {
  description = "(Optional) A glob pattern to match against the reason returned for a job."
  value       = aws_batch_job_definition.aws_batch_job_definition.on_reason
}
output "on_status_reason" {
  description = "(Optional) A glob pattern to match against the status reason returned for a job.In addition to all arguments above, the following attributes are exported:"
  value       = aws_batch_job_definition.aws_batch_job_definition.on_status_reason
}
output "parameters" {
  description = "(Optional) Specifies the parameter substitution placeholders to set in the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.parameters
}
output "arn" {
  description = "The Amazon Resource Name of the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.arn
}
output "attempts" {
  description = "(Optional) The number of times to move a job to the RUNNABLE status. You may specify between 1 and 10 attempts."
  value       = aws_batch_job_definition.aws_batch_job_definition.attempts
}
output "container_properties" {
  description = "(Optional) A valid container propertiestype parameter is container."
  value       = aws_batch_job_definition.aws_batch_job_definition.container_properties
}
output "evaluate_on_exit" {
  description = "(Optional) The evaluate on exit conditions under which the job should be retried or failed. If this parameter is specified, then the attempts parameter must also be specified. You may specify up to 5 configuration blocks.timeouttimeout supports the following:"
  value       = aws_batch_job_definition.aws_batch_job_definition.evaluate_on_exit
}
output "platform_capabilities" {
  description = "(Optional) The platform capabilities required by the job definition. If no value is specified, it defaults to EC2. To run the job on Fargate resources, specify FARGATE."
  value       = aws_batch_job_definition.aws_batch_job_definition.platform_capabilities
}
output "timeout" {
  description = "(Optional) Specifies the timeout for jobs so that if a job runs longer, AWS Batch terminates the job. Maximum number of timeout is 1. Defined below."
  value       = aws_batch_job_definition.aws_batch_job_definition.timeout
}
output "action" {
  description = "(Required) Specifies the action to take if all of the specified conditions are met. The values are not case sensitive. Valid values: RETRY, EXIT."
  value       = aws_batch_job_definition.aws_batch_job_definition.action
}
output "type" {
  description = "(Required) The type of job definition.  Must be container.retry_strategyretry_strategy supports the following:"
  value       = aws_batch_job_definition.aws_batch_job_definition.type
}
output "attempt_duration_seconds" {
  description = "(Optional) The time duration in seconds after which AWS Batch terminates your jobs if they have not finished. The minimum value for the timeout is 60 seconds.evaluate_on_exit"
  value       = aws_batch_job_definition.aws_batch_job_definition.attempt_duration_seconds
}
output "name" {
  description = "(Required) Specifies the name of the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.name
}
output "retry_strategy" {
  description = "retry_strategy is 1.  Defined below."
  value       = aws_batch_job_definition.aws_batch_job_definition.retry_strategy
}
output "revision" {
  description = "The revision of the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.revision
}
output "arn" {
  description = "The Amazon Resource Name of the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.arn
}
output "revision" {
  description = "The revision of the job definition."
  value       = aws_batch_job_definition.aws_batch_job_definition.revision
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_batch_job_definition.aws_batch_job_definition.tags_all
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
      "kind/name"                   = "aws_batch_job_definition"
      "kind/version"                = "v0.1.0"
    }
  }
}
