datasource "aws_lambda_function" "aws_lambda_function" {
  dead_letter_config             = var.dead_letter_config
  source_code_size               = var.source_code_size
  image_uri                      = var.image_uri
  tracing_config                 = var.tracing_config
  environment                    = var.environment
  ephemeral_storage              = var.ephemeral_storage
  runtime                        = var.runtime
  version                        = var.version
  code_signing_config_arn        = var.code_signing_config_arn
  kms_key_arn                    = var.kms_key_arn
  qualified_arn                  = var.qualified_arn
  reserved_concurrent_executions = var.reserved_concurrent_executions
  file_system_config             = var.file_system_config
  invoke_arn                     = var.invoke_arn
  qualifier                      = var.qualifier
  role                           = var.role
  architectures                  = var.architectures
  layers                         = var.layers
  arn                            = var.arn
  timeout                        = var.timeout
  last_modified                  = var.last_modified
  source_code_hash               = var.source_code_hash
  handler                        = var.handler
  memory_size                    = var.memory_size
  qualified_invoke_arn           = var.qualified_invoke_arn
  signing_job_arn                = var.signing_job_arn
  signing_profile_version_arn    = var.signing_profile_version_arn
  description                    = var.description
  function_name                  = var.function_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  type        = string
}
variable "last_modified" {
  description = "Date this resource was last modified."
  type        = string
}
variable "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  type        = string
}
variable "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  type        = string
}
variable "description" {
  description = "Description of what your Lambda Function does."
  type        = string
}
variable "function_name" {
  description = "(Required) Name of the lambda function."
  type        = string
}
variable "handler" {
  description = "Function entrypoint in your code."
  type        = string
}
variable "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  type        = string
}
variable "qualified_invoke_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
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
variable "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  type        = string
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
}
variable "environment" {
  description = "Lambda environment's configuration settings."
  type        = string
}
variable "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  type        = string
}
variable "image_uri" {
  description = "URI of the container image."
  type        = string
}
variable "tracing_config" {
  description = "Tracing settings of the function."
  type        = string
}
variable "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  type        = string
}
variable "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  type        = string
}
variable "runtime" {
  description = "Runtime environment for the Lambda function."
  type        = string
}
variable "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  type        = string
}
variable "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  type        = string
}
variable "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
  type        = string
}
variable "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  type        = string
}
variable "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  type        = string
}
variable "architectures" {
  description = "Instruction set architecture for the Lambda function."
  type        = string
}
variable "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  type        = string
}
variable "qualifier" {
  description = "(Optional) Alias name or version number of the lambda functionE.g., $LATEST, my-alias, or 1. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "role" {
  description = "IAM role attached to the Lambda Function."
  type        = string
}
output "architectures" {
  description = "Instruction set architecture for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "qualifier" {
  description = "(Optional) Alias name or version number of the lambda functionE.g., $LATEST, my-alias, or 1. When not included: the data source resolves to the most recent published version; if no published version exists: it resolves to the most recent unpublished version.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_function.aws_lambda_function.qualifier
}
output "role" {
  description = "IAM role attached to the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
}
output "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "description" {
  description = "Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
}
output "function_name" {
  description = "(Required) Name of the lambda function."
  value       = aws_lambda_function.aws_lambda_function.function_name
}
output "handler" {
  description = "Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "qualified_invoke_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "environment" {
  description = "Lambda environment's configuration settings."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "image_uri" {
  description = "URI of the container image."
  value       = aws_lambda_function.aws_lambda_function.image_uri
}
output "tracing_config" {
  description = "Tracing settings of the function."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "runtime" {
  description = "Runtime environment for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "reserved_concurrent_executions" {
  description = "The amount of reserved concurrent executions for this lambda function or -1 if unreserved."
  value       = aws_lambda_function.aws_lambda_function.reserved_concurrent_executions
}
output "architectures" {
  description = "Instruction set architecture for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.architectures
}
output "handler" {
  description = "Function entrypoint in your code."
  value       = aws_lambda_function.aws_lambda_function.handler
}
output "role" {
  description = "IAM role attached to the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.role
}
output "arn" {
  description = "Unqualified (no :QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also qualified_arn."
  value       = aws_lambda_function.aws_lambda_function.arn
}
output "image_uri" {
  description = "URI of the container image."
  value       = aws_lambda_function.aws_lambda_function.image_uri
}
output "runtime" {
  description = "Runtime environment for the Lambda function."
  value       = aws_lambda_function.aws_lambda_function.runtime
}
output "tracing_config" {
  description = "Tracing settings of the function."
  value       = aws_lambda_function.aws_lambda_function.tracing_config
}
output "last_modified" {
  description = "Date this resource was last modified."
  value       = aws_lambda_function.aws_lambda_function.last_modified
}
output "qualified_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN identifying your Lambda Function. See also arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_arn
}
output "code_signing_config_arn" {
  description = "ARN for a Code Signing Configuration."
  value       = aws_lambda_function.aws_lambda_function.code_signing_config_arn
}
output "environment" {
  description = "Lambda environment's configuration settings."
  value       = aws_lambda_function.aws_lambda_function.environment
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_size
}
output "timeout" {
  description = "Function execution time at which Lambda should terminate the function."
  value       = aws_lambda_function.aws_lambda_function.timeout
}
output "version" {
  description = "The version of the Lambda function returned. If qualifier is not set, this will resolve to the most recent published version. If no published version of the function exists, version will resolve to $LATEST."
  value       = aws_lambda_function.aws_lambda_function.version
}
output "file_system_config" {
  description = "Connection settings for an Amazon EFS file system."
  value       = aws_lambda_function.aws_lambda_function.file_system_config
}
output "layers" {
  description = "List of Lambda Layer ARNs attached to your Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.layers
}
output "memory_size" {
  description = "Amount of memory in MB your Lambda Function can use at runtime."
  value       = aws_lambda_function.aws_lambda_function.memory_size
}
output "qualified_invoke_arn" {
  description = "Qualified (:QUALIFIER or :VERSION suffix) ARN to be used for invoking Lambda Function from API Gateway. See also invoke_arn."
  value       = aws_lambda_function.aws_lambda_function.qualified_invoke_arn
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_function.aws_lambda_function.signing_profile_version_arn
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_function.aws_lambda_function.signing_job_arn
}
output "description" {
  description = "Description of what your Lambda Function does."
  value       = aws_lambda_function.aws_lambda_function.description
}
output "kms_key_arn" {
  description = "ARN for the KMS encryption key."
  value       = aws_lambda_function.aws_lambda_function.kms_key_arn
}
output "dead_letter_config" {
  description = "Configure the function's emdead letter queue."
  value       = aws_lambda_function.aws_lambda_function.dead_letter_config
}
output "ephemeral_storage" {
  description = "Amount of Ephemeral storage(/tmp) allocated for the Lambda Function."
  value       = aws_lambda_function.aws_lambda_function.ephemeral_storage
}
output "invoke_arn" {
  description = "ARN to be used for invoking Lambda Function from API Gateway."
  value       = aws_lambda_function.aws_lambda_function.invoke_arn
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_function.aws_lambda_function.source_code_hash
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
}
