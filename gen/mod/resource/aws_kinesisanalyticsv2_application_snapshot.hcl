resource "aws_kinesisanalyticsv2_application_snapshot" "aws_kinesisanalyticsv2_application_snapshot" {
  id                          = var.id
  snapshot_creation_timestamp = var.snapshot_creation_timestamp
  snapshot_name               = var.snapshot_name
  application_name            = var.application_name
  application_version_id      = var.application_version_id
  create                      = var.create
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "snapshot_name" {
  description = "(Required) The name of the application snapshot.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "application_name" {
  description = "(Required) The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created."
  type        = string
}
variable "application_version_id" {
  description = "The current application version ID when the snapshot was created."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "id" {
  description = "The application snapshot identifier."
  type        = string
}
variable "snapshot_creation_timestamp" {
  description = "The timestamp of the application snapshot.TimeoutsConfiguration options:"
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
output "snapshot_name" {
  description = "(Required) The name of the application snapshot.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.snapshot_name
}
output "application_name" {
  description = "(Required) The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created."
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.application_name
}
output "application_version_id" {
  description = "The current application version ID when the snapshot was created."
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.application_version_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.create
}
output "id" {
  description = "The application snapshot identifier."
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.id
}
output "snapshot_creation_timestamp" {
  description = "The timestamp of the application snapshot.TimeoutsConfiguration options:"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.snapshot_creation_timestamp
}
output "application_version_id" {
  description = "The current application version ID when the snapshot was created."
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.application_version_id
}
output "create" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.delete
}
output "id" {
  description = "The application snapshot identifier."
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.id
}
output "snapshot_creation_timestamp" {
  description = "The timestamp of the application snapshot.TimeoutsConfiguration options:"
  value       = aws_kinesisanalyticsv2_application_snapshot.aws_kinesisanalyticsv2_application_snapshot.snapshot_creation_timestamp
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
      "kind/name"                   = "aws_kinesisanalyticsv2_application_snapshot"
      "kind/version"                = "v0.1.0"
    }
  }
}
