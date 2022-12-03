resource "aws_dms_endpoint" "aws_dms_endpoint" {
  endpoint_uri                                = var.endpoint_uri
  extra_connection_attributes                 = var.extra_connection_attributes
  include_null_and_empty                      = var.include_null_and_empty
  include_transaction_details                 = var.include_transaction_details
  row_group_length                            = var.row_group_length
  security_protocol                           = var.security_protocol
  encoding_type                               = var.encoding_type
  auth_source                                 = var.auth_source
  csv_delimiter                               = var.csv_delimiter
  elasticsearch_settings                      = var.elasticsearch_settings
  encryption_mode                             = var.encryption_mode
  redshift_settings                           = var.redshift_settings
  server_side_encryption_kms_key_id           = var.server_side_encryption_kms_key_id
  timestamp_column_name                       = var.timestamp_column_name
  add_column_name                             = var.add_column_name
  date_partition_enabled                      = var.date_partition_enabled
  external_table_definition                   = var.external_table_definition
  include_control_details                     = var.include_control_details
  use_csv_no_sup_value                        = var.use_csv_no_sup_value
  use_task_start_time_for_full_load_timestamp = var.use_task_start_time_for_full_load_timestamp
  cdc_inserts_only                            = var.cdc_inserts_only
  message_max_bytes                           = var.message_max_bytes
  no_hex_prefix                               = var.no_hex_prefix
  port                                        = var.port
  preserve_transactions                       = var.preserve_transactions
  server_name                                 = var.server_name
  ssl_client_key_password                     = var.ssl_client_key_password
  cdc_inserts_and_updates                     = var.cdc_inserts_and_updates
  auth_user_name                              = var.auth_user_name
  bucket_name                                 = var.bucket_name
  csv_no_sup_value                            = var.csv_no_sup_value
  docs_to_investigate                         = var.docs_to_investigate
  message_format                              = var.message_format
  parquet_timestamp_in_millisecond            = var.parquet_timestamp_in_millisecond
  parquet_version                             = var.parquet_version
  auth_mechanism                              = var.auth_mechanism
  ssl_client_certificate_arn                  = var.ssl_client_certificate_arn
  cdc_min_file_size                           = var.cdc_min_file_size
  error_retry_duration                        = var.error_retry_duration
  ignore_headers_row                          = var.ignore_headers_row
  sasl_password                               = var.sasl_password
  ssl_ca_certificate_arn                      = var.ssl_ca_certificate_arn
  ssl_security_protocol                       = var.ssl_security_protocol
  auth_type                                   = var.auth_type
  extract_doc_id                              = var.extract_doc_id
  include_op_for_full_load                    = var.include_op_for_full_load
  kinesis_settings                            = var.kinesis_settings
  service_access_role                         = var.service_access_role
  tags_all                                    = var.tags_all
  broker                                      = var.broker
  ssl_mode                                    = var.ssl_mode
  max_file_size                               = var.max_file_size
  include_table_alter_operations              = var.include_table_alter_operations
  topic                                       = var.topic
  include_partition_value                     = var.include_partition_value
  cdc_max_batch_interval                      = var.cdc_max_batch_interval
  endpoint_arn                                = var.endpoint_arn
  partition_include_schema_table              = var.partition_include_schema_table
  service_access_role_arn                     = var.service_access_role_arn
  username                                    = var.username
  auth_password                               = var.auth_password
  s3_settings                                 = var.s3_settings
  ssl_client_key_arn                          = var.ssl_client_key_arn
  canned_acl_for_objects                      = var.canned_acl_for_objects
  cdc_path                                    = var.cdc_path
  compression_type                            = var.compression_type
  date_partition_delimiter                    = var.date_partition_delimiter
  date_partition_sequence                     = var.date_partition_sequence
  password                                    = var.password
  sasl_username                               = var.sasl_username
  bucket_folder                               = var.bucket_folder
  endpoint_id                                 = var.endpoint_id
  endpoint_type                               = var.endpoint_type
  kafka_settings                              = var.kafka_settings
  kms_key_arn                                 = var.kms_key_arn
  rfc_4180                                    = var.rfc_4180
  certificate_arn                             = var.certificate_arn
  engine_name                                 = var.engine_name
  full_load_error_percentage                  = var.full_load_error_percentage
  secrets_manager_access_role_arn             = var.secrets_manager_access_role_arn
  data_format                                 = var.data_format
  dict_page_size_limit                        = var.dict_page_size_limit
  stream_arn                                  = var.stream_arn
  data_page_size                              = var.data_page_size
  csv_row_delimiter                           = var.csv_row_delimiter
  database_name                               = var.database_name
  enable_statistics                           = var.enable_statistics
  mongodb_settings                            = var.mongodb_settings
  nesting_level                               = var.nesting_level
  secrets_manager_arn                         = var.secrets_manager_arn
  tags                                        = var.tags
  csv_null_value                              = var.csv_null_value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "password" {
  description = "(Optional) Password to be used to login to the endpoint database."
  type        = string
  default     = ""
}
variable "sasl_username" {
  description = "(Optional) Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication."
  type        = string
  default     = ""
}
variable "bucket_folder" {
  description = "(Optional) S3 object prefix."
  type        = string
  default     = ""
}
variable "cdc_path" {
  description = "(Optional) Folder path of CDC files. For an S3 source, this setting is required if a task captures change data; otherwise, it's optional. If cdc_path is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later."
  type        = string
  default     = ""
}
variable "compression_type" {
  description = "(Optional) Set to compress target files. Default is NONE. Valid values are GZIP and NONE."
  type        = string
  default     = ""
}
variable "date_partition_delimiter" {
  description = "(Optional) Date separating delimiter to use during folder partitioning. Valid values are SLASH, UNDERSCORE, DASH, and NONE. Default is SLASH."
  type        = string
  default     = ""
}
variable "date_partition_sequence" {
  description = "(Optional) Date format to use during folder partitioning. Use this parameter when date_partition_enabled is set to true. Valid values are YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, and DDMMYYYY. Default is YYYYMMDD."
  type        = string
  default     = ""
}
variable "rfc_4180" {
  description = "(Optional) For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is true."
  type        = string
  default     = ""
}
variable "certificate_arn" {
  description = "(Optional, Default: empty string) ARN for the certificate."
  type        = string
  default     = ""
}
variable "endpoint_id" {
  description = "(Required) Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens."
  type        = string
}
variable "endpoint_type" {
  description = "(Required) Type of endpoint. Valid values are source, target."
  type        = string
}
variable "kafka_settings" {
  description = "(Optional) Configuration block for Kafka settings. See below."
  type        = string
  default     = ""
}
variable "kms_key_arn" {
  description = "(Required when engine_name is mongodb, optional otherwise) ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region."
  type        = string
}
variable "data_format" {
  description = "(Optional) Output format for the files that AWS DMS uses to create S3 objects. Valid values are csv and parquet. Default is csv."
  type        = string
  default     = ""
}
variable "engine_name" {
  description = "(Required) Type of engine for the endpoint. Valid values are aurora, aurora-postgresql, azuredb, db2, docdb, dynamodb, elasticsearch, kafka, kinesis, mariadb, mongodb, mysql, opensearch, oracle, postgres, redshift, s3, sqlserver, sybase. Please note that some of engine names are available only for target endpoint type (e.g. redshift)."
  type        = string
}
variable "full_load_error_percentage" {
  description = "(Optional) Maximum percentage of records that can fail to be written before a full load operation stops. Default is 10."
  type        = string
  default     = ""
}
variable "secrets_manager_access_role_arn" {
  description = "(Optional) ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in SecretsManagerSecret."
  type        = string
  default     = ""
}
variable "data_page_size" {
  description = "(Optional) Size of one data page in bytes. Default is 1048576 (1 MiB)."
  type        = string
  default     = ""
}
variable "dict_page_size_limit" {
  description = "(Optional) Maximum size in bytes of an encoded dictionary page of a column. Default is 1048576 (1 MiB)."
  type        = string
  default     = ""
}
variable "stream_arn" {
  description = "(Optional) ARN of the Kinesis data stream.mongodb_settings-> Additional information can be found in the Using MongoDB as a Source for AWS DMS documentation."
  type        = string
  default     = ""
}
variable "nesting_level" {
  description = "(Optional) Specifies either document or table mode. Default is none. Valid values are one (table mode) and none (document mode).redis_settings-> Additional information can be found in the Using Redis as a target for AWS Database Migration Service."
  type        = string
  default     = ""
}
variable "secrets_manager_arn" {
  description = "(Optional) Full ARN, partial ARN, or friendly name of the SecretsManagerSecret that contains the endpoint connection details. Supported only for engine_name as aurora, aurora-postgresql, mariadb, mongodb, mysql, oracle, postgres, redshift or sqlserver."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "csv_null_value" {
  description = "(Optional) String to as null when writing to the target."
  type        = string
  default     = ""
}
variable "csv_row_delimiter" {
  description = "(Optional) Delimiter used to separate rows in the source files. Default is \\n."
  type        = string
  default     = ""
}
variable "database_name" {
  description = "(Optional) Name of the endpoint database."
  type        = string
  default     = ""
}
variable "enable_statistics" {
  description = "(Optional) Whether to enable statistics for Parquet pages and row groups. Default is true."
  type        = string
  default     = ""
}
variable "mongodb_settings" {
  description = "(Optional) Configuration block for MongoDB settings. See below."
  type        = string
  default     = ""
}
variable "row_group_length" {
  description = "(Optional) Number of rows in a row group. Default is 10000."
  type        = string
  default     = ""
}
variable "security_protocol" {
  description = "(Optional) Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include ssl-encryption, ssl-authentication, and sasl-ssl. sasl-ssl requires sasl_username and sasl_password."
  type        = string
  default     = ""
}
variable "encoding_type" {
  description = "(Optional) Type of encoding to use. Value values are rle_dictionary, plain, and plain_dictionary. Default is rle_dictionary."
  type        = string
  default     = ""
}
variable "endpoint_uri" {
  description = "(Required) Endpoint for the OpenSearch cluster."
  type        = string
}
variable "extra_connection_attributes" {
  description = "(Optional) Additional attributes associated with the connection. For available attributes see Using Extra Connection Attributes with AWS Database Migration Service."
  type        = string
  default     = ""
}
variable "include_null_and_empty" {
  description = "(Optional) Include NULL and empty columns in the target. Default is false."
  type        = string
  default     = ""
}
variable "include_transaction_details" {
  description = "(Optional) Provides detailed transaction information from the source database. Default is false."
  type        = string
  default     = ""
}
variable "redshift_settings" {
  description = "(Optional) Configuration block for Redshift settings. See below."
  type        = string
  default     = ""
}
variable "server_side_encryption_kms_key_id" {
  description = "(Optional) If you set encryptionMode to SSE_KMS, set this parameter to the ARN for the AWS KMS key."
  type        = string
  default     = ""
}
variable "timestamp_column_name" {
  description = "(Optional) Column to add with timestamp information to the endpoint data for an Amazon S3 target."
  type        = string
  default     = ""
}
variable "add_column_name" {
  description = "(Optional) Whether to add column name information to the .csv output file. Default is false."
  type        = string
  default     = ""
}
variable "auth_source" {
  description = "(Optional) Authentication database name. Not used when auth_type is no. Default is admin."
  type        = string
  default     = ""
}
variable "csv_delimiter" {
  description = "(Optional) Delimiter used to separate columns in the source files. Default is ,."
  type        = string
  default     = ""
}
variable "elasticsearch_settings" {
  description = "(Optional) Configuration block for OpenSearch settings. See below."
  type        = string
  default     = ""
}
variable "encryption_mode" {
  description = "(Optional) Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are SSE_S3 and SSE_KMS. Default is SSE_S3."
  type        = string
  default     = ""
}
variable "use_task_start_time_for_full_load_timestamp" {
  description = "(Optional) When set to true, uses the task start time as the timestamp column value instead of the time data is written to target.\nFor full load, when set to true, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.\nWhen set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "cdc_inserts_only" {
  description = "(Optional) Whether to write insert operations to .csv or .parquet output files. Default is false."
  type        = string
  default     = ""
}
variable "date_partition_enabled" {
  description = "(Optional) Partition S3 bucket folders based on transaction commit dates. Default is false."
  type        = string
  default     = ""
}
variable "external_table_definition" {
  description = "(Optional) JSON document that describes how AWS DMS should interpret the data."
  type        = string
  default     = ""
}
variable "include_control_details" {
  description = "(Optional) Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. Default is false."
  type        = string
  default     = ""
}
variable "use_csv_no_sup_value" {
  description = "(Optional) Whether to use csv_no_sup_value for columns not included in the supplemental log."
  type        = string
  default     = ""
}
variable "server_name" {
  description = "(Required) Fully qualified domain name of the endpoint."
  type        = string
}
variable "ssl_client_key_password" {
  description = "(Optional) Password for the client private key used to securely connect to a Kafka target endpoint."
  type        = string
  default     = ""
}
variable "cdc_inserts_and_updates" {
  description = "(Optional) Whether to write insert and update operations to .csv or .parquet output files. Default is false."
  type        = string
  default     = ""
}
variable "message_max_bytes" {
  description = "(Optional) Maximum size in bytes for records created on the endpoint Default is 1,000,000."
  type        = string
  default     = ""
}
variable "no_hex_prefix" {
  description = "(Optional) Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the no_hex_prefix endpoint setting to enable migration of RAW data type columns without adding the '0x' prefix."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Required) Transmission Control Protocol (TCP) port for the endpoint."
  type        = string
}
variable "preserve_transactions" {
  description = "(Optional) Whether DMS saves the transaction order for a CDC load on the S3 target specified by cdc_path. Default is false."
  type        = string
  default     = ""
}
variable "message_format" {
  description = "(Optional) Output format for the records created. Default is json. Valid values are json and json-unformatted (a single line with no tab)."
  type        = string
  default     = ""
}
variable "parquet_timestamp_in_millisecond" {
  description = "(Optional) - Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is false."
  type        = string
  default     = ""
}
variable "parquet_version" {
  description = "(Optional) Version of the .parquet file format. Default is parquet-1-0. Valid values are parquet-1-0 and parquet-2-0."
  type        = string
  default     = ""
}
variable "auth_mechanism" {
  description = "(Optional) Authentication mechanism to access the MongoDB source endpoint. Default is default."
  type        = string
  default     = ""
}
variable "auth_user_name" {
  description = "(Optional) The username provided with the auth-role option of the AuthType setting for a Redis target endpoint."
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Optional) S3 bucket name."
  type        = string
  default     = ""
}
variable "csv_no_sup_value" {
  description = "(Optional) String to use for all columns not included in the supplemental log."
  type        = string
  default     = ""
}
variable "docs_to_investigate" {
  description = "(Optional) Number of documents to preview to determine the document organization. Use this setting when nesting_level is set to one. Default is 1000."
  type        = string
  default     = ""
}
variable "ssl_client_certificate_arn" {
  description = "(Optional) ARN of the client certificate used to securely connect to a Kafka target endpoint."
  type        = string
  default     = ""
}
variable "ssl_ca_certificate_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to connect to your Redis target endpoint."
  type        = string
  default     = ""
}
variable "ssl_security_protocol" {
  description = "- (Optional) The plaintext option doesn't provide Transport Layer Security (TLS) encryption for traffic between endpoint and database. Options include plaintext, ssl-encryption. The default is ssl-encryption.redshift_settings-> Additional information can be found in the Using Amazon Redshift as a Target for AWS Database Migration Service documentation."
  type        = string
  default     = ""
}
variable "auth_type" {
  description = "(Required) The type of authentication to perform when connecting to a Redis target. Options include none, auth-token, and auth-role. The auth-token option requires an auth_password value to be provided. The auth-role option requires auth_user_name and auth_password values to be provided."
  type        = string
}
variable "cdc_min_file_size" {
  description = "(Optional) Minimum file size, defined in megabytes, to reach for a file output. Default is 32."
  type        = string
  default     = ""
}
variable "error_retry_duration" {
  description = "(Optional) Maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster. Default is 300."
  type        = string
  default     = ""
}
variable "ignore_headers_row" {
  description = "(Optional) When this value is set to 1, DMS ignores the first row header in a .csv file. Default is 0."
  type        = string
  default     = ""
}
variable "sasl_password" {
  description = "(Optional) Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "broker" {
  description = "(Required) Kafka broker location. Specify in the form broker-hostname-or-ip:port."
  type        = string
}
variable "extract_doc_id" {
  description = "(Optional) Document ID. Use this setting when nesting_level is set to none. Default is false."
  type        = string
  default     = ""
}
variable "include_op_for_full_load" {
  description = "(Optional) Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is false."
  type        = string
  default     = ""
}
variable "kinesis_settings" {
  description = "(Optional) Configuration block for Kinesis settings. See below."
  type        = string
  default     = ""
}
variable "service_access_role" {
  description = "(Optional) ARN used by the service access IAM role for dynamodb endpoints."
  type        = string
  default     = ""
}
variable "max_file_size" {
  description = "(Optional) Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from 1 to 1048576. Default is 1048576 (1 GB)."
  type        = string
  default     = ""
}
variable "ssl_mode" {
  description = "(Optional, Default: none) SSL mode to use for the connection. Valid values are none, require, verify-ca, verify-full"
  type        = string
  default     = ""
}
variable "include_partition_value" {
  description = "(Optional) Shows the partition value within the Kinesis message output, unless the partition type is schema-table-type. Default is false."
  type        = string
  default     = ""
}
variable "include_table_alter_operations" {
  description = "(Optional) Includes any data definition language (DDL) operations that change the table in the control data. Default is false."
  type        = string
  default     = ""
}
variable "topic" {
  description = "(Optional) Kafka topic for migration. Default is kafka-default-topic.kinesis_settings-> Additional information can be found in the Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service documentation."
  type        = string
  default     = ""
}
variable "username" {
  description = "(Optional) User name to be used to login to the endpoint database.elasticsearch_settings-> Additional information can be found in the Using Amazon OpenSearch Service as a Target for AWS Database Migration Service documentation."
  type        = string
  default     = ""
}
variable "auth_password" {
  description = "(Optional) The password provided with the auth-role and auth-token options of the AuthType setting for a Redis target endpoint."
  type        = string
  default     = ""
}
variable "cdc_max_batch_interval" {
  description = "(Optional) Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. Default is 60."
  type        = string
  default     = ""
}
variable "endpoint_arn" {
  description = "ARN for the endpoint."
  type        = string
  default     = ""
}
variable "partition_include_schema_table" {
  description = "(Optional) Prefixes schema and table names to partition values, when the partition type is primary-key-type. Default is false."
  type        = string
  default     = ""
}
variable "service_access_role_arn" {
  description = "(Optional) ARN of the IAM Role with permissions to read from or write to the S3 Bucket."
  type        = string
  default     = ""
}
variable "canned_acl_for_objects" {
  description = "(Optional) Predefined (canned) access control list for objects created in an S3 bucket. Valid values include NONE, PRIVATE, PUBLIC_READ, PUBLIC_READ_WRITE, AUTHENTICATED_READ, AWS_EXEC_READ, BUCKET_OWNER_READ, and BUCKET_OWNER_FULL_CONTROL. Default is NONE."
  type        = string
  default     = ""
}
variable "s3_settings" {
  description = "(Optional) Configuration block for S3 settings. See below."
  type        = string
  default     = ""
}
variable "ssl_client_key_arn" {
  description = "(Optional) ARN for the client private key used to securely connect to a Kafka target endpoint."
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
output "canned_acl_for_objects" {
  description = "(Optional) Predefined (canned) access control list for objects created in an S3 bucket. Valid values include NONE, PRIVATE, PUBLIC_READ, PUBLIC_READ_WRITE, AUTHENTICATED_READ, AWS_EXEC_READ, BUCKET_OWNER_READ, and BUCKET_OWNER_FULL_CONTROL. Default is NONE."
  value       = aws_dms_endpoint.aws_dms_endpoint.canned_acl_for_objects
}
output "s3_settings" {
  description = "(Optional) Configuration block for S3 settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.s3_settings
}
output "ssl_client_key_arn" {
  description = "(Optional) ARN for the client private key used to securely connect to a Kafka target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_client_key_arn
}
output "bucket_folder" {
  description = "(Optional) S3 object prefix."
  value       = aws_dms_endpoint.aws_dms_endpoint.bucket_folder
}
output "cdc_path" {
  description = "(Optional) Folder path of CDC files. For an S3 source, this setting is required if a task captures change data; otherwise, it's optional. If cdc_path is set, AWS DMS reads CDC files from this path and replicates the data changes to the target endpoint. Supported in AWS DMS versions 3.4.2 and later."
  value       = aws_dms_endpoint.aws_dms_endpoint.cdc_path
}
output "compression_type" {
  description = "(Optional) Set to compress target files. Default is NONE. Valid values are GZIP and NONE."
  value       = aws_dms_endpoint.aws_dms_endpoint.compression_type
}
output "date_partition_delimiter" {
  description = "(Optional) Date separating delimiter to use during folder partitioning. Valid values are SLASH, UNDERSCORE, DASH, and NONE. Default is SLASH."
  value       = aws_dms_endpoint.aws_dms_endpoint.date_partition_delimiter
}
output "date_partition_sequence" {
  description = "(Optional) Date format to use during folder partitioning. Use this parameter when date_partition_enabled is set to true. Valid values are YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, and DDMMYYYY. Default is YYYYMMDD."
  value       = aws_dms_endpoint.aws_dms_endpoint.date_partition_sequence
}
output "password" {
  description = "(Optional) Password to be used to login to the endpoint database."
  value       = aws_dms_endpoint.aws_dms_endpoint.password
}
output "sasl_username" {
  description = "(Optional) Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication."
  value       = aws_dms_endpoint.aws_dms_endpoint.sasl_username
}
output "certificate_arn" {
  description = "(Optional, Default: empty string) ARN for the certificate."
  value       = aws_dms_endpoint.aws_dms_endpoint.certificate_arn
}
output "endpoint_id" {
  description = "(Required) Database endpoint identifier. Identifiers must contain from 1 to 255 alphanumeric characters or hyphens, begin with a letter, contain only ASCII letters, digits, and hyphens, not end with a hyphen, and not contain two consecutive hyphens."
  value       = aws_dms_endpoint.aws_dms_endpoint.endpoint_id
}
output "endpoint_type" {
  description = "(Required) Type of endpoint. Valid values are source, target."
  value       = aws_dms_endpoint.aws_dms_endpoint.endpoint_type
}
output "kafka_settings" {
  description = "(Optional) Configuration block for Kafka settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.kafka_settings
}
output "kms_key_arn" {
  description = "(Required when engine_name is mongodb, optional otherwise) ARN for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region."
  value       = aws_dms_endpoint.aws_dms_endpoint.kms_key_arn
}
output "rfc_4180" {
  description = "(Optional) For an S3 source, whether each leading double quotation mark has to be followed by an ending double quotation mark. Default is true."
  value       = aws_dms_endpoint.aws_dms_endpoint.rfc_4180
}
output "data_format" {
  description = "(Optional) Output format for the files that AWS DMS uses to create S3 objects. Valid values are csv and parquet. Default is csv."
  value       = aws_dms_endpoint.aws_dms_endpoint.data_format
}
output "engine_name" {
  description = "(Required) Type of engine for the endpoint. Valid values are aurora, aurora-postgresql, azuredb, db2, docdb, dynamodb, elasticsearch, kafka, kinesis, mariadb, mongodb, mysql, opensearch, oracle, postgres, redshift, s3, sqlserver, sybase. Please note that some of engine names are available only for target endpoint type (e.g. redshift)."
  value       = aws_dms_endpoint.aws_dms_endpoint.engine_name
}
output "full_load_error_percentage" {
  description = "(Optional) Maximum percentage of records that can fail to be written before a full load operation stops. Default is 10."
  value       = aws_dms_endpoint.aws_dms_endpoint.full_load_error_percentage
}
output "secrets_manager_access_role_arn" {
  description = "(Optional) ARN of the IAM role that specifies AWS DMS as the trusted entity and has the required permissions to access the value in SecretsManagerSecret."
  value       = aws_dms_endpoint.aws_dms_endpoint.secrets_manager_access_role_arn
}
output "data_page_size" {
  description = "(Optional) Size of one data page in bytes. Default is 1048576 (1 MiB)."
  value       = aws_dms_endpoint.aws_dms_endpoint.data_page_size
}
output "dict_page_size_limit" {
  description = "(Optional) Maximum size in bytes of an encoded dictionary page of a column. Default is 1048576 (1 MiB)."
  value       = aws_dms_endpoint.aws_dms_endpoint.dict_page_size_limit
}
output "stream_arn" {
  description = "(Optional) ARN of the Kinesis data stream.mongodb_settings-> Additional information can be found in the Using MongoDB as a Source for AWS DMS documentation."
  value       = aws_dms_endpoint.aws_dms_endpoint.stream_arn
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_dms_endpoint.aws_dms_endpoint.tags
}
output "csv_null_value" {
  description = "(Optional) String to as null when writing to the target."
  value       = aws_dms_endpoint.aws_dms_endpoint.csv_null_value
}
output "csv_row_delimiter" {
  description = "(Optional) Delimiter used to separate rows in the source files. Default is \\n."
  value       = aws_dms_endpoint.aws_dms_endpoint.csv_row_delimiter
}
output "database_name" {
  description = "(Optional) Name of the endpoint database."
  value       = aws_dms_endpoint.aws_dms_endpoint.database_name
}
output "enable_statistics" {
  description = "(Optional) Whether to enable statistics for Parquet pages and row groups. Default is true."
  value       = aws_dms_endpoint.aws_dms_endpoint.enable_statistics
}
output "mongodb_settings" {
  description = "(Optional) Configuration block for MongoDB settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.mongodb_settings
}
output "nesting_level" {
  description = "(Optional) Specifies either document or table mode. Default is none. Valid values are one (table mode) and none (document mode).redis_settings-> Additional information can be found in the Using Redis as a target for AWS Database Migration Service."
  value       = aws_dms_endpoint.aws_dms_endpoint.nesting_level
}
output "secrets_manager_arn" {
  description = "(Optional) Full ARN, partial ARN, or friendly name of the SecretsManagerSecret that contains the endpoint connection details. Supported only for engine_name as aurora, aurora-postgresql, mariadb, mongodb, mysql, oracle, postgres, redshift or sqlserver."
  value       = aws_dms_endpoint.aws_dms_endpoint.secrets_manager_arn
}
output "encoding_type" {
  description = "(Optional) Type of encoding to use. Value values are rle_dictionary, plain, and plain_dictionary. Default is rle_dictionary."
  value       = aws_dms_endpoint.aws_dms_endpoint.encoding_type
}
output "endpoint_uri" {
  description = "(Required) Endpoint for the OpenSearch cluster."
  value       = aws_dms_endpoint.aws_dms_endpoint.endpoint_uri
}
output "extra_connection_attributes" {
  description = "(Optional) Additional attributes associated with the connection. For available attributes see Using Extra Connection Attributes with AWS Database Migration Service."
  value       = aws_dms_endpoint.aws_dms_endpoint.extra_connection_attributes
}
output "include_null_and_empty" {
  description = "(Optional) Include NULL and empty columns in the target. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_null_and_empty
}
output "include_transaction_details" {
  description = "(Optional) Provides detailed transaction information from the source database. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_transaction_details
}
output "row_group_length" {
  description = "(Optional) Number of rows in a row group. Default is 10000."
  value       = aws_dms_endpoint.aws_dms_endpoint.row_group_length
}
output "security_protocol" {
  description = "(Optional) Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include ssl-encryption, ssl-authentication, and sasl-ssl. sasl-ssl requires sasl_username and sasl_password."
  value       = aws_dms_endpoint.aws_dms_endpoint.security_protocol
}
output "timestamp_column_name" {
  description = "(Optional) Column to add with timestamp information to the endpoint data for an Amazon S3 target."
  value       = aws_dms_endpoint.aws_dms_endpoint.timestamp_column_name
}
output "add_column_name" {
  description = "(Optional) Whether to add column name information to the .csv output file. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.add_column_name
}
output "auth_source" {
  description = "(Optional) Authentication database name. Not used when auth_type is no. Default is admin."
  value       = aws_dms_endpoint.aws_dms_endpoint.auth_source
}
output "csv_delimiter" {
  description = "(Optional) Delimiter used to separate columns in the source files. Default is ,."
  value       = aws_dms_endpoint.aws_dms_endpoint.csv_delimiter
}
output "elasticsearch_settings" {
  description = "(Optional) Configuration block for OpenSearch settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.elasticsearch_settings
}
output "encryption_mode" {
  description = "(Optional) Server-side encryption mode that you want to encrypt your .csv or .parquet object files copied to S3. Valid values are SSE_S3 and SSE_KMS. Default is SSE_S3."
  value       = aws_dms_endpoint.aws_dms_endpoint.encryption_mode
}
output "redshift_settings" {
  description = "(Optional) Configuration block for Redshift settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.redshift_settings
}
output "server_side_encryption_kms_key_id" {
  description = "(Optional) If you set encryptionMode to SSE_KMS, set this parameter to the ARN for the AWS KMS key."
  value       = aws_dms_endpoint.aws_dms_endpoint.server_side_encryption_kms_key_id
}
output "cdc_inserts_only" {
  description = "(Optional) Whether to write insert operations to .csv or .parquet output files. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.cdc_inserts_only
}
output "date_partition_enabled" {
  description = "(Optional) Partition S3 bucket folders based on transaction commit dates. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.date_partition_enabled
}
output "external_table_definition" {
  description = "(Optional) JSON document that describes how AWS DMS should interpret the data."
  value       = aws_dms_endpoint.aws_dms_endpoint.external_table_definition
}
output "include_control_details" {
  description = "(Optional) Shows detailed control information for table definition, column definition, and table and column changes in the Kinesis message output. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_control_details
}
output "use_csv_no_sup_value" {
  description = "(Optional) Whether to use csv_no_sup_value for columns not included in the supplemental log."
  value       = aws_dms_endpoint.aws_dms_endpoint.use_csv_no_sup_value
}
output "use_task_start_time_for_full_load_timestamp" {
  description = "(Optional) When set to true, uses the task start time as the timestamp column value instead of the time data is written to target.\nFor full load, when set to true, each row of the timestamp column contains the task start time. For CDC loads, each row of the timestamp column contains the transaction commit time.\nWhen set to false, the full load timestamp in the timestamp column increments with the time data arrives at the target. Default is false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dms_endpoint.aws_dms_endpoint.use_task_start_time_for_full_load_timestamp
}
output "cdc_inserts_and_updates" {
  description = "(Optional) Whether to write insert and update operations to .csv or .parquet output files. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.cdc_inserts_and_updates
}
output "message_max_bytes" {
  description = "(Optional) Maximum size in bytes for records created on the endpoint Default is 1,000,000."
  value       = aws_dms_endpoint.aws_dms_endpoint.message_max_bytes
}
output "no_hex_prefix" {
  description = "(Optional) Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the no_hex_prefix endpoint setting to enable migration of RAW data type columns without adding the '0x' prefix."
  value       = aws_dms_endpoint.aws_dms_endpoint.no_hex_prefix
}
output "port" {
  description = "(Required) Transmission Control Protocol (TCP) port for the endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.port
}
output "preserve_transactions" {
  description = "(Optional) Whether DMS saves the transaction order for a CDC load on the S3 target specified by cdc_path. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.preserve_transactions
}
output "server_name" {
  description = "(Required) Fully qualified domain name of the endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.server_name
}
output "ssl_client_key_password" {
  description = "(Optional) Password for the client private key used to securely connect to a Kafka target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_client_key_password
}
output "parquet_version" {
  description = "(Optional) Version of the .parquet file format. Default is parquet-1-0. Valid values are parquet-1-0 and parquet-2-0."
  value       = aws_dms_endpoint.aws_dms_endpoint.parquet_version
}
output "auth_mechanism" {
  description = "(Optional) Authentication mechanism to access the MongoDB source endpoint. Default is default."
  value       = aws_dms_endpoint.aws_dms_endpoint.auth_mechanism
}
output "auth_user_name" {
  description = "(Optional) The username provided with the auth-role option of the AuthType setting for a Redis target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.auth_user_name
}
output "bucket_name" {
  description = "(Optional) S3 bucket name."
  value       = aws_dms_endpoint.aws_dms_endpoint.bucket_name
}
output "csv_no_sup_value" {
  description = "(Optional) String to use for all columns not included in the supplemental log."
  value       = aws_dms_endpoint.aws_dms_endpoint.csv_no_sup_value
}
output "docs_to_investigate" {
  description = "(Optional) Number of documents to preview to determine the document organization. Use this setting when nesting_level is set to one. Default is 1000."
  value       = aws_dms_endpoint.aws_dms_endpoint.docs_to_investigate
}
output "message_format" {
  description = "(Optional) Output format for the records created. Default is json. Valid values are json and json-unformatted (a single line with no tab)."
  value       = aws_dms_endpoint.aws_dms_endpoint.message_format
}
output "parquet_timestamp_in_millisecond" {
  description = "(Optional) - Specifies the precision of any TIMESTAMP column values written to an S3 object file in .parquet format. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.parquet_timestamp_in_millisecond
}
output "ssl_client_certificate_arn" {
  description = "(Optional) ARN of the client certificate used to securely connect to a Kafka target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_client_certificate_arn
}
output "auth_type" {
  description = "(Required) The type of authentication to perform when connecting to a Redis target. Options include none, auth-token, and auth-role. The auth-token option requires an auth_password value to be provided. The auth-role option requires auth_user_name and auth_password values to be provided."
  value       = aws_dms_endpoint.aws_dms_endpoint.auth_type
}
output "cdc_min_file_size" {
  description = "(Optional) Minimum file size, defined in megabytes, to reach for a file output. Default is 32."
  value       = aws_dms_endpoint.aws_dms_endpoint.cdc_min_file_size
}
output "error_retry_duration" {
  description = "(Optional) Maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster. Default is 300."
  value       = aws_dms_endpoint.aws_dms_endpoint.error_retry_duration
}
output "ignore_headers_row" {
  description = "(Optional) When this value is set to 1, DMS ignores the first row header in a .csv file. Default is 0."
  value       = aws_dms_endpoint.aws_dms_endpoint.ignore_headers_row
}
output "sasl_password" {
  description = "(Optional) Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication."
  value       = aws_dms_endpoint.aws_dms_endpoint.sasl_password
}
output "ssl_ca_certificate_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to connect to your Redis target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_ca_certificate_arn
}
output "ssl_security_protocol" {
  description = "- (Optional) The plaintext option doesn't provide Transport Layer Security (TLS) encryption for traffic between endpoint and database. Options include plaintext, ssl-encryption. The default is ssl-encryption.redshift_settings-> Additional information can be found in the Using Amazon Redshift as a Target for AWS Database Migration Service documentation."
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_security_protocol
}
output "broker" {
  description = "(Required) Kafka broker location. Specify in the form broker-hostname-or-ip:port."
  value       = aws_dms_endpoint.aws_dms_endpoint.broker
}
output "extract_doc_id" {
  description = "(Optional) Document ID. Use this setting when nesting_level is set to none. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.extract_doc_id
}
output "include_op_for_full_load" {
  description = "(Optional) Whether to enable a full load to write INSERT operations to the .csv output files only to indicate how the rows were added to the source database. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_op_for_full_load
}
output "kinesis_settings" {
  description = "(Optional) Configuration block for Kinesis settings. See below."
  value       = aws_dms_endpoint.aws_dms_endpoint.kinesis_settings
}
output "service_access_role" {
  description = "(Optional) ARN used by the service access IAM role for dynamodb endpoints."
  value       = aws_dms_endpoint.aws_dms_endpoint.service_access_role
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_dms_endpoint.aws_dms_endpoint.tags_all
}
output "max_file_size" {
  description = "(Optional) Maximum size (in KB) of any .csv file to be created while migrating to an S3 target during full load. Valid values are from 1 to 1048576. Default is 1048576 (1 GB)."
  value       = aws_dms_endpoint.aws_dms_endpoint.max_file_size
}
output "ssl_mode" {
  description = "(Optional, Default: none) SSL mode to use for the connection. Valid values are none, require, verify-ca, verify-full"
  value       = aws_dms_endpoint.aws_dms_endpoint.ssl_mode
}
output "include_partition_value" {
  description = "(Optional) Shows the partition value within the Kinesis message output, unless the partition type is schema-table-type. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_partition_value
}
output "include_table_alter_operations" {
  description = "(Optional) Includes any data definition language (DDL) operations that change the table in the control data. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.include_table_alter_operations
}
output "topic" {
  description = "(Optional) Kafka topic for migration. Default is kafka-default-topic.kinesis_settings-> Additional information can be found in the Using Amazon Kinesis Data Streams as a Target for AWS Database Migration Service documentation."
  value       = aws_dms_endpoint.aws_dms_endpoint.topic
}
output "auth_password" {
  description = "(Optional) The password provided with the auth-role and auth-token options of the AuthType setting for a Redis target endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.auth_password
}
output "cdc_max_batch_interval" {
  description = "(Optional) Maximum length of the interval, defined in seconds, after which to output a file to Amazon S3. Default is 60."
  value       = aws_dms_endpoint.aws_dms_endpoint.cdc_max_batch_interval
}
output "endpoint_arn" {
  description = "ARN for the endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.endpoint_arn
}
output "partition_include_schema_table" {
  description = "(Optional) Prefixes schema and table names to partition values, when the partition type is primary-key-type. Default is false."
  value       = aws_dms_endpoint.aws_dms_endpoint.partition_include_schema_table
}
output "service_access_role_arn" {
  description = "(Optional) ARN of the IAM Role with permissions to read from or write to the S3 Bucket."
  value       = aws_dms_endpoint.aws_dms_endpoint.service_access_role_arn
}
output "username" {
  description = "(Optional) User name to be used to login to the endpoint database.elasticsearch_settings-> Additional information can be found in the Using Amazon OpenSearch Service as a Target for AWS Database Migration Service documentation."
  value       = aws_dms_endpoint.aws_dms_endpoint.username
}
output "endpoint_arn" {
  description = "ARN for the endpoint."
  value       = aws_dms_endpoint.aws_dms_endpoint.endpoint_arn
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_dms_endpoint.aws_dms_endpoint.tags_all
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
      "kind/name"                   = "aws_dms_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
