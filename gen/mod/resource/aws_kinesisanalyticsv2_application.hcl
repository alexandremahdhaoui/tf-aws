resource "aws_kinesisanalyticsv2_application" "aws_kinesisanalyticsv2_application" {
  parallelism                           = var.parallelism
  application_code_configuration        = var.application_code_configuration
  checkpoint_configuration              = var.checkpoint_configuration
  force_stop                            = var.force_stop
  record_format                         = var.record_format
  s3_content_location                   = var.s3_content_location
  application_snapshot_configuration    = var.application_snapshot_configuration
  file_key                              = var.file_key
  id                                    = var.id
  input_processing_configuration        = var.input_processing_configuration
  lambda_output                         = var.lambda_output
  vpc_configuration                     = var.vpc_configuration
  checkpoint_interval = 60000           = var.checkpoint_interval = 60000
  input                                 = var.input
  input_schema                          = var.input_schema
  metrics_level                         = var.metrics_level
  record_column                         = var.record_column
  service_execution_role                = var.service_execution_role
  text_content                          = var.text_content
  version_id                            = var.version_id
  auto_scaling_enabled                  = var.auto_scaling_enabled
  log_stream_arn                        = var.log_stream_arn
  record_format_type                    = var.record_format_type
  tags_all                              = var.tags_all
  checkpointing_enabled                 = var.checkpointing_enabled
  kinesis_streams_input                 = var.kinesis_streams_input
  mapping_parameters                    = var.mapping_parameters
  property_group                        = var.property_group
  resource_arn                          = var.resource_arn
  status                                = var.status
  csv_mapping_parameters                = var.csv_mapping_parameters
  object_version                        = var.object_version
  record_encoding                       = var.record_encoding
  reference_schema                      = var.reference_schema
  min_pause_between_checkpoints         = var.min_pause_between_checkpoints
  arn                                   = var.arn
  json_mapping_parameters               = var.json_mapping_parameters
  kinesis_streams_output                = var.kinesis_streams_output
  run_configuration                     = var.run_configuration
  snapshots_enabled                     = var.snapshots_enabled
  application_restore_configuration     = var.application_restore_configuration
  flink_application_configuration       = var.flink_application_configuration
  input_lambda_processor                = var.input_lambda_processor
  mapping                               = var.mapping
  security_group_ids                    = var.security_group_ids
  create_timestamp                      = var.create_timestamp
  count                                 = var.count
  description                           = var.description
  kinesis_firehose_output               = var.kinesis_firehose_output
  record_row_path                       = var.record_row_path
  reference_data_source                 = var.reference_data_source
  bucket_arn                            = var.bucket_arn
  environment_properties                = var.environment_properties
  flink_run_configuration               = var.flink_run_configuration
  input_starting_position_configuration = var.input_starting_position_configuration
  property_group_id                     = var.property_group_id
  table_name                            = var.table_name
  allow_non_restored_state              = var.allow_non_restored_state
  application_restore_type              = var.application_restore_type
  code_content_type                     = var.code_content_type
  destination_schema                    = var.destination_schema
  min_pause_between_checkpoints = 5000  = var.min_pause_between_checkpoints = 5000
  monitoring_configuration              = var.monitoring_configuration
  name                                  = var.name
  name_prefix                           = var.name_prefix
  application_configuration             = var.application_configuration
  update                                = var.update
  record_column_delimiter               = var.record_column_delimiter
  create                                = var.create
  input_parallelism                     = var.input_parallelism
  input_starting_position               = var.input_starting_position
  last_update_timestamp                 = var.last_update_timestamp
  runtime_environment                   = var.runtime_environment
  checkpointing_enabled = true          = var.checkpointing_enabled = true
  cloudwatch_logging_options            = var.cloudwatch_logging_options
  log_level                             = var.log_level
  output                                = var.output
  parallelism_configuration             = var.parallelism_configuration
  snapshot_name                         = var.snapshot_name
  sql_application_configuration         = var.sql_application_configuration
  sql_type                              = var.sql_type
  checkpoint_interval                   = var.checkpoint_interval
  start_application                     = var.start_application
  kinesis_firehose_input                = var.kinesis_firehose_input
  parallelism_per_kpu                   = var.parallelism_per_kpu
  record_row_delimiter                  = var.record_row_delimiter
  s3_reference_data_source              = var.s3_reference_data_source
  subnet_ids                            = var.subnet_ids
  code_content                          = var.code_content
  property_map                          = var.property_map
  tags                                  = var.tags
  configuration_type                    = var.configuration_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "application_restore_configuration" {
  description = "(Optional) The restore behavior of a restarting application."
  type        = string
}
variable "arn" {
  description = "The ARN of the application."
  type        = string
}
variable "json_mapping_parameters" {
  description = "(Optional) Provides additional mapping information when JSON is the record format on the streaming source.The csv_mapping_parameters object supports the following:"
  type        = string
}
variable "kinesis_streams_output" {
  description = "(Optional) Identifies a Kinesis data stream as the destination."
  type        = string
}
variable "run_configuration" {
  description = "(Optional) Describes the starting properties for a Flink-based application."
  type        = string
}
variable "snapshots_enabled" {
  description = "(Required) Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.The environment_properties object supports the following:"
  type        = string
}
variable "create_timestamp" {
  description = "The current timestamp when the application was created."
  type        = string
}
variable "flink_application_configuration" {
  description = "(Optional) The configuration of a Flink-based application."
  type        = string
}
variable "input_lambda_processor" {
  description = "(Required) Describes the Lambda function that is used to preprocess the records in the stream before being processed by your application code.The input_lambda_processor object supports the following:"
  type        = string
}
variable "mapping" {
  description = "(Optional) A reference to the data element in the streaming input or the reference data source.The record_format object supports the following:"
  type        = string
}
variable "security_group_ids" {
  description = "(Required) The Security Group IDs used by the VPC configuration."
  type        = string
}
variable "bucket_arn" {
  description = "(Required) The ARN of the S3 bucket."
  type        = string
}
variable "count" {
  description = "(Optional) The number of in-application streams to create.The input_processing_configuration object supports the following:"
  type        = string
}
variable "description" {
  description = "(Optional) A summary description of the application."
  type        = string
}
variable "kinesis_firehose_output" {
  description = "(Optional) Identifies a Kinesis Data Firehose delivery stream as the destination."
  type        = string
}
variable "record_row_path" {
  description = "(Required) The path to the top-level parent that contains the records.The input_starting_position_configuration object supports the following:~> strongNOTE: To modify an application's starting position, first stop the application by setting start_application = false, then update starting_position and set start_application = true."
  type        = string
}
variable "reference_data_source" {
  description = "(Optional) The reference data source used by the application.The input object supports the following:"
  type        = string
}
variable "allow_non_restored_state" {
  description = "(Optional) When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is false.The sql_application_configuration object supports the following:"
  type        = string
}
variable "environment_properties" {
  description = "(Optional) Describes execution properties for a Flink-based application."
  type        = string
}
variable "flink_run_configuration" {
  description = "(Optional) The starting parameters for a Flink-based Kinesis Data Analytics application.The application_restore_configuration object supports the following:"
  type        = string
}
variable "input_starting_position_configuration" {
  description = " (Optional) The point at which the application starts processing records from the streaming source."
  type        = string
}
variable "property_group_id" {
  description = "(Required) The key of the application execution property key-value map."
  type        = string
}
variable "table_name" {
  description = "(Required) The name of the in-application table to create.The reference_schema object supports the following:"
  type        = string
}
variable "application_configuration" {
  description = "(Optional) The application's configuration"
  type        = string
}
variable "application_restore_type" {
  description = "(Required) Specifies how the application should be restored. Valid values: RESTORE_FROM_CUSTOM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, SKIP_RESTORE_FROM_SNAPSHOT."
  type        = string
}
variable "code_content_type" {
  description = "(Required) Specifies whether the code content is in text or zip format. Valid values: PLAINTEXT, ZIPFILE."
  type        = string
}
variable "destination_schema" {
  description = "(Required) Describes the data format when records are written to the destination."
  type        = string
}
variable "min_pause_between_checkpoints = 5000" {
  description = ""
  type        = string
}
variable "monitoring_configuration" {
  description = "(Optional) Describes configuration parameters for CloudWatch logging for an application."
  type        = string
}
variable "name" {
  description = "(Required) The name of the in-application stream."
  type        = string
}
variable "name_prefix" {
  description = "(Required) The name prefix to use when creating an in-application stream."
  type        = string
}
variable "record_column_delimiter" {
  description = "(Required) The column delimiter. For example, in a CSV format, a comma (,) is the typical column delimiter."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "checkpointing_enabled = true" {
  description = ""
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "input_parallelism" {
  description = "(Optional) Describes the number of in-application streams to create."
  type        = string
}
variable "input_starting_position" {
  description = "(Required) The starting position on the stream. Valid values: LAST_STOPPED_POINT, NOW, TRIM_HORIZON.The kinesis_firehose_input object supports the following:"
  type        = string
}
variable "last_update_timestamp" {
  description = "The current timestamp when the application was last updated."
  type        = string
}
variable "runtime_environment" {
  description = "(Required) The runtime environment for the application. Valid values: SQL-1_0, FLINK-1_6, FLINK-1_8, FLINK-1_11, FLINK-1_13."
  type        = string
}
variable "checkpoint_interval" {
  description = "(Optional) Describes the interval in milliseconds between checkpoint operations."
  type        = string
}
variable "cloudwatch_logging_options" {
  description = "(Optional) A CloudWatch log stream to monitor application configuration errors."
  type        = string
}
variable "log_level" {
  description = "(Optional) Describes the verbosity of the CloudWatch Logs for an application. Valid values: DEBUG, ERROR, INFO, WARN."
  type        = string
}
variable "output" {
  description = "(Optional) The destination streams used by the application."
  type        = string
}
variable "parallelism_configuration" {
  description = "(Optional) Describes parameters for how an application executes multiple tasks simultaneously.The checkpoint_configuration object supports the following:"
  type        = string
}
variable "snapshot_name" {
  description = "(Optional) The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if RESTORE_FROM_CUSTOM_SNAPSHOT is specified for application_restore_type.The flink_run_configuration object supports the following:"
  type        = string
}
variable "sql_application_configuration" {
  description = "(Optional) The configuration of a SQL-based application."
  type        = string
}
variable "sql_type" {
  description = "(Required) The type of column created in the in-application input stream or reference table."
  type        = string
}
variable "start_application" {
  description = "(Optional) Whether to start or stop the application."
  type        = string
}
variable "code_content" {
  description = "(Optional) The location and type of the application code.The code_content object supports the following:"
  type        = string
}
variable "kinesis_firehose_input" {
  description = "(Optional) If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN."
  type        = string
}
variable "parallelism_per_kpu" {
  description = "(Optional) Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.The run_configuration object supports the following:"
  type        = string
}
variable "record_row_delimiter" {
  description = "(Required) The row delimiter. For example, in a CSV format, \\n is the typical row delimiter.The json_mapping_parameters object supports the following:"
  type        = string
}
variable "s3_reference_data_source" {
  description = "(Required) Identifies the S3 bucket and object that contains the reference data."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) The Subnet IDs used by the VPC configuration.The cloudwatch_logging_options object supports the following:"
  type        = string
}
variable "configuration_type" {
  description = "(Required) Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: CUSTOM, DEFAULT. Set this attribute to CUSTOM in order for any specified auto_scaling_enabled, parallelism, or parallelism_per_kpu attribute values to be effective."
  type        = string
}
variable "property_map" {
  description = "(Required) Application execution property key-value map.The flink_application_configuration object supports the following:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The application_configuration object supports the following:"
  type        = string
}
variable "application_code_configuration" {
  description = "(Required) The code location and type parameters for the application."
  type        = string
}
variable "parallelism" {
  description = "(Optional) Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform."
  type        = string
}
variable "application_snapshot_configuration" {
  description = "(Optional) Describes whether snapshots are enabled for a Flink-based application."
  type        = string
}
variable "checkpoint_configuration" {
  description = "(Optional) Describes an application's checkpointing configuration."
  type        = string
}
variable "force_stop" {
  description = "(Optional) Whether to force stop an unresponsive Flink-based application."
  type        = string
}
variable "record_format" {
  description = "(Required) Specifies the format of the records on the streaming source."
  type        = string
}
variable "s3_content_location" {
  description = "(Optional) Information about the Amazon S3 bucket containing the application code."
  type        = string
}
variable "checkpoint_interval = 60000" {
  description = ""
  type        = string
}
variable "file_key" {
  description = "(Required) The object key name containing the reference data.The vpc_configuration object supports the following:"
  type        = string
}
variable "id" {
  description = "The application identifier."
  type        = string
}
variable "input_processing_configuration" {
  description = ""
  type        = string
}
variable "lambda_output" {
  description = "(Optional) Identifies a Lambda function as the destination.The destination_schema object supports the following:"
  type        = string
}
variable "vpc_configuration" {
  description = "(Optional) The VPC configuration of a Flink-based application.The application_code_configuration object supports the following:"
  type        = string
}
variable "auto_scaling_enabled" {
  description = "(Optional) Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput."
  type        = string
}
variable "input" {
  description = "(Optional) The input stream used by the application."
  type        = string
}
variable "input_schema" {
  description = "(Required) Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created."
  type        = string
}
variable "metrics_level" {
  description = "(Optional) Describes the granularity of the CloudWatch Logs for an application. Valid values: APPLICATION, OPERATOR, PARALLELISM, TASK.The parallelism_configuration object supports the following:"
  type        = string
}
variable "record_column" {
  description = "(Required) Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream."
  type        = string
}
variable "service_execution_role" {
  description = "(Required) The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources."
  type        = string
}
variable "text_content" {
  description = "(Optional) The text-format code for the application.The s3_content_location object supports the following:"
  type        = string
}
variable "version_id" {
  description = "The current application version. Kinesis Data Analytics updates the version_id each time the application is updated."
  type        = string
}
variable "checkpointing_enabled" {
  description = "(Optional) Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application."
  type        = string
}
variable "log_stream_arn" {
  description = "(Required) The ARN of the CloudWatch log stream to receive application messages.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "record_format_type" {
  description = "(Required) Specifies the format of the records on the output stream. Valid values: CSV, JSON.The kinesis_firehose_output object supports the following:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "csv_mapping_parameters" {
  description = "(Optional) Provides additional mapping information when the record format uses delimiters (for example, CSV)."
  type        = string
}
variable "kinesis_streams_input" {
  description = "(Optional) If the streaming source is a Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).The input_parallelism object supports the following:"
  type        = string
}
variable "mapping_parameters" {
  description = "(Required) Provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source."
  type        = string
}
variable "property_group" {
  description = "(Required) Describes the execution property groups.The property_group object supports the following:"
  type        = string
}
variable "resource_arn" {
  description = "(Required) The ARN of the destination Lambda function to write to.The reference_data_source object supports the following:"
  type        = string
}
variable "status" {
  description = "The status of the application."
  type        = string
}
variable "min_pause_between_checkpoints" {
  description = "(Optional) Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.The monitoring_configuration object supports the following:"
  type        = string
}
variable "object_version" {
  description = "(Optional) The version of the object containing the application code.The application_snapshot_configuration object supports the following:"
  type        = string
}
variable "record_encoding" {
  description = "(Optional) Specifies the encoding of the records in the streaming source. For example, UTF-8.The s3_reference_data_source object supports the following:"
  type        = string
}
variable "reference_schema" {
  description = "(Required) Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream."
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
output "arn" {
  description = "The ARN of the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "json_mapping_parameters" {
  description = "(Optional) Provides additional mapping information when JSON is the record format on the streaming source.The csv_mapping_parameters object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.json_mapping_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_streams_output" {
  description = "(Optional) Identifies a Kinesis data stream as the destination."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.kinesis_streams_output
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "run_configuration" {
  description = "(Optional) Describes the starting properties for a Flink-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.run_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshots_enabled" {
  description = "(Required) Describes whether snapshots are enabled for a Flink-based Kinesis Data Analytics application.The environment_properties object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.snapshots_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_restore_configuration" {
  description = "(Optional) The restore behavior of a restarting application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.application_restore_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flink_application_configuration" {
  description = "(Optional) The configuration of a Flink-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.flink_application_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_lambda_processor" {
  description = "(Required) Describes the Lambda function that is used to preprocess the records in the stream before being processed by your application code.The input_lambda_processor object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_lambda_processor
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mapping" {
  description = "(Optional) A reference to the data element in the streaming input or the reference data source.The record_format object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Required) The Security Group IDs used by the VPC configuration."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_timestamp" {
  description = "The current timestamp when the application was created."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.create_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "count" {
  description = "(Optional) The number of in-application streams to create.The input_processing_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) A summary description of the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_firehose_output" {
  description = "(Optional) Identifies a Kinesis Data Firehose delivery stream as the destination."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.kinesis_firehose_output
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_row_path" {
  description = "(Required) The path to the top-level parent that contains the records.The input_starting_position_configuration object supports the following:~> strongNOTE: To modify an application's starting position, first stop the application by setting start_application = false, then update starting_position and set start_application = true."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_row_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reference_data_source" {
  description = "(Optional) The reference data source used by the application.The input object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.reference_data_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_arn" {
  description = "(Required) The ARN of the S3 bucket."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.bucket_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment_properties" {
  description = "(Optional) Describes execution properties for a Flink-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.environment_properties
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flink_run_configuration" {
  description = "(Optional) The starting parameters for a Flink-based Kinesis Data Analytics application.The application_restore_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.flink_run_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_starting_position_configuration" {
  description = " (Optional) The point at which the application starts processing records from the streaming source."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_starting_position_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "property_group_id" {
  description = "(Required) The key of the application execution property key-value map."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.property_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "table_name" {
  description = "(Required) The name of the in-application table to create.The reference_schema object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.table_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allow_non_restored_state" {
  description = "(Optional) When restoring from a snapshot, specifies whether the runtime is allowed to skip a state that cannot be mapped to the new program. Default is false.The sql_application_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.allow_non_restored_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_restore_type" {
  description = "(Required) Specifies how the application should be restored. Valid values: RESTORE_FROM_CUSTOM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, SKIP_RESTORE_FROM_SNAPSHOT."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.application_restore_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_content_type" {
  description = "(Required) Specifies whether the code content is in text or zip format. Valid values: PLAINTEXT, ZIPFILE."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.code_content_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_schema" {
  description = "(Required) Describes the data format when records are written to the destination."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.destination_schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_pause_between_checkpoints = 5000" {
  description = ""
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.min_pause_between_checkpoints = 5000
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "monitoring_configuration" {
  description = "(Optional) Describes configuration parameters for CloudWatch logging for an application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.monitoring_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the in-application stream."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Required) The name prefix to use when creating an in-application stream."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_configuration" {
  description = "(Optional) The application's configuration"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.application_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_column_delimiter" {
  description = "(Required) The column delimiter. For example, in a CSV format, a comma (,) is the typical column delimiter."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_column_delimiter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_parallelism" {
  description = "(Optional) Describes the number of in-application streams to create."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_parallelism
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_starting_position" {
  description = "(Required) The starting position on the stream. Valid values: LAST_STOPPED_POINT, NOW, TRIM_HORIZON.The kinesis_firehose_input object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_starting_position
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_update_timestamp" {
  description = "The current timestamp when the application was last updated."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.last_update_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime_environment" {
  description = "(Required) The runtime environment for the application. Valid values: SQL-1_0, FLINK-1_6, FLINK-1_8, FLINK-1_11, FLINK-1_13."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.runtime_environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checkpointing_enabled = true" {
  description = ""
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.checkpointing_enabled = true
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_logging_options" {
  description = "(Optional) A CloudWatch log stream to monitor application configuration errors."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.cloudwatch_logging_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_level" {
  description = "(Optional) Describes the verbosity of the CloudWatch Logs for an application. Valid values: DEBUG, ERROR, INFO, WARN."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.log_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output" {
  description = "(Optional) The destination streams used by the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.output
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parallelism_configuration" {
  description = "(Optional) Describes parameters for how an application executes multiple tasks simultaneously.The checkpoint_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.parallelism_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_name" {
  description = "(Optional) The identifier of an existing snapshot of application state to use to restart an application. The application uses this value if RESTORE_FROM_CUSTOM_SNAPSHOT is specified for application_restore_type.The flink_run_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.snapshot_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sql_application_configuration" {
  description = "(Optional) The configuration of a SQL-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.sql_application_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sql_type" {
  description = "(Required) The type of column created in the in-application input stream or reference table."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.sql_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checkpoint_interval" {
  description = "(Optional) Describes the interval in milliseconds between checkpoint operations."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.checkpoint_interval
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_application" {
  description = "(Optional) Whether to start or stop the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.start_application
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_firehose_input" {
  description = "(Optional) If the streaming source is a Kinesis Data Firehose delivery stream, identifies the delivery stream's ARN."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.kinesis_firehose_input
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parallelism_per_kpu" {
  description = "(Optional) Describes the number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform per Kinesis Processing Unit (KPU) used by the application.The run_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.parallelism_per_kpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_row_delimiter" {
  description = "(Required) The row delimiter. For example, in a CSV format, \\n is the typical row delimiter.The json_mapping_parameters object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_row_delimiter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_reference_data_source" {
  description = "(Required) Identifies the S3 bucket and object that contains the reference data."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.s3_reference_data_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) The Subnet IDs used by the VPC configuration.The cloudwatch_logging_options object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_content" {
  description = "(Optional) The location and type of the application code.The code_content object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.code_content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "property_map" {
  description = "(Required) Application execution property key-value map.The flink_application_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.property_map
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The application_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_type" {
  description = "(Required) Describes whether the application uses the default parallelism for the Kinesis Data Analytics service. Valid values: CUSTOM, DEFAULT. Set this attribute to CUSTOM in order for any specified auto_scaling_enabled, parallelism, or parallelism_per_kpu attribute values to be effective."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.configuration_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parallelism" {
  description = "(Optional) Describes the initial number of parallel tasks that a Flink-based Kinesis Data Analytics application can perform."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.parallelism
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_code_configuration" {
  description = "(Required) The code location and type parameters for the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.application_code_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checkpoint_configuration" {
  description = "(Optional) Describes an application's checkpointing configuration."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.checkpoint_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_stop" {
  description = "(Optional) Whether to force stop an unresponsive Flink-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.force_stop
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_format" {
  description = "(Required) Specifies the format of the records on the streaming source."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_content_location" {
  description = "(Optional) Information about the Amazon S3 bucket containing the application code."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.s3_content_location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "application_snapshot_configuration" {
  description = "(Optional) Describes whether snapshots are enabled for a Flink-based application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.application_snapshot_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_key" {
  description = "(Required) The object key name containing the reference data.The vpc_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.file_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The application identifier."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_processing_configuration" {
  description = ""
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_processing_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_output" {
  description = "(Optional) Identifies a Lambda function as the destination.The destination_schema object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.lambda_output
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_configuration" {
  description = "(Optional) The VPC configuration of a Flink-based application.The application_code_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.vpc_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checkpoint_interval = 60000" {
  description = ""
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.checkpoint_interval = 60000
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input" {
  description = "(Optional) The input stream used by the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "input_schema" {
  description = "(Required) Describes the format of the data in the streaming source, and how each data element maps to corresponding columns in the in-application stream that is being created."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.input_schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metrics_level" {
  description = "(Optional) Describes the granularity of the CloudWatch Logs for an application. Valid values: APPLICATION, OPERATOR, PARALLELISM, TASK.The parallelism_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.metrics_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_column" {
  description = "(Required) Describes the mapping of each data element in the streaming source to the corresponding column in the in-application stream."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_column
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_execution_role" {
  description = "(Required) The ARN of the IAM role used by the application to access Kinesis data streams, Kinesis Data Firehose delivery streams, Amazon S3 objects, and other external resources."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.service_execution_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "text_content" {
  description = "(Optional) The text-format code for the application.The s3_content_location object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.text_content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version_id" {
  description = "The current application version. Kinesis Data Analytics updates the version_id each time the application is updated."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_enabled" {
  description = "(Optional) Describes whether the Kinesis Data Analytics service can increase the parallelism of the application in response to increased throughput."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.auto_scaling_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_stream_arn" {
  description = "(Required) The ARN of the CloudWatch log stream to receive application messages.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.log_stream_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_format_type" {
  description = "(Required) Specifies the format of the records on the output stream. Valid values: CSV, JSON.The kinesis_firehose_output object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_format_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checkpointing_enabled" {
  description = "(Optional) Describes whether checkpointing is enabled for a Flink-based Kinesis Data Analytics application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.checkpointing_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kinesis_streams_input" {
  description = "(Optional) If the streaming source is a Kinesis data stream, identifies the stream's Amazon Resource Name (ARN).The input_parallelism object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.kinesis_streams_input
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mapping_parameters" {
  description = "(Required) Provides additional mapping information specific to the record format (such as JSON, CSV, or record fields delimited by some delimiter) on the streaming source."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.mapping_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "property_group" {
  description = "(Required) Describes the execution property groups.The property_group object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.property_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_arn" {
  description = "(Required) The ARN of the destination Lambda function to write to.The reference_data_source object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.resource_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "csv_mapping_parameters" {
  description = "(Optional) Provides additional mapping information when the record format uses delimiters (for example, CSV)."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.csv_mapping_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_version" {
  description = "(Optional) The version of the object containing the application code.The application_snapshot_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.object_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_encoding" {
  description = "(Optional) Specifies the encoding of the records in the streaming source. For example, UTF-8.The s3_reference_data_source object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.record_encoding
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reference_schema" {
  description = "(Required) Describes the format of the data in the streaming source, and how each data element maps to corresponding columns created in the in-application stream."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.reference_schema
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_pause_between_checkpoints" {
  description = "(Optional) Describes the minimum time in milliseconds after a checkpoint operation completes that a new checkpoint operation can start.The monitoring_configuration object supports the following:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.min_pause_between_checkpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The application identifier."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the application."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version_id" {
  description = "The current application version. Kinesis Data Analytics updates the version_id each time the application is updated."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.version_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_timestamp" {
  description = "The current timestamp when the application was created."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.create_timestamp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_update_timestamp" {
  description = "The current timestamp when the application was last updated."
  value       = aws_kinesisanalyticsv2_application.aws_kinesisanalyticsv2_application.last_update_timestamp
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
      "kind/name"                   = "aws_kinesisanalyticsv2_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
