resource "aws_cloudformation_type" "aws_cloudformation_type" {
  log_group_name         = var.log_group_name
  logging_config         = var.logging_config
  source_url             = var.source_url
  type_name              = var.type_name
  execution_role_arn     = var.execution_role_arn
  log_role_arn           = var.log_role_arn
  provisioning_type      = var.provisioning_type
  schema                 = var.schema
  default_version_id     = var.default_version_id
  documentation_url      = var.documentation_url
  schema_handler_package = var.schema_handler_package
  type                   = var.type
  type_arn               = var.type_arn
  description            = var.description
  deprecated_status      = var.deprecated_status
  is_default_version     = var.is_default_version
  version_id             = var.version_id
  arn                    = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "logging_config" {
  description = "(Optional) Configuration block containing logging configuration."
  type        = string
  default     = ""
}
variable "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  type        = string
}
variable "type_name" {
  description = "(Optional) CloudFormation Type name. For example, ExampleCompany::ExampleService::ExampleResource.logging_configlogging_config configuration block:"
  type        = string
  default     = ""
}
variable "execution_role_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials."
  type        = string
  default     = ""
}
variable "log_group_name" {
  description = "(Required) Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  type        = string
}
variable "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  type        = string
}
variable "schema" {
  description = "JSON document of the CloudFormation Type schema."
  type        = string
}
variable "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  type        = string
}
variable "log_role_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "schema_handler_package" {
  description = "(Required) URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with s3:// or https://. For example, s3://example-bucket/example-object."
  type        = string
}
variable "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE or MODULE."
  type        = string
  default     = ""
}
variable "type_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also arn."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the version."
  type        = string
}
variable "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  type        = string
}
variable "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  type        = string
}
variable "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version."
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also type_arn."
  type        = string
  default     = ""
}
variable "deprecated_status" {
  description = "Deprecation status of the version."
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
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also type_arn."
  value       = aws_cloudformation_type.aws_cloudformation_type.arn
}
output "deprecated_status" {
  description = "Deprecation status of the version."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version."
  value       = aws_cloudformation_type.aws_cloudformation_type.version_id
}
output "type_name" {
  description = "(Optional) CloudFormation Type name. For example, ExampleCompany::ExampleService::ExampleResource.logging_configlogging_config configuration block:"
  value       = aws_cloudformation_type.aws_cloudformation_type.type_name
}
output "execution_role_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the IAM Role for CloudFormation to assume when invoking the extension. If your extension calls AWS APIs in any of its handlers, you must create an IAM execution role that includes the necessary permissions to call those AWS APIs, and provision that execution role in your account. When CloudFormation needs to invoke the extension handler, CloudFormation assumes this execution role to create a temporary session token, which it then passes to the extension handler, thereby supplying your extension with the appropriate credentials."
  value       = aws_cloudformation_type.aws_cloudformation_type.execution_role_arn
}
output "log_group_name" {
  description = "(Required) Name of the CloudWatch Log Group where CloudFormation sends error logging information when invoking the type's handlers."
  value       = aws_cloudformation_type.aws_cloudformation_type.log_group_name
}
output "logging_config" {
  description = "(Optional) Configuration block containing logging configuration."
  value       = aws_cloudformation_type.aws_cloudformation_type.logging_config
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "log_role_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the IAM Role CloudFormation assumes when sending error logging information to CloudWatch Logs.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudformation_type.aws_cloudformation_type.log_role_arn
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "type_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also arn."
  value       = aws_cloudformation_type.aws_cloudformation_type.type_arn
}
output "description" {
  description = "Description of the version."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
}
output "schema_handler_package" {
  description = "(Required) URL to the S3 bucket containing the extension project package that contains the necessary files for the extension you want to register. Must begin with s3:// or https://. For example, s3://example-bucket/example-object."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema_handler_package
}
output "type" {
  description = "(Optional) CloudFormation Registry Type. For example, RESOURCE or MODULE."
  value       = aws_cloudformation_type.aws_cloudformation_type.type
}
output "version_id" {
  description = "(Optional) Identifier of the CloudFormation Type version."
  value       = aws_cloudformation_type.aws_cloudformation_type.version_id
}
output "visibility" {
  description = "Scope of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.visibility
}
output "arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type version. See also type_arn."
  value       = aws_cloudformation_type.aws_cloudformation_type.arn
}
output "default_version_id" {
  description = "Identifier of the CloudFormation Type default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.default_version_id
}
output "type_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the CloudFormation Type. See also arn."
  value       = aws_cloudformation_type.aws_cloudformation_type.type_arn
}
output "is_default_version" {
  description = "Whether the CloudFormation Type version is the default version."
  value       = aws_cloudformation_type.aws_cloudformation_type.is_default_version
}
output "provisioning_type" {
  description = "Provisioning behavior of the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.provisioning_type
}
output "schema" {
  description = "JSON document of the CloudFormation Type schema."
  value       = aws_cloudformation_type.aws_cloudformation_type.schema
}
output "source_url" {
  description = "URL of the source code for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.source_url
}
output "deprecated_status" {
  description = "Deprecation status of the version."
  value       = aws_cloudformation_type.aws_cloudformation_type.deprecated_status
}
output "description" {
  description = "Description of the version."
  value       = aws_cloudformation_type.aws_cloudformation_type.description
}
output "documentation_url" {
  description = "URL of the documentation for the CloudFormation Type."
  value       = aws_cloudformation_type.aws_cloudformation_type.documentation_url
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
      "kind/name"                   = "aws_cloudformation_type"
      "kind/version"                = "v0.1.0"
    }
  }
}
