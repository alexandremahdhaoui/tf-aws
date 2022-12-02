resource "aws_launch_configuration" "aws_launch_configuration" {
  http_put_response_hop_limit      = var.http_put_response_hop_limit
  user_data_base64                 = var.user_data_base64
  image_id                         = var.image_id
  metadata_options                 = var.metadata_options
  spot_price                       = var.spot_price
  throughput                       = var.throughput
  virtual_name                     = var.virtual_name
  encrypted                        = var.encrypted
  http_endpoint                    = var.http_endpoint
  snapshot_id                      = var.snapshot_id
  vpc_classic_link_security_groups = var.vpc_classic_link_security_groups
  delete_on_termination            = var.delete_on_termination
  ebs_optimized                    = var.ebs_optimized
  instance_type                    = var.instance_type
  name                             = var.name
  name_prefix                      = var.name_prefix
  arn                              = var.arn
  ebs_block_device                 = var.ebs_block_device
  id                               = var.id
  security_groups                  = var.security_groups
  vpc_classic_link_id              = var.vpc_classic_link_id
  associate_public_ip_address      = var.associate_public_ip_address
  iam_instance_profile             = var.iam_instance_profile
  placement_tenancy                = var.placement_tenancy
  iops                             = var.iops
  key_name                         = var.key_name
  user_data                        = var.user_data
  volume_size                      = var.volume_size
  device_name                      = var.device_name
  enable_monitoring                = var.enable_monitoring
  http_tokens                      = var.http_tokens
  volume_type                      = var.volume_type
  ephemeral_block_device           = var.ephemeral_block_device
  no_device                        = var.no_device
  root_block_device                = var.root_block_device
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ephemeral_block_device" {
  description = "(Optional) Customize Ephemeral (also known as\n\"Instance Store\") volumes on the instance. See Block Devices below for details."
  type        = string
  default     = ""
}
variable "no_device" {
  description = "(Optional) Whether the device in the block device mapping of the AMI is suppressed."
  type        = string
  default     = ""
}
variable "root_block_device" {
  description = "Block Devices below for details."
  type        = string
}
variable "volume_type" {
  description = "(Optional) The type of volume. Can be \"standard\", \"gp2\", \"gp3\", \"st1\", \"sc1\"\"io1\". (Default: \"standard\")."
  type        = string
  default     = ""
}
variable "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  type        = string
}
variable "user_data_base64" {
  description = "(Optional) Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption."
  type        = string
  default     = ""
}
variable "image_id" {
  description = "(Required) The EC2 image ID to launch."
  type        = string
}
variable "metadata_options" {
  description = "The metadata options for the instance.\n"
  type        = string
}
variable "spot_price" {
  description = "(Optional; Default: On-demand price) The maximum price to use for reserving spot instances."
  type        = string
}
variable "encrypted" {
  description = "(Optional) Whether the volume should be encrypted or not. Do not use this option if you are using snapshot_id as the encrypted flag will be determined by the snapshot. (Default: false)."
  type        = string
  default     = ""
}
variable "http_endpoint" {
  description = "The state of the metadata service: enabled, disabled."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) The Snapshot ID to mount."
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) The throughput (MiBps) to provision for a gp3 volume."
  type        = string
  default     = ""
}
variable "virtual_name" {
  description = "(Optional) The \"ephemeral0\")virtual_name in the format \"ephemeral{0..N}\".~> strongNOTE: Changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed\non instance termination (Default: true)."
  type        = string
  default     = ""
}
variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Required) The size of instance to launch."
  type        = string
}
variable "vpc_classic_link_security_groups" {
  description = "(Optional) The IDs of one or more security groups for the specified ClassicLink-enabled VPC (eg. sg-46ae3d11)."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name of the launch configuration."
  type        = string
}
variable "ebs_block_device" {
  description = "(Optional) Additional EBS block devices to attach to the\ninstance.  See Block Devices below for details."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the launch configuration."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the launch configuration. If you leave\nthis blank, Terraform will auto-generate a unique name. Conflicts with name_prefix."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "associate_public_ip_address" {
  description = "(Optional) Associate a public ip address with an instance in a VPC."
  type        = string
  default     = ""
}
variable "iam_instance_profile" {
  description = ""
  type        = string
}
variable "placement_tenancy" {
  description = "(Optional) The tenancy of the instance. Valid values are\n\"default\" or \"dedicated\", see AWS's Create Launch ConfigurationBlock devicesEach of the *_block_deviceThe root_block_device mapping supports the following:"
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) A list of associated security group IDS."
  type        = string
  default     = ""
}
variable "vpc_classic_link_id" {
  description = "(Optional) The ID of a ClassicLink-enabled VPC. Only applies to EC2-Classic instances. (eg. vpc-2730681a)"
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "(Optional) The size of the volume in gigabytes."
  type        = string
  default     = ""
}
variable "device_name" {
  description = "(Required) The name of the block device to mount on the instance."
  type        = string
}
variable "enable_monitoring" {
  description = "(Optional) Enables/disables detailed monitoring. This is enabled by default."
  type        = string
  default     = ""
}
variable "http_tokens" {
  description = "If session tokens are required: optional, required."
  type        = string
}
variable "iops" {
  description = "(Optional) The amount of provisioned\nIOPSvolume_type of \"io1\"."
  type        = string
  default     = ""
}
variable "key_name" {
  description = "(Optional) The key name that should be used for the instance."
  type        = string
  default     = ""
}
variable "user_data" {
  description = "(Optional) The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
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
output "virtual_name" {
  description = "(Optional) The \"ephemeral0\")virtual_name in the format \"ephemeral{0..N}\".~> strongNOTE: Changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  value       = aws_launch_configuration.aws_launch_configuration.virtual_name
}
output "encrypted" {
  description = "(Optional) Whether the volume should be encrypted or not. Do not use this option if you are using snapshot_id as the encrypted flag will be determined by the snapshot. (Default: false)."
  value       = aws_launch_configuration.aws_launch_configuration.encrypted
}
output "http_endpoint" {
  description = "The state of the metadata service: enabled, disabled."
  value       = aws_launch_configuration.aws_launch_configuration.http_endpoint
}
output "snapshot_id" {
  description = "(Optional) The Snapshot ID to mount."
  value       = aws_launch_configuration.aws_launch_configuration.snapshot_id
}
output "throughput" {
  description = "(Optional) The throughput (MiBps) to provision for a gp3 volume."
  value       = aws_launch_configuration.aws_launch_configuration.throughput
}
output "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed\non instance termination (Default: true)."
  value       = aws_launch_configuration.aws_launch_configuration.delete_on_termination
}
output "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_optimized
}
output "instance_type" {
  description = "(Required) The size of instance to launch."
  value       = aws_launch_configuration.aws_launch_configuration.instance_type
}
output "vpc_classic_link_security_groups" {
  description = "(Optional) The IDs of one or more security groups for the specified ClassicLink-enabled VPC (eg. sg-46ae3d11)."
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_security_groups
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  value       = aws_launch_configuration.aws_launch_configuration.name_prefix
}
output "arn" {
  description = "The Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "ebs_block_device" {
  description = "(Optional) Additional EBS block devices to attach to the\ninstance.  See Block Devices below for details."
  value       = aws_launch_configuration.aws_launch_configuration.ebs_block_device
}
output "id" {
  description = "The ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "name" {
  description = "(Optional) The name of the launch configuration. If you leave\nthis blank, Terraform will auto-generate a unique name. Conflicts with name_prefix."
  value       = aws_launch_configuration.aws_launch_configuration.name
}
output "vpc_classic_link_id" {
  description = "(Optional) The ID of a ClassicLink-enabled VPC. Only applies to EC2-Classic instances. (eg. vpc-2730681a)"
  value       = aws_launch_configuration.aws_launch_configuration.vpc_classic_link_id
}
output "associate_public_ip_address" {
  description = "(Optional) Associate a public ip address with an instance in a VPC."
  value       = aws_launch_configuration.aws_launch_configuration.associate_public_ip_address
}
output "iam_instance_profile" {
  description = ""
  value       = aws_launch_configuration.aws_launch_configuration.iam_instance_profile
}
output "placement_tenancy" {
  description = "(Optional) The tenancy of the instance. Valid values are\n\"default\" or \"dedicated\", see AWS's Create Launch ConfigurationBlock devicesEach of the *_block_deviceThe root_block_device mapping supports the following:"
  value       = aws_launch_configuration.aws_launch_configuration.placement_tenancy
}
output "security_groups" {
  description = "(Optional) A list of associated security group IDS."
  value       = aws_launch_configuration.aws_launch_configuration.security_groups
}
output "key_name" {
  description = "(Optional) The key name that should be used for the instance."
  value       = aws_launch_configuration.aws_launch_configuration.key_name
}
output "user_data" {
  description = "(Optional) The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
  value       = aws_launch_configuration.aws_launch_configuration.user_data
}
output "volume_size" {
  description = "(Optional) The size of the volume in gigabytes."
  value       = aws_launch_configuration.aws_launch_configuration.volume_size
}
output "device_name" {
  description = "(Required) The name of the block device to mount on the instance."
  value       = aws_launch_configuration.aws_launch_configuration.device_name
}
output "enable_monitoring" {
  description = "(Optional) Enables/disables detailed monitoring. This is enabled by default."
  value       = aws_launch_configuration.aws_launch_configuration.enable_monitoring
}
output "http_tokens" {
  description = "If session tokens are required: optional, required."
  value       = aws_launch_configuration.aws_launch_configuration.http_tokens
}
output "iops" {
  description = "(Optional) The amount of provisioned\nIOPSvolume_type of \"io1\"."
  value       = aws_launch_configuration.aws_launch_configuration.iops
}
output "ephemeral_block_device" {
  description = "(Optional) Customize Ephemeral (also known as\n\"Instance Store\") volumes on the instance. See Block Devices below for details."
  value       = aws_launch_configuration.aws_launch_configuration.ephemeral_block_device
}
output "no_device" {
  description = "(Optional) Whether the device in the block device mapping of the AMI is suppressed."
  value       = aws_launch_configuration.aws_launch_configuration.no_device
}
output "root_block_device" {
  description = "Block Devices below for details."
  value       = aws_launch_configuration.aws_launch_configuration.root_block_device
}
output "volume_type" {
  description = "(Optional) The type of volume. Can be \"standard\", \"gp2\", \"gp3\", \"st1\", \"sc1\"\"io1\". (Default: \"standard\")."
  value       = aws_launch_configuration.aws_launch_configuration.volume_type
}
output "http_put_response_hop_limit" {
  description = "The desired HTTP PUT response hop limit for instance metadata requests."
  value       = aws_launch_configuration.aws_launch_configuration.http_put_response_hop_limit
}
output "user_data_base64" {
  description = "(Optional) Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption."
  value       = aws_launch_configuration.aws_launch_configuration.user_data_base64
}
output "image_id" {
  description = "(Required) The EC2 image ID to launch."
  value       = aws_launch_configuration.aws_launch_configuration.image_id
}
output "metadata_options" {
  description = "The metadata options for the instance.\n"
  value       = aws_launch_configuration.aws_launch_configuration.metadata_options
}
output "spot_price" {
  description = "(Optional; Default: On-demand price) The maximum price to use for reserving spot instances."
  value       = aws_launch_configuration.aws_launch_configuration.spot_price
}
output "arn" {
  description = "The Amazon Resource Name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.arn
}
output "id" {
  description = "The ID of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.id
}
output "name" {
  description = "The name of the launch configuration."
  value       = aws_launch_configuration.aws_launch_configuration.name
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
      "kind/name"                   = "aws_launch_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
