resource "aws_appflow_flow" "aws_appflow_flow" {
  datadog                          = var.datadog
  document_type                    = var.document_type
  prefix_format                    = var.prefix_format
  veeva                            = var.veeva
  event_bridge                     = var.event_bridge
  honeycode                        = var.honeycode
  kms_arn                          = var.kms_arn
  salesforce                       = var.salesforce
  custom_properties                = var.custom_properties
  infor_nexus                      = var.infor_nexus
  schedule_offset                  = var.schedule_offset
  singular                         = var.singular
  write_operation                  = var.write_operation
  destination_connector_properties = var.destination_connector_properties
  google_analytics                 = var.google_analytics
  include_all_versions             = var.include_all_versions
  prefix_config                    = var.prefix_config
  snowflake                        = var.snowflake
  amplitude                        = var.amplitude
  description                      = var.description
  include_source_files             = var.include_source_files
  s3                               = var.s3
  source_fields                    = var.source_fields
  tags                             = var.tags
  dynatrace                        = var.dynatrace
  prefix_type                      = var.prefix_type
  sapo_data                        = var.sapo_data
  datetime_type_field_name         = var.datetime_type_field_name
  destination_flow_config          = var.destination_flow_config
  source_connector_properties      = var.source_connector_properties
  data_pull_mode                   = var.data_pull_mode
  object_path                      = var.object_path
  s3_input_file_type               = var.s3_input_file_type
  success_response_handling_config = var.success_response_handling_config
  upsolver                         = var.upsolver
  domain_name                      = var.domain_name
  object                           = var.object
  task_properties                  = var.task_properties
  task_type                        = var.task_type
  trigger_config                   = var.trigger_config
  trigger_properties               = var.trigger_properties
  slack                            = var.slack
  source_flow_config               = var.source_flow_config
  aggregation_type                 = var.aggregation_type
  entity_name                      = var.entity_name
  name                             = var.name
  object_type_name                 = var.object_type_name
  schedule_end_time                = var.schedule_end_time
  schedule_expression              = var.schedule_expression
  incremental_pull_config          = var.incremental_pull_config
  service_now                      = var.service_now
  bucket_name                      = var.bucket_name
  bucket_prefix                    = var.bucket_prefix
  dynratrace                       = var.dynratrace
  first_execution_from             = var.first_execution_from
  id_field_names                   = var.id_field_names
  include_renditions               = var.include_renditions
  trigger_type                     = var.trigger_type
  aggregation_config               = var.aggregation_config
  destination_field                = var.destination_field
  intermediate_bucket_name         = var.intermediate_bucket_name
  s3_input_format_config           = var.s3_input_format_config
  task                             = var.task
  write_operation_type             = var.write_operation_type
  api_version                      = var.api_version
  connector_operator               = var.connector_operator
  tags_all                         = var.tags_all
  timezone                         = var.timezone
  trend_micro                      = var.trend_micro
  file_type                        = var.file_type
  include_deleted_records          = var.include_deleted_records
  redshift                         = var.redshift
  trendmicro                       = var.trendmicro
  connector_type                   = var.connector_type
  customer_profiles                = var.customer_profiles
  enable_dynamic_field_update      = var.enable_dynamic_field_update
  s3_output_format_config          = var.s3_output_format_config
  schedule_start_time              = var.schedule_start_time
  connector_profile_name           = var.connector_profile_name
  custom_connector                 = var.custom_connector
  error_handling_config            = var.error_handling_config
  fail_on_first_destination_error  = var.fail_on_first_destination_error
  marketo                          = var.marketo
  zendesk                          = var.zendesk
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "include_all_versions" {
  description = "(Optional, boolean) Boolean value to include All Versions of files in Veeva document extract flow."
  type        = string
}
variable "prefix_config" {
  description = "(Optional) Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.Aggregation Config"
  type        = string
  default     = ""
}
variable "snowflake" {
  description = "(Optional) Properties that are required to query Snowflake. See Snowflake Destination Properties for more details."
  type        = string
  default     = ""
}
variable "destination_connector_properties" {
  description = "(Required) This stores the information that is required to query a particular connector. See Destination Connector Properties for more information."
  type        = string
}
variable "google_analytics" {
  description = "(Optional) Operation to be performed on the provided Google Analytics source fields. Valid values are PROJECTION and BETWEEN."
  type        = string
  default     = ""
}
variable "include_source_files" {
  description = "(Optional, boolean) Boolean value to include source files in Veeva document extract flow.Incremental Pull Config"
  type        = string
}
variable "s3" {
  description = "(Optional) Operation to be performed on the provided Amazon S3 source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "source_fields" {
  description = "(Required) Source fields to which a particular task is applied."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "amplitude" {
  description = "(Optional) Operation to be performed on the provided Amplitude source fields. The only valid value is BETWEEN."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the flow you want to create."
  type        = string
  default     = ""
}
variable "sapo_data" {
  description = "(Optional) Operation to be performed on the provided SAPOData source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "dynatrace" {
  description = "(Optional) Operation to be performed on the provided Dynatrace source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "prefix_type" {
  description = "(Optional) Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are FILENAME, PATH, and PATH_AND_FILENAME.Zendesk Destination Properties"
  type        = string
  default     = ""
}
variable "source_connector_properties" {
  description = "(Required) Information that is required to query a particular source connector. See Source Connector Properties for details."
  type        = string
}
variable "datetime_type_field_name" {
  description = "(Optional) Field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.Task"
  type        = string
  default     = ""
}
variable "destination_flow_config" {
  description = "(Required) A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector."
  type        = string
}
variable "s3_input_file_type" {
  description = "(Optional) File type that Amazon AppFlow gets from your Amazon S3 bucket. Valid values are CSV and JSON.Salesforce Source Properties"
  type        = string
  default     = ""
}
variable "success_response_handling_config" {
  description = "(Optional) Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details."
  type        = string
  default     = ""
}
variable "data_pull_mode" {
  description = "(Optional) Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are Incremental and Complete."
  type        = string
  default     = ""
}
variable "object_path" {
  description = "(Optional) Object path specified in the SAPOData flow source.Veeva Source Properties"
  type        = string
  default     = ""
}
variable "task_properties" {
  description = "(Optional) Map used to store task-related information. The execution service looks for particular information based on the TaskType. Valid keys are VALUE, VALUES, DATA_TYPE, UPPER_BOUND, LOWER_BOUND, SOURCE_DATA_TYPE, DESTINATION_DATA_TYPE, VALIDATION_ACTION, MASK_VALUE, MASK_LENGTH, TRUNCATE_LENGTH, MATH_OPERATION_FIELDS_ORDER, CONCAT_FORMAT, SUBFIELD_CATEGORY_MAP, and EXCLUDE_SOURCE_FIELDS_LIST.Connector Operator"
  type        = string
  default     = ""
}
variable "task_type" {
  description = "(Required) Particular task implementation that Amazon AppFlow performs. Valid values are Arithmetic, Filter, Map, Map_all, Mask, Merge, Passthrough, Truncate, and Validate."
  type        = string
}
variable "trigger_config" {
  description = "(Required) A Trigger that determine how and when the flow runs."
  type        = string
}
variable "trigger_properties" {
  description = "(Optional) Configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the Scheduled trigger type. See Scheduled Trigger Properties for details.Scheduled Trigger PropertiesThe trigger_properties block only supports one attribute: scheduled, a block which in turn supports the following:"
  type        = string
  default     = ""
}
variable "upsolver" {
  description = "(Optional) Properties that are required to query Upsolver. See Upsolver Destination Properties for more details."
  type        = string
  default     = ""
}
variable "domain_name" {
  description = "(Required) Unique name of the Amazon Connect Customer Profiles domain."
  type        = string
}
variable "object" {
  description = "(Required) Object specified in the Veeva flow source."
  type        = string
}
variable "name" {
  description = "(Required) Name of the flow."
  type        = string
}
variable "object_type_name" {
  description = "(Optional) Object specified in the Amazon Connect Customer Profiles flow destination.Redshift Destination Properties"
  type        = string
  default     = ""
}
variable "schedule_end_time" {
  description = "(Optional) Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp."
  type        = string
  default     = ""
}
variable "schedule_expression" {
  description = "(Required) Scheduling expression that determines the rate at which the schedule will run, for example rate(5minutes)."
  type        = string
}
variable "slack" {
  description = "(Optional) Operation to be performed on the provided Slack source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "source_flow_config" {
  description = "(Required) The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector."
  type        = string
}
variable "aggregation_type" {
  description = "(Optional) Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are None and SingleFile.Prefix Config"
  type        = string
  default     = ""
}
variable "entity_name" {
  description = "(Required) Entity specified in the custom connector as a source in the flow."
  type        = string
}
variable "dynratrace" {
  description = "(Optional) Information that is required for querying Dynatrace. See Generic Source Properties for more details."
  type        = string
  default     = ""
}
variable "first_execution_from" {
  description = "(Optional) Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp."
  type        = string
  default     = ""
}
variable "id_field_names" {
  description = "(Optional) Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete."
  type        = string
  default     = ""
}
variable "include_renditions" {
  description = "(Optional, boolean) Boolean value to include file renditions in Veeva document extract flow."
  type        = string
}
variable "incremental_pull_config" {
  description = "(Optional) Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull. See Incremental Pull Config for more details.Source Connector Properties"
  type        = string
  default     = ""
}
variable "service_now" {
  description = "(Optional) Operation to be performed on the provided ServiceNow source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Required) Amazon S3 bucket name where the source files are stored."
  type        = string
}
variable "bucket_prefix" {
  description = "(Optional) Object key for the Amazon S3 bucket in which the source files are stored."
  type        = string
  default     = ""
}
variable "trigger_type" {
  description = "(Required) Type of flow trigger. Valid values are Scheduled, Event, and OnDemand."
  type        = string
}
variable "intermediate_bucket_name" {
  description = "(Required) Intermediate bucket that Amazon AppFlow uses when moving data into Amazon Snowflake."
  type        = string
}
variable "s3_input_format_config" {
  description = "(Optional) When you use Amazon S3 as the source, the configuration format that you provide the flow input data. See S3 Input Format Config for details.S3 Input Format Config"
  type        = string
  default     = ""
}
variable "task" {
  description = "(Required) A Task that Amazon AppFlow performs while transferring the data in the flow run."
  type        = string
}
variable "write_operation_type" {
  description = "(Optional) This specifies the type of write operation to be performed in Zendesk. When the value is UPSERT, then id_field_names is required. Valid values are INSERT, UPSERT, UPDATE, and DELETE.Error Handling Config"
  type        = string
  default     = ""
}
variable "aggregation_config" {
  description = "(Optional) Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details."
  type        = string
  default     = ""
}
variable "destination_field" {
  description = "(Optional) Field in a destination connector, or a field value against which Amazon AppFlow validates a source field."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Destination Flow Config"
  type        = string
}
variable "timezone" {
  description = "(Optional) Time zone used when referring to the date and time of a scheduled-triggered flow, such as America/New_York.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "trend_micro" {
  description = "(Optional) Information that is required for querying Trend Micro. See Generic Source Properties for more details."
  type        = string
  default     = ""
}
variable "api_version" {
  description = "(Optional) API version that the destination connector uses."
  type        = string
  default     = ""
}
variable "connector_operator" {
  description = "(Optional) Operation to be performed on the provided source fields. See Connector Operator for details."
  type        = string
  default     = ""
}
variable "redshift" {
  description = "(Optional) Properties that are required to query Amazon Redshift. See Redshift Destination Properties for more details."
  type        = string
  default     = ""
}
variable "trendmicro" {
  description = "(Optional) Operation to be performed on the provided Trend Micro source fields. Valid values are PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "file_type" {
  description = "(Optional) File type that Amazon AppFlow places in the Upsolver Amazon S3 bucket. Valid values are CSV, JSON, and PARQUET."
  type        = string
  default     = ""
}
variable "include_deleted_records" {
  description = "(Optional, boolean) Whether Amazon AppFlow includes deleted files in the flow run.SAPOData Source Properties"
  type        = string
}
variable "enable_dynamic_field_update" {
  description = "(Optional, boolean) Flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow."
  type        = string
}
variable "s3_output_format_config" {
  description = "(Optional) Configuration that determines how Amazon AppFlow should format the flow output data when Upsolver is used as the destination. See Upsolver S3 Output Format Config for more details.Upsolver S3 Output Format Config"
  type        = string
  default     = ""
}
variable "schedule_start_time" {
  description = "(Optional) Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp."
  type        = string
  default     = ""
}
variable "connector_type" {
  description = "(Required) Type of connector, such as Salesforce, Amplitude, and so on. Valid values are Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, and CustomConnector."
  type        = string
}
variable "customer_profiles" {
  description = "(Optional) Properties that are required to query Amazon Connect Customer Profiles. See Customer Profiles Destination Properties for more details."
  type        = string
  default     = ""
}
variable "error_handling_config" {
  description = "(Optional) Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See Error Handling Config for more details."
  type        = string
  default     = ""
}
variable "fail_on_first_destination_error" {
  description = "(Optional, boolean) If the flow should fail after the first instance of a failure when attempting to place data in the destination.Source Flow Config"
  type        = string
}
variable "marketo" {
  description = "(Optional) Operation to be performed on the provided Marketo source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "zendesk" {
  description = "(Optional) Operation to be performed on the provided Zendesk source fields. Valid values are PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP.Trigger Config"
  type        = string
  default     = ""
}
variable "connector_profile_name" {
  description = "(Optional) Name of the connector profile. This name must be unique for each connector profile in the AWS account."
  type        = string
  default     = ""
}
variable "custom_connector" {
  description = "(Optional) Operators supported by the custom connector. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "prefix_format" {
  description = "(Optional) Determines the level of granularity that's included in the prefix. Valid values are YEAR, MONTH, DAY, HOUR, and MINUTE."
  type        = string
  default     = ""
}
variable "veeva" {
  description = "(Optional) Operation to be performed on the provided Veeva source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "datadog" {
  description = "(Optional) Operation to be performed on the provided Datadog source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "document_type" {
  description = "(Optional) Document type specified in the Veeva document extract flow."
  type        = string
  default     = ""
}
variable "kms_arn" {
  description = "(Optional) ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key."
  type        = string
  default     = ""
}
variable "salesforce" {
  description = "(Optional) Operation to be performed on the provided Salesforce source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "event_bridge" {
  description = "(Optional) Properties that are required to query Amazon EventBridge. See Generic Destination Properties for more details."
  type        = string
  default     = ""
}
variable "honeycode" {
  description = "(Optional) Properties that are required to query Amazon Honeycode. See Generic Destination Properties for more details."
  type        = string
  default     = ""
}
variable "schedule_offset" {
  description = "(Optional) Optional offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000."
  type        = string
  default     = ""
}
variable "singular" {
  description = "(Optional) Operation to be performed on the provided Singular source fields. Valid values are PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  type        = string
  default     = ""
}
variable "write_operation" {
  description = "(Optional) Possible write operations in the destination connector. When this value is not provided, this defaults to the INSERT operation. Valid values are INSERT, UPSERT, UPDATE, and DELETE.Success Response Handling Config"
  type        = string
  default     = ""
}
variable "custom_properties" {
  description = "(Optional) Custom properties that are specific to the connector when it's used as a source in the flow. Maximum of 50 items.S3 Source Properties"
  type        = string
  default     = ""
}
variable "infor_nexus" {
  description = "(Optional) Operation to be performed on the provided Infor Nexus source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
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
output "connector_profile_name" {
  description = "(Optional) Name of the connector profile. This name must be unique for each connector profile in the AWS account."
  value       = aws_appflow_flow.aws_appflow_flow.connector_profile_name
}
output "custom_connector" {
  description = "(Optional) Operators supported by the custom connector. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.custom_connector
}
output "error_handling_config" {
  description = "(Optional) Settings that determine how Amazon AppFlow handles an error when placing data in the destination. See Error Handling Config for more details."
  value       = aws_appflow_flow.aws_appflow_flow.error_handling_config
}
output "fail_on_first_destination_error" {
  description = "(Optional, boolean) If the flow should fail after the first instance of a failure when attempting to place data in the destination.Source Flow Config"
  value       = aws_appflow_flow.aws_appflow_flow.fail_on_first_destination_error
}
output "marketo" {
  description = "(Optional) Operation to be performed on the provided Marketo source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.marketo
}
output "zendesk" {
  description = "(Optional) Operation to be performed on the provided Zendesk source fields. Valid values are PROJECTION, GREATER_THAN, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP.Trigger Config"
  value       = aws_appflow_flow.aws_appflow_flow.zendesk
}
output "datadog" {
  description = "(Optional) Operation to be performed on the provided Datadog source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.datadog
}
output "document_type" {
  description = "(Optional) Document type specified in the Veeva document extract flow."
  value       = aws_appflow_flow.aws_appflow_flow.document_type
}
output "prefix_format" {
  description = "(Optional) Determines the level of granularity that's included in the prefix. Valid values are YEAR, MONTH, DAY, HOUR, and MINUTE."
  value       = aws_appflow_flow.aws_appflow_flow.prefix_format
}
output "veeva" {
  description = "(Optional) Operation to be performed on the provided Veeva source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.veeva
}
output "event_bridge" {
  description = "(Optional) Properties that are required to query Amazon EventBridge. See Generic Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.event_bridge
}
output "honeycode" {
  description = "(Optional) Properties that are required to query Amazon Honeycode. See Generic Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.honeycode
}
output "kms_arn" {
  description = "(Optional) ARN (Amazon Resource Name) of the Key Management Service (KMS) key you provide for encryption. This is required if you do not want to use the Amazon AppFlow-managed KMS key. If you don't provide anything here, Amazon AppFlow uses the Amazon AppFlow-managed KMS key."
  value       = aws_appflow_flow.aws_appflow_flow.kms_arn
}
output "salesforce" {
  description = "(Optional) Operation to be performed on the provided Salesforce source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.salesforce
}
output "custom_properties" {
  description = "(Optional) Custom properties that are specific to the connector when it's used as a source in the flow. Maximum of 50 items.S3 Source Properties"
  value       = aws_appflow_flow.aws_appflow_flow.custom_properties
}
output "infor_nexus" {
  description = "(Optional) Operation to be performed on the provided Infor Nexus source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.infor_nexus
}
output "schedule_offset" {
  description = "(Optional) Optional offset that is added to the time interval for a schedule-triggered flow. Maximum value of 36000."
  value       = aws_appflow_flow.aws_appflow_flow.schedule_offset
}
output "singular" {
  description = "(Optional) Operation to be performed on the provided Singular source fields. Valid values are PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.singular
}
output "write_operation" {
  description = "(Optional) Possible write operations in the destination connector. When this value is not provided, this defaults to the INSERT operation. Valid values are INSERT, UPSERT, UPDATE, and DELETE.Success Response Handling Config"
  value       = aws_appflow_flow.aws_appflow_flow.write_operation
}
output "destination_connector_properties" {
  description = "(Required) This stores the information that is required to query a particular connector. See Destination Connector Properties for more information."
  value       = aws_appflow_flow.aws_appflow_flow.destination_connector_properties
}
output "google_analytics" {
  description = "(Optional) Operation to be performed on the provided Google Analytics source fields. Valid values are PROJECTION and BETWEEN."
  value       = aws_appflow_flow.aws_appflow_flow.google_analytics
}
output "include_all_versions" {
  description = "(Optional, boolean) Boolean value to include All Versions of files in Veeva document extract flow."
  value       = aws_appflow_flow.aws_appflow_flow.include_all_versions
}
output "prefix_config" {
  description = "(Optional) Determines the prefix that Amazon AppFlow applies to the folder name in the Amazon S3 bucket. You can name folders according to the flow frequency and date. See Prefix Config for more details.Aggregation Config"
  value       = aws_appflow_flow.aws_appflow_flow.prefix_config
}
output "snowflake" {
  description = "(Optional) Properties that are required to query Snowflake. See Snowflake Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.snowflake
}
output "amplitude" {
  description = "(Optional) Operation to be performed on the provided Amplitude source fields. The only valid value is BETWEEN."
  value       = aws_appflow_flow.aws_appflow_flow.amplitude
}
output "description" {
  description = "(Optional) Description of the flow you want to create."
  value       = aws_appflow_flow.aws_appflow_flow.description
}
output "include_source_files" {
  description = "(Optional, boolean) Boolean value to include source files in Veeva document extract flow.Incremental Pull Config"
  value       = aws_appflow_flow.aws_appflow_flow.include_source_files
}
output "s3" {
  description = "(Optional) Operation to be performed on the provided Amazon S3 source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.s3
}
output "source_fields" {
  description = "(Required) Source fields to which a particular task is applied."
  value       = aws_appflow_flow.aws_appflow_flow.source_fields
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_appflow_flow.aws_appflow_flow.tags
}
output "dynatrace" {
  description = "(Optional) Operation to be performed on the provided Dynatrace source fields. Valid values are PROJECTION, BETWEEN, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.dynatrace
}
output "prefix_type" {
  description = "(Optional) Determines the format of the prefix, and whether it applies to the file name, file path, or both. Valid values are FILENAME, PATH, and PATH_AND_FILENAME.Zendesk Destination Properties"
  value       = aws_appflow_flow.aws_appflow_flow.prefix_type
}
output "sapo_data" {
  description = "(Optional) Operation to be performed on the provided SAPOData source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.sapo_data
}
output "datetime_type_field_name" {
  description = "(Optional) Field that specifies the date time or timestamp field as the criteria to use when importing incremental records from the source.Task"
  value       = aws_appflow_flow.aws_appflow_flow.datetime_type_field_name
}
output "destination_flow_config" {
  description = "(Required) A Destination Flow Config that controls how Amazon AppFlow places data in the destination connector."
  value       = aws_appflow_flow.aws_appflow_flow.destination_flow_config
}
output "source_connector_properties" {
  description = "(Required) Information that is required to query a particular source connector. See Source Connector Properties for details."
  value       = aws_appflow_flow.aws_appflow_flow.source_connector_properties
}
output "data_pull_mode" {
  description = "(Optional) Whether a scheduled flow has an incremental data transfer or a complete data transfer for each flow run. Valid values are Incremental and Complete."
  value       = aws_appflow_flow.aws_appflow_flow.data_pull_mode
}
output "object_path" {
  description = "(Optional) Object path specified in the SAPOData flow source.Veeva Source Properties"
  value       = aws_appflow_flow.aws_appflow_flow.object_path
}
output "s3_input_file_type" {
  description = "(Optional) File type that Amazon AppFlow gets from your Amazon S3 bucket. Valid values are CSV and JSON.Salesforce Source Properties"
  value       = aws_appflow_flow.aws_appflow_flow.s3_input_file_type
}
output "success_response_handling_config" {
  description = "(Optional) Determines how Amazon AppFlow handles the success response that it gets from the connector after placing data. See Success Response Handling Config for more details."
  value       = aws_appflow_flow.aws_appflow_flow.success_response_handling_config
}
output "domain_name" {
  description = "(Required) Unique name of the Amazon Connect Customer Profiles domain."
  value       = aws_appflow_flow.aws_appflow_flow.domain_name
}
output "object" {
  description = "(Required) Object specified in the Veeva flow source."
  value       = aws_appflow_flow.aws_appflow_flow.object
}
output "task_properties" {
  description = "(Optional) Map used to store task-related information. The execution service looks for particular information based on the TaskType. Valid keys are VALUE, VALUES, DATA_TYPE, UPPER_BOUND, LOWER_BOUND, SOURCE_DATA_TYPE, DESTINATION_DATA_TYPE, VALIDATION_ACTION, MASK_VALUE, MASK_LENGTH, TRUNCATE_LENGTH, MATH_OPERATION_FIELDS_ORDER, CONCAT_FORMAT, SUBFIELD_CATEGORY_MAP, and EXCLUDE_SOURCE_FIELDS_LIST.Connector Operator"
  value       = aws_appflow_flow.aws_appflow_flow.task_properties
}
output "task_type" {
  description = "(Required) Particular task implementation that Amazon AppFlow performs. Valid values are Arithmetic, Filter, Map, Map_all, Mask, Merge, Passthrough, Truncate, and Validate."
  value       = aws_appflow_flow.aws_appflow_flow.task_type
}
output "trigger_config" {
  description = "(Required) A Trigger that determine how and when the flow runs."
  value       = aws_appflow_flow.aws_appflow_flow.trigger_config
}
output "trigger_properties" {
  description = "(Optional) Configuration details of a schedule-triggered flow as defined by the user. Currently, these settings only apply to the Scheduled trigger type. See Scheduled Trigger Properties for details.Scheduled Trigger PropertiesThe trigger_properties block only supports one attribute: scheduled, a block which in turn supports the following:"
  value       = aws_appflow_flow.aws_appflow_flow.trigger_properties
}
output "upsolver" {
  description = "(Optional) Properties that are required to query Upsolver. See Upsolver Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.upsolver
}
output "aggregation_type" {
  description = "(Optional) Whether Amazon AppFlow aggregates the flow records into a single file, or leave them unaggregated. Valid values are None and SingleFile.Prefix Config"
  value       = aws_appflow_flow.aws_appflow_flow.aggregation_type
}
output "entity_name" {
  description = "(Required) Entity specified in the custom connector as a source in the flow."
  value       = aws_appflow_flow.aws_appflow_flow.entity_name
}
output "name" {
  description = "(Required) Name of the flow."
  value       = aws_appflow_flow.aws_appflow_flow.name
}
output "object_type_name" {
  description = "(Optional) Object specified in the Amazon Connect Customer Profiles flow destination.Redshift Destination Properties"
  value       = aws_appflow_flow.aws_appflow_flow.object_type_name
}
output "schedule_end_time" {
  description = "(Optional) Scheduled end time for a schedule-triggered flow. Must be a valid RFC3339 timestamp."
  value       = aws_appflow_flow.aws_appflow_flow.schedule_end_time
}
output "schedule_expression" {
  description = "(Required) Scheduling expression that determines the rate at which the schedule will run, for example rate(5minutes)."
  value       = aws_appflow_flow.aws_appflow_flow.schedule_expression
}
output "slack" {
  description = "(Optional) Operation to be performed on the provided Slack source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.slack
}
output "source_flow_config" {
  description = "(Required) The Source Flow Config that controls how Amazon AppFlow retrieves data from the source connector."
  value       = aws_appflow_flow.aws_appflow_flow.source_flow_config
}
output "bucket_name" {
  description = "(Required) Amazon S3 bucket name where the source files are stored."
  value       = aws_appflow_flow.aws_appflow_flow.bucket_name
}
output "bucket_prefix" {
  description = "(Optional) Object key for the Amazon S3 bucket in which the source files are stored."
  value       = aws_appflow_flow.aws_appflow_flow.bucket_prefix
}
output "dynratrace" {
  description = "(Optional) Information that is required for querying Dynatrace. See Generic Source Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.dynratrace
}
output "first_execution_from" {
  description = "(Optional) Date range for the records to import from the connector in the first flow run. Must be a valid RFC3339 timestamp."
  value       = aws_appflow_flow.aws_appflow_flow.first_execution_from
}
output "id_field_names" {
  description = "(Optional) Name of the field that Amazon AppFlow uses as an ID when performing a write operation such as update or delete."
  value       = aws_appflow_flow.aws_appflow_flow.id_field_names
}
output "include_renditions" {
  description = "(Optional, boolean) Boolean value to include file renditions in Veeva document extract flow."
  value       = aws_appflow_flow.aws_appflow_flow.include_renditions
}
output "incremental_pull_config" {
  description = "(Optional) Defines the configuration for a scheduled incremental data pull. If a valid configuration is provided, the fields specified in the configuration are used when querying for the incremental data pull. See Incremental Pull Config for more details.Source Connector Properties"
  value       = aws_appflow_flow.aws_appflow_flow.incremental_pull_config
}
output "service_now" {
  description = "(Optional) Operation to be performed on the provided ServiceNow source fields. Valid values are PROJECTION, LESS_THAN, GREATER_THAN, CONTAINS, BETWEEN, LESS_THAN_OR_EQUAL_TO, GREATER_THAN_OR_EQUAL_TO, EQUAL_TO, NOT_EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.service_now
}
output "trigger_type" {
  description = "(Required) Type of flow trigger. Valid values are Scheduled, Event, and OnDemand."
  value       = aws_appflow_flow.aws_appflow_flow.trigger_type
}
output "aggregation_config" {
  description = "(Optional) Aggregation settings that you can use to customize the output format of your flow data. See Aggregation Config for more details."
  value       = aws_appflow_flow.aws_appflow_flow.aggregation_config
}
output "destination_field" {
  description = "(Optional) Field in a destination connector, or a field value against which Amazon AppFlow validates a source field."
  value       = aws_appflow_flow.aws_appflow_flow.destination_field
}
output "intermediate_bucket_name" {
  description = "(Required) Intermediate bucket that Amazon AppFlow uses when moving data into Amazon Snowflake."
  value       = aws_appflow_flow.aws_appflow_flow.intermediate_bucket_name
}
output "s3_input_format_config" {
  description = "(Optional) When you use Amazon S3 as the source, the configuration format that you provide the flow input data. See S3 Input Format Config for details.S3 Input Format Config"
  value       = aws_appflow_flow.aws_appflow_flow.s3_input_format_config
}
output "task" {
  description = "(Required) A Task that Amazon AppFlow performs while transferring the data in the flow run."
  value       = aws_appflow_flow.aws_appflow_flow.task
}
output "write_operation_type" {
  description = "(Optional) This specifies the type of write operation to be performed in Zendesk. When the value is UPSERT, then id_field_names is required. Valid values are INSERT, UPSERT, UPDATE, and DELETE.Error Handling Config"
  value       = aws_appflow_flow.aws_appflow_flow.write_operation_type
}
output "api_version" {
  description = "(Optional) API version that the destination connector uses."
  value       = aws_appflow_flow.aws_appflow_flow.api_version
}
output "connector_operator" {
  description = "(Optional) Operation to be performed on the provided source fields. See Connector Operator for details."
  value       = aws_appflow_flow.aws_appflow_flow.connector_operator
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Destination Flow Config"
  value       = aws_appflow_flow.aws_appflow_flow.tags_all
}
output "timezone" {
  description = "(Optional) Time zone used when referring to the date and time of a scheduled-triggered flow, such as America/New_York.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appflow_flow.aws_appflow_flow.timezone
}
output "trend_micro" {
  description = "(Optional) Information that is required for querying Trend Micro. See Generic Source Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.trend_micro
}
output "file_type" {
  description = "(Optional) File type that Amazon AppFlow places in the Upsolver Amazon S3 bucket. Valid values are CSV, JSON, and PARQUET."
  value       = aws_appflow_flow.aws_appflow_flow.file_type
}
output "include_deleted_records" {
  description = "(Optional, boolean) Whether Amazon AppFlow includes deleted files in the flow run.SAPOData Source Properties"
  value       = aws_appflow_flow.aws_appflow_flow.include_deleted_records
}
output "redshift" {
  description = "(Optional) Properties that are required to query Amazon Redshift. See Redshift Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.redshift
}
output "trendmicro" {
  description = "(Optional) Operation to be performed on the provided Trend Micro source fields. Valid values are PROJECTION, EQUAL_TO, ADDITION, MULTIPLICATION, DIVISION, SUBTRACTION, MASK_ALL, MASK_FIRST_N, MASK_LAST_N, VALIDATE_NON_NULL, VALIDATE_NON_ZERO, VALIDATE_NON_NEGATIVE, VALIDATE_NUMERIC, and NO_OP."
  value       = aws_appflow_flow.aws_appflow_flow.trendmicro
}
output "connector_type" {
  description = "(Required) Type of connector, such as Salesforce, Amplitude, and so on. Valid values are Salesforce, Singular, Slack, Redshift, S3, Marketo, Googleanalytics, Zendesk, Servicenow, Datadog, Trendmicro, Snowflake, Dynatrace, Infornexus, Amplitude, Veeva, EventBridge, LookoutMetrics, Upsolver, Honeycode, CustomerProfiles, SAPOData, and CustomConnector."
  value       = aws_appflow_flow.aws_appflow_flow.connector_type
}
output "customer_profiles" {
  description = "(Optional) Properties that are required to query Amazon Connect Customer Profiles. See Customer Profiles Destination Properties for more details."
  value       = aws_appflow_flow.aws_appflow_flow.customer_profiles
}
output "enable_dynamic_field_update" {
  description = "(Optional, boolean) Flag that enables dynamic fetching of new (recently added) fields in the Salesforce objects while running a flow."
  value       = aws_appflow_flow.aws_appflow_flow.enable_dynamic_field_update
}
output "s3_output_format_config" {
  description = "(Optional) Configuration that determines how Amazon AppFlow should format the flow output data when Upsolver is used as the destination. See Upsolver S3 Output Format Config for more details.Upsolver S3 Output Format Config"
  value       = aws_appflow_flow.aws_appflow_flow.s3_output_format_config
}
output "schedule_start_time" {
  description = "(Optional) Scheduled start time for a schedule-triggered flow. Must be a valid RFC3339 timestamp."
  value       = aws_appflow_flow.aws_appflow_flow.schedule_start_time
}
output "arn" {
  description = "Flow's ARN."
  value       = aws_appflow_flow.aws_appflow_flow.arn
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
      "kind/name"                   = "aws_appflow_flow"
      "kind/version"                = "v0.1.0"
    }
  }
}
