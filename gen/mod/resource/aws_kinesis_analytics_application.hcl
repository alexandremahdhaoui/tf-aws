resource "aws_kinesis_analytics_application" "aws_kinesis_analytics_application" {
  create_timestamp                = var.create_timestamp
  description                     = var.description
  record_format_type              = var.record_format_type
  kinesis_firehose                = var.kinesis_firehose
  mapping                         = var.mapping
  mapping_parameters              = var.mapping_parameters
  processing_configuration        = var.processing_configuration
  arn                             = var.arn
  parallelism                     = var.parallelism
  record_column_delimiter         = var.record_column_delimiter
  record_columns                  = var.record_columns
  record_format                   = var.record_format
  resource_arn                    = var.resource_arn
  role_arn                        = var.role_arn
  status                          = var.status
  lambda                          = var.lambda
  last_update_timestamp           = var.last_update_timestamp
  reference_data_sources          = var.reference_data_sources
  start_application               = var.start_application
  tags                            = var.tags
  json                            = var.json
  name                            = var.name
  name_prefix                     = var.name_prefix
  s3                              = var.s3
  starting_position               = var.starting_position
  cloudwatch_logging_options      = var.cloudwatch_logging_options
  sql_type                        = var.sql_type
  starting_position_configuration = var.starting_position_configuration
  bucket_arn                      = var.bucket_arn
  file_key                        = var.file_key
  id                              = var.id
  inputs                          = var.inputs
  record_encoding                 = var.record_encoding
  schema                          = var.schema
  version                         = var.version
  count                           = var.count
  csv                             = var.csv
  kinesis_stream                  = var.kinesis_stream
  log_stream_arn                  = var.log_stream_arn
  outputs                         = var.outputs
  record_row_delimiter            = var.record_row_delimiter
  record_row_path                 = var.record_row_path
  table_name                      = var.table_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "last_update_timestamp" {
  description = "The Timestamp when the application was last updated."
  type        = string
}
variable "reference_data_sources" {
  description = "Reference Data Sources below for more details."
  type        = string
}
variable "start_application" {
  description = "(Optional) Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined starting_positionstart_application = false, then update starting_position and set start_application = true."
  type        = string
  default     = ""
}
variable "tags" {
  description = "Key-value map of tags for the Kinesis Analytics Application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.CloudWatch Logging OptionsConfigure a CloudWatch Log Stream to monitor application errors.The cloudwatch_logging_options block supports the following:"
  type        = string
}
variable "lambda" {
  description = "(Required) The Lambda function configuration. See Lambda below for more details.LambdaThe Lambda function that pre-processes records in the stream.The lambda block supports the following:"
  type        = string
}
variable "name" {
  description = "(Required) Name of the column."
  type        = string
}
variable "name_prefix" {
  description = "(Required) The Name Prefix to use when creating an in-application stream."
  type        = string
}
variable "s3" {
  description = "(Optional) The S3 configuration for the reference data source. See S3 Reference below for more details.Kinesis FirehoseConfiguration for a Kinesis Firehose delivery stream.The kinesis_firehose block supports the following:"
  type        = string
  default     = ""
}
variable "starting_position" {
  description = "(Required) The starting position on the stream. Valid values: LAST_STOPPED_POINT, NOW, TRIM_HORIZON.Record ColumnsThe Column mapping of each data element in the streaming source to the corresponding column in the in-application stream.The record_columns block supports the following:"
  type        = string
}
variable "json" {
  description = "(Optional) Mapping information when JSON is the record format on the streaming source.\nSee JSON Mapping Parameters below for more details.CSV Mapping ParametersMapping information when the record format uses delimiters.The csv block supports the following:"
  type        = string
  default     = ""
}
variable "sql_type" {
  description = "(Required) The SQL Type of the column."
  type        = string
}
variable "starting_position_configuration" {
  description = "Starting Position Configuration below for more details.OutputsConfigure Output destinations for the Kinesis Analytics Application. You can have a maximum of 3 destinations configured.The outputs block supports the following:"
  type        = string
}
variable "cloudwatch_logging_options" {
  description = "(Optional) The CloudWatch log stream options to monitor application errors.\nSee CloudWatch Logging Options below for more details."
  type        = string
  default     = ""
}
variable "file_key" {
  description = "(Required) The File Key name containing reference data."
  type        = string
}
variable "id" {
  description = "The ARN of the Kinesis Analytics Application."
  type        = string
}
variable "inputs" {
  description = "(Optional) Input configuration of the application. See Inputs below for more details."
  type        = string
  default     = ""
}
variable "record_encoding" {
  description = "(Optional) The Encoding of the record in the streaming source.ParallelismConfigures the number of Parallel in-application streams to create.The parallelism block supports the following:"
  type        = string
  default     = ""
}
variable "schema" {
  description = "(Required) The Schema format of the data in the streaming source. See Source Schema below for more details."
  type        = string
}
variable "version" {
  description = "The Version of the application."
  type        = string
}
variable "bucket_arn" {
  description = "(Required) The S3 Bucket ARN."
  type        = string
}
variable "csv" {
  description = "(Optional) Mapping information when the record format uses delimiters.\nSee CSV Mapping Parameters below for more details."
  type        = string
  default     = ""
}
variable "kinesis_stream" {
  description = "(Optional) The Kinesis Stream configuration for the destination stream. Conflicts with kinesis_firehoseKinesis Stream below for more details."
  type        = string
  default     = ""
}
variable "log_stream_arn" {
  description = "(Required) The ARN of the CloudWatch Log Stream."
  type        = string
}
variable "outputs" {
  description = "(Optional) Output destination configuration of the application. See Outputs below for more details."
  type        = string
  default     = ""
}
variable "record_row_delimiter" {
  description = "(Required) The Row Delimiter.JSON Mapping ParametersMapping information when JSON is the record format on the streaming source.The json block supports the following:"
  type        = string
}
variable "record_row_path" {
  description = "(Required) Path to the top-level parent that contains the records.S3 ReferenceIdentifies the S3 bucket and object that contains the reference data.The s3 blcok supports the following:"
  type        = string
}
variable "table_name" {
  description = "(Required) The in-application Table Name."
  type        = string
}
variable "count" {
  description = "(Required) The Count of streams.Processing ConfigurationThe Processing Configuration to transform records as they are received from the stream.The processing_configuration block supports the following:"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the application."
  type        = string
  default     = ""
}
variable "record_format_type" {
  description = "(Required) The type of Record Format. Can be CSV or JSON."
  type        = string
}
variable "create_timestamp" {
  description = "The Timestamp when the application version was created."
  type        = string
}
variable "mapping" {
  description = "(Optional) The Mapping reference to the data element.Record FormatThe Record Format and relevant mapping information that should be applied to schematize the records on the stream.The record_format block supports the following:"
  type        = string
  default     = ""
}
variable "mapping_parameters" {
  description = "(Optional) The Mapping Information for the record format.\nSee Mapping Parameters below for more details.Mapping ParametersProvides Mapping information specific to the record format on the streaming source.The mapping_parameters block supports the following:"
  type        = string
  default     = ""
}
variable "processing_configuration" {
  description = "(Optional) The Processing Configuration to transform records as they are received from the stream.\nSee Processing Configuration below for more details."
  type        = string
  default     = ""
}
variable "kinesis_firehose" {
  description = "(Optional) The Kinesis Firehose configuration for the destination stream. Conflicts with kinesis_streamKinesis Firehose below for more details."
  type        = string
  default     = ""
}
variable "parallelism" {
  description = "(Optional) The number of Parallel in-application streams to create.\nSee Parallelism below for more details."
  type        = string
  default     = ""
}
variable "record_column_delimiter" {
  description = "(Required) The Column Delimiter."
  type        = string
}
variable "record_columns" {
  description = "(Required) The Record Column mapping for the streaming source data element.\nSee Record Columns below for more details."
  type        = string
}
variable "record_format" {
  description = "(Required) The Record Format and mapping information to schematize a record.\nSee Record Format below for more details."
  type        = string
}
variable "resource_arn" {
  description = "(Required) The ARN of the Lambda function."
  type        = string
}
variable "role_arn" {
  description = "(Required) The IAM Role ARN to read the data.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status" {
  description = "The Status of the application."
  type        = string
}
variable "arn" {
  description = "The ARN of the Kinesis Analytics Appliation."
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
output "status" {
  description = "The Status of the application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.status
}
output "arn" {
  description = "The ARN of the Kinesis Analytics Appliation."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.arn
}
output "parallelism" {
  description = "(Optional) The number of Parallel in-application streams to create.\nSee Parallelism below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.parallelism
}
output "record_column_delimiter" {
  description = "(Required) The Column Delimiter."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_column_delimiter
}
output "record_columns" {
  description = "(Required) The Record Column mapping for the streaming source data element.\nSee Record Columns below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_columns
}
output "record_format" {
  description = "(Required) The Record Format and mapping information to schematize a record.\nSee Record Format below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_format
}
output "resource_arn" {
  description = "(Required) The ARN of the Lambda function."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.resource_arn
}
output "role_arn" {
  description = "(Required) The IAM Role ARN to read the data.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.role_arn
}
output "lambda" {
  description = "(Required) The Lambda function configuration. See Lambda below for more details.LambdaThe Lambda function that pre-processes records in the stream.The lambda block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.lambda
}
output "last_update_timestamp" {
  description = "The Timestamp when the application was last updated."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.last_update_timestamp
}
output "reference_data_sources" {
  description = "Reference Data Sources below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.reference_data_sources
}
output "start_application" {
  description = "(Optional) Whether to start or stop the Kinesis Analytics Application. To start an application, an input with a defined starting_positionstart_application = false, then update starting_position and set start_application = true."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.start_application
}
output "tags" {
  description = "Key-value map of tags for the Kinesis Analytics Application. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.CloudWatch Logging OptionsConfigure a CloudWatch Log Stream to monitor application errors.The cloudwatch_logging_options block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.tags
}
output "json" {
  description = "(Optional) Mapping information when JSON is the record format on the streaming source.\nSee JSON Mapping Parameters below for more details.CSV Mapping ParametersMapping information when the record format uses delimiters.The csv block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.json
}
output "name" {
  description = "(Required) Name of the column."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.name
}
output "name_prefix" {
  description = "(Required) The Name Prefix to use when creating an in-application stream."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.name_prefix
}
output "s3" {
  description = "(Optional) The S3 configuration for the reference data source. See S3 Reference below for more details.Kinesis FirehoseConfiguration for a Kinesis Firehose delivery stream.The kinesis_firehose block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.s3
}
output "starting_position" {
  description = "(Required) The starting position on the stream. Valid values: LAST_STOPPED_POINT, NOW, TRIM_HORIZON.Record ColumnsThe Column mapping of each data element in the streaming source to the corresponding column in the in-application stream.The record_columns block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.starting_position
}
output "cloudwatch_logging_options" {
  description = "(Optional) The CloudWatch log stream options to monitor application errors.\nSee CloudWatch Logging Options below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.cloudwatch_logging_options
}
output "sql_type" {
  description = "(Required) The SQL Type of the column."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.sql_type
}
output "starting_position_configuration" {
  description = "Starting Position Configuration below for more details.OutputsConfigure Output destinations for the Kinesis Analytics Application. You can have a maximum of 3 destinations configured.The outputs block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.starting_position_configuration
}
output "bucket_arn" {
  description = "(Required) The S3 Bucket ARN."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.bucket_arn
}
output "file_key" {
  description = "(Required) The File Key name containing reference data."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.file_key
}
output "id" {
  description = "The ARN of the Kinesis Analytics Application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.id
}
output "inputs" {
  description = "(Optional) Input configuration of the application. See Inputs below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.inputs
}
output "record_encoding" {
  description = "(Optional) The Encoding of the record in the streaming source.ParallelismConfigures the number of Parallel in-application streams to create.The parallelism block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_encoding
}
output "schema" {
  description = "(Required) The Schema format of the data in the streaming source. See Source Schema below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.schema
}
output "version" {
  description = "The Version of the application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.version
}
output "table_name" {
  description = "(Required) The in-application Table Name."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.table_name
}
output "count" {
  description = "(Required) The Count of streams.Processing ConfigurationThe Processing Configuration to transform records as they are received from the stream.The processing_configuration block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.count
}
output "csv" {
  description = "(Optional) Mapping information when the record format uses delimiters.\nSee CSV Mapping Parameters below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.csv
}
output "kinesis_stream" {
  description = "(Optional) The Kinesis Stream configuration for the destination stream. Conflicts with kinesis_firehoseKinesis Stream below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.kinesis_stream
}
output "log_stream_arn" {
  description = "(Required) The ARN of the CloudWatch Log Stream."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.log_stream_arn
}
output "outputs" {
  description = "(Optional) Output destination configuration of the application. See Outputs below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.outputs
}
output "record_row_delimiter" {
  description = "(Required) The Row Delimiter.JSON Mapping ParametersMapping information when JSON is the record format on the streaming source.The json block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_row_delimiter
}
output "record_row_path" {
  description = "(Required) Path to the top-level parent that contains the records.S3 ReferenceIdentifies the S3 bucket and object that contains the reference data.The s3 blcok supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_row_path
}
output "create_timestamp" {
  description = "The Timestamp when the application version was created."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.create_timestamp
}
output "description" {
  description = "(Optional) Description of the application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.description
}
output "record_format_type" {
  description = "(Required) The type of Record Format. Can be CSV or JSON."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.record_format_type
}
output "kinesis_firehose" {
  description = "(Optional) The Kinesis Firehose configuration for the destination stream. Conflicts with kinesis_streamKinesis Firehose below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.kinesis_firehose
}
output "mapping" {
  description = "(Optional) The Mapping reference to the data element.Record FormatThe Record Format and relevant mapping information that should be applied to schematize the records on the stream.The record_format block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.mapping
}
output "mapping_parameters" {
  description = "(Optional) The Mapping Information for the record format.\nSee Mapping Parameters below for more details.Mapping ParametersProvides Mapping information specific to the record format on the streaming source.The mapping_parameters block supports the following:"
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.mapping_parameters
}
output "processing_configuration" {
  description = "(Optional) The Processing Configuration to transform records as they are received from the stream.\nSee Processing Configuration below for more details."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.processing_configuration
}
output "last_update_timestamp" {
  description = "The Timestamp when the application was last updated."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.last_update_timestamp
}
output "status" {
  description = "The Status of the application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.tags_all
}
output "version" {
  description = "The Version of the application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.version
}
output "arn" {
  description = "The ARN of the Kinesis Analytics Appliation."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.arn
}
output "create_timestamp" {
  description = "The Timestamp when the application version was created."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.create_timestamp
}
output "id" {
  description = "The ARN of the Kinesis Analytics Application."
  value       = aws_kinesis_analytics_application.aws_kinesis_analytics_application.id
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
      "kind/name"                   = "aws_kinesis_analytics_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
