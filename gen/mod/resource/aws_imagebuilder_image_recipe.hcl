resource "aws_imagebuilder_image_recipe" "aws_imagebuilder_image_recipe" {
  delete_on_termination = var.delete_on_termination
  kms_key_id            = var.kms_key_id
  platform              = var.platform
  systems_manager_agent = var.systems_manager_agent
  component_arn         = var.component_arn
  parameter             = var.parameter
  throughput            = var.throughput
  user_data_base64      = var.user_data_base64
  no_device             = var.no_device
  date_created          = var.date_created
  ebs                   = var.ebs
  encrypted             = var.encrypted
  block_device_mapping  = var.block_device_mapping
  tags                  = var.tags
  uninstall_after_build = var.uninstall_after_build
  version               = var.version
  iops                  = var.iops
  snapshot_id           = var.snapshot_id
  tags_all              = var.tags_all
  volume_size           = var.volume_size
  parent_image          = var.parent_image
  device_name           = var.device_name
  name                  = var.name
  owner                 = var.owner
  volume_type           = var.volume_type
  working_directory     = var.working_directory
  component             = var.component
  virtual_name          = var.virtual_name
  value                 = var.value
  description           = var.description
  arn                   = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the image recipe."
  type        = string
}
variable "description" {
  description = "(Optional) Description of the image recipe."
  type        = string
  default     = ""
}
variable "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  type        = string
}
variable "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  type        = string
  default     = ""
}
variable "platform" {
  description = "Platform of the image recipe."
  type        = string
  default     = ""
}
variable "systems_manager_agent" {
  description = "(Optional) Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below."
  type        = string
  default     = ""
}
variable "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  type        = string
  default     = ""
}
variable "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
  default     = ""
}
variable "user_data_base64" {
  description = " (Optional) Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance."
  type        = string
  default     = ""
}
variable "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the image recipe. Detailed below."
  type        = string
  default     = ""
}
variable "date_created" {
  description = "Date the image recipe was created."
  type        = string
  default     = ""
}
variable "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  type        = string
  default     = ""
}
variable "encrypted" {
  description = "(Optional) Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the image recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "uninstall_after_build" {
  description = "(Required) Whether to remove the Systems Manager Agent after the image has been built. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "version" {
  description = "(Required) Version of the image recipe.The following attributes are optional:"
  type        = string
}
variable "parent_image" {
  description = "(Required) Platform of the image recipe."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  type        = string
  default     = ""
}
variable "component" {
  description = "(Required) Ordered configuration block(s) with components for the image recipe. Detailed below."
  type        = string
}
variable "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the component parameter."
  type        = string
}
variable "owner" {
  description = "Owner of the image recipe."
  type        = string
  default     = ""
}
variable "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.componentThe component block supports the following arguments:"
  type        = string
  default     = ""
}
variable "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.block_device_mapping"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) The value for the named component parameter.systems_manager_agent"
  type        = string
}
variable "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
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
output "parent_image" {
  description = "(Required) Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parent_image
}
output "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.snapshot_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags_all
}
output "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_size
}
output "component" {
  description = "(Required) Ordered configuration block(s) with components for the image recipe. Detailed below."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component
}
output "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.device_name
}
output "name" {
  description = "(Required) The name of the component parameter."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.name
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.componentThe component block supports the following arguments:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.volume_type
}
output "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.block_device_mapping"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.working_directory
}
output "value" {
  description = "(Required) The value for the named component parameter.systems_manager_agent"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.value
}
output "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.virtual_name
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.arn
}
output "description" {
  description = "(Optional) Description of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.description
}
output "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.component_arn
}
output "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.delete_on_termination
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.kms_key_id
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "systems_manager_agent" {
  description = "(Optional) Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.systems_manager_agent
}
output "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.no_device
}
output "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.parameter
}
output "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.throughput
}
output "user_data_base64" {
  description = " (Optional) Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.user_data_base64
}
output "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the image recipe. Detailed below."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.block_device_mapping
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.ebs
}
output "encrypted" {
  description = "(Optional) Whether to encrypt the volume. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.encrypted
}
output "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.iops
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the image recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags
}
output "uninstall_after_build" {
  description = "(Required) Whether to remove the Systems Manager Agent after the image has been built. Defaults to false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.uninstall_after_build
}
output "version" {
  description = "(Required) Version of the image recipe.The following attributes are optional:"
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.version
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.arn
}
output "date_created" {
  description = "Date the image recipe was created."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.date_created
}
output "owner" {
  description = "Owner of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.owner
}
output "platform" {
  description = "Platform of the image recipe."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.platform
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image_recipe.aws_imagebuilder_image_recipe.tags_all
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
      "kind/name"                   = "aws_imagebuilder_image_recipe"
      "kind/version"                = "v0.1.0"
    }
  }
}
