resource "aws_cloudtrail" "aws_cloudtrail" {
  tags_all                         = var.tags_all
  enable_logging                   = var.enable_logging
  name                             = var.name
  not_starts_with                  = var.not_starts_with
  tags                             = var.tags
  field_selector                   = var.field_selector
  insight_selector                 = var.insight_selector
  starts_with                      = var.starts_with
  type                             = var.type
  equals                           = var.equals
  is_multi_region_trail            = var.is_multi_region_trail
  insight_type                     = var.insight_type
  not_equals                       = var.not_equals
  cloud_watch_logs_group_arn       = var.cloud_watch_logs_group_arn
  cloud_watch_logs_role_arn        = var.cloud_watch_logs_role_arn
  ends_with                        = var.ends_with
  include_global_service_events    = var.include_global_service_events
  include_management_events        = var.include_management_events
  arn                              = var.arn
  event_selector                   = var.event_selector
  home_region                      = var.home_region
  id                               = var.id
  advanced_event_selector          = var.advanced_event_selector
  kms_key_id                       = var.kms_key_id
  read_write_type                  = var.read_write_type
  sns_topic_name                   = var.sns_topic_name
  enable_log_file_validation       = var.enable_log_file_validation
  field                            = var.field
  is_organization_trail            = var.is_organization_trail
  not_ends_with                    = var.not_ends_with
  values                           = var.values
  data_resource                    = var.data_resource
  exclude_management_event_sources = var.exclude_management_event_sources
  s3_bucket_name                   = var.s3_bucket_name
  s3_key_prefix                    = var.s3_key_prefix
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "equals" {
  description = " (Optional) - A list of values that includes events that match the exact value of the event record field specified as the value of field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields."
  type        = string
  default     = ""
}
variable "is_multi_region_trail" {
  description = "(Optional) Whether the trail is created in the current region or in all regions. Defaults to false."
  type        = string
  default     = ""
}
variable "cloud_watch_logs_group_arn" {
  description = "(Optional) Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard."
  type        = string
  default     = ""
}
variable "cloud_watch_logs_role_arn" {
  description = "(Optional) Role for the CloudWatch Logs endpoint to assume to write to a user???s log group."
  type        = string
  default     = ""
}
variable "ends_with" {
  description = " (Optional) - A list of values that includes events that match the last few characters of the event record field specified as the value of field."
  type        = string
  default     = ""
}
variable "include_global_service_events" {
  description = "(Optional) Whether the trail is publishing events from global services such as IAM to the log files. Defaults to true."
  type        = string
  default     = ""
}
variable "insight_type" {
  description = "(Optional) Type of insights to log on a trail. Valid values are: ApiCallRateInsight and ApiErrorRateInsight.Advanced Event Selector ArgumentsFor strongadvanced_event_selector the following attributes are supported."
  type        = string
  default     = ""
}
variable "not_equals" {
  description = " (Optional) - A list of values that excludes events that match the exact value of the event record field specified as the value of field."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the trail."
  type        = string
  default     = ""
}
variable "event_selector" {
  description = "(Optional) Specifies an event selector for enabling data event logging. Fields documented below. Please note the CloudTrail limits when configuring these. Conflicts with advanced_event_selector."
  type        = string
  default     = ""
}
variable "home_region" {
  description = "Region in which the trail was created."
  type        = string
  default     = ""
}
variable "id" {
  description = "Name of the trail."
  type        = string
  default     = ""
}
variable "include_management_events" {
  description = "(Optional) Whether to include management events for your trail. Defaults to true."
  type        = string
  default     = ""
}
variable "advanced_event_selector" {
  description = "(Optional) Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with event_selector."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) KMS key ARN to use to encrypt the logs delivered by CloudTrail."
  type        = string
  default     = ""
}
variable "read_write_type" {
  description = "(Optional) Type of events to log. Valid values are ReadOnly, WriteOnly, All. Default value is All.data_resourceThis configuration block supports the following attributes:"
  type        = string
  default     = ""
}
variable "enable_log_file_validation" {
  description = "(Optional) Whether log file integrity validation is enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "field" {
  description = " (Required) - Field in an event record on which to filter events to be logged. You can specify only the following values: readOnly, eventSource, eventName, eventCategory, resources.type, resources.ARN."
  type        = string
}
variable "is_organization_trail" {
  description = "(Optional) Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to false."
  type        = string
  default     = ""
}
variable "not_ends_with" {
  description = " (Optional) - A list of values that excludes events that match the last few characters of the event record field specified as the value of field.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "sns_topic_name" {
  description = "(Optional) Name of the Amazon SNS topic defined for notification of log file delivery."
  type        = string
  default     = ""
}
variable "data_resource" {
  description = "(Optional) Configuration block for data events. See details below."
  type        = string
  default     = ""
}
variable "exclude_management_event_sources" {
  description = " (Optional) -  A set of event sources to exclude. Valid values include: kms.amazonaws.com and rdsdata.amazonaws.com. include_management_events must be set totrue to allow this."
  type        = string
  default     = ""
}
variable "s3_bucket_name" {
  description = "(Required) Name of the S3 bucket designated for publishing log files."
  type        = string
}
variable "s3_key_prefix" {
  description = "(Optional) S3 key prefix that follows the name of the bucket you have designated for log file delivery."
  type        = string
  default     = ""
}
variable "values" {
  description = "(Required) List of ARN strings or partial ARN strings to specify selectors for data audit events over data resources. ARN list is specific to single-valued type. For example, arn:aws:s3:::<bucket name>/ for all objects in a bucket, arn:aws:s3:::<bucket name>/key for specific objects, arn:aws:lambda for all lambda events within an account, arn:aws:lambda:<region>:<account number>:function:<function name> for a specific Lambda function, arn:aws:dynamodb for all DDB events for all tables within an account, or arn:aws:dynamodb:<region>:<account number>:table/<table name> for a specific DynamoDB table.insight_selectorThis configuration block supports the following attributes:"
  type        = string
}
variable "enable_logging" {
  description = "(Optional) Enables logging for the trail. Defaults to true. Setting this to false will pause logging."
  type        = string
  default     = ""
}
variable "name" {
  description = " (Optional) - Name of the advanced event selector."
  type        = string
  default     = ""
}
variable "not_starts_with" {
  description = " (Optional) - A list of values that excludes events that match the first few characters of the event record field specified as the value of field."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the trail. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.event_selectorThis configuration block supports the following attributes:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "field_selector" {
  description = " (Required) - Specifies the selector statements in an advanced event selector. Fields documented below.Field Selector ArgumentsFor strongfield_selector the following attributes are supported."
  type        = string
}
variable "insight_selector" {
  description = "(Optional) Configuration block for identifying unusual operational activity. See details below."
  type        = string
  default     = ""
}
variable "starts_with" {
  description = " (Optional) - A list of values that includes events that match the first few characters of the event record field specified as the value of field."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Resource type in which you want to log data events. You can specify only the following value: \"AWS::S3::Object\", \"AWS::Lambda::Function\" and \"AWS::DynamoDB::Table\"."
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
output "equals" {
  description = " (Optional) - A list of values that includes events that match the exact value of the event record field specified as the value of field. This is the only valid operator that you can use with the readOnly, eventCategory, and resources.type fields."
  value       = aws_cloudtrail.aws_cloudtrail.equals
}
output "is_multi_region_trail" {
  description = "(Optional) Whether the trail is created in the current region or in all regions. Defaults to false."
  value       = aws_cloudtrail.aws_cloudtrail.is_multi_region_trail
}
output "include_global_service_events" {
  description = "(Optional) Whether the trail is publishing events from global services such as IAM to the log files. Defaults to true."
  value       = aws_cloudtrail.aws_cloudtrail.include_global_service_events
}
output "insight_type" {
  description = "(Optional) Type of insights to log on a trail. Valid values are: ApiCallRateInsight and ApiErrorRateInsight.Advanced Event Selector ArgumentsFor strongadvanced_event_selector the following attributes are supported."
  value       = aws_cloudtrail.aws_cloudtrail.insight_type
}
output "not_equals" {
  description = " (Optional) - A list of values that excludes events that match the exact value of the event record field specified as the value of field."
  value       = aws_cloudtrail.aws_cloudtrail.not_equals
}
output "cloud_watch_logs_group_arn" {
  description = "(Optional) Log group name using an ARN that represents the log group to which CloudTrail logs will be delivered. Note that CloudTrail requires the Log Stream wildcard."
  value       = aws_cloudtrail.aws_cloudtrail.cloud_watch_logs_group_arn
}
output "cloud_watch_logs_role_arn" {
  description = "(Optional) Role for the CloudWatch Logs endpoint to assume to write to a user???s log group."
  value       = aws_cloudtrail.aws_cloudtrail.cloud_watch_logs_role_arn
}
output "ends_with" {
  description = " (Optional) - A list of values that includes events that match the last few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail.aws_cloudtrail.ends_with
}
output "id" {
  description = "Name of the trail."
  value       = aws_cloudtrail.aws_cloudtrail.id
}
output "include_management_events" {
  description = "(Optional) Whether to include management events for your trail. Defaults to true."
  value       = aws_cloudtrail.aws_cloudtrail.include_management_events
}
output "arn" {
  description = "ARN of the trail."
  value       = aws_cloudtrail.aws_cloudtrail.arn
}
output "event_selector" {
  description = "(Optional) Specifies an event selector for enabling data event logging. Fields documented below. Please note the CloudTrail limits when configuring these. Conflicts with advanced_event_selector."
  value       = aws_cloudtrail.aws_cloudtrail.event_selector
}
output "home_region" {
  description = "Region in which the trail was created."
  value       = aws_cloudtrail.aws_cloudtrail.home_region
}
output "advanced_event_selector" {
  description = "(Optional) Specifies an advanced event selector for enabling data event logging. Fields documented below. Conflicts with event_selector."
  value       = aws_cloudtrail.aws_cloudtrail.advanced_event_selector
}
output "kms_key_id" {
  description = "(Optional) KMS key ARN to use to encrypt the logs delivered by CloudTrail."
  value       = aws_cloudtrail.aws_cloudtrail.kms_key_id
}
output "read_write_type" {
  description = "(Optional) Type of events to log. Valid values are ReadOnly, WriteOnly, All. Default value is All.data_resourceThis configuration block supports the following attributes:"
  value       = aws_cloudtrail.aws_cloudtrail.read_write_type
}
output "not_ends_with" {
  description = " (Optional) - A list of values that excludes events that match the last few characters of the event record field specified as the value of field.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudtrail.aws_cloudtrail.not_ends_with
}
output "sns_topic_name" {
  description = "(Optional) Name of the Amazon SNS topic defined for notification of log file delivery."
  value       = aws_cloudtrail.aws_cloudtrail.sns_topic_name
}
output "enable_log_file_validation" {
  description = "(Optional) Whether log file integrity validation is enabled. Defaults to false."
  value       = aws_cloudtrail.aws_cloudtrail.enable_log_file_validation
}
output "field" {
  description = " (Required) - Field in an event record on which to filter events to be logged. You can specify only the following values: readOnly, eventSource, eventName, eventCategory, resources.type, resources.ARN."
  value       = aws_cloudtrail.aws_cloudtrail.field
}
output "is_organization_trail" {
  description = "(Optional) Whether the trail is an AWS Organizations trail. Organization trails log events for the master account and all member accounts. Can only be created in the organization master account. Defaults to false."
  value       = aws_cloudtrail.aws_cloudtrail.is_organization_trail
}
output "s3_key_prefix" {
  description = "(Optional) S3 key prefix that follows the name of the bucket you have designated for log file delivery."
  value       = aws_cloudtrail.aws_cloudtrail.s3_key_prefix
}
output "values" {
  description = "(Required) List of ARN strings or partial ARN strings to specify selectors for data audit events over data resources. ARN list is specific to single-valued type. For example, arn:aws:s3:::<bucket name>/ for all objects in a bucket, arn:aws:s3:::<bucket name>/key for specific objects, arn:aws:lambda for all lambda events within an account, arn:aws:lambda:<region>:<account number>:function:<function name> for a specific Lambda function, arn:aws:dynamodb for all DDB events for all tables within an account, or arn:aws:dynamodb:<region>:<account number>:table/<table name> for a specific DynamoDB table.insight_selectorThis configuration block supports the following attributes:"
  value       = aws_cloudtrail.aws_cloudtrail.values
}
output "data_resource" {
  description = "(Optional) Configuration block for data events. See details below."
  value       = aws_cloudtrail.aws_cloudtrail.data_resource
}
output "exclude_management_event_sources" {
  description = " (Optional) -  A set of event sources to exclude. Valid values include: kms.amazonaws.com and rdsdata.amazonaws.com. include_management_events must be set totrue to allow this."
  value       = aws_cloudtrail.aws_cloudtrail.exclude_management_event_sources
}
output "s3_bucket_name" {
  description = "(Required) Name of the S3 bucket designated for publishing log files."
  value       = aws_cloudtrail.aws_cloudtrail.s3_bucket_name
}
output "tags" {
  description = "(Optional) Map of tags to assign to the trail. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.event_selectorThis configuration block supports the following attributes:"
  value       = aws_cloudtrail.aws_cloudtrail.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudtrail.aws_cloudtrail.tags_all
}
output "enable_logging" {
  description = "(Optional) Enables logging for the trail. Defaults to true. Setting this to false will pause logging."
  value       = aws_cloudtrail.aws_cloudtrail.enable_logging
}
output "name" {
  description = " (Optional) - Name of the advanced event selector."
  value       = aws_cloudtrail.aws_cloudtrail.name
}
output "not_starts_with" {
  description = " (Optional) - A list of values that excludes events that match the first few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail.aws_cloudtrail.not_starts_with
}
output "type" {
  description = "(Required) Resource type in which you want to log data events. You can specify only the following value: \"AWS::S3::Object\", \"AWS::Lambda::Function\" and \"AWS::DynamoDB::Table\"."
  value       = aws_cloudtrail.aws_cloudtrail.type
}
output "field_selector" {
  description = " (Required) - Specifies the selector statements in an advanced event selector. Fields documented below.Field Selector ArgumentsFor strongfield_selector the following attributes are supported."
  value       = aws_cloudtrail.aws_cloudtrail.field_selector
}
output "insight_selector" {
  description = "(Optional) Configuration block for identifying unusual operational activity. See details below."
  value       = aws_cloudtrail.aws_cloudtrail.insight_selector
}
output "starts_with" {
  description = " (Optional) - A list of values that includes events that match the first few characters of the event record field specified as the value of field."
  value       = aws_cloudtrail.aws_cloudtrail.starts_with
}
output "arn" {
  description = "ARN of the trail."
  value       = aws_cloudtrail.aws_cloudtrail.arn
}
output "home_region" {
  description = "Region in which the trail was created."
  value       = aws_cloudtrail.aws_cloudtrail.home_region
}
output "id" {
  description = "Name of the trail."
  value       = aws_cloudtrail.aws_cloudtrail.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudtrail.aws_cloudtrail.tags_all
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
      "kind/name"                   = "aws_cloudtrail"
      "kind/version"                = "v0.1.0"
    }
  }
}
