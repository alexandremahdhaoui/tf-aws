datasource "aws_signer_signing_job" "aws_signer_signing_job" {
  profile_version       = var.profile_version
  revocation_record     = var.revocation_record
  source                = var.source
  completed_at          = var.completed_at
  created_at            = var.created_at
  platform_display_name = var.platform_display_name
  signature_expires_at  = var.signature_expires_at
  job_id                = var.job_id
  job_owner             = var.job_owner
  platform_id           = var.platform_id
  requested_by          = var.requested_by
  job_invoker           = var.job_invoker
  profile_name          = var.profile_name
  signed_object         = var.signed_object
  status                = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "signed_object" {
  description = "Name of the S3 bucket where the signed code image is saved by code signing."
  type        = string
}
variable "status" {
  description = "Status of the signing job."
  type        = string
}
variable "job_invoker" {
  description = "IAM entity that initiated the signing job."
  type        = string
}
variable "profile_name" {
  description = "Name of the profile that initiated the signing operation."
  type        = string
}
variable "source" {
  description = "Object that contains the name of your S3 bucket or your raw code."
  type        = string
}
variable "profile_version" {
  description = "Version of the signing profile used to initiate the signing job."
  type        = string
}
variable "revocation_record" {
  description = "Revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature."
  type        = string
}
variable "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing job."
  type        = string
}
variable "signature_expires_at" {
  description = "The time when the signature of a signing job expires."
  type        = string
}
variable "completed_at" {
  description = "Date and time in RFC3339 format that the signing job was completed."
  type        = string
}
variable "created_at" {
  description = "Date and time in RFC3339 format that the signing job was created."
  type        = string
}
variable "platform_id" {
  description = "Platform to which your signed code image will be distributed."
  type        = string
}
variable "requested_by" {
  description = "IAM principal that requested the signing job."
  type        = string
}
variable "job_id" {
  description = "(Required) ID of the signing job on output.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "job_owner" {
  description = "AWS account ID of the job owner."
  type        = string
}
output "job_invoker" {
  description = "IAM entity that initiated the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_invoker
}
output "profile_name" {
  description = "Name of the profile that initiated the signing operation."
  value       = aws_signer_signing_job.aws_signer_signing_job.profile_name
}
output "signed_object" {
  description = "Name of the S3 bucket where the signed code image is saved by code signing."
  value       = aws_signer_signing_job.aws_signer_signing_job.signed_object
}
output "status" {
  description = "Status of the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.status
}
output "profile_version" {
  description = "Version of the signing profile used to initiate the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.profile_version
}
output "revocation_record" {
  description = "Revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature."
  value       = aws_signer_signing_job.aws_signer_signing_job.revocation_record
}
output "source" {
  description = "Object that contains the name of your S3 bucket or your raw code."
  value       = aws_signer_signing_job.aws_signer_signing_job.source
}
output "completed_at" {
  description = "Date and time in RFC3339 format that the signing job was completed."
  value       = aws_signer_signing_job.aws_signer_signing_job.completed_at
}
output "created_at" {
  description = "Date and time in RFC3339 format that the signing job was created."
  value       = aws_signer_signing_job.aws_signer_signing_job.created_at
}
output "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_display_name
}
output "signature_expires_at" {
  description = "The time when the signature of a signing job expires."
  value       = aws_signer_signing_job.aws_signer_signing_job.signature_expires_at
}
output "job_id" {
  description = "(Required) ID of the signing job on output.In addition to all arguments above, the following attributes are exported:"
  value       = aws_signer_signing_job.aws_signer_signing_job.job_id
}
output "job_owner" {
  description = "AWS account ID of the job owner."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_owner
}
output "platform_id" {
  description = "Platform to which your signed code image will be distributed."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_id
}
output "requested_by" {
  description = "IAM principal that requested the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.requested_by
}
output "created_at" {
  description = "Date and time in RFC3339 format that the signing job was created."
  value       = aws_signer_signing_job.aws_signer_signing_job.created_at
}
output "job_owner" {
  description = "AWS account ID of the job owner."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_owner
}
output "revocation_record" {
  description = "Revocation record if the signature generated by the signing job has been revoked. Contains a timestamp and the ID of the IAM entity that revoked the signature."
  value       = aws_signer_signing_job.aws_signer_signing_job.revocation_record
}
output "signed_object" {
  description = "Name of the S3 bucket where the signed code image is saved by code signing."
  value       = aws_signer_signing_job.aws_signer_signing_job.signed_object
}
output "source" {
  description = "Object that contains the name of your S3 bucket or your raw code."
  value       = aws_signer_signing_job.aws_signer_signing_job.source
}
output "status" {
  description = "Status of the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.status
}
output "platform_id" {
  description = "Platform to which your signed code image will be distributed."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_id
}
output "requested_by" {
  description = "IAM principal that requested the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.requested_by
}
output "completed_at" {
  description = "Date and time in RFC3339 format that the signing job was completed."
  value       = aws_signer_signing_job.aws_signer_signing_job.completed_at
}
output "job_invoker" {
  description = "IAM entity that initiated the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.job_invoker
}
output "platform_display_name" {
  description = "A human-readable name for the signing platform associated with the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.platform_display_name
}
output "profile_name" {
  description = "Name of the profile that initiated the signing operation."
  value       = aws_signer_signing_job.aws_signer_signing_job.profile_name
}
output "profile_version" {
  description = "Version of the signing profile used to initiate the signing job."
  value       = aws_signer_signing_job.aws_signer_signing_job.profile_version
}
output "signature_expires_at" {
  description = "The time when the signature of a signing job expires."
  value       = aws_signer_signing_job.aws_signer_signing_job.signature_expires_at
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
