resource "aws_ami" "aws_ami" {
  ephemeral_block_device = var.ephemeral_block_device
  platform_details       = var.platform_details
  ramdisk_id             = var.ramdisk_id
  snapshot_id            = var.snapshot_id
  usage_operation        = var.usage_operation
  volume_size            = var.volume_size
  deprecation_time       = var.deprecation_time
  device_name            = var.device_name
  outpost_arn            = var.outpost_arn
  tags_all               = var.tags_all
  update                 = var.update
  ena_support            = var.ena_support
  kernel_id              = var.kernel_id
  root_device_name       = var.root_device_name
  sriov_net_support      = var.sriov_net_support
  virtualization_type    = var.virtualization_type
  volume_type            = var.volume_type
  architecture           = var.architecture
  image_owner_alias      = var.image_owner_alias
  image_location         = var.image_location
  imds_support           = var.imds_support
  kms_key_id             = var.kms_key_id
  public                 = var.public
  root_snapshot_id       = var.root_snapshot_id
  tags                   = var.tags
  boot_mode              = var.boot_mode
  hypervisor             = var.hypervisor
  tpm_support            = var.tpm_support
  ebs_block_device       = var.ebs_block_device
  iops                   = var.iops
  owner_id               = var.owner_id
  virtual_name           = var.virtual_name
  delete_on_termination  = var.delete_on_termination
  description            = var.description
  image_type             = var.image_type
  create                 = var.create
  encrypted              = var.encrypted
  name                   = var.name
  platform               = var.platform
  throughput             = var.throughput
  arn                    = var.arn
  id                     = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Region-unique name for the AMI."
  type        = string
}
variable "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  type        = string
}
variable "throughput" {
  description = "(Optional) Throughput that the EBS volume supports, in MiB/s. Only valid for volume_type of gp3."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the AMI."
  type        = string
}
variable "id" {
  description = "ID of the created AMI."
  type        = string
}
variable "ephemeral_block_device" {
  description = "(Optional) Nested block describing an ephemeral block device that\nshould be attached to created instances. The structure of this block is described below."
  type        = string
  default     = ""
}
variable "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  type        = string
}
variable "ramdisk_id" {
  description = "(Optional) ID of an initrd image (ARI) that will be used when booting the\ncreated instances.When virtualization_type is \"hvm\" the following additional arguments apply:"
  type        = string
  default     = ""
}
variable "snapshot_id" {
  description = "(Optional) ID of an EBS snapshot that will be used to initialize the created\nEBS volumes. If set, the volume_size"
  type        = string
  default     = ""
}
variable "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  type        = string
}
variable "volume_size" {
  description = "(Required unless snapshot_idsnapshot_id is set and volume_size"
  type        = string
}
variable "deprecation_time" {
  description = "(Optional) Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  type        = string
  default     = ""
}
variable "device_name" {
  description = "(Required) Path at which the device is exposed to created instances."
  type        = string
}
variable "outpost_arn" {
  description = "(Optional) ARN of the Outpost on which the snapshot is stored.~> strongNote: You can specify encrypted or snapshot_id but not both.Nested ephemeral_block_device blocks have the following structure:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 40m)"
  type        = string
}
variable "ena_support" {
  description = "(Optional) Whether enhanced networking with ENA is enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "kernel_id" {
  description = "(Required) ID of the kernel image (AKI) that will be used as the paravirtual\nkernel in created instances."
  type        = string
}
variable "root_device_name" {
  description = "(Optional) Name of the root device (for example, /dev/sda1, or /dev/xvda)."
  type        = string
  default     = ""
}
variable "sriov_net_support" {
  description = "(Optional) When set to \"simple\" (the default), enables enhanced networking\nfor created instances. No other value is supported at this time.Nested ebs_block_device blocks have the following structure:"
  type        = string
  default     = ""
}
variable "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances\nwill use. Can be either \"paravirtual\" (the default) or \"hvm\". The choice of virtualization type\nchanges the set of further arguments that are required, as described below."
  type        = string
  default     = ""
}
variable "volume_type" {
  description = "(Optional) Type of EBS volume to create. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: standard)."
  type        = string
  default     = ""
}
variable "architecture" {
  description = "(Optional) Machine architecture for created instances. Defaults to \"x86_64\"."
  type        = string
  default     = ""
}
variable "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  type        = string
}
variable "image_location" {
  description = "ec2-upload-bundle command in the EC2 command line tools."
  type        = string
}
variable "imds_support" {
  description = "(Optional) If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to v2.0. For more information, see Configure instance metadata options for new instances.When virtualization_type is \"paravirtual\" the following additional arguments apply:"
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = ""
  type        = string
}
variable "public" {
  description = "Whether the image has public launch permissions."
  type        = string
}
variable "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "boot_mode" {
  description = "(Optional) Boot mode of the AMI. For more information, see Boot modes in the Amazon Elastic Compute Cloud User Guide."
  type        = string
  default     = ""
}
variable "hypervisor" {
  description = "Hypervisor type of the image."
  type        = string
}
variable "tpm_support" {
  description = "(Optional) If the image is configured for NitroTPM support, the value is v2.0. For more information, see NitroTPM in the Amazon Elastic Compute Cloud User Guide."
  type        = string
  default     = ""
}
variable "ebs_block_device" {
  description = ""
  type        = string
}
variable "iops" {
  description = "(Required only when volume_type is io1 or io2"
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the image owner."
  type        = string
}
variable "virtual_name" {
  description = "emN is a volume number starting from zero.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "delete_on_termination" {
  description = "(Optional) Boolean controlling whether the EBS volumes created to\nsupport each created instance will be deleted once that instance is terminated."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Longer, human-readable description for the AMI."
  type        = string
  default     = ""
}
variable "image_type" {
  description = "Type of image."
  type        = string
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "encrypted" {
  description = "(Optional) Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with snapshot_id."
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
output "imds_support" {
  description = "(Optional) If EC2 instances started from this image should require the use of the Instance Metadata Service V2 (IMDSv2), set this argument to v2.0. For more information, see Configure instance metadata options for new instances.When virtualization_type is \"paravirtual\" the following additional arguments apply:"
  value       = aws_ami.aws_ami.imds_support
}
output "kms_key_id" {
  description = ""
  value       = aws_ami.aws_ami.kms_key_id
}
output "public" {
  description = "Whether the image has public launch permissions."
  value       = aws_ami.aws_ami.public
}
output "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  value       = aws_ami.aws_ami.root_snapshot_id
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ami.aws_ami.tags
}
output "boot_mode" {
  description = "(Optional) Boot mode of the AMI. For more information, see Boot modes in the Amazon Elastic Compute Cloud User Guide."
  value       = aws_ami.aws_ami.boot_mode
}
output "hypervisor" {
  description = "Hypervisor type of the image."
  value       = aws_ami.aws_ami.hypervisor
}
output "image_location" {
  description = "ec2-upload-bundle command in the EC2 command line tools."
  value       = aws_ami.aws_ami.image_location
}
output "tpm_support" {
  description = "(Optional) If the image is configured for NitroTPM support, the value is v2.0. For more information, see NitroTPM in the Amazon Elastic Compute Cloud User Guide."
  value       = aws_ami.aws_ami.tpm_support
}
output "iops" {
  description = "(Required only when volume_type is io1 or io2"
  value       = aws_ami.aws_ami.iops
}
output "owner_id" {
  description = "AWS account ID of the image owner."
  value       = aws_ami.aws_ami.owner_id
}
output "virtual_name" {
  description = "emN is a volume number starting from zero.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ami.aws_ami.virtual_name
}
output "delete_on_termination" {
  description = "(Optional) Boolean controlling whether the EBS volumes created to\nsupport each created instance will be deleted once that instance is terminated."
  value       = aws_ami.aws_ami.delete_on_termination
}
output "description" {
  description = "(Optional) Longer, human-readable description for the AMI."
  value       = aws_ami.aws_ami.description
}
output "ebs_block_device" {
  description = ""
  value       = aws_ami.aws_ami.ebs_block_device
}
output "image_type" {
  description = "Type of image."
  value       = aws_ami.aws_ami.image_type
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.create
}
output "encrypted" {
  description = "(Optional) Boolean controlling whether the created EBS volumes will be encrypted. Can't be used with snapshot_id."
  value       = aws_ami.aws_ami.encrypted
}
output "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  value       = aws_ami.aws_ami.platform
}
output "throughput" {
  description = "(Optional) Throughput that the EBS volume supports, in MiB/s. Only valid for volume_type of gp3."
  value       = aws_ami.aws_ami.throughput
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami.aws_ami.arn
}
output "id" {
  description = "ID of the created AMI."
  value       = aws_ami.aws_ami.id
}
output "name" {
  description = "(Required) Region-unique name for the AMI."
  value       = aws_ami.aws_ami.name
}
output "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  value       = aws_ami.aws_ami.platform_details
}
output "ramdisk_id" {
  description = "(Optional) ID of an initrd image (ARI) that will be used when booting the\ncreated instances.When virtualization_type is \"hvm\" the following additional arguments apply:"
  value       = aws_ami.aws_ami.ramdisk_id
}
output "snapshot_id" {
  description = "(Optional) ID of an EBS snapshot that will be used to initialize the created\nEBS volumes. If set, the volume_size"
  value       = aws_ami.aws_ami.snapshot_id
}
output "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  value       = aws_ami.aws_ami.usage_operation
}
output "volume_size" {
  description = "(Required unless snapshot_idsnapshot_id is set and volume_size"
  value       = aws_ami.aws_ami.volume_size
}
output "deprecation_time" {
  description = "(Optional) Date and time to deprecate the AMI. If you specified a value for seconds, Amazon EC2 rounds the seconds to the nearest minute. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  value       = aws_ami.aws_ami.deprecation_time
}
output "device_name" {
  description = "(Required) Path at which the device is exposed to created instances."
  value       = aws_ami.aws_ami.device_name
}
output "ephemeral_block_device" {
  description = "(Optional) Nested block describing an ephemeral block device that\nshould be attached to created instances. The structure of this block is described below."
  value       = aws_ami.aws_ami.ephemeral_block_device
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ami.aws_ami.tags_all
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.update
}
output "ena_support" {
  description = "(Optional) Whether enhanced networking with ENA is enabled. Defaults to false."
  value       = aws_ami.aws_ami.ena_support
}
output "kernel_id" {
  description = "(Required) ID of the kernel image (AKI) that will be used as the paravirtual\nkernel in created instances."
  value       = aws_ami.aws_ami.kernel_id
}
output "outpost_arn" {
  description = "(Optional) ARN of the Outpost on which the snapshot is stored.~> strongNote: You can specify encrypted or snapshot_id but not both.Nested ephemeral_block_device blocks have the following structure:"
  value       = aws_ami.aws_ami.outpost_arn
}
output "sriov_net_support" {
  description = "(Optional) When set to \"simple\" (the default), enables enhanced networking\nfor created instances. No other value is supported at this time.Nested ebs_block_device blocks have the following structure:"
  value       = aws_ami.aws_ami.sriov_net_support
}
output "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances\nwill use. Can be either \"paravirtual\" (the default) or \"hvm\". The choice of virtualization type\nchanges the set of further arguments that are required, as described below."
  value       = aws_ami.aws_ami.virtualization_type
}
output "volume_type" {
  description = "(Optional) Type of EBS volume to create. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: standard)."
  value       = aws_ami.aws_ami.volume_type
}
output "architecture" {
  description = "(Optional) Machine architecture for created instances. Defaults to \"x86_64\"."
  value       = aws_ami.aws_ami.architecture
}
output "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  value       = aws_ami.aws_ami.image_owner_alias
}
output "root_device_name" {
  description = "(Optional) Name of the root device (for example, /dev/sda1, or /dev/xvda)."
  value       = aws_ami.aws_ami.root_device_name
}
output "platform" {
  description = "This value is set to windows for Windows AMIs; otherwise, it is blank."
  value       = aws_ami.aws_ami.platform
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ami.aws_ami.tags_all
}
output "image_owner_alias" {
  description = "AWS account alias (for example, amazon, self) or the AWS account ID of the AMI owner."
  value       = aws_ami.aws_ami.image_owner_alias
}
output "usage_operation" {
  description = "Operation of the Amazon EC2 instance and the billing code that is associated with the AMI."
  value       = aws_ami.aws_ami.usage_operation
}
output "create" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.create
}
output "delete" {
  description = "(Default 90m)"
  value       = aws_ami.aws_ami.delete
}
output "hypervisor" {
  description = "Hypervisor type of the image."
  value       = aws_ami.aws_ami.hypervisor
}
output "id" {
  description = "ID of the created AMI."
  value       = aws_ami.aws_ami.id
}
output "platform_details" {
  description = "Platform details associated with the billing code of the AMI."
  value       = aws_ami.aws_ami.platform_details
}
output "public" {
  description = "Whether the image has public launch permissions."
  value       = aws_ami.aws_ami.public
}
output "root_snapshot_id" {
  description = "Snapshot ID for the root volume (for EBS-backed AMIs)"
  value       = aws_ami.aws_ami.root_snapshot_id
}
output "update" {
  description = "(Default 40m)"
  value       = aws_ami.aws_ami.update
}
output "arn" {
  description = "ARN of the AMI."
  value       = aws_ami.aws_ami.arn
}
output "image_type" {
  description = "Type of image."
  value       = aws_ami.aws_ami.image_type
}
output "owner_id" {
  description = "AWS account ID of the image owner."
  value       = aws_ami.aws_ami.owner_id
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
