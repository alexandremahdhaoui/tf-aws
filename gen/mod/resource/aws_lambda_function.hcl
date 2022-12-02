resource "aws_lambda_function" "aws_lambda_function" {
  handler                        = var.handler
  image_config                   = var.image_config
  local_mount_path               = var.local_mount_path
  package_type                   = var.package_type
  qualified_invoke_arn           = var.qualified_invoke_arn
  variables                      = var.variables
  create                         = var.create
  file_system_config             = var.file_system_config
  image_uri                      = var.image_uri
  qualified_arn                  = var.qualified_arn
  size                           = var.size
  source_code_size               = var.source_code_size
  ephemeral_storage              = var.ephemeral_storage
  filename                       = var.filename
  mode                           = var.mode
  s3_key                         = var.s3_key
  target_arn                     = var.target_arn
  tracing_config                 = var.tracing_config
  environment                    = var.environment
  kms_key_arn                    = var.kms_key_arn
  dead_letter_config             = var.dead_letter_config
  publish                        = var.publish
  reserved_concurrent_executions = var.reserved_concurrent_executions
  signing_profile_version_arn    = var.signing_profile_version_arn
  tags_all                       = var.tags_all
  arn                            = var.arn
  command                        = var.command
  runtime                        = var.runtime
  s3_bucket                      = var.s3_bucket
  subnet_ids                     = var.subnet_ids
  version                        = var.version
  vpc_config                     = var.vpc_config
  vpc_config.vpc_id              = var.vpc_config.vpc_id
  code_signing_config_arn        = var.code_signing_config_arn
  last_modified                  = var.last_modified
  function_name                  = var.function_name
  memory_size                    = var.memory_size
  role                           = var.role
  source_code_hash               = var.source_code_hash
  tags                           = var.tags
  architectures                  = var.architectures
  entry_point                    = var.entry_point
  working_directory              = var.working_directory
  description                    = var.description
  security_group_ids             = var.security_group_ids
  s3_object_version              = var.s3_object_version
  signing_job_arn                = var.signing_job_arn
  timeout                        = var.timeout
  invoke_arn                     = var.invoke_arn
  layers                         = var.layers
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "variables" {
  description = "(Optional) Map of environment variables that are accessible from the function code during execution.ephemeral_storage"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "file_system_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "handler" {
  description = "(Optional) Function entrypoint in your code."
  type        = string
  default     = ""
}
variable "image_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "local_mount_path" {
  description = "(Required) Path where the function can access the file system, starting with /mnt/.image_configContainer image configuration values that override the values in the container image Dockerfile."
  type        = string
}
variable "package_type" {
  description = "(Optional) Lambda deployment package type. Valid values are Zip and Image. Defaults to Zip."
  type        = string
  default     = ""
}
variable "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  type        = string
  default     = ""
}
variable "ephemeral_storage" {
  description = "(Optional) The amount of Ephemeral storage(/tmp) to allocate for the Lambda Function in MB. This parameter is used to expand the total amount of Ephemeral storage available, beyond the default amount of 512MB. Detailed below."
  type        = string
  default     = ""
}
variable "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem. Conflicts with image_uri, s3_bucket, s3_key, and s3_object_version."
  type        = string
  default     = ""
}
variable "image_uri" {
  description = "(Optional) ECR image URI containing the function's deployment package. Conflicts with filename, s3_bucket, s3_key, and s3_object_version."
  type        = string
  default     = ""
}
variable "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Required) The size of the Lambda function Ephemeral storage(/tmp) represented in MB. The minimum supported ephemeral_storage value defaults to 512MB and the maximum supported value is 10240MB.file_system_configConnection settings for an EFS file system. Before creating or updating Lambda functions with file_system_config, EFS mount targets must be in available lifecycle state. Use depends_on to explicitly declare this dependency. See Using Amazon EFS with Lambda."
  type        = string
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
  default     = ""
}
variable "environment" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables. If this configuration is not provided when environment variables are in use, AWS Lambda uses a default service key. If this configuration is provided when environment variables are not in use, the AWS Lambda API does not save this configuration and Terraform will show a perpetual difference of adding the key. To fix the perpetual difference, remove this configuration."
  type        = string
  default     = ""
}
variable "mode" {
  description = "(Required) Whether to to sample and trace a subset of incoming requests with AWS X-Ray. Valid values are PassThrough and Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with \"sampled=1\". If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.vpc_configFor network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. See VPC Settings.~> strongNOTE: If both subnet_ids and security_group_ids are empty then vpc_config is considered to be empty or unset."
  type        = string
}
variable "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename and image_uri."
  type        = string
  default     = ""
}
variable "target_arn" {
  description = "(Required) ARN of an SNS topic or SQS queue to notify when an invocation fails. If this option is used, the function's IAM role must be granted suitable access to write to the target object, which means allowing either the sns:Publish or sqs:SendMessage action on this ARN, depending on which service is targeted.environment"
  type        = string
}
variable "tracing_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  type        = string
  default     = ""
}
variable "command" {
  description = "(Optional) Parameters that you want to pass in with entry_point."
  type        = string
  default     = ""
}
variable "dead_letter_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version. Defaults to false."
  type        = string
  default     = ""
}
variable "reserved_concurrent_executions" {
  description = "(Optional) Amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1. See Managing Concurrency"
  type        = string
  default     = ""
}
variable "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "code_signing_config_arn" {
  description = "(Optional) To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function."
  type        = string
  default     = ""
}
variable "last_modified" {
  description = "Date this resource was last modified."
  type        = string
  default     = ""
}
variable "runtime" {
  description = "(Optional) Identifier of the function's runtime. See Runtimes for valid values."
  type        = string
  default     = ""
}
variable "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename and image_uri. This bucket must reside in the same AWS region where you are creating the Lambda function."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) List of subnet IDs associated with the Lambda function.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "version" {
  description = "Latest published version of your Lambda Function."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.dead_letter_configDead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see Dead Letter Queues."
  type        = string
  default     = ""
}
variable "architectures" {
  description = "(Optional) Instruction set architecture for your Lambda function. Valid values are [\"x86_64\"] and [\"arm64\"]. Default is [\"x86_64\"]. Removing this attribute, function's architecture stay the same."
  type        = string
  default     = ""
}
variable "entry_point" {
  description = "(Optional) Entry point to your application, which is typically the location of the runtime executable."
  type        = string
  default     = ""
}
variable "function_name" {
  description = "(Required) Unique name for your Lambda Function."
  type        = string
}
variable "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. See Limits"
  type        = string
  default     = ""
}
variable "role" {
  description = "(Required) Amazon Resource Name (ARN) of the function's execution role. The role provides the function's identity and access to AWS services and resources."
  type        = string
}
variable "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is filebase64sha256(\"file.zip\") (Terraform 0.11.12 and later) or base64sha256(file(\"file.zip\")) (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda function source archive."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of what your Lambda Function does."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) List of security group IDs associated with the Lambda function."
  type        = string
}
variable "working_directory" {
  description = "(Optional) Working directory.tracing_config"
  type        = string
  default     = ""
}
variable "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  type        = string
  default     = ""
}
variable "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function. See Lambda Layers"
  type        = string
  default     = ""
}
variable "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename and image_uri."
  type        = string
  default     = ""
}
variable "signing_job_arn" {
  description = "ARN of the signing job."
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds. Defaults to 3. See Limits."
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
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "command" {
  description = "(Optional) Parameters that you want to pass in with entry_point."
  value       = aws_lambda_function.aws_lambda_function.command
}
output "dead_letter_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version. Defaults to false."
  value       = aws_lambda_function.aws_lambda_function.publish
}
output "reserved_concurrent_executions" {
  description = "(Optional) Amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1. See Managing Concurrency"
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lambda_function.aws_lambda_function.tags_all
}
output "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_lambda_function.aws_lambda_function.vpc_config.vpc_id
}
output "code_signing_config_arn" {
  description = "(Optional) To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "runtime" {
  description = "(Optional) Identifier of the function's runtime. See Runtimes for valid values."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename and image_uri. This bucket must reside in the same AWS region where you are creating the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.s3_bucket
}
output "subnet_ids" {
  description = "(Required) List of subnet IDs associated with the Lambda function.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function.aws_lambda_function.subnet_ids
}
output "version" {
  description = "Latest published version of your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.dead_letter_configDead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see Dead Letter Queues."
  value       = aws_lambda_function.aws_lambda_function.vpc_config
}
output "architectures" {
  description = "(Optional) Instruction set architecture for your Lambda function. Valid values are [\"x86_64\"] and [\"arm64\"]. Default is [\"x86_64\"]. Removing this attribute, function's architecture stay the same."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "entry_point" {
  description = "(Optional) Entry point to your application, which is typically the location of the runtime executable."
  value       = aws_lambda_function.aws_lambda_function.entry_point
}
output "function_name" {
  description = "(Required) Unique name for your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.function_name
}
output "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. See Limits"
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "role" {
  description = "(Required) Amazon Resource Name (ARN) of the function's execution role. The role provides the function's identity and access to AWS services and resources."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is filebase64sha256(\"file.zip\") (Terraform 0.11.12 and later) or base64sha256(file(\"file.zip\")) (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda function source archive."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
}
output "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_lambda_function.aws_lambda_function.tags
}
output "description" {
  description = "(Optional) Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
}
output "security_group_ids" {
  description = "(Required) List of security group IDs associated with the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.security_group_ids
}
output "working_directory" {
  description = "(Optional) Working directory.tracing_config"
  value       = aws_lambda_function.aws_lambda_function.working_directory
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function. See Lambda Layers"
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename and image_uri."
  value       = aws_lambda_function.aws_lambda_function.s3_object_version
}
output "signing_job_arn" {
  description = "ARN of the signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds. Defaults to 3. See Limits."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "variables" {
  description = "(Optional) Map of environment variables that are accessible from the function code during execution.ephemeral_storage"
  value       = aws_lambda_function.aws_lambda_function.variables
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lambda_function.aws_lambda_function.create
}
output "file_system_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "handler" {
  description = "(Optional) Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "image_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.image_config
}
output "local_mount_path" {
  description = "(Required) Path where the function can access the file system, starting with /mnt/.image_configContainer image configuration values that override the values in the container image Dockerfile."
  value       = aws_lambda_function.aws_lambda_function.local_mount_path
}
output "package_type" {
  description = "(Optional) Lambda deployment package type. Valid values are Zip and Image. Defaults to Zip."
  value       = aws_lambda_function.aws_lambda_function.package_type
}
output "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "ephemeral_storage" {
  description = "(Optional) The amount of Ephemeral storage(/tmp) to allocate for the Lambda Function in MB. This parameter is used to expand the total amount of Ephemeral storage available, beyond the default amount of 512MB. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem. Conflicts with image_uri, s3_bucket, s3_key, and s3_object_version."
  value       = aws_lambda_function.aws_lambda_function.filename
}
output "image_uri" {
  description = "(Optional) ECR image URI containing the function's deployment package. Conflicts with filename, s3_bucket, s3_key, and s3_object_version."
  value       = aws_lambda_function.aws_lambda_function.image_uri
}
output "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "size" {
  description = "(Required) The size of the Lambda function Ephemeral storage(/tmp) represented in MB. The minimum supported ephemeral_storage value defaults to 512MB and the maximum supported value is 10240MB.file_system_configConnection settings for an EFS file system. Before creating or updating Lambda functions with file_system_config, EFS mount targets must be in available lifecycle state. Use depends_on to explicitly declare this dependency. See Using Amazon EFS with Lambda."
  value       = aws_lambda_function.aws_lambda_function.size
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "environment" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables. If this configuration is not provided when environment variables are in use, AWS Lambda uses a default service key. If this configuration is provided when environment variables are not in use, the AWS Lambda API does not save this configuration and Terraform will show a perpetual difference of adding the key. To fix the perpetual difference, remove this configuration."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "mode" {
  description = "(Required) Whether to to sample and trace a subset of incoming requests with AWS X-Ray. Valid values are PassThrough and Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with \"sampled=1\". If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.vpc_configFor network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. See VPC Settings.~> strongNOTE: If both subnet_ids and security_group_ids are empty then vpc_config is considered to be empty or unset."
  value       = aws_lambda_function.aws_lambda_function.mode
}
output "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename and image_uri."
  value       = aws_lambda_function.aws_lambda_function.s3_key
}
output "target_arn" {
  description = "(Required) ARN of an SNS topic or SQS queue to notify when an invocation fails. If this option is used, the function's IAM role must be granted suitable access to write to the target object, which means allowing either the sns:Publish or sqs:SendMessage action on this ARN, depending on which service is targeted.environment"
  value       = aws_lambda_function.aws_lambda_function.target_arn
}
output "tracing_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "version" {
  description = "Latest published version of your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lambda_function.aws_lambda_function.create
}
output "signing_job_arn" {
  description = "ARN of the signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lambda_function.aws_lambda_function.tags_all
}
output "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_lambda_function.aws_lambda_function.vpc_config.vpc_id
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
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
      "kind/name"                   = "aws_lambda_function"
      "kind/version"                = "v0.1.0"
    }
  }
}
