resource "aws_kinesis_firehose_delivery_stream" "aws_kinesis_firehose_delivery_stream" {
  column_to_json_key_mappings              = var.column_to_json_key_mappings
  output_format_configuration              = var.output_format_configuration
  parameters                               = var.parameters
  request_configuration                    = var.request_configuration
  row_index_stride                         = var.row_index_stride
  timestamp_formats                        = var.timestamp_formats
  writer_version                           = var.writer_version
  buffering_interval                       = var.buffering_interval
  prefix                                   = var.prefix
  s3_configuration                         = var.s3_configuration
  splunk_configuration                     = var.splunk_configuration
  index_rotation_period                    = var.index_rotation_period
  buffer_size                              = var.buffer_size
  compression_format                       = var.compression_format
  hec_token                                = var.hec_token
  page_size_bytes                          = var.page_size_bytes
  table_name                               = var.table_name
  bucket_arn                               = var.bucket_arn
  data_table_columns                       = var.data_table_columns
  padding_tolerance                        = var.padding_tolerance
  url                                      = var.url
  version_id                               = var.version_id
  common_attributes                        = var.common_attributes
  content_encoding                         = var.content_encoding
  copy_options                             = var.copy_options
  domain_arn                               = var.domain_arn
  hec_acknowledgment_timeout               = var.hec_acknowledgment_timeout
  hec_endpoint_type                        = var.hec_endpoint_type
  parameter_name                           = var.parameter_name
  password                                 = var.password
  cluster_jdbcurl                          = var.cluster_jdbcurl
  type_name                                = var.type_name
  vpc_config                               = var.vpc_config
  server_side_encryption                   = var.server_side_encryption
  data_format_conversion_configuration     = var.data_format_conversion_configuration
  data_table_name                          = var.data_table_name
  dynamic_partitioning_configuration       = var.dynamic_partitioning_configuration
  key_arn                                  = var.key_arn
  name                                     = var.name
  orc_ser_de                               = var.orc_ser_de
  s3_backup_configuration                  = var.s3_backup_configuration
  bloom_filter_columns                     = var.bloom_filter_columns
  cluster_endpoint                         = var.cluster_endpoint
  enable_dictionary_compression            = var.enable_dictionary_compression
  role_arn                                 = var.role_arn
  tags                                     = var.tags
  block_size_bytes                         = var.block_size_bytes
  buffer_interval                          = var.buffer_interval
  compression                              = var.compression
  destination                              = var.destination
  input_format_configuration               = var.input_format_configuration
  log_stream_name                          = var.log_stream_name
  parquet_ser_de                           = var.parquet_ser_de
  region                                   = var.region
  arn                                      = var.arn
  s3_backup_mode                           = var.s3_backup_mode
  retry_duration                           = var.retry_duration
  cloudwatch_logging_options               = var.cloudwatch_logging_options
  enable_padding                           = var.enable_padding
  enabled                                  = var.enabled
  index_name                               = var.index_name
  max_padding_bytes                        = var.max_padding_bytes
  security_group_ids                       = var.security_group_ids
  bloom_filter_false_positive_probability  = var.bloom_filter_false_positive_probability
  hive_json_ser_de                         = var.hive_json_ser_de
  log_group_name                           = var.log_group_name
  open_x_json_ser_de                       = var.open_x_json_ser_de
  parameter_value                          = var.parameter_value
  stripe_size_bytes                        = var.stripe_size_bytes
  convert_dots_in_json_keys_to_underscores = var.convert_dots_in_json_keys_to_underscores
  deserializer                             = var.deserializer
  error_output_prefix                      = var.error_output_prefix
  hec_endpoint                             = var.hec_endpoint
  kinesis_source_configuration             = var.kinesis_source_configuration
  subnet_ids                               = var.subnet_ids
  type                                     = var.type
  database_name                            = var.database_name
  case_insensitive                         = var.case_insensitive
  dictionary_key_threshold                 = var.dictionary_key_threshold
  format_version                           = var.format_version
  kinesis_stream_arn                       = var.kinesis_stream_arn
  buffering_size                           = var.buffering_size
  http_endpoint_configuration              = var.http_endpoint_configuration
  redshift_configuration                   = var.redshift_configuration
  username                                 = var.username
  access_key                               = var.access_key
  elasticsearch_configuration              = var.elasticsearch_configuration
  kms_key_arn                              = var.kms_key_arn
  schema_configuration                     = var.schema_configuration
  catalog_id                               = var.catalog_id
  key_type                                 = var.key_type
  serializer                               = var.serializer
  extended_s3_configuration                = var.extended_s3_configuration
  processors                               = var.processors
  value                                    = var.value
  processing_configuration                 = var.processing_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "block_size_bytes" {
  description = "(Optional) The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations."
  type        = string
  default     = ""
}
variable "cluster_endpoint" {
  description = "(Optional) The endpoint to use when communicating with the cluster. Conflicts with domain_arn."
  type        = string
  default     = ""
}
variable "enable_dictionary_compression" {
  description = "(Optional) Indicates whether to enable dictionary compression."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Optional) If you don't specify an AWS Region, the default is the current region."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream"
  type        = string
}
variable "buffer_interval" {
  description = "(Optional) Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300."
  type        = string
  default     = ""
}
variable "compression" {
  description = "(Optional) The compression code to use over data blocks. The possible values are UNCOMPRESSED, SNAPPY, and GZIP, with the default being SNAPPY. Use SNAPPY for higher decompression speed. Use GZIP if the compression ratio is more important than speed."
  type        = string
  default     = ""
}
variable "destination" {
  description = " – (Required) This is the destination to where the data is delivered. The only options are s3 (Deprecated, use extended_s3 instead), extended_s3, redshift, elasticsearch, splunk, and http_endpoint."
  type        = string
}
variable "input_format_configuration" {
  description = "(Required) Nested argument that specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON. More details below."
  type        = string
}
variable "log_stream_name" {
  description = "(Optional) The CloudWatch log stream name for logging. This value is required if enabled is true.The processing_configuration object supports the following:"
  type        = string
  default     = ""
}
variable "parquet_ser_de" {
  description = "(Optional) Nested argument that specifies converting data to the Parquet format before storing it in Amazon S3. For more information, see Apache Parquet. More details below.orc_ser_de"
  type        = string
  default     = ""
}
variable "retry_duration" {
  description = "(Optional) Total amount of seconds Firehose spends on retries. Valid values between 0 and 7200. Default is 300.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "s3_backup_mode" {
  description = "(Optional) Defines how documents should be delivered to Amazon S3.  Valid values are FailedDataOnly and AllData.  Default value is FailedDataOnly."
  type        = string
  default     = ""
}
variable "bloom_filter_false_positive_probability" {
  description = "(Optional) The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1."
  type        = string
  default     = ""
}
variable "cloudwatch_logging_options" {
  description = "(Optional) The CloudWatch Logging Options for the delivery stream. More details are given below."
  type        = string
  default     = ""
}
variable "enable_padding" {
  description = "(Optional) Set this to true to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is false."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Enables or disables dynamic partitioning. Defaults to false."
  type        = string
  default     = ""
}
variable "index_name" {
  description = "(Required) The Elasticsearch index name."
  type        = string
}
variable "max_padding_bytes" {
  description = "(Optional) The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 0."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) A list of security group IDs to associate with Kinesis Firehose."
  type        = string
}
variable "convert_dots_in_json_keys_to_underscores" {
  description = "(Optional) When set to true, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is \"a.b\", you can define the column name to be \"a_b\" when using this option. Defaults to false.output_format_configuration"
  type        = string
  default     = ""
}
variable "hive_json_ser_de" {
  description = "(Optional) Nested argument that specifies the native Hive / HCatalog JsonSerDe. More details below."
  type        = string
  default     = ""
}
variable "log_group_name" {
  description = "(Optional) The CloudWatch group name for logging. This value is required if enabled is true."
  type        = string
  default     = ""
}
variable "open_x_json_ser_de" {
  description = "(Optional) Nested argument that specifies the OpenX SerDe. More details below.hive_json_ser_de"
  type        = string
  default     = ""
}
variable "parameter_value" {
  description = "(Required) Parameter value. Must be between 1 and 512 length (inclusive). When providing a Lambda ARN, you should specify the resource version as well.~> strongNOTE: Parameters with default values, including NumberOfRetries(default: 3), RoleArn(default: firehose role ARN), BufferSizeInMBs(default: 3), and BufferIntervalInSeconds(default: 60), are not stored in terraform state. To prevent perpetual differences, it is therefore recommended to only include parameters with non-default values.The request_configuration object supports the following:"
  type        = string
}
variable "stripe_size_bytes" {
  description = "(Optional) The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.parquet_ser_de"
  type        = string
  default     = ""
}
variable "database_name" {
  description = "(Required) Specifies the name of the AWS Glue database that contains the schema for the output data."
  type        = string
}
variable "deserializer" {
  description = "(Required) Nested argument that specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe. More details below.deserializer~> strongNOTE: One of the deserializers must be configured. If no nested configuration needs to occur simply declare as XXX_json_ser_de = [] or XXX_json_ser_de {}."
  type        = string
}
variable "error_output_prefix" {
  description = "(Optional) Prefix added to failed records before writing them to S3. Not currently supported for redshift destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see Custom Prefixes for Amazon S3 Objects."
  type        = string
  default     = ""
}
variable "hec_endpoint" {
  description = "(Required) The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data."
  type        = string
}
variable "kinesis_source_configuration" {
  description = "(Optional) Allows the ability to specify the kinesis stream that is used as the source of the firehose delivery stream."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) A list of subnet IDs to associate with Kinesis Firehose."
  type        = string
}
variable "type" {
  description = "(Required) The type of processor. Valid Values: RecordDeAggregation, Lambda, MetadataExtraction, AppendDelimiterToRecord. Validation is done against AWS SDK constants; so that values not explicitly listed may also work."
  type        = string
}
variable "buffering_size" {
  description = "(Optional) Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5."
  type        = string
  default     = ""
}
variable "case_insensitive" {
  description = "(Optional) When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them."
  type        = string
  default     = ""
}
variable "dictionary_key_threshold" {
  description = "(Optional) A float that represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1."
  type        = string
  default     = ""
}
variable "format_version" {
  description = "(Optional) The version of the file to write. The possible values are V0_11 and V0_12. The default is V0_12."
  type        = string
  default     = ""
}
variable "kinesis_stream_arn" {
  description = " (Required) The kinesis stream used as the source of the firehose delivery stream."
  type        = string
}
variable "access_key" {
  description = "(Optional) The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination."
  type        = string
  default     = ""
}
variable "http_endpoint_configuration" {
  description = "(Optional) Configuration options if http_endpoint is the destination. requires the user to also specify a s3_configuration block.  More details are given below.The kinesis_source_configuration object supports the following:"
  type        = string
  default     = ""
}
variable "redshift_configuration" {
  description = "redshift_configurations3_configuration block. More details are given below."
  type        = string
}
variable "username" {
  description = "(Required) The username that the firehose delivery stream will assume. It is strongly recommended that the username and password provided is used exclusively for Amazon Kinesis Firehose purposes, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions."
  type        = string
}
variable "catalog_id" {
  description = "(Optional) The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default."
  type        = string
  default     = ""
}
variable "elasticsearch_configuration" {
  description = "(Optional) Configuration options if elasticsearch is the destination. More details are given below."
  type        = string
  default     = ""
}
variable "kms_key_arn" {
  description = ""
  type        = string
}
variable "schema_configuration" {
  description = "(Required) Nested argument that specifies the AWS Glue Data Catalog table that contains the column information. More details below."
  type        = string
}
variable "extended_s3_configuration" {
  description = "(Optional, only Required when destination is extended_s3) Enhanced configuration options for the s3 destination. More details are given below."
  type        = string
}
variable "key_type" {
  description = "- (Optional) Type of encryption key. Default is AWS_OWNED_CMK. Valid values are AWS_OWNED_CMK and CUSTOMER_MANAGED_CMK"
  type        = string
  default     = ""
}
variable "serializer" {
  description = "(Required) Nested argument that specifies which serializer to use. You can choose either the ORC SerDe or the Parquet SerDe. More details below.serializer~> strongNOTE: One of the serializers must be configured. If no nested configuration needs to occur simply declare as XXX_ser_de = [] or XXX_ser_de {}."
  type        = string
}
variable "processing_configuration" {
  description = "(Optional) The data processing configuration.  More details are given below."
  type        = string
  default     = ""
}
variable "processors" {
  description = "(Optional) Array of data processors. More details are given belowThe processors array objects support the following:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) The value of the HTTP endpoint common attribute.The vpc_config object supports the following:"
  type        = string
  default     = ""
}
variable "writer_version" {
  description = "(Optional) Indicates the version of row format to output. The possible values are V1 and V2. The default is V1.schema_configuration"
  type        = string
  default     = ""
}
variable "buffering_interval" {
  description = "(Optional) Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes)."
  type        = string
  default     = ""
}
variable "column_to_json_key_mappings" {
  description = "(Optional) A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to { ts = \"timestamp\" } to map this key to a column named ts."
  type        = string
  default     = ""
}
variable "output_format_configuration" {
  description = "(Required) Nested argument that specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format. More details below."
  type        = string
}
variable "parameters" {
  description = "(Optional) Array of processor parameters. More details are given belowThe parameters array objects support the following:"
  type        = string
  default     = ""
}
variable "request_configuration" {
  description = "(Optional) The request configuration.  More details are given below."
  type        = string
  default     = ""
}
variable "row_index_stride" {
  description = "(Optional) The number of rows between index entries. The default is 10000 and the minimum is 1000."
  type        = string
  default     = ""
}
variable "timestamp_formats" {
  description = "(Optional) A list of how you want Kinesis Data Firehose to parse the date and time stamps that may be present in your input data JSON. To specify these format strings, follow the pattern syntax of JodaTime's DateTimeFormat format strings. For more information, see Class DateTimeFormat. You can also use the special value millis to parse time stamps in epoch milliseconds. If you don't specify a format, Kinesis Data Firehose uses java.sql.Timestamp::valueOf by default.open_x_json_ser_de"
  type        = string
  default     = ""
}
variable "index_rotation_period" {
  description = "(Optional) The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are NoRotation, OneHour, OneDay, OneWeek, and OneMonth.  The default value is OneDay."
  type        = string
  default     = ""
}
variable "prefix" {
  description = "(Optional) The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket"
  type        = string
  default     = ""
}
variable "s3_configuration" {
  description = "(Optional) Required for non-S3 destinations. For S3 destination, use extended_s3_configuration"
  type        = string
  default     = ""
}
variable "splunk_configuration" {
  description = "(Optional) Configuration options if splunk is the destination. More details are given below."
  type        = string
  default     = ""
}
variable "bucket_arn" {
  description = "(Required) The ARN of the S3 bucket"
  type        = string
}
variable "buffer_size" {
  description = ""
  type        = string
}
variable "compression_format" {
  description = "(Optional) The compression format. If no value is specified, the default is UNCOMPRESSED. Other supported values are GZIP, ZIP, Snappy, & HADOOP_SNAPPY."
  type        = string
  default     = ""
}
variable "hec_token" {
  description = "(Required) The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint."
  type        = string
}
variable "page_size_bytes" {
  description = "(Optional) The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB."
  type        = string
  default     = ""
}
variable "table_name" {
  description = "(Required) Specifies the AWS Glue table that contains the column information that constitutes your data schema."
  type        = string
}
variable "common_attributes" {
  description = "(Optional) Describes the metadata sent to the HTTP endpoint destination. More details are given belowThe common_attributes array objects support the following:"
  type        = string
  default     = ""
}
variable "data_table_columns" {
  description = "(Optional) The data table columns that will be targeted by the copy command."
  type        = string
  default     = ""
}
variable "padding_tolerance" {
  description = "(Optional) A float between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when enable_padding is false."
  type        = string
  default     = ""
}
variable "url" {
  description = "(Required) The HTTP endpoint URL to which Kinesis Firehose sends your data."
  type        = string
}
variable "version_id" {
  description = "(Optional) Specifies the table version for the output data schema. Defaults to LATEST.dynamic_partitioning_configuration"
  type        = string
  default     = ""
}
variable "password" {
  description = "(Required) The password for the username above."
  type        = string
}
variable "cluster_jdbcurl" {
  description = "(Required) The jdbcurl of the redshift cluster."
  type        = string
}
variable "content_encoding" {
  description = "(Optional) Kinesis Data Firehose uses the content encoding to compress the body of a request before sending the request to the destination. Valid values are NONE and GZIP.  Default value is NONE."
  type        = string
  default     = ""
}
variable "copy_options" {
  description = "(Optional) Copy options for copying the data from the s3 intermediate bucket into redshift, for example to change the default delimiter. For valid values, see the AWS documentation"
  type        = string
  default     = ""
}
variable "domain_arn" {
  description = "(Optional) The ARN of the Amazon ES domain.  The pattern needs to be arn:.*.  Conflicts with cluster_endpoint."
  type        = string
  default     = ""
}
variable "hec_acknowledgment_timeout" {
  description = "(Optional) The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data."
  type        = string
  default     = ""
}
variable "hec_endpoint_type" {
  description = "(Optional) The HEC endpoint type. Valid values are Raw or Event. The default value is Raw."
  type        = string
  default     = ""
}
variable "parameter_name" {
  description = "(Required) Parameter name. Valid Values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter. Validation is done against AWS SDK constants; so that values not explicitly listed may also work."
  type        = string
}
variable "server_side_encryption" {
  description = ""
  type        = string
}
variable "type_name" {
  description = "(Optional) The Elasticsearch type name with maximum length of 100 characters."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. More details are given below"
  type        = string
  default     = ""
}
variable "s3_backup_configuration" {
  description = "(Optional) The configuration for backup in Amazon S3. Required if s3_backup_mode is Enabled. Supports the same fields as s3_configuration object."
  type        = string
  default     = ""
}
variable "bloom_filter_columns" {
  description = "(Optional) A list of column names for which you want Kinesis Data Firehose to create bloom filters."
  type        = string
  default     = ""
}
variable "data_format_conversion_configuration" {
  description = "(Optional) Nested argument for the serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. More details given below."
  type        = string
  default     = ""
}
variable "data_table_name" {
  description = "(Required) The name of the table in the redshift cluster that the s3 bucket will copy to."
  type        = string
}
variable "dynamic_partitioning_configuration" {
  description = "(Optional) The configuration for dynamic partitioning. See Dynamic Partitioning Configuration below for more details.The redshift_configuration object supports the following:"
  type        = string
  default     = ""
}
variable "key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the encryption key. Required when key_type is CUSTOMER_MANAGED_CMK.The s3_configuration object supports the following:~> strongNOTE: This configuration block is deprecated for the s3 destination."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the HTTP endpoint common attribute."
  type        = string
}
variable "orc_ser_de" {
  description = "(Optional) Nested argument that specifies converting data to the ORC format before storing it in Amazon S3. For more information, see Apache ORC. More details below."
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
output "error_output_prefix" {
  description = "(Optional) Prefix added to failed records before writing them to S3. Not currently supported for redshift destination. This prefix appears immediately following the bucket name. For information about how to specify this prefix, see Custom Prefixes for Amazon S3 Objects."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.error_output_prefix
}
output "hec_endpoint" {
  description = "(Required) The HTTP Event Collector (HEC) endpoint to which Kinesis Firehose sends your data."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.hec_endpoint
}
output "kinesis_source_configuration" {
  description = "(Optional) Allows the ability to specify the kinesis stream that is used as the source of the firehose delivery stream."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.kinesis_source_configuration
}
output "subnet_ids" {
  description = "(Required) A list of subnet IDs to associate with Kinesis Firehose."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.subnet_ids
}
output "type" {
  description = "(Required) The type of processor. Valid Values: RecordDeAggregation, Lambda, MetadataExtraction, AppendDelimiterToRecord. Validation is done against AWS SDK constants; so that values not explicitly listed may also work."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.type
}
output "database_name" {
  description = "(Required) Specifies the name of the AWS Glue database that contains the schema for the output data."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.database_name
}
output "deserializer" {
  description = "(Required) Nested argument that specifies which deserializer to use. You can choose either the Apache Hive JSON SerDe or the OpenX JSON SerDe. More details below.deserializer~> strongNOTE: One of the deserializers must be configured. If no nested configuration needs to occur simply declare as XXX_json_ser_de = [] or XXX_json_ser_de {}."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.deserializer
}
output "dictionary_key_threshold" {
  description = "(Optional) A float that represents the fraction of the total number of non-null rows. To turn off dictionary encoding, set this fraction to a number that is less than the number of distinct keys in a dictionary. To always use dictionary encoding, set this threshold to 1."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.dictionary_key_threshold
}
output "format_version" {
  description = "(Optional) The version of the file to write. The possible values are V0_11 and V0_12. The default is V0_12."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.format_version
}
output "kinesis_stream_arn" {
  description = " (Required) The kinesis stream used as the source of the firehose delivery stream."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.kinesis_stream_arn
}
output "buffering_size" {
  description = "(Optional) Buffer incoming data to the specified size, in MBs, before delivering it to the destination. The default value is 5."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.buffering_size
}
output "case_insensitive" {
  description = "(Optional) When set to true, which is the default, Kinesis Data Firehose converts JSON keys to lowercase before deserializing them."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.case_insensitive
}
output "redshift_configuration" {
  description = "redshift_configurations3_configuration block. More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.redshift_configuration
}
output "username" {
  description = "(Required) The username that the firehose delivery stream will assume. It is strongly recommended that the username and password provided is used exclusively for Amazon Kinesis Firehose purposes, and that the permissions for the account are restricted for Amazon Redshift INSERT permissions."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.username
}
output "access_key" {
  description = "(Optional) The access key required for Kinesis Firehose to authenticate with the HTTP endpoint selected as the destination."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.access_key
}
output "http_endpoint_configuration" {
  description = "(Optional) Configuration options if http_endpoint is the destination. requires the user to also specify a s3_configuration block.  More details are given below.The kinesis_source_configuration object supports the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.http_endpoint_configuration
}
output "kms_key_arn" {
  description = ""
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.kms_key_arn
}
output "schema_configuration" {
  description = "(Required) Nested argument that specifies the AWS Glue Data Catalog table that contains the column information. More details below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.schema_configuration
}
output "catalog_id" {
  description = "(Optional) The ID of the AWS Glue Data Catalog. If you don't supply this, the AWS account ID is used by default."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.catalog_id
}
output "elasticsearch_configuration" {
  description = "(Optional) Configuration options if elasticsearch is the destination. More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.elasticsearch_configuration
}
output "serializer" {
  description = "(Required) Nested argument that specifies which serializer to use. You can choose either the ORC SerDe or the Parquet SerDe. More details below.serializer~> strongNOTE: One of the serializers must be configured. If no nested configuration needs to occur simply declare as XXX_ser_de = [] or XXX_ser_de {}."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.serializer
}
output "extended_s3_configuration" {
  description = "(Optional, only Required when destination is extended_s3) Enhanced configuration options for the s3 destination. More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.extended_s3_configuration
}
output "key_type" {
  description = "- (Optional) Type of encryption key. Default is AWS_OWNED_CMK. Valid values are AWS_OWNED_CMK and CUSTOMER_MANAGED_CMK"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.key_type
}
output "value" {
  description = "(Optional) The value of the HTTP endpoint common attribute.The vpc_config object supports the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.value
}
output "processing_configuration" {
  description = "(Optional) The data processing configuration.  More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.processing_configuration
}
output "processors" {
  description = "(Optional) Array of data processors. More details are given belowThe processors array objects support the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.processors
}
output "output_format_configuration" {
  description = "(Required) Nested argument that specifies the serializer that you want Kinesis Data Firehose to use to convert the format of your data to the Parquet or ORC format. More details below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.output_format_configuration
}
output "parameters" {
  description = "(Optional) Array of processor parameters. More details are given belowThe parameters array objects support the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.parameters
}
output "request_configuration" {
  description = "(Optional) The request configuration.  More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.request_configuration
}
output "row_index_stride" {
  description = "(Optional) The number of rows between index entries. The default is 10000 and the minimum is 1000."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.row_index_stride
}
output "timestamp_formats" {
  description = "(Optional) A list of how you want Kinesis Data Firehose to parse the date and time stamps that may be present in your input data JSON. To specify these format strings, follow the pattern syntax of JodaTime's DateTimeFormat format strings. For more information, see Class DateTimeFormat. You can also use the special value millis to parse time stamps in epoch milliseconds. If you don't specify a format, Kinesis Data Firehose uses java.sql.Timestamp::valueOf by default.open_x_json_ser_de"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.timestamp_formats
}
output "writer_version" {
  description = "(Optional) Indicates the version of row format to output. The possible values are V1 and V2. The default is V1.schema_configuration"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.writer_version
}
output "buffering_interval" {
  description = "(Optional) Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300 (5 minutes)."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.buffering_interval
}
output "column_to_json_key_mappings" {
  description = "(Optional) A map of column names to JSON keys that aren't identical to the column names. This is useful when the JSON contains keys that are Hive keywords. For example, timestamp is a Hive keyword. If you have a JSON key named timestamp, set this parameter to { ts = \"timestamp\" } to map this key to a column named ts."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.column_to_json_key_mappings
}
output "s3_configuration" {
  description = "(Optional) Required for non-S3 destinations. For S3 destination, use extended_s3_configuration"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.s3_configuration
}
output "splunk_configuration" {
  description = "(Optional) Configuration options if splunk is the destination. More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.splunk_configuration
}
output "index_rotation_period" {
  description = "(Optional) The Elasticsearch index rotation period.  Index rotation appends a timestamp to the IndexName to facilitate expiration of old data.  Valid values are NoRotation, OneHour, OneDay, OneWeek, and OneMonth.  The default value is OneDay."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.index_rotation_period
}
output "prefix" {
  description = "(Optional) The \"YYYY/MM/DD/HH\" time format prefix is automatically used for delivered S3 files. You can specify an extra prefix to be added in front of the time format prefix. Note that if the prefix ends with a slash, it appears as a folder in the S3 bucket"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.prefix
}
output "compression_format" {
  description = "(Optional) The compression format. If no value is specified, the default is UNCOMPRESSED. Other supported values are GZIP, ZIP, Snappy, & HADOOP_SNAPPY."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.compression_format
}
output "hec_token" {
  description = "(Required) The GUID that you obtain from your Splunk cluster when you create a new HEC endpoint."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.hec_token
}
output "page_size_bytes" {
  description = "(Optional) The Parquet page size. Column chunks are divided into pages. A page is conceptually an indivisible unit (in terms of compression and encoding). The minimum value is 64 KiB and the default is 1 MiB."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.page_size_bytes
}
output "table_name" {
  description = "(Required) Specifies the AWS Glue table that contains the column information that constitutes your data schema."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.table_name
}
output "bucket_arn" {
  description = "(Required) The ARN of the S3 bucket"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.bucket_arn
}
output "buffer_size" {
  description = ""
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.buffer_size
}
output "padding_tolerance" {
  description = "(Optional) A float between 0 and 1 that defines the tolerance for block padding as a decimal fraction of stripe size. The default value is 0.05, which means 5 percent of stripe size. For the default values of 64 MiB ORC stripes and 256 MiB HDFS blocks, the default block padding tolerance of 5 percent reserves a maximum of 3.2 MiB for padding within the 256 MiB block. In such a case, if the available size within the block is more than 3.2 MiB, a new, smaller stripe is inserted to fit within that space. This ensures that no stripe crosses block boundaries and causes remote reads within a node-local task. Kinesis Data Firehose ignores this parameter when enable_padding is false."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.padding_tolerance
}
output "url" {
  description = "(Required) The HTTP endpoint URL to which Kinesis Firehose sends your data."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.url
}
output "version_id" {
  description = "(Optional) Specifies the table version for the output data schema. Defaults to LATEST.dynamic_partitioning_configuration"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.version_id
}
output "common_attributes" {
  description = "(Optional) Describes the metadata sent to the HTTP endpoint destination. More details are given belowThe common_attributes array objects support the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.common_attributes
}
output "data_table_columns" {
  description = "(Optional) The data table columns that will be targeted by the copy command."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.data_table_columns
}
output "copy_options" {
  description = "(Optional) Copy options for copying the data from the s3 intermediate bucket into redshift, for example to change the default delimiter. For valid values, see the AWS documentation"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.copy_options
}
output "domain_arn" {
  description = "(Optional) The ARN of the Amazon ES domain.  The pattern needs to be arn:.*.  Conflicts with cluster_endpoint."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.domain_arn
}
output "hec_acknowledgment_timeout" {
  description = "(Optional) The amount of time, in seconds between 180 and 600, that Kinesis Firehose waits to receive an acknowledgment from Splunk after it sends it data."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.hec_acknowledgment_timeout
}
output "hec_endpoint_type" {
  description = "(Optional) The HEC endpoint type. Valid values are Raw or Event. The default value is Raw."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.hec_endpoint_type
}
output "parameter_name" {
  description = "(Required) Parameter name. Valid Values: LambdaArn, NumberOfRetries, MetadataExtractionQuery, JsonParsingEngine, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds, SubRecordType, Delimiter. Validation is done against AWS SDK constants; so that values not explicitly listed may also work."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.parameter_name
}
output "password" {
  description = "(Required) The password for the username above."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.password
}
output "cluster_jdbcurl" {
  description = "(Required) The jdbcurl of the redshift cluster."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.cluster_jdbcurl
}
output "content_encoding" {
  description = "(Optional) Kinesis Data Firehose uses the content encoding to compress the body of a request before sending the request to the destination. Valid values are NONE and GZIP.  Default value is NONE."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.content_encoding
}
output "vpc_config" {
  description = "(Optional) The VPC configuration for the delivery stream to connect to Elastic Search associated with the VPC. More details are given below"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.vpc_config
}
output "server_side_encryption" {
  description = ""
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.server_side_encryption
}
output "type_name" {
  description = "(Optional) The Elasticsearch type name with maximum length of 100 characters."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.type_name
}
output "data_table_name" {
  description = "(Required) The name of the table in the redshift cluster that the s3 bucket will copy to."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.data_table_name
}
output "dynamic_partitioning_configuration" {
  description = "(Optional) The configuration for dynamic partitioning. See Dynamic Partitioning Configuration below for more details.The redshift_configuration object supports the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.dynamic_partitioning_configuration
}
output "key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the encryption key. Required when key_type is CUSTOMER_MANAGED_CMK.The s3_configuration object supports the following:~> strongNOTE: This configuration block is deprecated for the s3 destination."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.key_arn
}
output "name" {
  description = "(Required) The name of the HTTP endpoint common attribute."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.name
}
output "orc_ser_de" {
  description = "(Optional) Nested argument that specifies converting data to the ORC format before storing it in Amazon S3. For more information, see Apache ORC. More details below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.orc_ser_de
}
output "s3_backup_configuration" {
  description = "(Optional) The configuration for backup in Amazon S3. Required if s3_backup_mode is Enabled. Supports the same fields as s3_configuration object."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.s3_backup_configuration
}
output "bloom_filter_columns" {
  description = "(Optional) A list of column names for which you want Kinesis Data Firehose to create bloom filters."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.bloom_filter_columns
}
output "data_format_conversion_configuration" {
  description = "(Optional) Nested argument for the serializer, deserializer, and schema for converting data from the JSON format to the Parquet or ORC format before writing it to Amazon S3. More details given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.data_format_conversion_configuration
}
output "enable_dictionary_compression" {
  description = "(Optional) Indicates whether to enable dictionary compression."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.enable_dictionary_compression
}
output "role_arn" {
  description = "(Required) The role that Kinesis Data Firehose can use to access AWS Glue. This role must be in the same account you use for Kinesis Data Firehose. Cross-account roles aren't allowed."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.role_arn
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.tags
}
output "block_size_bytes" {
  description = "(Optional) The Hadoop Distributed File System (HDFS) block size. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 256 MiB and the minimum is 64 MiB. Kinesis Data Firehose uses this value for padding calculations."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.block_size_bytes
}
output "cluster_endpoint" {
  description = "(Optional) The endpoint to use when communicating with the cluster. Conflicts with domain_arn."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.cluster_endpoint
}
output "compression" {
  description = "(Optional) The compression code to use over data blocks. The possible values are UNCOMPRESSED, SNAPPY, and GZIP, with the default being SNAPPY. Use SNAPPY for higher decompression speed. Use GZIP if the compression ratio is more important than speed."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.compression
}
output "destination" {
  description = " – (Required) This is the destination to where the data is delivered. The only options are s3 (Deprecated, use extended_s3 instead), extended_s3, redshift, elasticsearch, splunk, and http_endpoint."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.destination
}
output "input_format_configuration" {
  description = "(Required) Nested argument that specifies the deserializer that you want Kinesis Data Firehose to use to convert the format of your data from JSON. More details below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.input_format_configuration
}
output "log_stream_name" {
  description = "(Optional) The CloudWatch log stream name for logging. This value is required if enabled is true.The processing_configuration object supports the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.log_stream_name
}
output "parquet_ser_de" {
  description = "(Optional) Nested argument that specifies converting data to the Parquet format before storing it in Amazon S3. For more information, see Apache Parquet. More details below.orc_ser_de"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.parquet_ser_de
}
output "region" {
  description = "(Optional) If you don't specify an AWS Region, the default is the current region."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.region
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.arn
}
output "buffer_interval" {
  description = "(Optional) Buffer incoming data for the specified period of time, in seconds, before delivering it to the destination. The default value is 300."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.buffer_interval
}
output "retry_duration" {
  description = "(Optional) Total amount of seconds Firehose spends on retries. Valid values between 0 and 7200. Default is 300.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.retry_duration
}
output "s3_backup_mode" {
  description = "(Optional) Defines how documents should be delivered to Amazon S3.  Valid values are FailedDataOnly and AllData.  Default value is FailedDataOnly."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.s3_backup_mode
}
output "enable_padding" {
  description = "(Optional) Set this to true to indicate that you want stripes to be padded to the HDFS block boundaries. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is false."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.enable_padding
}
output "enabled" {
  description = "(Optional) Enables or disables dynamic partitioning. Defaults to false."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.enabled
}
output "index_name" {
  description = "(Required) The Elasticsearch index name."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.index_name
}
output "max_padding_bytes" {
  description = "(Optional) The maximum amount of padding to apply. This is useful if you intend to copy the data from Amazon S3 to HDFS before querying. The default is 0."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.max_padding_bytes
}
output "security_group_ids" {
  description = "(Required) A list of security group IDs to associate with Kinesis Firehose."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.security_group_ids
}
output "bloom_filter_false_positive_probability" {
  description = "(Optional) The Bloom filter false positive probability (FPP). The lower the FPP, the bigger the Bloom filter. The default value is 0.05, the minimum is 0, and the maximum is 1."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.bloom_filter_false_positive_probability
}
output "cloudwatch_logging_options" {
  description = "(Optional) The CloudWatch Logging Options for the delivery stream. More details are given below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.cloudwatch_logging_options
}
output "log_group_name" {
  description = "(Optional) The CloudWatch group name for logging. This value is required if enabled is true."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.log_group_name
}
output "open_x_json_ser_de" {
  description = "(Optional) Nested argument that specifies the OpenX SerDe. More details below.hive_json_ser_de"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.open_x_json_ser_de
}
output "parameter_value" {
  description = "(Required) Parameter value. Must be between 1 and 512 length (inclusive). When providing a Lambda ARN, you should specify the resource version as well.~> strongNOTE: Parameters with default values, including NumberOfRetries(default: 3), RoleArn(default: firehose role ARN), BufferSizeInMBs(default: 3), and BufferIntervalInSeconds(default: 60), are not stored in terraform state. To prevent perpetual differences, it is therefore recommended to only include parameters with non-default values.The request_configuration object supports the following:"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.parameter_value
}
output "stripe_size_bytes" {
  description = "(Optional) The number of bytes in each stripe. The default is 64 MiB and the minimum is 8 MiB.parquet_ser_de"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.stripe_size_bytes
}
output "convert_dots_in_json_keys_to_underscores" {
  description = "(Optional) When set to true, specifies that the names of the keys include dots and that you want Kinesis Data Firehose to replace them with underscores. This is useful because Apache Hive does not allow dots in column names. For example, if the JSON contains a key whose name is \"a.b\", you can define the column name to be \"a_b\" when using this option. Defaults to false.output_format_configuration"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.convert_dots_in_json_keys_to_underscores
}
output "hive_json_ser_de" {
  description = "(Optional) Nested argument that specifies the native Hive / HCatalog JsonSerDe. More details below."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.hive_json_ser_de
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream"
  value       = aws_kinesis_firehose_delivery_stream.aws_kinesis_firehose_delivery_stream.arn
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
      "kind/name"                   = "aws_kinesis_firehose_delivery_stream"
      "kind/version"                = "v0.1.0"
    }
  }
}
