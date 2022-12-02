resource "aws_transcribe_vocabulary_filter" "aws_transcribe_vocabulary_filter" {
  download_uri               = var.download_uri
  id                         = var.id
  language_code              = var.language_code
  tags                       = var.tags
  vocabulary_filter_file_uri = var.vocabulary_filter_file_uri
  vocabulary_filter_name     = var.vocabulary_filter_name
  words                      = var.words
  arn                        = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "download_uri" {
  description = "Generated download URI."
  type        = string
  default     = ""
}
variable "id" {
  description = "VocabularyFilter name."
  type        = string
  default     = ""
}
variable "language_code" {
  description = "(Required) The language code you selected for your vocabulary filter. Refer to the supported languages page for accepted codes."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the VocabularyFilter. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "vocabulary_filter_file_uri" {
  description = "(Required) The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with words."
  type        = string
}
variable "vocabulary_filter_name" {
  description = "(Required) The name of the VocabularyFilter."
  type        = string
}
variable "words" {
  description = "(Required) - A list of terms to include in the vocabulary. Conflicts with vocabulary_file_uri"
  type        = string
}
variable "arn" {
  description = "ARN of the VocabularyFilter."
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
output "words" {
  description = "(Required) - A list of terms to include in the vocabulary. Conflicts with vocabulary_file_uri"
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.words
}
output "arn" {
  description = "ARN of the VocabularyFilter."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.arn
}
output "download_uri" {
  description = "Generated download URI."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.download_uri
}
output "id" {
  description = "VocabularyFilter name."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.id
}
output "language_code" {
  description = "(Required) The language code you selected for your vocabulary filter. Refer to the supported languages page for accepted codes."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.language_code
}
output "tags" {
  description = "(Optional) A map of tags to assign to the VocabularyFilter. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.tags
}
output "vocabulary_filter_file_uri" {
  description = "(Required) The Amazon S3 location (URI) of the text file that contains your custom VocabularyFilter. Conflicts with words."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.vocabulary_filter_file_uri
}
output "vocabulary_filter_name" {
  description = "(Required) The name of the VocabularyFilter."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.vocabulary_filter_name
}
output "arn" {
  description = "ARN of the VocabularyFilter."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.arn
}
output "download_uri" {
  description = "Generated download URI."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.download_uri
}
output "id" {
  description = "VocabularyFilter name."
  value       = aws_transcribe_vocabulary_filter.aws_transcribe_vocabulary_filter.id
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
      "kind/name"                   = "aws_transcribe_vocabulary_filter"
      "kind/version"                = "v0.1.0"
    }
  }
}
