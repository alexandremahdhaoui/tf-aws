resource "aws_ssm_association" "aws_ssm_association" {
  values                           = var.values
  association_name                 = var.association_name
  automation_target_parameter_name = var.automation_target_parameter_name
  compliance_severity              = var.compliance_severity
  document_version                 = var.document_version
  instance_id                      = var.instance_id
  max_concurrency                  = var.max_concurrency
  s3_bucket_name                   = var.s3_bucket_name
  parameters                       = var.parameters
  s3_region                        = var.s3_region
  targets                          = var.targets
  max_errors                       = var.max_errors
  name                             = var.name
  s3_key_prefix                    = var.s3_key_prefix
  wait_for_success_timeout_seconds = var.wait_for_success_timeout_seconds
  apply_only_at_cron_interval      = var.apply_only_at_cron_interval
  arn                              = var.arn
  association_id                   = var.association_id
  key                              = var.key
  output_location                  = var.output_location
  schedule_expression              = var.schedule_expression
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "parameters" {
  description = "(Optional) A block of arbitrary string parameters to pass to the SSM document."
  type        = string
  default     = ""
}
variable "s3_region" {
  description = "(Optional) The S3 bucket region.Targets specify what instance IDs or tags to apply the document to and has these keys:"
  type        = string
  default     = ""
}
variable "targets" {
  description = "(Optional) A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets."
  type        = string
  default     = ""
}
variable "max_errors" {
  description = "(Optional) The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%."
  type        = string
  default     = ""
}
variable "name" {
  description = "The name of the SSM document to apply."
  type        = string
}
variable "s3_key_prefix" {
  description = "(Optional) The S3 bucket prefix. Results stored in the root if not configured."
  type        = string
  default     = ""
}
variable "wait_for_success_timeout_seconds" {
  description = "(Optional) The number of seconds to wait for the association status to be Success. If Success status is not reached within the given time, create opration will fail.Output Location (output_location) is an S3 bucket where you want to store the results of this association:"
  type        = string
  default     = ""
}
variable "output_location" {
  description = "(Optional) An output location block. Output Location is documented below."
  type        = string
  default     = ""
}
variable "schedule_expression" {
  description = "(Optional) A cron or rate expression that specifies when the association runs."
  type        = string
  default     = ""
}
variable "apply_only_at_cron_interval" {
  description = "(Optional) By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: false."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the SSM association"
  type        = string
}
variable "association_id" {
  description = "The ID of the SSM association."
  type        = string
}
variable "key" {
  description = "(Required) Either InstanceIds or tag:Tag Name to specify an EC2 tag."
  type        = string
}
variable "instance_id" {
  description = "The instance id that the SSM document was applied to."
  type        = string
}
variable "max_concurrency" {
  description = "(Optional) The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%."
  type        = string
  default     = ""
}
variable "s3_bucket_name" {
  description = "(Required) The S3 bucket name."
  type        = string
}
variable "values" {
  description = "(Required) A list of instance IDs or tag values. AWS currently limits this list size to one value.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "association_name" {
  description = "(Optional) The descriptive name for the association."
  type        = string
  default     = ""
}
variable "automation_target_parameter_name" {
  description = "(Optional) Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls. This should be set to the SSM document parameter that will define how your automation will branch out."
  type        = string
  default     = ""
}
variable "compliance_severity" {
  description = "(Optional) The compliance severity for the association. Can be one of the following: UNSPECIFIED, LOW, MEDIUM, HIGH or CRITICAL"
  type        = string
  default     = ""
}
variable "document_version" {
  description = "(Optional) The document version you want to associate with the target(s). Can be a specific version or the default version."
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
output "s3_bucket_name" {
  description = "(Required) The S3 bucket name."
  value       = aws_ssm_association.aws_ssm_association.s3_bucket_name
}
output "values" {
  description = "(Required) A list of instance IDs or tag values. AWS currently limits this list size to one value.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_association.aws_ssm_association.values
}
output "association_name" {
  description = "(Optional) The descriptive name for the association."
  value       = aws_ssm_association.aws_ssm_association.association_name
}
output "automation_target_parameter_name" {
  description = "(Optional) Specify the target for the association. This target is required for associations that use an Automation document and target resources by using rate controls. This should be set to the SSM document parameter that will define how your automation will branch out."
  value       = aws_ssm_association.aws_ssm_association.automation_target_parameter_name
}
output "compliance_severity" {
  description = "(Optional) The compliance severity for the association. Can be one of the following: UNSPECIFIED, LOW, MEDIUM, HIGH or CRITICAL"
  value       = aws_ssm_association.aws_ssm_association.compliance_severity
}
output "document_version" {
  description = "(Optional) The document version you want to associate with the target(s). Can be a specific version or the default version."
  value       = aws_ssm_association.aws_ssm_association.document_version
}
output "instance_id" {
  description = "The instance id that the SSM document was applied to."
  value       = aws_ssm_association.aws_ssm_association.instance_id
}
output "max_concurrency" {
  description = "(Optional) The maximum number of targets allowed to run the association at the same time. You can specify a number, for example 10, or a percentage of the target set, for example 10%."
  value       = aws_ssm_association.aws_ssm_association.max_concurrency
}
output "parameters" {
  description = "(Optional) A block of arbitrary string parameters to pass to the SSM document."
  value       = aws_ssm_association.aws_ssm_association.parameters
}
output "s3_region" {
  description = "(Optional) The S3 bucket region.Targets specify what instance IDs or tags to apply the document to and has these keys:"
  value       = aws_ssm_association.aws_ssm_association.s3_region
}
output "targets" {
  description = "(Optional) A block containing the targets of the SSM association. Targets are documented below. AWS currently supports a maximum of 5 targets."
  value       = aws_ssm_association.aws_ssm_association.targets
}
output "max_errors" {
  description = "(Optional) The number of errors that are allowed before the system stops sending requests to run the association on additional targets. You can specify a number, for example 10, or a percentage of the target set, for example 10%."
  value       = aws_ssm_association.aws_ssm_association.max_errors
}
output "name" {
  description = "The name of the SSM document to apply."
  value       = aws_ssm_association.aws_ssm_association.name
}
output "s3_key_prefix" {
  description = "(Optional) The S3 bucket prefix. Results stored in the root if not configured."
  value       = aws_ssm_association.aws_ssm_association.s3_key_prefix
}
output "wait_for_success_timeout_seconds" {
  description = "(Optional) The number of seconds to wait for the association status to be Success. If Success status is not reached within the given time, create opration will fail.Output Location (output_location) is an S3 bucket where you want to store the results of this association:"
  value       = aws_ssm_association.aws_ssm_association.wait_for_success_timeout_seconds
}
output "apply_only_at_cron_interval" {
  description = "(Optional) By default, when you create a new or update associations, the system runs it immediately and then according to the schedule you specified. Enable this option if you do not want an association to run immediately after you create or update it. This parameter is not supported for rate expressions. Default: false."
  value       = aws_ssm_association.aws_ssm_association.apply_only_at_cron_interval
}
output "arn" {
  description = "The ARN of the SSM association"
  value       = aws_ssm_association.aws_ssm_association.arn
}
output "association_id" {
  description = "The ID of the SSM association."
  value       = aws_ssm_association.aws_ssm_association.association_id
}
output "key" {
  description = "(Required) Either InstanceIds or tag:Tag Name to specify an EC2 tag."
  value       = aws_ssm_association.aws_ssm_association.key
}
output "output_location" {
  description = "(Optional) An output location block. Output Location is documented below."
  value       = aws_ssm_association.aws_ssm_association.output_location
}
output "schedule_expression" {
  description = "(Optional) A cron or rate expression that specifies when the association runs."
  value       = aws_ssm_association.aws_ssm_association.schedule_expression
}
output "association_id" {
  description = "The ID of the SSM association."
  value       = aws_ssm_association.aws_ssm_association.association_id
}
output "instance_id" {
  description = "The instance id that the SSM document was applied to."
  value       = aws_ssm_association.aws_ssm_association.instance_id
}
output "name" {
  description = "The name of the SSM document to apply."
  value       = aws_ssm_association.aws_ssm_association.name
}
output "parameters" {
  description = "Additional parameters passed to the SSM document."
  value       = aws_ssm_association.aws_ssm_association.parameters
}
output "arn" {
  description = "The ARN of the SSM association"
  value       = aws_ssm_association.aws_ssm_association.arn
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
      "kind/name"                   = "aws_ssm_association"
      "kind/version"                = "v0.1.0"
    }
  }
}
