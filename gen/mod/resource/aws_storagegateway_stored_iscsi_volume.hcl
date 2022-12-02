resource "aws_storagegateway_stored_iscsi_volume" "aws_storagegateway_stored_iscsi_volume" {
  id                     = var.id
  lun_number             = var.lun_number
  network_interface_id   = var.network_interface_id
  snapshot_id            = var.snapshot_id
  target_name            = var.target_name
  volume_arn             = var.volume_arn
  kms_key                = var.kms_key
  target_arn             = var.target_arn
  volume_type            = var.volume_type
  gateway_arn            = var.gateway_arn
  kms_encrypted          = var.kms_encrypted
  preserve_existing_data = var.preserve_existing_data
  tags                   = var.tags
  volume_id              = var.volume_id
  volume_size_in_bytes   = var.volume_size_in_bytes
  arn                    = var.arn
  chap_enabled           = var.chap_enabled
  disk_id                = var.disk_id
  network_interface_port = var.network_interface_port
  tags_all               = var.tags_all
  volume_status          = var.volume_status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  type        = string
}
variable "lun_number" {
  description = "Logical disk number."
  type        = string
}
variable "network_interface_id" {
  description = "(Required) The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) The snapshot ID of the snapshot to restore as the new stored volumeE.g., snap-1122aabb."
  type        = string
  default     = ""
}
variable "target_name" {
  description = "(Required) The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway."
  type        = string
}
variable "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  type        = string
}
variable "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  type        = string
  default     = ""
}
variable "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  type        = string
}
variable "volume_type" {
  description = "indicates the type of the volume."
  type        = string
}
variable "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  type        = string
}
variable "kms_encrypted" {
  description = "(Optional) true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional."
  type        = string
  default     = ""
}
variable "preserve_existing_data" {
  description = "(Required) Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "volume_id" {
  description = "Volume ID, e.g., vol-12345678."
  type        = string
}
variable "volume_size_in_bytes" {
  description = "The size of the data stored on the volume in bytes."
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
variable "disk_id" {
  description = "(Required) The unique identifier for the gateway local disk that is configured as a stored volume."
  type        = string
}
variable "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "volume_status" {
  description = "indicates the state of the storage volume."
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
output "lun_number" {
  description = "Logical disk number."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.lun_number
}
output "network_interface_id" {
  description = "(Required) The network interface of the gateway on which to expose the iSCSI target. Only IPv4 addresses are accepted."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.network_interface_id
}
output "snapshot_id" {
  description = "(Optional) The snapshot ID of the snapshot to restore as the new stored volumeE.g., snap-1122aabb."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.snapshot_id
}
output "target_name" {
  description = "(Required) The name of the iSCSI target used by initiators to connect to the target and as a suffix for the target ARN. The target name must be unique across all volumes of a gateway."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.target_name
}
output "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_arn
}
output "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.id
}
output "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.target_arn
}
output "volume_type" {
  description = "indicates the type of the volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_type
}
output "kms_key" {
  description = "(Optional) The Amazon Resource Name (ARN) of the AWS KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.kms_key
}
output "kms_encrypted" {
  description = "(Optional) true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Optional."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.kms_encrypted
}
output "preserve_existing_data" {
  description = "(Required) Specify this field as true if you want to preserve the data on the local disk. Otherwise, specifying this field as false creates an empty volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.preserve_existing_data
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.tags
}
output "volume_id" {
  description = "Volume ID, e.g., vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_id
}
output "volume_size_in_bytes" {
  description = "The size of the data stored on the volume in bytes."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_size_in_bytes
}
output "gateway_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the gateway."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.gateway_arn
}
output "chap_enabled" {
  description = "Whether mutual CHAP is enabled for the iSCSI target."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.chap_enabled
}
output "disk_id" {
  description = "(Required) The unique identifier for the gateway local disk that is configured as a stored volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.disk_id
}
output "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.network_interface_port
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.tags_all
}
output "volume_status" {
  description = "indicates the state of the storage volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_status
}
output "arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.arn
}
output "volume_type" {
  description = "indicates the type of the volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_type
}
output "chap_enabled" {
  description = "Whether mutual CHAP is enabled for the iSCSI target."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.chap_enabled
}
output "id" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.id
}
output "lun_number" {
  description = "Logical disk number."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.lun_number
}
output "target_arn" {
  description = "Target Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/target/iqn.1997-05.com.amazon:TargetName."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.target_arn
}
output "volume_attachment_status" {
  description = "A value that indicates whether a storage volume is attached to, detached from, or is in the process of detaching from a gateway."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_attachment_status
}
output "volume_size_in_bytes" {
  description = "The size of the data stored on the volume in bytes."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_size_in_bytes
}
output "arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.arn
}
output "network_interface_port" {
  description = "The port used to communicate with iSCSI targets."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.network_interface_port
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.tags_all
}
output "volume_arn" {
  description = "Volume Amazon Resource Name (ARN), e.g., arn:aws:storagegateway:us-east-1:123456789012:gateway/sgw-12345678/volume/vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_arn
}
output "volume_id" {
  description = "Volume ID, e.g., vol-12345678."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_id
}
output "volume_status" {
  description = "indicates the state of the storage volume."
  value       = aws_storagegateway_stored_iscsi_volume.aws_storagegateway_stored_iscsi_volume.volume_status
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
      "kind/name"                   = "aws_storagegateway_stored_iscsi_volume"
      "kind/version"                = "v0.1.0"
    }
  }
}
