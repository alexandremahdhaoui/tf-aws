resource "aws_efs_file_system" "aws_efs_file_system" {
  performance_mode                    = var.performance_mode
  transition_to_primary_storage_class = var.transition_to_primary_storage_class
  value_in_ia                         = var.value_in_ia
  dns_name                            = var.dns_name
  owner_id                            = var.owner_id
  tags_all                            = var.tags_all
  availability_zone_name              = var.availability_zone_name
  id                                  = var.id
  lifecycle_policy                    = var.lifecycle_policy
  number_of_mount_targets             = var.number_of_mount_targets
  value                               = var.value
  size_in_bytes                       = var.size_in_bytes
  tags                                = var.tags
  arn                                 = var.arn
  availability_zone_id                = var.availability_zone_id
  creation_token                      = var.creation_token
  encrypted                           = var.encrypted
  kms_key_id                          = var.kms_key_id
  provisioned_throughput_in_mibps     = var.provisioned_throughput_in_mibps
  throughput_mode                     = var.throughput_mode
  transition_to_ia                    = var.transition_to_ia
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transition_to_primary_storage_class" {
  description = "(Optional) Describes the policy used to transition a file from infequent access storage to primary storage. Valid values: AFTER_1_ACCESS.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "value_in_ia" {
  description = "The latest known metered size (in bytes) of data stored in the Infrequent Access storage class."
  type        = string
}
variable "performance_mode" {
  description = "(Optional) The file system performance mode. Can be either \"generalPurpose\" or \"maxIO\" (Default: \"generalPurpose\")."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "The AWS account that created the file system. If the file system was createdby an IAM user, the parent account to which the user belongs is the owner."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Size In Bytes"
  type        = string
}
variable "dns_name" {
  description = "The DNS name for the filesystem per documented convention."
  type        = string
}
variable "id" {
  description = "The ID that identifies the file system (e.g., fs-ccfc0d65)."
  type        = string
}
variable "lifecycle_policy" {
  description = "(Optional) A file system lifecycle policy object (documented below)."
  type        = string
  default     = ""
}
variable "number_of_mount_targets" {
  description = "The current number of mount targets that the file system has."
  type        = string
}
variable "value" {
  description = "The latest known metered size (in bytes) of data stored in the file system."
  type        = string
}
variable "availability_zone_name" {
  description = "(Optional) the AWS Availability Zone in which to create the file system. Used to create a file system that uses One Zone storage classes. See user guide for more information."
  type        = string
  default     = ""
}
variable "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  type        = string
}
variable "creation_token" {
  description = "Elastic File System"
  type        = string
}
variable "encrypted" {
  description = "(Optional) If true, the disk will be encrypted."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
  type        = string
  default     = ""
}
variable "provisioned_throughput_in_mibps" {
  description = "(Optional) The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with throughput_mode set to provisioned."
  type        = string
  default     = ""
}
variable "size_in_bytes" {
  description = "The latest known metered size (in bytes) of data stored in the file system, the value is not the exact size that the file system was at any point in time. See Size In Bytes."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "transition_to_ia" {
  description = "(Optional) Indicates how long it takes to transition files to the IA storage class. Valid values: AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, or AFTER_90_DAYS."
  type        = string
  default     = ""
}
variable "throughput_mode" {
  description = "(Optional) Throughput mode for the file system. Defaults to bursting. Valid values: bursting, provisioned. When using provisioned, also set provisioned_throughput_in_mibps.Lifecycle Policy ArgumentsFor stronglifecycle_policy the following attributes are supported:"
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
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_efs_file_system.aws_efs_file_system.tags
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_file_system.aws_efs_file_system.arn
}
output "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_id
}
output "creation_token" {
  description = "Elastic File System"
  value       = aws_efs_file_system.aws_efs_file_system.creation_token
}
output "encrypted" {
  description = "(Optional) If true, the disk will be encrypted."
  value       = aws_efs_file_system.aws_efs_file_system.encrypted
}
output "kms_key_id" {
  description = "(Optional) The ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true."
  value       = aws_efs_file_system.aws_efs_file_system.kms_key_id
}
output "provisioned_throughput_in_mibps" {
  description = "(Optional) The throughput, measured in MiB/s, that you want to provision for the file system. Only applicable with throughput_mode set to provisioned."
  value       = aws_efs_file_system.aws_efs_file_system.provisioned_throughput_in_mibps
}
output "size_in_bytes" {
  description = "The latest known metered size (in bytes) of data stored in the file system, the value is not the exact size that the file system was at any point in time. See Size In Bytes."
  value       = aws_efs_file_system.aws_efs_file_system.size_in_bytes
}
output "throughput_mode" {
  description = "(Optional) Throughput mode for the file system. Defaults to bursting. Valid values: bursting, provisioned. When using provisioned, also set provisioned_throughput_in_mibps.Lifecycle Policy ArgumentsFor stronglifecycle_policy the following attributes are supported:"
  value       = aws_efs_file_system.aws_efs_file_system.throughput_mode
}
output "transition_to_ia" {
  description = "(Optional) Indicates how long it takes to transition files to the IA storage class. Valid values: AFTER_7_DAYS, AFTER_14_DAYS, AFTER_30_DAYS, AFTER_60_DAYS, or AFTER_90_DAYS."
  value       = aws_efs_file_system.aws_efs_file_system.transition_to_ia
}
output "performance_mode" {
  description = "(Optional) The file system performance mode. Can be either \"generalPurpose\" or \"maxIO\" (Default: \"generalPurpose\")."
  value       = aws_efs_file_system.aws_efs_file_system.performance_mode
}
output "transition_to_primary_storage_class" {
  description = "(Optional) Describes the policy used to transition a file from infequent access storage to primary storage. Valid values: AFTER_1_ACCESS.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_file_system.aws_efs_file_system.transition_to_primary_storage_class
}
output "value_in_ia" {
  description = "The latest known metered size (in bytes) of data stored in the Infrequent Access storage class."
  value       = aws_efs_file_system.aws_efs_file_system.value_in_ia
}
output "dns_name" {
  description = "The DNS name for the filesystem per documented convention."
  value       = aws_efs_file_system.aws_efs_file_system.dns_name
}
output "owner_id" {
  description = "The AWS account that created the file system. If the file system was createdby an IAM user, the parent account to which the user belongs is the owner."
  value       = aws_efs_file_system.aws_efs_file_system.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Size In Bytes"
  value       = aws_efs_file_system.aws_efs_file_system.tags_all
}
output "availability_zone_name" {
  description = "(Optional) the AWS Availability Zone in which to create the file system. Used to create a file system that uses One Zone storage classes. See user guide for more information."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_name
}
output "id" {
  description = "The ID that identifies the file system (e.g., fs-ccfc0d65)."
  value       = aws_efs_file_system.aws_efs_file_system.id
}
output "lifecycle_policy" {
  description = "(Optional) A file system lifecycle policy object (documented below)."
  value       = aws_efs_file_system.aws_efs_file_system.lifecycle_policy
}
output "number_of_mount_targets" {
  description = "The current number of mount targets that the file system has."
  value       = aws_efs_file_system.aws_efs_file_system.number_of_mount_targets
}
output "value" {
  description = "The latest known metered size (in bytes) of data stored in the file system."
  value       = aws_efs_file_system.aws_efs_file_system.value
}
output "id" {
  description = "The ID that identifies the file system (e.g., fs-ccfc0d65)."
  value       = aws_efs_file_system.aws_efs_file_system.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Size In Bytes"
  value       = aws_efs_file_system.aws_efs_file_system.tags_all
}
output "value_in_ia" {
  description = "The latest known metered size (in bytes) of data stored in the Infrequent Access storage class."
  value       = aws_efs_file_system.aws_efs_file_system.value_in_ia
}
output "value_in_standard" {
  description = "The latest known metered size (in bytes) of data stored in the Standard storage class."
  value       = aws_efs_file_system.aws_efs_file_system.value_in_standard
}
output "owner_id" {
  description = "The AWS account that created the file system. If the file system was createdby an IAM user, the parent account to which the user belongs is the owner."
  value       = aws_efs_file_system.aws_efs_file_system.owner_id
}
output "size_in_bytes" {
  description = "The latest known metered size (in bytes) of data stored in the file system, the value is not the exact size that the file system was at any point in time. See Size In Bytes."
  value       = aws_efs_file_system.aws_efs_file_system.size_in_bytes
}
output "value" {
  description = "The latest known metered size (in bytes) of data stored in the file system."
  value       = aws_efs_file_system.aws_efs_file_system.value
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_efs_file_system.aws_efs_file_system.arn
}
output "availability_zone_id" {
  description = "The identifier of the Availability Zone in which the file system's One Zone storage classes exist."
  value       = aws_efs_file_system.aws_efs_file_system.availability_zone_id
}
output "dns_name" {
  description = "The DNS name for the filesystem per documented convention."
  value       = aws_efs_file_system.aws_efs_file_system.dns_name
}
output "number_of_mount_targets" {
  description = "The current number of mount targets that the file system has."
  value       = aws_efs_file_system.aws_efs_file_system.number_of_mount_targets
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
      "kind/name"                   = "aws_efs_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
