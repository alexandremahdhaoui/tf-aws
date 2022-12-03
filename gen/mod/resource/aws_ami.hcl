resource "aws_ami" "aws_ami" {
  image_owner_alias      = var.image_owner_alias
  iops                   = var.iops
  platform               = var.platform
  delete_on_termination  = var.delete_on_termination
  deprecation_time       = var.deprecation_time
  image_location         = var.image_location
  snapshot_id            = var.snapshot_id
  kernel_id              = var.kernel_id
  platform_details       = var.platform_details
  root_device_name       = var.root_device_name
  usage_operation        = var.usage_operation
  virtualization_type    = var.virtualization_type
  image_type             = var.image_type
  imds_support           = var.imds_support
  owner_id               = var.owner_id
  ramdisk_id             = var.ramdisk_id
  tags                   = var.tags
  update                 = var.update
  volume_size            = var.volume_size
  ena_support            = var.ena_support
  ephemeral_block_device = var.ephemeral_block_device
  root_snapshot_id       = var.root_snapshot_id
  sriov_net_support      = var.sriov_net_support
  tags_all               = var.tags_all
  throughput             = var.throughput
  virtual_name           = var.virtual_name
  ebs_block_device       = var.ebs_block_device
  id                     = var.id
  encrypted              = var.encrypted
  hypervisor             = var.hypervisor
  kms_key_id             = var.kms_key_id
  tpm_support            = var.tpm_support
  architecture           = var.architecture
  boot_mode              = var.boot_mode
  volume_type            = var.volume_type
  arn                    = var.arn
  public                 = var.public
  device_name            = var.device_name
  name                   = var.name
  outpost_arn            = var.outpost_arn
  create                 = var.create
  description            = var.description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the AMI."
  type        = string
}
variable "public" {
  description = "Whether the image has public launch permissions."
  type        = string
}
variable "volume_type" {
  description = "(Optional) Type of EBS volume to create. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: standard)."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "description" {
  description = "(Optional) Longer, human-readable description for the AMI."
  type        = string
  default     = ""
}
variable "device_name" {
  description = "(Required) Path at which the device is exposed to created instances."
  type        = string
}
variable "name" {
  description = "(Required) Region-unique name for the AMI."
  type        = string
}
variable "outpost_arn" {
  description = "(Optional) ARN of the Outpost on which the snapshot is stored.~> strongNote: You can specify encrypted or snapshot_id but not both.Nested ephemeral_block_device blocks have the following structure:"
  type        = string
  default     = ""
}
variable "delete_on_termination" {
  description = "(Optional) Boolean controlling whether the EBS volumes created to\nsupport each created instance will be deleted once that instance is terminated."
  type        = string
  default     = ""
}
variable "deprecation_time" {
  description = "(Optional) Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  type        = string
  default     = ""
}
variable "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  type        = string
}
variable "iops" {
  description = "(Required only when volume_type is io1 or io2"
  type        = string
}
variable "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  type        = string
}
variable "image_location" {
  description = "(Required) Path to an S3 object containing an image manifest, e.g., created\nby the ec2-upload-bundle command in the EC2 command line tools."
  type        = string
}
variable "snapshot_id" {
  description = "volume_size"
  type        = string
}
variable "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  type        = string
}
variable "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances\nwill use. Can be either \"paravirtual\" (the default) or \"hvm\". The choice of virtualization type\nchanges the set of further arguments that are required, as described below."
  type        = string
  default     = ""
}
variable "image_type" {
  description = "Type of image."
  type        = string
}
variable "imds_support" {
  description = "(Optional) If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to v2.0. For more information, see Configure instance metadata options for new instances.When virtualization_type is \"paravirtual\" the following additional arguments apply:"
  type        = string
  default     = ""
}
variable "kernel_id" {
  description = "(Required) ID of the kernel image (AKI) that will be used as the paravirtual\nkernel in created instances."
  type        = string
}
variable "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  type        = string
}
variable "root_device_name" {
  description = "(Optional) Name of the root device (for example, /dev/sda1, or /dev/xvda)."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 40m)"
  type        = string
}
variable "volume_size" {
  description = "(Required unless snapshot_idsnapshot_id is set and volume_size"
  type        = string
}
variable "ena_support" {
  description = "(Optional) Whether enhanced networking with ENA is enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "ephemeral_block_device" {
  description = "(Optional) Nested block describing an ephemeral block device that\nshould be attached to created instances. The structure of this block is described below."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "AWS account ID of the image owner."
  type        = string
}
variable "ramdisk_id" {
  description = "(Optional) ID of an initrd image (ARI) that will be used when booting the\ncreated instances.When virtualization_type is \"hvm\" the following additional arguments apply:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) Throughput that the EBS volume supports, in MiB/s. Only valid for volume_type of gp3."
  type        = string
  default     = ""
}
variable "virtual_name" {
  description = "(Required) Name for the ephemeral device, of the form \"ephemeralN\" where\nemN is a volume number starting from zero.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ebs_block_device" {
  description = "(Optional) Nested block describing an EBS block device that should be\nattached to created instances. The structure of this block is described below."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the created AMI."
  type        = string
}
variable "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  type        = string
}
variable "sriov_net_support" {
  description = "(Optional) When set to \"simple\" (the default), enables enhanced networking\nfor created instances. No other value is supported at this time.Nested ebs_block_device blocks have the following structure:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "tpm_support" {
  description = "(Optional) If the image is configured for NitroTPM support, the value is v2.0. For more information, see NitroTPM in the Amazon Elastic Compute Cloud User Guide."
  type        = string
  default     = ""
}
variable "architecture" {
  description = "(Optional) Machine architecture for created instances. Defaults to \"x86_64\"."
  type        = string
  default     = ""
}
variable "boot_mode" {
  description = "(Optional) Boot mode of the AMI. For more information, see Boot modes in the Amazon Elastic Compute Cloud User Guide."
  type        = string
  default     = ""
}
variable "encrypted" {
  description = "(Optional) Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with snapshot_id."
  type        = string
  default     = ""
}
variable "hypervisor" {
  description = "Hypervisor type of the image."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Full ARN of the AWS Key Management Service (AWS KMS) CMK to use when encrypting the snapshots of\nan image during a copy operation. This parameter is only required if you want to use a non-default CMK;\nif this parameter is not specified, the default CMK for EBS is used"
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
output "ena_support" {
  description = "(Optional) Whether enhanced networking with ENA is enabled. Defaults to false."
  value       = aws_ami.aws_ami.ena_support
}
output "ephemeral_block_device" {
  description = "(Optional) Nested block describing an ephemeral block device that\nshould be attached to created instances. The structure of this block is described below."
  value       = aws_ami.aws_ami.ephemeral_block_device
}
output "owner_id" {
  description = "AWS account ID of the image owner."
  value       = aws_ami.aws_ami.owner_id
}
output "ramdisk_id" {
  description = "(Optional) ID of an initrd image (ARI) that will be used when booting the\ncreated instances.When virtualization_type is \"hvm\" the following additional arguments apply:"
  value       = aws_ami.aws_ami.ramdisk_id
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ami.aws_ami.tags
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.update
}
output "volume_size" {
  description = "(Required unless snapshot_idsnapshot_id is set and volume_size"
  value       = aws_ami.aws_ami.volume_size
}
output "ebs_block_device" {
  description = "(Optional) Nested block describing an EBS block device that should be\nattached to created instances. The structure of this block is described below."
  value       = aws_ami.aws_ami.ebs_block_device
}
output "id" {
  description = "ID of the created AMI."
  value       = aws_ami.aws_ami.id
}
output "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  value       = aws_ami.aws_ami.root_snapshot_id
}
output "sriov_net_support" {
  description = "(Optional) When set to \"simple\" (the default), enables enhanced networking\nfor created instances. No other value is supported at this time.Nested ebs_block_device blocks have the following structure:"
  value       = aws_ami.aws_ami.sriov_net_support
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ami.aws_ami.tags_all
}
output "throughput" {
  description = "(Optional) Throughput that the EBS volume supports, in MiB/s. Only valid for volume_type of gp3."
  value       = aws_ami.aws_ami.throughput
}
output "virtual_name" {
  description = "(Required) Name for the ephemeral device, of the form \"ephemeralN\" where\nemN is a volume number starting from zero.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ami.aws_ami.virtual_name
}
output "architecture" {
  description = "(Optional) Machine architecture for created instances. Defaults to \"x86_64\"."
  value       = aws_ami.aws_ami.architecture
}
output "boot_mode" {
  description = "(Optional) Boot mode of the AMI. For more information, see Boot modes in the Amazon Elastic Compute Cloud User Guide."
  value       = aws_ami.aws_ami.boot_mode
}
output "encrypted" {
  description = "(Optional) Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with snapshot_id."
  value       = aws_ami.aws_ami.encrypted
}
output "hypervisor" {
  description = "Hypervisor type of the image."
  value       = aws_ami.aws_ami.hypervisor
}
output "kms_key_id" {
  description = "(Optional) Full ARN of the AWS Key Management Service (AWS KMS) CMK to use when encrypting the snapshots of\nan image during a copy operation. This parameter is only required if you want to use a non-default CMK;\nif this parameter is not specified, the default CMK for EBS is used"
  value       = aws_ami.aws_ami.kms_key_id
}
output "tpm_support" {
  description = "(Optional) If the image is configured for NitroTPM support, the value is v2.0. For more information, see NitroTPM in the Amazon Elastic Compute Cloud User Guide."
  value       = aws_ami.aws_ami.tpm_support
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami.aws_ami.arn
}
output "public" {
  description = "Whether the image has public launch permissions."
  value       = aws_ami.aws_ami.public
}
output "volume_type" {
  description = "(Optional) Type of EBS volume to create. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: standard)."
  value       = aws_ami.aws_ami.volume_type
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.create
}
output "description" {
  description = "(Optional) Longer, human-readable description for the AMI."
  value       = aws_ami.aws_ami.description
}
output "device_name" {
  description = "(Required) Path at which the device is exposed to created instances."
  value       = aws_ami.aws_ami.device_name
}
output "name" {
  description = "(Required) Region-unique name for the AMI."
  value       = aws_ami.aws_ami.name
}
output "outpost_arn" {
  description = "(Optional) ARN of the Outpost on which the snapshot is stored.~> strongNote: You can specify encrypted or snapshot_id but not both.Nested ephemeral_block_device blocks have the following structure:"
  value       = aws_ami.aws_ami.outpost_arn
}
output "delete_on_termination" {
  description = "(Optional) Boolean controlling whether the EBS volumes created to\nsupport each created instance will be deleted once that instance is terminated."
  value       = aws_ami.aws_ami.delete_on_termination
}
output "deprecation_time" {
  description = "(Optional) Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  value       = aws_ami.aws_ami.deprecation_time
}
output "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  value       = aws_ami.aws_ami.image_owner_alias
}
output "iops" {
  description = "(Required only when volume_type is io1 or io2"
  value       = aws_ami.aws_ami.iops
}
output "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  value       = aws_ami.aws_ami.platform
}
output "image_location" {
  description = "(Required) Path to an S3 object containing an image manifest, e.g., created\nby the ec2-upload-bundle command in the EC2 command line tools."
  value       = aws_ami.aws_ami.image_location
}
output "snapshot_id" {
  description = "volume_size"
  value       = aws_ami.aws_ami.snapshot_id
}
output "image_type" {
  description = "Type of image."
  value       = aws_ami.aws_ami.image_type
}
output "imds_support" {
  description = "(Optional) If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to v2.0. For more information, see Configure instance metadata options for new instances.When virtualization_type is \"paravirtual\" the following additional arguments apply:"
  value       = aws_ami.aws_ami.imds_support
}
output "kernel_id" {
  description = "(Required) ID of the kernel image (AKI) that will be used as the paravirtual\nkernel in created instances."
  value       = aws_ami.aws_ami.kernel_id
}
output "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  value       = aws_ami.aws_ami.platform_details
}
output "root_device_name" {
  description = "(Optional) Name of the root device (for example, /dev/sda1, or /dev/xvda)."
  value       = aws_ami.aws_ami.root_device_name
}
output "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  value       = aws_ami.aws_ami.usage_operation
}
output "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances\nwill use. Can be either \"paravirtual\" (the default) or \"hvm\". The choice of virtualization type\nchanges the set of further arguments that are required, as described below."
  value       = aws_ami.aws_ami.virtualization_type
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_ami.aws_ami.delete
}
output "image_type" {
  description = "Type of image."
  value       = aws_ami.aws_ami.image_type
}
output "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  value       = aws_ami.aws_ami.root_snapshot_id
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami.aws_ami.arn
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.create
}
output "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  value       = aws_ami.aws_ami.platform_details
}
output "hypervisor" {
  description = "Hypervisor type of the image."
  value       = aws_ami.aws_ami.hypervisor
}
output "id" {
  description = "ID of the created AMI."
  value       = aws_ami.aws_ami.id
}
output "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  value       = aws_ami.aws_ami.image_owner_alias
}
output "owner_id" {
  description = "AWS account ID of the image owner."
  value       = aws_ami.aws_ami.owner_id
}
output "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  value       = aws_ami.aws_ami.platform
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ami.aws_ami.tags_all
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.update
}
output "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  value       = aws_ami.aws_ami.usage_operation
}
output "public" {
  description = "Whether the image has public launch permissions."
  value       = aws_ami.aws_ami.public
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
      "kind/name"                   = "aws_ami"
      "kind/version"                = "v0.1.0"
    }
  }
}
