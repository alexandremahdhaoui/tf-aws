resource "aws_glue_trigger" "aws_glue_trigger" {
  conditions               = var.conditions
  security_configuration   = var.security_configuration
  start_on_creation        = var.start_on_creation
  tags                     = var.tags
  batch_window             = var.batch_window
  id                       = var.id
  name                     = var.name
  crawl_state              = var.crawl_state
  schedule                 = var.schedule
  timeout                  = var.timeout
  workflow_name            = var.workflow_name
  batch_size               = var.batch_size
  notify_delay_after       = var.notify_delay_after
  state                    = var.state
  logical                  = var.logical
  notification_property    = var.notification_property
  predicate                = var.predicate
  type                     = var.type
  create                   = var.create
  logical_operator         = var.logical_operator
  tags_all                 = var.tags_all
  crawler_name             = var.crawler_name
  description              = var.description
  enabled                  = var.enabled
  event_batching_condition = var.event_batching_condition
  job_name                 = var.job_name
  actions                  = var.actions
  arguments                = var.arguments
  arn                      = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "crawl_state" {
  description = "(Optional) The condition crawl state. Currently, the values supported are RUNNING, SUCCEEDED, CANCELLED, and FAILED. If this is specified, crawler_name must also be specified. Conflicts with state."
  type        = string
  default     = ""
}
variable "schedule" {
  description = " – (Optional) A cron expression used to specify the schedule. Time-Based Schedules for Jobs and Crawlers"
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Optional) The job run timeout in minutes. It overrides the timeout value of the job."
  type        = string
  default     = ""
}
variable "state" {
  description = "The current state of the trigger."
  type        = string
}
variable "workflow_name" {
  description = "(Optional) A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (ON_DEMAND or SCHEDULED type) and can contain multiple additional CONDITIONAL triggers."
  type        = string
  default     = ""
}
variable "batch_size" {
  description = "(Required)Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires."
  type        = string
}
variable "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification.Predicate"
  type        = string
  default     = ""
}
variable "predicate" {
  description = " – (Optional) A predicate to specify when the new trigger should fire. Required when trigger type is CONDITIONAL. See Predicate Below."
  type        = string
  default     = ""
}
variable "logical" {
  description = "(Optional) How to handle multiple conditions. Defaults to AND. Valid values are AND or ANY.Conditions"
  type        = string
  default     = ""
}
variable "notification_property" {
  description = "(Optional) Specifies configuration properties of a job run notification. See Notification Property details below.Notification Property"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "type" {
  description = " – (Required) The type of trigger. Valid values are CONDITIONAL, ON_DEMAND, and SCHEDULED."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "logical_operator" {
  description = "(Optional) A logical operator. Defaults to EQUALS.Event Batching Condition"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of Glue Trigger"
  type        = string
}
variable "crawler_name" {
  description = "(Optional) The name of the crawler to watch. If this is specified, crawl_state must also be specified. Conflicts with job_name."
  type        = string
  default     = ""
}
variable "description" {
  description = " – (Optional) A description of the new trigger."
  type        = string
  default     = ""
}
variable "enabled" {
  description = " – (Optional) Start the trigger. Defaults to true."
  type        = string
  default     = ""
}
variable "event_batching_condition" {
  description = "(Optional) Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.Actions"
  type        = string
  default     = ""
}
variable "job_name" {
  description = "(Optional) The name of the job to watch. If this is specified, state must also be specified. Conflicts with crawler_name."
  type        = string
  default     = ""
}
variable "actions" {
  description = " – (Required) List of actions initiated by this trigger when it fires. See Actions Below."
  type        = string
}
variable "arguments" {
  description = "(Optional) Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes."
  type        = string
  default     = ""
}
variable "conditions" {
  description = "(Required) A list of the conditions that determine when the trigger will fire. See Conditions."
  type        = string
}
variable "security_configuration" {
  description = "(Optional) The name of the Security Configuration structure to be used with this action."
  type        = string
  default     = ""
}
variable "name" {
  description = " – (Required) The name of the trigger."
  type        = string
}
variable "start_on_creation" {
  description = " – (Optional) Set to true to start SCHEDULED and CONDITIONAL triggers when created. True is not supported for ON_DEMAND triggers."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "batch_window" {
  description = "(Optional) Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is 900.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Trigger name"
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
output "timeout" {
  description = "(Optional) The job run timeout in minutes. It overrides the timeout value of the job."
  value       = aws_glue_trigger.aws_glue_trigger.timeout
}
output "batch_size" {
  description = "(Required)Number of events that must be received from Amazon EventBridge before EventBridge  event trigger fires."
  value       = aws_glue_trigger.aws_glue_trigger.batch_size
}
output "notify_delay_after" {
  description = "(Optional) After a job run starts, the number of minutes to wait before sending a job run delay notification.Predicate"
  value       = aws_glue_trigger.aws_glue_trigger.notify_delay_after
}
output "state" {
  description = "The current state of the trigger."
  value       = aws_glue_trigger.aws_glue_trigger.state
}
output "workflow_name" {
  description = "(Optional) A workflow to which the trigger should be associated to. Every workflow graph (DAG) needs a starting trigger (ON_DEMAND or SCHEDULED type) and can contain multiple additional CONDITIONAL triggers."
  value       = aws_glue_trigger.aws_glue_trigger.workflow_name
}
output "logical" {
  description = "(Optional) How to handle multiple conditions. Defaults to AND. Valid values are AND or ANY.Conditions"
  value       = aws_glue_trigger.aws_glue_trigger.logical
}
output "notification_property" {
  description = "(Optional) Specifies configuration properties of a job run notification. See Notification Property details below.Notification Property"
  value       = aws_glue_trigger.aws_glue_trigger.notification_property
}
output "predicate" {
  description = " – (Optional) A predicate to specify when the new trigger should fire. Required when trigger type is CONDITIONAL. See Predicate Below."
  value       = aws_glue_trigger.aws_glue_trigger.predicate
}
output "create" {
  description = "(Default 5m)"
  value       = aws_glue_trigger.aws_glue_trigger.create
}
output "logical_operator" {
  description = "(Optional) A logical operator. Defaults to EQUALS.Event Batching Condition"
  value       = aws_glue_trigger.aws_glue_trigger.logical_operator
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_glue_trigger.aws_glue_trigger.tags_all
}
output "type" {
  description = " – (Required) The type of trigger. Valid values are CONDITIONAL, ON_DEMAND, and SCHEDULED."
  value       = aws_glue_trigger.aws_glue_trigger.type
}
output "job_name" {
  description = "(Optional) The name of the job to watch. If this is specified, state must also be specified. Conflicts with crawler_name."
  value       = aws_glue_trigger.aws_glue_trigger.job_name
}
output "actions" {
  description = " – (Required) List of actions initiated by this trigger when it fires. See Actions Below."
  value       = aws_glue_trigger.aws_glue_trigger.actions
}
output "arguments" {
  description = "(Optional) Arguments to be passed to the job. You can specify arguments here that your own job-execution script consumes, as well as arguments that AWS Glue itself consumes."
  value       = aws_glue_trigger.aws_glue_trigger.arguments
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue Trigger"
  value       = aws_glue_trigger.aws_glue_trigger.arn
}
output "crawler_name" {
  description = "(Optional) The name of the crawler to watch. If this is specified, crawl_state must also be specified. Conflicts with job_name."
  value       = aws_glue_trigger.aws_glue_trigger.crawler_name
}
output "description" {
  description = " – (Optional) A description of the new trigger."
  value       = aws_glue_trigger.aws_glue_trigger.description
}
output "enabled" {
  description = " – (Optional) Start the trigger. Defaults to true."
  value       = aws_glue_trigger.aws_glue_trigger.enabled
}
output "event_batching_condition" {
  description = "(Optional) Batch condition that must be met (specified number of events received or batch time window expired) before EventBridge event trigger fires. See Event Batching Condition.Actions"
  value       = aws_glue_trigger.aws_glue_trigger.event_batching_condition
}
output "conditions" {
  description = "(Required) A list of the conditions that determine when the trigger will fire. See Conditions."
  value       = aws_glue_trigger.aws_glue_trigger.conditions
}
output "security_configuration" {
  description = "(Optional) The name of the Security Configuration structure to be used with this action."
  value       = aws_glue_trigger.aws_glue_trigger.security_configuration
}
output "batch_window" {
  description = "(Optional) Window of time in seconds after which EventBridge event trigger fires. Window starts when first event is received. Default value is 900.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_trigger.aws_glue_trigger.batch_window
}
output "id" {
  description = "Trigger name"
  value       = aws_glue_trigger.aws_glue_trigger.id
}
output "name" {
  description = " – (Required) The name of the trigger."
  value       = aws_glue_trigger.aws_glue_trigger.name
}
output "start_on_creation" {
  description = " – (Optional) Set to true to start SCHEDULED and CONDITIONAL triggers when created. True is not supported for ON_DEMAND triggers."
  value       = aws_glue_trigger.aws_glue_trigger.start_on_creation
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_glue_trigger.aws_glue_trigger.tags
}
output "crawl_state" {
  description = "(Optional) The condition crawl state. Currently, the values supported are RUNNING, SUCCEEDED, CANCELLED, and FAILED. If this is specified, crawler_name must also be specified. Conflicts with state."
  value       = aws_glue_trigger.aws_glue_trigger.crawl_state
}
output "schedule" {
  description = " – (Optional) A cron expression used to specify the schedule. Time-Based Schedules for Jobs and Crawlers"
  value       = aws_glue_trigger.aws_glue_trigger.schedule
}
output "state" {
  description = "The current state of the trigger."
  value       = aws_glue_trigger.aws_glue_trigger.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_glue_trigger.aws_glue_trigger.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of Glue Trigger"
  value       = aws_glue_trigger.aws_glue_trigger.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_glue_trigger.aws_glue_trigger.create
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_glue_trigger.aws_glue_trigger.delete
}
output "id" {
  description = "Trigger name"
  value       = aws_glue_trigger.aws_glue_trigger.id
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
      "kind/name"                   = "aws_glue_trigger"
      "kind/version"                = "v0.1.0"
    }
  }
}
