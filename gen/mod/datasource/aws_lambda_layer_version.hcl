datasource "aws_lambda_layer_version" "aws_lambda_layer_version" {
  arn                         = var.arn
  license_info                = var.license_info
  signing_profile_version_arn = var.signing_profile_version_arn
  compatible_runtimes         = var.compatible_runtimes
  signing_job_arn             = var.signing_job_arn
  compatible_architecture     = var.compatible_architecture
  compatible_architectures    = var.compatible_architectures
  compatible_runtime          = var.compatible_runtime
  created_date                = var.created_date
  description                 = var.description
  layer_arn                   = var.layer_arn
  version                     = var.version
  layer_name                  = var.layer_name
  source_code_hash            = var.source_code_hash
  source_code_size            = var.source_code_size
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the Lambda Layer with version."
  type        = string
}
variable "license_info" {
  description = "License info associated with the specific Lambda Layer version."
  type        = string
}
variable "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  type        = string
}
variable "compatible_runtimes" {
  description = "List of Runtimes the specific Lambda Layer version is compatible with."
  type        = string
}
variable "signing_job_arn" {
  description = "ARN of a signing job."
  type        = string
}
variable "version" {
  description = "(Optional) Specific layer version. Conflicts with compatible_runtime and compatible_architecture. If omitted, the latest available layer version will be used."
  type        = string
  default     = ""
}
variable "compatible_architecture" {
  description = " (Optional) Specific architecture the layer version could support. Conflicts with version. If specified, the latest available layer version supporting the provided architecture will be used.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "compatible_architectures" {
  description = "A list of Architectures the specific Lambda Layer version is compatible with."
  type        = string
}
variable "compatible_runtime" {
  description = " (Optional) Specific runtime the layer version must support. Conflicts with version. If specified, the latest available layer version supporting the provided runtime will be used."
  type        = string
  default     = ""
}
variable "created_date" {
  description = "Date this resource was created."
  type        = string
}
variable "description" {
  description = "Description of the specific Lambda Layer version."
  type        = string
}
variable "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  type        = string
}
variable "layer_name" {
  description = "(Required) Name of the lambda layer."
  type        = string
}
variable "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  type        = string
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
}
output "layer_name" {
  description = "(Required) Name of the lambda layer."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_name
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_hash
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_size
}
output "arn" {
  description = "ARN of the Lambda Layer with version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.arn
}
output "license_info" {
  description = "License info associated with the specific Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.license_info
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_profile_version_arn
}
output "compatible_runtimes" {
  description = "List of Runtimes the specific Lambda Layer version is compatible with."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_runtimes
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_job_arn
}
output "created_date" {
  description = "Date this resource was created."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.created_date
}
output "description" {
  description = "Description of the specific Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.description
}
output "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_arn
}
output "version" {
  description = "(Optional) Specific layer version. Conflicts with compatible_runtime and compatible_architecture. If omitted, the latest available layer version will be used."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.version
}
output "compatible_architecture" {
  description = " (Optional) Specific architecture the layer version could support. Conflicts with version. If specified, the latest available layer version supporting the provided architecture will be used.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_architecture
}
output "compatible_architectures" {
  description = "A list of Architectures the specific Lambda Layer version is compatible with."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_architectures
}
output "compatible_runtime" {
  description = " (Optional) Specific runtime the layer version must support. Conflicts with version. If specified, the latest available layer version supporting the provided runtime will be used."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_runtime
}
output "source_code_hash" {
  description = "Base64-encoded representation of raw SHA-256 sum of the zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_hash
}
output "arn" {
  description = "ARN of the Lambda Layer with version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.arn
}
output "description" {
  description = "Description of the specific Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.description
}
output "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_arn
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_job_arn
}
output "signing_profile_version_arn" {
  description = "The ARN for a signing profile version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_profile_version_arn
}
output "compatible_architectures" {
  description = "A list of Architectures the specific Lambda Layer version is compatible with."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_architectures
}
output "compatible_runtimes" {
  description = "List of Runtimes the specific Lambda Layer version is compatible with."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_runtimes
}
output "created_date" {
  description = "Date this resource was created."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.created_date
}
output "license_info" {
  description = "License info associated with the specific Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.license_info
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_size
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
