resource "aws_storagegateway_cached_iscsi_volume" "aws_storagegateway_cached_iscsi_volume" {
  network_interface_id   = var.network_interface_id
  snapshot_id            = var.snapshot_id
  volume_size_in_bytes   = var.volume_size_in_bytes
  gateway_arn            = var.gateway_arn
  kms_encrypted          = var.kms_encrypted
  lun_number             = var.lun_number
  source_volume_arn      = var.source_volume_arn
  tags_all               = var.tags_all
  target_arn             = var.target_arn
  volume_arn             = var.volume_arn
  arn                    = var.arn
  chap_enabled           = var.chap_enabled
  kms_key                = var.kms_key
  network_interface_port = var.network_interface_port
  tags                   = var.tags
  id                     = var.id
  target_name            = var.target_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  type        = string
}
variable "target_name" {
  description = "(Required) The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway."
  type        = string
}
variable "volume_size_in_bytes" {
  description = "(Required) The size of the volume in bytes."
  type        = string
}
variable "network_interface_id" {
  description = "(Required) The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) The snapshot ID of the snapshot to restore as the new cached volumeE.g., snap-1122aabb."
  type        = string
  default     = ""
}
variable "lun_number" {
  description = "Logical disk number."
  type        = string
}
variable "source_volume_arn" {
  description = "(Optional) The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The volume_size_in_bytes value for this new volume must be equal to or larger than the size of the existing volume, in bytes."
  type        = string
  default     = ""
}
variable "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  type        = string
}
variable "kms_encrypted" {
  description = "(Optional) Set to true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3."
  type        = string
  default     = ""
}
variable "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when kms_encrypted is set."
  type        = string
  default     = ""
}
variable "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  type        = string
}
variable "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  type        = string
}
variable "arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  type        = string
}
variable "chap_enabled" {
  description = "Whether mutual CHAP is enabled for the iSCSI target."
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
output "network_interface_id" {
  description = "(Required) The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.network_interface_id
}
output "snapshot_id" {
  description = "(Optional) The snapshot ID of the snapshot to restore as the new cached volumeE.g., snap-1122aabb."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.snapshot_id
}
output "volume_size_in_bytes" {
  description = "(Required) The size of the volume in bytes."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.volume_size_in_bytes
}
output "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.gateway_arn
}
output "kms_encrypted" {
  description = "(Optional) Set to true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.kms_encrypted
}
output "lun_number" {
  description = "Logical disk number."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.lun_number
}
output "source_volume_arn" {
  description = "(Optional) The ARN for an existing volume. Specifying this ARN makes the new volume into an exact copy of the specified existing volume's latest recovery point. The volume_size_in_bytes value for this new volume must be equal to or larger than the size of the existing volume, in bytes."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.source_volume_arn
}
output "arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.arn
}
output "chap_enabled" {
  description = "Whether mutual CHAP is enabled for the iSCSI target."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.chap_enabled
}
output "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. Is required when kms_encrypted is set."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.kms_key
}
output "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.network_interface_port
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.tags_all
}
output "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.target_arn
}
output "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.volume_arn
}
output "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.id
}
output "target_name" {
  description = "(Required) The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.target_name
}
output "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.id
}
output "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.target_arn
}
output "chap_enabled" {
  description = "Whether mutual CHAP is enabled for the iSCSI target."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.chap_enabled
}
output "lun_number" {
  description = "Logical disk number."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.lun_number
}
output "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.network_interface_port
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.tags_all
}
output "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.volume_arn
}
output "volume_id" {
  description = "Volume ID, e.g., vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.volume_id
}
output "arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_cached_iscsi_volume.aws_storagegateway_cached_iscsi_volume.arn
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
      "kind/name"                   = "aws_storagegateway_cached_iscsi_volume"
      "kind/version"                = "v0.1.0"
    }
  }
}
