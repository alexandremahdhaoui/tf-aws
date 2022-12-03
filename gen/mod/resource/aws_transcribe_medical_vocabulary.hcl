resource "aws_transcribe_medical_vocabulary" "aws_transcribe_medical_vocabulary" {
  language_code       = var.language_code
  tags                = var.tags
  vocabulary_file_uri = var.vocabulary_file_uri
  vocabulary_name     = var.vocabulary_name
  arn                 = var.arn
  create              = var.create
  download_uri        = var.download_uri
  id                  = var.id
  delete              = var.delete
  update              = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Name of the MedicalVocabulary."
  type        = string
  default     = ""
}
variable "language_code" {
  description = "(Required) The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the MedicalVocabulary. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "vocabulary_file_uri" {
  description = "(Required) The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary."
  type        = string
}
variable "vocabulary_name" {
  description = "(Required) The name of the Medical Vocabulary."
  type        = string
}
variable "arn" {
  description = "ARN of the MedicalVocabulary."
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
output "delete" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.delete
}
output "update" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.update
}
output "tags" {
  description = "(Optional) A map of tags to assign to the MedicalVocabulary. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.tags
}
output "vocabulary_file_uri" {
  description = "(Required) The Amazon S3 location (URI) of the text file that contains your custom medical vocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.vocabulary_file_uri
}
output "vocabulary_name" {
  description = "(Required) The name of the Medical Vocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.vocabulary_name
}
output "arn" {
  description = "ARN of the MedicalVocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.create
}
output "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.download_uri
}
output "id" {
  description = "Name of the MedicalVocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.id
}
output "language_code" {
  description = "(Required) The language code you selected for your medical vocabulary. US English (en-US) is the only language supported with Amazon Transcribe Medical."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.language_code
}
output "id" {
  description = "Name of the MedicalVocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.id
}
output "update" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.update
}
output "arn" {
  description = "ARN of the MedicalVocabulary."
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.delete
}
output "download_uri" {
  description = "Generated download URI.TimeoutsConfiguration options:"
  value       = aws_transcribe_medical_vocabulary.aws_transcribe_medical_vocabulary.download_uri
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
      "kind/name"                   = "aws_transcribe_medical_vocabulary"
      "kind/version"                = "v0.1.0"
    }
  }
}
