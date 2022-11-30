resource "aws_lambda_function" "aws_lambda_function" {
  architectures                  = var.architectures
  arn                            = var.arn
  code_signing_config_arn        = var.code_signing_config_arn
  entry_point                    = var.entry_point
  image_config                   = var.image_config
  image_uri                      = var.image_uri
  function_name                  = var.function_name
  mode                           = var.mode
  runtime                        = var.runtime
  s3_object_version              = var.s3_object_version
  tags                           = var.tags
  publish                        = var.publish
  role                           = var.role
  local_mount_path               = var.local_mount_path
  memory_size                    = var.memory_size
  signing_profile_version_arn    = var.signing_profile_version_arn
  source_code_size               = var.source_code_size
  vpc_config.vpc_id              = var.vpc_config.vpc_id
  vpc_config                     = var.vpc_config
  create                         = var.create
  ephemeral_storage              = var.ephemeral_storage
  filename                       = var.filename
  handler                        = var.handler
  invoke_arn                     = var.invoke_arn
  kms_key_arn                    = var.kms_key_arn
  security_group_ids             = var.security_group_ids
  working_directory              = var.working_directory
  command                        = var.command
  package_type                   = var.package_type
  qualified_arn                  = var.qualified_arn
  qualified_invoke_arn           = var.qualified_invoke_arn
  s3_bucket                      = var.s3_bucket
  tags_all                       = var.tags_all
  variables                      = var.variables
  size                           = var.size
  description                    = var.description
  environment                    = var.environment
  file_system_config             = var.file_system_config
  last_modified                  = var.last_modified
  layers                         = var.layers
  s3_key                         = var.s3_key
  signing_job_arn                = var.signing_job_arn
  subnet_ids                     = var.subnet_ids
  timeout                        = var.timeout
  tracing_config                 = var.tracing_config
  version                        = var.version
  dead_letter_config             = var.dead_letter_config
  reserved_concurrent_executions = var.reserved_concurrent_executions
  source_code_hash               = var.source_code_hash
  target_arn                     = var.target_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dead_letter_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "reserved_concurrent_executions" {
  description = "(Optional) Amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1. See Managing Concurrency"
  type        = string
}
variable "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is filebase64sha256(\"file.zip\") (Terraform 0.11.12 and later) or base64sha256(file(\"file.zip\")) (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda function source archive."
  type        = string
}
variable "target_arn" {
  description = "(Required) ARN of an SNS topic or SQS queue to notify when an invocation fails. If this option is used, the function's IAM role must be granted suitable access to write to the target object, which means allowing either the sns:Publish or sqs:SendMessage action on this ARN, depending on which service is targeted.environment"
  type        = string
}
variable "architectures" {
  description = "(Optional) Instruction set architecture for your Lambda function. Valid values are [\"x86_64\"] and [\"arm64\"]. Default is [\"x86_64\"]. Removing this attribute, function's architecture stay the same."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  type        = string
}
variable "code_signing_config_arn" {
  description = "(Optional) To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function."
  type        = string
}
variable "entry_point" {
  description = "(Optional) Entry point to your application, which is typically the location of the runtime executable."
  type        = string
}
variable "image_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "image_uri" {
  description = "(Optional) ECR image URI containing the function's deployment package. Conflicts with filename, s3_bucket, s3_key, and s3_object_version."
  type        = string
}
variable "function_name" {
  description = "(Required) Unique name for your Lambda Function."
  type        = string
}
variable "mode" {
  description = "(Required) Whether to to sample and trace a subset of incoming requests with AWS X-Ray. Valid values are PassThrough and Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with \"sampled=1\". If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.vpc_configFor network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. See VPC Settings.~> strongNOTE: If both subnet_ids and security_group_ids are empty then vpc_config is considered to be empty or unset."
  type        = string
}
variable "runtime" {
  description = "(Optional) Identifier of the function's runtime. See Runtimes for valid values."
  type        = string
}
variable "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename and image_uri."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version. Defaults to false."
  type        = string
}
variable "role" {
  description = "(Required) Amazon Resource Name (ARN) of the function's execution role. The role provides the function's identity and access to AWS services and resources."
  type        = string
}
variable "local_mount_path" {
  description = "(Required) Path where the function can access the file system, starting with /mnt/.image_configContainer image configuration values that override the values in the container image Dockerfile."
  type        = string
}
variable "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. See Limits"
  type        = string
}
variable "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  type        = string
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
}
variable "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  type        = string
}
variable "security_group_ids" {
  description = "(Required) List of security group IDs associated with the Lambda function."
  type        = string
}
variable "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.dead_letter_configDead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see Dead Letter Queues."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "ephemeral_storage" {
  description = "(Optional) The amount of Ephemeral storage(/tmp) to allocate for the Lambda Function in MB. This parameter is used to expand the total amount of Ephemeral storage available, beyond the default amount of 512MB. Detailed below."
  type        = string
}
variable "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem. Conflicts with image_uri, s3_bucket, s3_key, and s3_object_version."
  type        = string
}
variable "handler" {
  description = "(Optional) Function entrypoint in your code."
  type        = string
}
variable "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables. If this configuration is not provided when environment variables are in use, AWS Lambda uses a default service key. If this configuration is provided when environment variables are not in use, the AWS Lambda API does not save this configuration and Terraform will show a perpetual difference of adding the key. To fix the perpetual difference, remove this configuration."
  type        = string
}
variable "variables" {
  description = "(Optional) Map of environment variables that are accessible from the function code during execution.ephemeral_storage"
  type        = string
}
variable "working_directory" {
  description = "(Optional) Working directory.tracing_config"
  type        = string
}
variable "command" {
  description = "(Optional) Parameters that you want to pass in with entry_point."
  type        = string
}
variable "package_type" {
  description = "(Optional) Lambda deployment package type. Valid values are Zip and Image. Defaults to Zip."
  type        = string
}
variable "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  type        = string
}
variable "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  type        = string
}
variable "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename and image_uri. This bucket must reside in the same AWS region where you are creating the Lambda function."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "signing_job_arn" {
  description = "ARN of the signing job."
  type        = string
}
variable "size" {
  description = "(Required) The size of the Lambda function Ephemeral storage(/tmp) represented in MB. The minimum supported ephemeral_storage value defaults to 512MB and the maximum supported value is 10240MB.file_system_configConnection settings for an EFS file system. Before creating or updating Lambda functions with file_system_config, EFS mount targets must be in available lifecycle state. Use depends_on to explicitly declare this dependency. See Using Amazon EFS with Lambda."
  type        = string
}
variable "description" {
  description = "(Optional) Description of what your Lambda Function does."
  type        = string
}
variable "environment" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "file_system_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "last_modified" {
  description = "Date this resource was last modified."
  type        = string
}
variable "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function. See Lambda Layers"
  type        = string
}
variable "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename and image_uri."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) List of subnet IDs associated with the Lambda function.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds. Defaults to 3. See Limits."
  type        = string
}
variable "tracing_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "version" {
  description = "Latest published version of your Lambda Function."
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
output "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename and image_uri. This bucket must reside in the same AWS region where you are creating the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.s3_bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lambda_function.aws_lambda_function.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "variables" {
  description = "(Optional) Map of environment variables that are accessible from the function code during execution.ephemeral_storage"
  value       = aws_lambda_function.aws_lambda_function.variables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "working_directory" {
  description = "(Optional) Working directory.tracing_config"
  value       = aws_lambda_function.aws_lambda_function.working_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "command" {
  description = "(Optional) Parameters that you want to pass in with entry_point."
  value       = aws_lambda_function.aws_lambda_function.command
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "package_type" {
  description = "(Optional) Lambda deployment package type. Valid values are Zip and Image. Defaults to Zip."
  value       = aws_lambda_function.aws_lambda_function.package_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "layers" {
  description = "(Optional) List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function. See Lambda Layers"
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename and image_uri."
  value       = aws_lambda_function.aws_lambda_function.s3_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_job_arn" {
  description = "ARN of the signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "(Required) The size of the Lambda function Ephemeral storage(/tmp) represented in MB. The minimum supported ephemeral_storage value defaults to 512MB and the maximum supported value is 10240MB.file_system_configConnection settings for an EFS file system. Before creating or updating Lambda functions with file_system_config, EFS mount targets must be in available lifecycle state. Use depends_on to explicitly declare this dependency. See Using Amazon EFS with Lambda."
  value       = aws_lambda_function.aws_lambda_function.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) List of subnet IDs associated with the Lambda function.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function.aws_lambda_function.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout" {
  description = "(Optional) Amount of time your Lambda Function has to run in seconds. Defaults to 3. See Limits."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tracing_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Latest published version of your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dead_letter_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reserved_concurrent_executions" {
  description = "(Optional) Amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1. See Managing Concurrency"
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is filebase64sha256(\"file.zip\") (Terraform 0.11.12 and later) or base64sha256(file(\"file.zip\")) (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda function source archive."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_arn" {
  description = "(Required) ARN of an SNS topic or SQS queue to notify when an invocation fails. If this option is used, the function's IAM role must be granted suitable access to write to the target object, which means allowing either the sns:Publish or sqs:SendMessage action on this ARN, depending on which service is targeted.environment"
  value       = aws_lambda_function.aws_lambda_function.target_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.image_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_uri" {
  description = "(Optional) ECR image URI containing the function's deployment package. Conflicts with filename, s3_bucket, s3_key, and s3_object_version."
  value       = aws_lambda_function.aws_lambda_function.image_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "architectures" {
  description = "(Optional) Instruction set architecture for your Lambda function. Valid values are [\"x86_64\"] and [\"arm64\"]. Default is [\"x86_64\"]. Removing this attribute, function's architecture stay the same."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_signing_config_arn" {
  description = "(Optional) To enable code signing for this function, specify the ARN of a code-signing configuration. A code-signing configuration includes a set of signing profiles, which define the trusted publishers for this function."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "entry_point" {
  description = "(Optional) Entry point to your application, which is typically the location of the runtime executable."
  value       = aws_lambda_function.aws_lambda_function.entry_point
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_lambda_function.aws_lambda_function.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_name" {
  description = "(Required) Unique name for your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.function_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode" {
  description = "(Required) Whether to to sample and trace a subset of incoming requests with AWS X-Ray. Valid values are PassThrough and Active. If PassThrough, Lambda will only trace the request from an upstream service if it contains a tracing header with \"sampled=1\". If Active, Lambda will respect any tracing header it receives from an upstream service. If no tracing header is received, Lambda will call X-Ray for a tracing decision.vpc_configFor network connectivity to AWS resources in a VPC, specify a list of security groups and subnets in the VPC. When you connect a function to a VPC, it can only access resources and the internet through that VPC. See VPC Settings.~> strongNOTE: If both subnet_ids and security_group_ids are empty then vpc_config is considered to be empty or unset."
  value       = aws_lambda_function.aws_lambda_function.mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "(Optional) Identifier of the function's runtime. See Runtimes for valid values."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename and image_uri."
  value       = aws_lambda_function.aws_lambda_function.s3_object_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "publish" {
  description = "(Optional) Whether to publish creation/change as new Lambda Function Version. Defaults to false."
  value       = aws_lambda_function.aws_lambda_function.publish
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = "(Required) Amazon Resource Name (ARN) of the function's execution role. The role provides the function's identity and access to AWS services and resources."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_lambda_function.aws_lambda_function.vpc_config.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_mount_path" {
  description = "(Required) Path where the function can access the file system, starting with /mnt/.image_configContainer image configuration values that override the values in the container image Dockerfile."
  value       = aws_lambda_function.aws_lambda_function.local_mount_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_size" {
  description = "(Optional) Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128. See Limits"
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the AWS Key Management Service (KMS) key that is used to encrypt environment variables. If this configuration is not provided when environment variables are in use, AWS Lambda uses a default service key. If this configuration is provided when environment variables are not in use, the AWS Lambda API does not save this configuration and Terraform will show a perpetual difference of adding the key. To fix the perpetual difference, remove this configuration."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Required) List of security group IDs associated with the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.dead_letter_configDead letter queue configuration that specifies the queue or topic where Lambda sends asynchronous events when they fail processing. For more information, see Dead Letter Queues."
  value       = aws_lambda_function.aws_lambda_function.vpc_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lambda_function.aws_lambda_function.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_storage" {
  description = "(Optional) The amount of Ephemeral storage(/tmp) to allocate for the Lambda Function in MB. This parameter is used to expand the total amount of Ephemeral storage available, beyond the default amount of 512MB. Detailed below."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filename" {
  description = "(Optional) Path to the function's deployment package within the local filesystem. Conflicts with image_uri, s3_bucket, s3_key, and s3_object_version."
  value       = aws_lambda_function.aws_lambda_function.filename
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "handler" {
  description = "(Optional) Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_invoke_arn" {
  description = "Qualified ARN (ARN with lambda version number) to be used for invoking Lambda Function from API Gateway - to be used in aws_api_gateway_integration's uri."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_job_arn" {
  description = "ARN of the signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arn" {
  description = "ARN of the signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Latest published version of your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) identifying your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_config.vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_lambda_function.aws_lambda_function.vpc_config.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_arn" {
  description = "ARN identifying your Lambda Function Version (if versioning is enabled via publish = true)."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lambda_function.aws_lambda_function.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_lambda_function.aws_lambda_function.create
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
      "kind/name"                   = "aws_lambda_function"
      "kind/version"                = "v0.1.0"
    }
  }
}
