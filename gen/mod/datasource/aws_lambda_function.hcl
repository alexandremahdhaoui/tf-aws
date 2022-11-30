datasource "aws_lambda_function" "aws_lambda_function" {
  code_signing_config_arn        = var.code_signing_config_arn
  ephemeral_storage              = var.ephemeral_storage
  role                           = var.role
  tracing_config                 = var.tracing_config
  invoke_arn                     = var.invoke_arn
  reserved_concurrent_executions = var.reserved_concurrent_executions
  runtime                        = var.runtime
  signing_job_arn                = var.signing_job_arn
  signing_profile_version_arn    = var.signing_profile_version_arn
  kms_key_arn                    = var.kms_key_arn
  qualified_invoke_arn           = var.qualified_invoke_arn
  architectures                  = var.architectures
  timeout                        = var.timeout
  version                        = var.version
  description                    = var.description
  environment                    = var.environment
  file_system_config             = var.file_system_config
  function_name                  = var.function_name
  image_uri                      = var.image_uri
  last_modified                  = var.last_modified
  qualified_arn                  = var.qualified_arn
  source_code_hash               = var.source_code_hash
  dead_letter_config             = var.dead_letter_config
  layers                         = var.layers
  memory_size                    = var.memory_size
  qualifier                      = var.qualifier
  source_code_size               = var.source_code_size
  arn                            = var.arn
  handler                        = var.handler
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of what your Lambda Function does."
  type        = string
}
variable "environment" {
  description = "Lambda environment's configuration settings."
  type        = string
}
variable "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  type        = string
}
variable "function_name" {
  description = "(Required) Name of the lambda function."
  type        = string
}
variable "image_uri" {
  description = "URI of the container image."
  type        = string
}
variable "last_modified" {
  description = "Date this resource was last modified."
  type        = string
}
variable "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  type        = string
}
variable "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  type        = string
}
variable "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  type        = string
}
variable "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  type        = string
}
variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  type        = string
}
variable "qualifier" {
  description = "(Optional) Alias name or version number of the lambda functionE.g., $LATEST, my-alias, or 1. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
}
variable "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  type        = string
}
variable "handler" {
  description = "Function entrypoint in your code."
  type        = string
}
variable "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  type        = string
}
variable "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  type        = string
}
variable "role" {
  description = "IAM role attached to the Lambda Function."
  type        = string
}
variable "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
  type        = string
}
variable "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  type        = string
}
variable "runtime" {
  description = "Runtime environment for the Lambda function."
  type        = string
}
variable "signing_job_arn" {
  description = "ARN of a signing job."
  type        = string
}
variable "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  type        = string
}
variable "tracing_config" {
  description = "Tracing settings of the function."
  type        = string
}
variable "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "qualified_invoke_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
  type        = string
}
variable "architectures" {
  description = "Instruction set architecture for the Lambda function."
  type        = string
}
variable "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  type        = string
}
variable "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  type        = string
}
output "architectures" {
  description = "Instruction set architecture for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment" {
  description = "Lambda environment's configuration settings."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_name" {
  description = "(Required) Name of the lambda function."
  value       = aws_lambda_function.aws_lambda_function.function_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_uri" {
  description = "URI of the container image."
  value       = aws_lambda_function.aws_lambda_function.image_uri
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
output "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualifier" {
  description = "(Optional) Alias name or version number of the lambda functionE.g., $LATEST, my-alias, or 1. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function.aws_lambda_function.qualifier
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
output "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "handler" {
  description = "Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = "IAM role attached to the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "Runtime environment for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tracing_config" {
  description = "Tracing settings of the function."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_invoke_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tracing_config" {
  description = "Tracing settings of the function."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_uri" {
  description = "URI of the container image."
  value       = aws_lambda_function.aws_lambda_function.image_uri
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
output "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment" {
  description = "Lambda environment's configuration settings."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
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
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "handler" {
  description = "Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = "IAM role attached to the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "Runtime environment for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "architectures" {
  description = "Instruction set architecture for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
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
}
