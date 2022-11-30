resource "aws_transcribe_vocabulary" "aws_transcribe_vocabulary" {
  create              = var.create
  download_uri        = var.download_uri
  id                  = var.id
  vocabulary_file_uri = var.vocabulary_file_uri
  tags                = var.tags
  update              = var.update
  vocabulary_name     = var.vocabulary_name
  arn                 = var.arn
  delete              = var.delete
  language_code       = var.language_code
  phrases             = var.phrases
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vocabulary_file_uri" {
  description = "(Optional) The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth phrases."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  type        = string
}
variable "id" {
  description = "Name of the Vocabulary."
  type        = string
}
variable "phrases" {
  description = "(Optional) - A list of terms to include in the vocabulary. Conflicts with vocabulary_file_uri"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the Vocabulary. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "vocabulary_name" {
  description = "(Required) The name of the Vocabulary."
  type        = string
}
variable "arn" {
  description = "ARN of the Vocabulary."
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "language_code" {
  description = "(Required) The language code you selected for your vocabulary."
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
output "update" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vocabulary_name" {
  description = "(Required) The name of the Vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.vocabulary_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "language_code" {
  description = "(Required) The language code you selected for your vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.language_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phrases" {
  description = "(Optional) - A list of terms to include in the vocabulary. Conflicts with vocabulary_file_uri"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.phrases
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the Vocabulary. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.download_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the Vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vocabulary_file_uri" {
  description = "(Optional) The Amazon S3 location (URI) of the text file that contains your custom vocabulary. Conflicts wth phrases."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.vocabulary_file_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.download_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name of the Vocabulary."
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_transcribe_vocabulary.aws_transcribe_vocabulary.update
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
      "kind/name"                   = "aws_transcribe_vocabulary"
      "kind/version"                = "v0.1.0"
    }
  }
}
