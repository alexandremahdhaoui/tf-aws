resource "aws_connect_vocabulary" "aws_connect_vocabulary" {
  state              = var.state
  tags_all           = var.tags_all
  arn                = var.arn
  create             = var.create
  id                 = var.id
  language_code      = var.language_code
  last_modified_time = var.last_modified_time
  name               = var.name
  tags               = var.tags
  content            = var.content
  delete             = var.delete
  failure_reason     = var.failure_reason
  instance_id        = var.instance_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the vocabulary."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the vocabulary\nseparated by a colon (:)."
  type        = string
}
variable "language_code" {
  description = "(Required) The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see What is Amazon Transcribe?. Valid Values are ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN."
  type        = string
}
variable "state" {
  description = "The current state of the custom vocabulary. Valid values are CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "content" {
  description = "(Required) The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see Create a custom vocabulary using a table. Minimum length of 1. Maximum length of 60000."
  type        = string
}
variable "delete" {
  description = "(Default 100m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "failure_reason" {
  description = "The reason why the custom vocabulary was not created."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "last_modified_time" {
  description = "The timestamp when the custom vocabulary was last modified."
  type        = string
}
variable "name" {
  description = "(Required) A unique name of the custom vocabulary. Must not be more than 140 characters."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the vocabulary. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.TimeoutsConfiguration options:"
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
output "failure_reason" {
  description = "The reason why the custom vocabulary was not created."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.failure_reason
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.instance_id
}
output "last_modified_time" {
  description = "The timestamp when the custom vocabulary was last modified."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.last_modified_time
}
output "name" {
  description = "(Required) A unique name of the custom vocabulary. Must not be more than 140 characters."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.name
}
output "tags" {
  description = "(Optional) Tags to apply to the vocabulary. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.TimeoutsConfiguration options:"
  value       = aws_connect_vocabulary.aws_connect_vocabulary.tags
}
output "content" {
  description = "(Required) The content of the custom vocabulary in plain-text format with a table of values. Each row in the table represents a word or a phrase, described with Phrase, IPA, SoundsLike, and DisplayAs fields. Separate the fields with TAB characters. For more information, see Create a custom vocabulary using a table. Minimum length of 1. Maximum length of 60000."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.content
}
output "delete" {
  description = "(Default 100m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_vocabulary.aws_connect_vocabulary.delete
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the vocabulary\nseparated by a colon (:)."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.id
}
output "language_code" {
  description = "(Required) The language code of the vocabulary entries. For a list of languages and their corresponding language codes, see What is Amazon Transcribe?. Valid Values are ar-AE, de-CH, de-DE, en-AB, en-AU, en-GB, en-IE, en-IN, en-US, en-WL, es-ES, es-US, fr-CA, fr-FR, hi-IN, it-IT, ja-JP, ko-KR, pt-BR, pt-PT, zh-CN."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.language_code
}
output "state" {
  description = "The current state of the custom vocabulary. Valid values are CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the vocabulary."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_connect_vocabulary.aws_connect_vocabulary.create
}
output "failure_reason" {
  description = "The reason why the custom vocabulary was not created."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.failure_reason
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the vocabulary\nseparated by a colon (:)."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.id
}
output "last_modified_time" {
  description = "The timestamp when the custom vocabulary was last modified."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.last_modified_time
}
output "state" {
  description = "The current state of the custom vocabulary. Valid values are CREATION_IN_PROGRESS, ACTIVE, CREATION_FAILED, DELETE_IN_PROGRESS."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.tags_all
}
output "vocabulary_id" {
  description = "The identifier of the custom vocabulary."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.vocabulary_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the vocabulary."
  value       = aws_connect_vocabulary.aws_connect_vocabulary.arn
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
      "kind/name"                   = "aws_connect_vocabulary"
      "kind/version"                = "v0.1.0"
    }
  }
}
