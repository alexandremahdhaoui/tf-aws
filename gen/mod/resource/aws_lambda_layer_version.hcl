resource "aws_lambda_layer_version" "aws_lambda_layer_version" {
  description                 = var.description
  filename                    = var.filename
  license_info                = var.license_info
  s3_bucket                   = var.s3_bucket
  signing_profile_version_arn = var.signing_profile_version_arn
  skip_destroy                = var.skip_destroy
  s3_key                      = var.s3_key
  s3_object_version           = var.s3_object_version
  version                     = var.version
  arn                         = var.arn
  compatible_runtimes         = var.compatible_runtimes
  layer_arn                   = var.layer_arn
  layer_name                  = var.layer_name
  signing_job_arn             = var.signing_job_arn
  source_code_hash            = var.source_code_hash
  compatible_architectures    = var.compatible_architectures
  created_date                = var.created_date
  source_code_size            = var.source_code_size
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "created_date" {
  description = "Date this resource was created."
  type        = string
  default     = ""
}
variable "source_code_size" {
  description = "Size in bytes of the function .zip file."
  type        = string
  default     = ""
}
variable "compatible_architectures" {
  description = "(Optional) List of Architectures this layer is compatible with. Currently x86_64 and arm64 can be specified."
  type        = string
  default     = ""
}
variable "filename" {
  description = " (Optional) Path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used."
  type        = string
  default     = ""
}
variable "license_info" {
  description = "(Optional) License info for your Lambda Layer. See License Info."
  type        = string
  default     = ""
}
variable "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function."
  type        = string
  default     = ""
}
variable "signing_profile_version_arn" {
  description = "ARN for a signing profile version."
  type        = string
  default     = ""
}
variable "skip_destroy" {
  description = "(Optional) Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible_architectures, compatible_runtimes, description, filename, layer_name, license_info, s3_bucket, s3_key, s3_object_version, or source_code_hash forces deletion of the existing layer version and creation of a new layer version."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of what your Lambda Layer does."
  type        = string
  default     = ""
}
variable "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename."
  type        = string
  default     = ""
}
variable "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename."
  type        = string
  default     = ""
}
variable "compatible_runtimes" {
  description = "(Optional) List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified."
  type        = string
  default     = ""
}
variable "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  type        = string
  default     = ""
}
variable "layer_name" {
  description = "(Required) Unique name for your Lambda Layer"
  type        = string
}
variable "signing_job_arn" {
  description = "ARN of a signing job."
  type        = string
  default     = ""
}
variable "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is $${filebase64sha256(\"file.zip\")} (Terraform 0.11.12 or later) or $${base64sha256(file(\"file.zip\"))} (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda layer source archive.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "version" {
  description = "Lambda Layer version."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Lambda Layer with version."
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
output "compatible_runtimes" {
  description = "(Optional) List of Runtimes this layer is compatible with. Up to 5 runtimes can be specified."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_runtimes
}
output "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_arn
}
output "layer_name" {
  description = "(Required) Unique name for your Lambda Layer"
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_name
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_job_arn
}
output "source_code_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the package file specified with either filename or s3_key. The usual way to set this is $${filebase64sha256(\"file.zip\")} (Terraform 0.11.12 or later) or $${base64sha256(file(\"file.zip\"))} (Terraform 0.11.11 and earlier), where \"file.zip\" is the local filename of the lambda layer source archive.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_hash
}
output "version" {
  description = "Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.version
}
output "arn" {
  description = "ARN of the Lambda Layer with version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.arn
}
output "created_date" {
  description = "Date this resource was created."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.created_date
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_size
}
output "compatible_architectures" {
  description = "(Optional) List of Architectures this layer is compatible with. Currently x86_64 and arm64 can be specified."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.compatible_architectures
}
output "filename" {
  description = " (Optional) Path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.filename
}
output "license_info" {
  description = "(Optional) License info for your Lambda Layer. See License Info."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.license_info
}
output "s3_bucket" {
  description = "(Optional) S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.s3_bucket
}
output "signing_profile_version_arn" {
  description = "ARN for a signing profile version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_profile_version_arn
}
output "skip_destroy" {
  description = "(Optional) Whether to retain the old version of a previously deployed Lambda Layer. Default is false. When this is not set to true, changing any of compatible_architectures, compatible_runtimes, description, filename, layer_name, license_info, s3_bucket, s3_key, s3_object_version, or source_code_hash forces deletion of the existing layer version and creation of a new layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.skip_destroy
}
output "description" {
  description = "(Optional) Description of what your Lambda Layer does."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.description
}
output "s3_object_version" {
  description = "(Optional) Object version containing the function's deployment package. Conflicts with filename."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.s3_object_version
}
output "s3_key" {
  description = "(Optional) S3 key of an object containing the function's deployment package. Conflicts with filename."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.s3_key
}
output "signing_profile_version_arn" {
  description = "ARN for a signing profile version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_profile_version_arn
}
output "source_code_size" {
  description = "Size in bytes of the function .zip file."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.source_code_size
}
output "version" {
  description = "Lambda Layer version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.version
}
output "arn" {
  description = "ARN of the Lambda Layer with version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.arn
}
output "created_date" {
  description = "Date this resource was created."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.created_date
}
output "layer_arn" {
  description = "ARN of the Lambda Layer without version."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.layer_arn
}
output "signing_job_arn" {
  description = "ARN of a signing job."
  value       = aws_lambda_layer_version.aws_lambda_layer_version.signing_job_arn
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
      "kind/name"                   = "aws_lambda_layer_version"
      "kind/version"                = "v0.1.0"
    }
  }
}
