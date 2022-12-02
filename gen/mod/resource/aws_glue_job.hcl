resource "aws_glue_job" "aws_glue_job" {
  command                   = var.command
  description               = var.description
  execution_class           = var.execution_class
  execution_property        = var.execution_property
  non_overridable_arguments = var.non_overridable_arguments
  python_version            = var.python_version
  worker_type               = var.worker_type
  max_capacity              = var.max_capacity
  max_retries               = var.max_retries
  notification_property     = var.notification_property
  number_of_workers         = var.number_of_workers
  role_arn                  = var.role_arn
  script_location           = var.script_location
  timeout                   = var.timeout
  arn                       = var.arn
  name                      = var.name
  tags                      = var.tags
  connections               = var.connections
  default_arguments         = var.default_arguments
  glue_version              = var.glue_version
  id                        = var.id
  max_concurrent_runs       = var.max_concurrent_runs
  notify_delay_after        = var.notify_delay_after
  security_configuration    = var.security_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of Glue Job"
  type        = string
}
variable "name" {
  description = "(Optional) The name of the job command. Defaults to glueetl. Use pythonshell for Python Shell Job Type, or gluestreaming for Streaming Job Type. max_capacity needs to be set if pythonshell is chosen."
  type        = string
  default     = ""
}
variable "max_concurrent_runs" {
  description = "(Optional) The maximum number of concurrent runs allowed for a job. The default is 1.notification_property Argument Reference"
  type        = string
  default     = ""
}
variable "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "security_configuration" {
  description = "(Optional) The name of the Security Configuration to be associated with the job."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "connections" {
  description = " – (Optional) The list of connections used for this job."
  type        = string
  default     = ""
}
variable "default_arguments" {
  description = " – (Optional) The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide."
  type        = string
  default     = ""
}
variable "glue_version" {
  description = "(Optional) The version of glue to use, for example \"1.0\". For information about available versions, see the AWS Glue Release Notes."
  type        = string
  default     = ""
}
variable "id" {
  description = "Job name"
  type        = string
}
variable "non_overridable_arguments" {
  description = " – (Optional) Non-overridable arguments for this job, specified as name-value pairs."
  type        = string
  default     = ""
}
variable "python_version" {
  description = "(Optional) The Python version being used to execute a Python shell job. Allowed values are 2, 3 or 3.9. Version 3 refers to Python 3.6.execution_property Argument Reference"
  type        = string
  default     = ""
}
variable "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X."
  type        = string
  default     = ""
}
variable "command" {
  description = " – (Required) The command of the job. Defined below."
  type        = string
}
variable "description" {
  description = " – (Optional) Description of the job."
  type        = string
  default     = ""
}
variable "execution_class" {
  description = "(Optional) Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: FLEX, STANDARD."
  type        = string
  default     = ""
}
variable "execution_property" {
  description = " – (Optional) Execution property of the job. Defined below."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = " – (Required) The ARN of the IAM role associated with this job."
  type        = string
}
variable "script_location" {
  description = "(Required) Specifies the S3 path to a script that executes a job."
  type        = string
}
variable "timeout" {
  description = " – (Optional) The job timeout in minutes. The default is 2880 minutes (48 hours) for glueetl and pythonshell jobs, and null (unlimited) for gluestreaming jobs."
  type        = string
  default     = ""
}
variable "max_capacity" {
  description = " – (Optional) The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. Required when pythonshell is set, accept either 0.0625 or 1.0. Use number_of_workers and worker_type arguments instead with glue_version 2.0 and above."
  type        = string
  default     = ""
}
variable "max_retries" {
  description = " – (Optional) The maximum number of times to retry this job if it fails."
  type        = string
  default     = ""
}
variable "notification_property" {
  description = "(Optional) Notification property of the job. Defined below."
  type        = string
  default     = ""
}
variable "number_of_workers" {
  description = "(Optional) The number of workers of a defined workerType that are allocated when a job runs.command Argument Reference"
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
output "notification_property" {
  description = "(Optional) Notification property of the job. Defined below."
  value       = aws_glue_job.aws_glue_job.notification_property
}
output "number_of_workers" {
  description = "(Optional) The number of workers of a defined workerType that are allocated when a job runs.command Argument Reference"
  value       = aws_glue_job.aws_glue_job.number_of_workers
}
output "role_arn" {
  description = " – (Required) The ARN of the IAM role associated with this job."
  value       = aws_glue_job.aws_glue_job.role_arn
}
output "script_location" {
  description = "(Required) Specifies the S3 path to a script that executes a job."
  value       = aws_glue_job.aws_glue_job.script_location
}
output "timeout" {
  description = " – (Optional) The job timeout in minutes. The default is 2880 minutes (48 hours) for glueetl and pythonshell jobs, and null (unlimited) for gluestreaming jobs."
  value       = aws_glue_job.aws_glue_job.timeout
}
output "max_capacity" {
  description = " – (Optional) The maximum number of AWS Glue data processing units (DPUs) that can be allocated when this job runs. Required when pythonshell is set, accept either 0.0625 or 1.0. Use number_of_workers and worker_type arguments instead with glue_version 2.0 and above."
  value       = aws_glue_job.aws_glue_job.max_capacity
}
output "max_retries" {
  description = " – (Optional) The maximum number of times to retry this job if it fails."
  value       = aws_glue_job.aws_glue_job.max_retries
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue Job"
  value       = aws_glue_job.aws_glue_job.arn
}
output "name" {
  description = "(Optional) The name of the job command. Defaults to glueetl. Use pythonshell for Python Shell Job Type, or gluestreaming for Streaming Job Type. max_capacity needs to be set if pythonshell is chosen."
  value       = aws_glue_job.aws_glue_job.name
}
output "glue_version" {
  description = "(Optional) The version of glue to use, for example \"1.0\". For information about available versions, see the AWS Glue Release Notes."
  value       = aws_glue_job.aws_glue_job.glue_version
}
output "id" {
  description = "Job name"
  value       = aws_glue_job.aws_glue_job.id
}
output "max_concurrent_runs" {
  description = "(Optional) The maximum number of concurrent runs allowed for a job. The default is 1.notification_property Argument Reference"
  value       = aws_glue_job.aws_glue_job.max_concurrent_runs
}
output "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_job.aws_glue_job.notify_delay_after
}
output "security_configuration" {
  description = "(Optional) The name of the Security Configuration to be associated with the job."
  value       = aws_glue_job.aws_glue_job.security_configuration
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_glue_job.aws_glue_job.tags
}
output "connections" {
  description = " – (Optional) The list of connections used for this job."
  value       = aws_glue_job.aws_glue_job.connections
}
output "default_arguments" {
  description = " – (Optional) The map of default arguments for this job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes. For information about how to specify and consume your own Job arguments, see the Calling AWS Glue APIs in Python topic in the developer guide. For information about the key-value pairs that AWS Glue consumes to set up your job, see the Special Parameters Used by AWS Glue topic in the developer guide."
  value       = aws_glue_job.aws_glue_job.default_arguments
}
output "execution_class" {
  description = "(Optional) Indicates whether the job is run with a standard or flexible execution class. The standard execution class is ideal for time-sensitive workloads that require fast job startup and dedicated resources. Valid value: FLEX, STANDARD."
  value       = aws_glue_job.aws_glue_job.execution_class
}
output "execution_property" {
  description = " – (Optional) Execution property of the job. Defined below."
  value       = aws_glue_job.aws_glue_job.execution_property
}
output "non_overridable_arguments" {
  description = " – (Optional) Non-overridable arguments for this job, specified as name-value pairs."
  value       = aws_glue_job.aws_glue_job.non_overridable_arguments
}
output "python_version" {
  description = "(Optional) The Python version being used to execute a Python shell job. Allowed values are 2, 3 or 3.9. Version 3 refers to Python 3.6.execution_property Argument Reference"
  value       = aws_glue_job.aws_glue_job.python_version
}
output "worker_type" {
  description = "(Optional) The type of predefined worker that is allocated when a job runs. Accepts a value of Standard, G.1X, or G.2X."
  value       = aws_glue_job.aws_glue_job.worker_type
}
output "command" {
  description = " – (Required) The command of the job. Defined below."
  value       = aws_glue_job.aws_glue_job.command
}
output "description" {
  description = " – (Optional) Description of the job."
  value       = aws_glue_job.aws_glue_job.description
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue Job"
  value       = aws_glue_job.aws_glue_job.arn
}
output "id" {
  description = "Job name"
  value       = aws_glue_job.aws_glue_job.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_glue_job.aws_glue_job.tags_all
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
      "kind/name"                   = "aws_glue_job"
      "kind/version"                = "v0.1.0"
    }
  }
}
