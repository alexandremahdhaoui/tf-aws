resource "aws_ebs_volume" "aws_ebs_volume" {
  encrypted            = var.encrypted
  size                 = var.size
  snapshot_id          = var.snapshot_id
  arn                  = var.arn
  final_snapshot       = var.final_snapshot
  throughput           = var.throughput
  iops                 = var.iops
  kms_key_id           = var.kms_key_id
  type                 = var.type
  tags_all             = var.tags_all
  update               = var.update
  availability_zone    = var.availability_zone
  create               = var.create
  id                   = var.id
  multi_attach_enabled = var.multi_attach_enabled
  outpost_arn          = var.outpost_arn
  tags                 = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encrypted" {
  description = "(Optional) If true, the disk will be encrypted."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Optional) The size of the drive in GiBs."
  type        = string
  default     = ""
}
variable "snapshot_id" {
  description = " (Optional) A snapshot to base the EBS volume off of."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  type        = string
}
variable "final_snapshot" {
  description = "(Optional) If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false"
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) The throughput that the volume supports, in MiB/s. Only valid for type of gp3.~> strongNOTE: When changing the size, iops or type of an instance, there are considerations to be aware of.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) The amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true. Note: Terraform must be running with credentials which have the GenerateDataKeyWithoutPlaintext permission on the specified KMS key as required by the EBS KMS CMK volume provisioning process to prevent a volume from being created and almost immediately deleted."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2)."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "availability_zone" {
  description = "(Required) The AZ where the EBS volume will exist."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "id" {
  description = "The volume ID (e.g., vol-59fcb34e)."
  type        = string
}
variable "multi_attach_enabled" {
  description = "(Optional) Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on io1 and io2 volumes."
  type        = string
  default     = ""
}
variable "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "id" {
  description = "The volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "multi_attach_enabled" {
  description = "(Optional) Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on io1 and io2 volumes."
  value       = aws_ebs_volume.aws_ebs_volume.multi_attach_enabled
}
output "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost."
  value       = aws_ebs_volume.aws_ebs_volume.outpost_arn
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ebs_volume.aws_ebs_volume.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.tags_all
}
output "update" {
  description = "(Default 5m)"
  value       = aws_ebs_volume.aws_ebs_volume.update
}
output "availability_zone" {
  description = "(Required) The AZ where the EBS volume will exist."
  value       = aws_ebs_volume.aws_ebs_volume.availability_zone
}
output "create" {
  description = "(Default 5m)"
  value       = aws_ebs_volume.aws_ebs_volume.create
}
output "snapshot_id" {
  description = " (Optional) A snapshot to base the EBS volume off of."
  value       = aws_ebs_volume.aws_ebs_volume.snapshot_id
}
output "encrypted" {
  description = "(Optional) If true, the disk will be encrypted."
  value       = aws_ebs_volume.aws_ebs_volume.encrypted
}
output "size" {
  description = "(Optional) The size of the drive in GiBs."
  value       = aws_ebs_volume.aws_ebs_volume.size
}
output "throughput" {
  description = "(Optional) The throughput that the volume supports, in MiB/s. Only valid for type of gp3.~> strongNOTE: When changing the size, iops or type of an instance, there are considerations to be aware of.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ebs_volume.aws_ebs_volume.throughput
}
output "arn" {
  description = "The volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "final_snapshot" {
  description = "(Optional) If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot. By default set to false"
  value       = aws_ebs_volume.aws_ebs_volume.final_snapshot
}
output "type" {
  description = "(Optional) The type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2)."
  value       = aws_ebs_volume.aws_ebs_volume.type
}
output "iops" {
  description = "(Optional) The amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3."
  value       = aws_ebs_volume.aws_ebs_volume.iops
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true. Note: Terraform must be running with credentials which have the GenerateDataKeyWithoutPlaintext permission on the specified KMS key as required by the EBS KMS CMK volume provisioning process to prevent a volume from being created and almost immediately deleted."
  value       = aws_ebs_volume.aws_ebs_volume.kms_key_id
}
output "id" {
  description = "The volume ID (e.g., vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ebs_volume.aws_ebs_volume.tags_all
}
output "update" {
  description = "(Default 5m)"
  value       = aws_ebs_volume.aws_ebs_volume.update
}
output "arn" {
  description = "The volume ARN (e.g., arn:aws:ec2:us-east-1:0123456789012:volume/vol-59fcb34e)."
  value       = aws_ebs_volume.aws_ebs_volume.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_ebs_volume.aws_ebs_volume.create
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_ebs_volume.aws_ebs_volume.delete
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
      "kind/name"                   = "aws_ebs_volume"
      "kind/version"                = "v0.1.0"
    }
  }
}
