resource "aws_ssm_maintenance_window_task" "aws_ssm_maintenance_window_task" {
  max_errors                 = var.max_errors
  task_invocation_parameters = var.task_invocation_parameters
  id                         = var.id
  input                      = var.input
  description                = var.description
  notification_arn           = var.notification_arn
  notification_config        = var.notification_config
  output_s3_bucket           = var.output_s3_bucket
  output_s3_key_prefix       = var.output_s3_key_prefix
  arn                        = var.arn
  automation_parameters      = var.automation_parameters
  max_concurrency            = var.max_concurrency
  parameter                  = var.parameter
  payload                    = var.payload
  values                     = var.values
  window_id                  = var.window_id
  cloudwatch_log_group_name  = var.cloudwatch_log_group_name
  comment                    = var.comment
  notification_events        = var.notification_events
  service_role_arn           = var.service_role_arn
  client_context             = var.client_context
  name                       = var.name
  lambda_parameters          = var.lambda_parameters
  priority                   = var.priority
  qualifier                  = var.qualifier
  step_functions_parameters  = var.step_functions_parameters
  targets                    = var.targets
  cutoff_behavior            = var.cutoff_behavior
  document_version           = var.document_version
  notification_type          = var.notification_type
  cloudwatch_config          = var.cloudwatch_config
  document_hash_type         = var.document_hash_type
  run_command_parameters     = var.run_command_parameters
  task_arn                   = var.task_arn
  task_type                  = var.task_type
  timeout_seconds            = var.timeout_seconds
  cloudwatch_output_enabled  = var.cloudwatch_output_enabled
  document_hash              = var.document_hash
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "task_type" {
  description = "(Required) The type of task being registered. Valid values: AUTOMATION, LAMBDA, RUN_COMMAND or STEP_FUNCTIONS."
  type        = string
}
variable "timeout_seconds" {
  description = "(Optional) If this time is reached and the command has not already started executing, it doesn't run."
  type        = string
  default     = ""
}
variable "cloudwatch_output_enabled" {
  description = "(Optional) Enables Systems Manager to send command output to CloudWatch Logs.parameter supports the following:"
  type        = string
  default     = ""
}
variable "document_hash" {
  description = "(Optional) The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated."
  type        = string
  default     = ""
}
variable "run_command_parameters" {
  description = "(Optional) The parameters for a RUN_COMMAND task type. Documented below."
  type        = string
  default     = ""
}
variable "task_arn" {
  description = "(Required) The ARN of the task to execute."
  type        = string
}
variable "id" {
  description = "The ID of the maintenance window task."
  type        = string
}
variable "input" {
  description = "(Optional) The inputs for the STEP_FUNCTION task."
  type        = string
  default     = ""
}
variable "max_errors" {
  description = "(Optional) The maximum number of errors allowed before this task stops being scheduled."
  type        = string
  default     = ""
}
variable "task_invocation_parameters" {
  description = "(Optional) Configuration block with parameters for task execution.task_invocation_parameters supports the following:"
  type        = string
  default     = ""
}
variable "notification_config" {
  description = "(Optional) Configurations for sending notifications about command status changes on a per-instance basis. Documented below."
  type        = string
  default     = ""
}
variable "output_s3_bucket" {
  description = "(Optional) The name of the Amazon S3 bucket."
  type        = string
  default     = ""
}
variable "output_s3_key_prefix" {
  description = "(Optional) The Amazon S3 bucket subfolder."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the maintenance window task."
  type        = string
}
variable "automation_parameters" {
  description = "(Optional) The parameters for an AUTOMATION task type. Documented below."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the maintenance window task."
  type        = string
  default     = ""
}
variable "notification_arn" {
  description = "(Optional) An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic."
  type        = string
  default     = ""
}
variable "payload" {
  description = "(Optional) JSON to provide to your Lambda function as input."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) The array of strings.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "window_id" {
  description = "(Required) The Id of the maintenance window to register the task with."
  type        = string
}
variable "cloudwatch_log_group_name" {
  description = "(Optional) The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName."
  type        = string
  default     = ""
}
variable "comment" {
  description = "(Optional) Information about the command(s) to execute."
  type        = string
  default     = ""
}
variable "max_concurrency" {
  description = "(Optional) The maximum number of targets this task can be run for in parallel."
  type        = string
  default     = ""
}
variable "parameter" {
  description = "(Optional) The parameters for the RUN_COMMAND task execution. Documented below."
  type        = string
  default     = ""
}
variable "notification_events" {
  description = "(Optional) The different events for which you can receive notifications. Valid values: All, InProgress, Success, TimedOut, Cancelled, and Failed"
  type        = string
  default     = ""
}
variable "client_context" {
  description = "(Optional) Pass client-specific information to the Lambda function that you are invoking."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The parameter name."
  type        = string
}
variable "service_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks."
  type        = string
  default     = ""
}
variable "qualifier" {
  description = "(Optional) Specify a Lambda function version or alias name.run_command_parameters supports the following:"
  type        = string
  default     = ""
}
variable "step_functions_parameters" {
  description = "(Optional) The parameters for a STEP_FUNCTIONS task type. Documented below.automation_parameters supports the following:"
  type        = string
  default     = ""
}
variable "targets" {
  description = "(Optional) The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2."
  type        = string
  default     = ""
}
variable "cutoff_behavior" {
  description = "(Optional) Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are CONTINUE_TASK and CANCEL_TASK."
  type        = string
  default     = ""
}
variable "document_version" {
  description = "(Optional) The version of an Automation document to use during task execution."
  type        = string
  default     = ""
}
variable "lambda_parameters" {
  description = "(Optional) The parameters for a LAMBDA task type. Documented below."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Optional) The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel."
  type        = string
  default     = ""
}
variable "cloudwatch_config" {
  description = "(Optional) Configuration options for sending command output to CloudWatch Logs. Documented below.step_functions_parameters supports the following:"
  type        = string
  default     = ""
}
variable "document_hash_type" {
  description = "(Optional) SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: Sha256 and Sha1"
  type        = string
  default     = ""
}
variable "notification_type" {
  description = "(Optional) When specified with Command, receive notification when the status of a command changes. When specified with Invocation, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: Command and Invocationcloudwatch_config supports the following:"
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
output "task_type" {
  description = "(Required) The type of task being registered. Valid values: AUTOMATION, LAMBDA, RUN_COMMAND or STEP_FUNCTIONS."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.task_type
}
output "timeout_seconds" {
  description = "(Optional) If this time is reached and the command has not already started executing, it doesn't run."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.timeout_seconds
}
output "cloudwatch_output_enabled" {
  description = "(Optional) Enables Systems Manager to send command output to CloudWatch Logs.parameter supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.cloudwatch_output_enabled
}
output "document_hash" {
  description = "(Optional) The SHA-256 or SHA-1 hash created by the system when the document was created. SHA-1 hashes have been deprecated."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.document_hash
}
output "run_command_parameters" {
  description = "(Optional) The parameters for a RUN_COMMAND task type. Documented below."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.run_command_parameters
}
output "task_arn" {
  description = "(Required) The ARN of the task to execute."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.task_arn
}
output "id" {
  description = "The ID of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.id
}
output "input" {
  description = "(Optional) The inputs for the STEP_FUNCTION task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.input
}
output "max_errors" {
  description = "(Optional) The maximum number of errors allowed before this task stops being scheduled."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.max_errors
}
output "task_invocation_parameters" {
  description = "(Optional) Configuration block with parameters for task execution.task_invocation_parameters supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.task_invocation_parameters
}
output "notification_config" {
  description = "(Optional) Configurations for sending notifications about command status changes on a per-instance basis. Documented below."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.notification_config
}
output "output_s3_bucket" {
  description = "(Optional) The name of the Amazon S3 bucket."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.output_s3_bucket
}
output "output_s3_key_prefix" {
  description = "(Optional) The Amazon S3 bucket subfolder."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.output_s3_key_prefix
}
output "arn" {
  description = "The ARN of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.arn
}
output "automation_parameters" {
  description = "(Optional) The parameters for an AUTOMATION task type. Documented below."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.automation_parameters
}
output "description" {
  description = "(Optional) The description of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.description
}
output "notification_arn" {
  description = "(Optional) An Amazon Resource Name (ARN) for a Simple Notification Service (SNS) topic. Run Command pushes notifications about command status changes to this topic."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.notification_arn
}
output "payload" {
  description = "(Optional) JSON to provide to your Lambda function as input."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.payload
}
output "values" {
  description = "(Required) The array of strings.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.values
}
output "window_id" {
  description = "(Required) The Id of the maintenance window to register the task with."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.window_id
}
output "cloudwatch_log_group_name" {
  description = "(Optional) The name of the CloudWatch log group where you want to send command output. If you don't specify a group name, Systems Manager automatically creates a log group for you. The log group uses the following naming format: aws/ssm/SystemsManagerDocumentName."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.cloudwatch_log_group_name
}
output "comment" {
  description = "(Optional) Information about the command(s) to execute."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.comment
}
output "max_concurrency" {
  description = "(Optional) The maximum number of targets this task can be run for in parallel."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.max_concurrency
}
output "parameter" {
  description = "(Optional) The parameters for the RUN_COMMAND task execution. Documented below."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.parameter
}
output "notification_events" {
  description = "(Optional) The different events for which you can receive notifications. Valid values: All, InProgress, Success, TimedOut, Cancelled, and Failed"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.notification_events
}
output "client_context" {
  description = "(Optional) Pass client-specific information to the Lambda function that you are invoking."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.client_context
}
output "name" {
  description = "(Required) The parameter name."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.name
}
output "service_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) service role to use to publish Amazon Simple Notification Service (Amazon SNS) notifications for maintenance window Run Command tasks."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.service_role_arn
}
output "qualifier" {
  description = "(Optional) Specify a Lambda function version or alias name.run_command_parameters supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.qualifier
}
output "step_functions_parameters" {
  description = "(Optional) The parameters for a STEP_FUNCTIONS task type. Documented below.automation_parameters supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.step_functions_parameters
}
output "targets" {
  description = "(Optional) The targets (either instances or window target ids). Instances are specified using Key=InstanceIds,Values=instanceid1,instanceid2. Window target ids are specified using Key=WindowTargetIds,Values=window target id1, window target id2."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.targets
}
output "cutoff_behavior" {
  description = "(Optional) Indicates whether tasks should continue to run after the cutoff time specified in the maintenance windows is reached. Valid values are CONTINUE_TASK and CANCEL_TASK."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.cutoff_behavior
}
output "document_version" {
  description = "(Optional) The version of an Automation document to use during task execution."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.document_version
}
output "lambda_parameters" {
  description = "(Optional) The parameters for a LAMBDA task type. Documented below."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.lambda_parameters
}
output "priority" {
  description = "(Optional) The priority of the task in the Maintenance Window, the lower the number the higher the priority. Tasks in a Maintenance Window are scheduled in priority order with tasks that have the same priority scheduled in parallel."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.priority
}
output "cloudwatch_config" {
  description = "(Optional) Configuration options for sending command output to CloudWatch Logs. Documented below.step_functions_parameters supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.cloudwatch_config
}
output "document_hash_type" {
  description = "(Optional) SHA-256 or SHA-1. SHA-1 hashes have been deprecated. Valid values: Sha256 and Sha1"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.document_hash_type
}
output "notification_type" {
  description = "(Optional) When specified with Command, receive notification when the status of a command changes. When specified with Invocation, for commands sent to multiple instances, receive notification on a per-instance basis when the status of a command changes. Valid values: Command and Invocationcloudwatch_config supports the following:"
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.notification_type
}
output "window_task_id" {
  description = "The ID of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.window_task_id
}
output "arn" {
  description = "The ARN of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.arn
}
output "id" {
  description = "The ID of the maintenance window task."
  value       = aws_ssm_maintenance_window_task.aws_ssm_maintenance_window_task.id
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
      "kind/name"                   = "aws_ssm_maintenance_window_task"
      "kind/version"                = "v0.1.0"
    }
  }
}
