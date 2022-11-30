resource "aws_signer_signing_job" "aws_signer_signing_job" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
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
output "completed_at" {
  description = "Date and time in RFC3339 format that the signing job was completed."
  value       = aws_signer_signing_job.aws_signer_signing_job.completed_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date and time in RFC3339 format that the signing job was created."
  value       = aws_signer_signing_job.aws_signer_signing_job.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_id" {
  description = "The ID of the signing job on output."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signature_expires_at" {
  description = "The time when the signature of a signing job expires."
  value       = aws_signer_signing_job.aws_signer_signing_job.signature_expires_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requested_by" {
  description = "The IAM principal that requested the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.requested_by
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "revocation_record" {
  description = "A revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature."
  value       = aws_signer_signing_job.aws_signer_signing_job.revocation_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "signed_object" {
  description = "Name of the S3 bucket where the signed code image is saved by code signing."
  value       = aws_signer_signing_job.aws_signer_signing_job.signed_object
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_reason" {
  description = "String value that contains the status reason."
  value       = aws_signer_signing_job.aws_signer_signing_job.status_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_invoker" {
  description = "The IAM entity that initiated the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_invoker
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "job_owner" {
  description = "The AWS account ID of the job owner."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_id" {
  description = "The platform to which your signed code image will be distributed."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "profile_version" {
  description = "The version of the signing profile used to initiate the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.profile_version
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
      "kind/name"                   = "aws_signer_signing_job"
      "kind/version"                = "v0.1.0"
    }
  }
}
