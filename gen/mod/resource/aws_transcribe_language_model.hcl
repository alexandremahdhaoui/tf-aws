resource "aws_transcribe_language_model" "aws_transcribe_language_model" {
  data_access_role_arn = var.data_access_role_arn
  model_name           = var.model_name
  s3_uri               = var.s3_uri
  tags                 = var.tags
  tuning_data_s3_uri   = var.tuning_data_s3_uri
  arn                  = var.arn
  base_model_name      = var.base_model_name
  input_data_config    = var.input_data_config
  language_code        = var.language_code
  create               = var.create
  id                   = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "data_access_role_arn" {
  description = "(Required) IAM role with access to S3 bucket."
  type        = string
}
variable "model_name" {
  description = "(Required) The model name.Input Data Config"
  type        = string
}
variable "s3_uri" {
  description = "(Required) S3 URI where training data is located."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the LanguageModel. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tuning_data_s3_uri" {
  description = "(Optional) S3 URI where tuning data is located."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the LanguageModel.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "base_model_name" {
  description = "(Required) Name of reference base model."
  type        = string
}
variable "input_data_config" {
  description = "(Required) The input data config for the LanguageModel. See Input Data Config for more details."
  type        = string
}
variable "language_code" {
  description = "(Required) The language code you selected for your language model. Refer to the supported languages page for accepted codes."
  type        = string
}
variable "create" {
  description = "(Default 600m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "LanguageModel name."
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
output "input_data_config" {
  description = "(Required) The input data config for the LanguageModel. See Input Data Config for more details."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.input_data_config
}
output "language_code" {
  description = "(Required) The language code you selected for your language model. Refer to the supported languages page for accepted codes."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.language_code
}
output "create" {
  description = "(Default 600m)"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.create
}
output "id" {
  description = "LanguageModel name."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.id
}
output "data_access_role_arn" {
  description = "(Required) IAM role with access to S3 bucket."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.data_access_role_arn
}
output "model_name" {
  description = "(Required) The model name.Input Data Config"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.model_name
}
output "s3_uri" {
  description = "(Required) S3 URI where training data is located."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.s3_uri
}
output "tags" {
  description = "(Optional) A map of tags to assign to the LanguageModel. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.tags
}
output "tuning_data_s3_uri" {
  description = "(Optional) S3 URI where tuning data is located."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.tuning_data_s3_uri
}
output "arn" {
  description = "ARN of the LanguageModel.TimeoutsConfiguration options:"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.arn
}
output "base_model_name" {
  description = "(Required) Name of reference base model."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.base_model_name
}
output "arn" {
  description = "ARN of the LanguageModel.TimeoutsConfiguration options:"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.arn
}
output "create" {
  description = "(Default 600m)"
  value       = aws_transcribe_language_model.aws_transcribe_language_model.create
}
output "id" {
  description = "LanguageModel name."
  value       = aws_transcribe_language_model.aws_transcribe_language_model.id
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
      "kind/name"                   = "aws_transcribe_language_model"
      "kind/version"                = "v0.1.0"
    }
  }
}
