resource "aws_imagebuilder_container_recipe" "aws_imagebuilder_container_recipe" {
  arn                      = var.arn
  component                = var.component
  image                    = var.image
  parent_image             = var.parent_image
  value                    = var.value
  volume_size              = var.volume_size
  description              = var.description
  name                     = var.name
  service                  = var.service
  virtual_name             = var.virtual_name
  block_device_mapping     = var.block_device_mapping
  dockerfile_template_uri  = var.dockerfile_template_uri
  parameter                = var.parameter
  container_type           = var.container_type
  device_name              = var.device_name
  dockerfile_template_data = var.dockerfile_template_data
  instance_configuration   = var.instance_configuration
  no_device                = var.no_device
  working_directory        = var.working_directory
  date_created             = var.date_created
  iops                     = var.iops
  kms_key_id               = var.kms_key_id
  owner                    = var.owner
  snapshot_id              = var.snapshot_id
  target_repository        = var.target_repository
  version                  = var.version
  delete_on_termination    = var.delete_on_termination
  platform                 = var.platform
  tags_all                 = var.tags_all
  component_arn            = var.component_arn
  ebs                      = var.ebs
  encrypted                = var.encrypted
  repository_name          = var.repository_name
  tags                     = var.tags
  throughput               = var.throughput
  volume_type              = var.volume_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
  default     = ""
}
variable "platform" {
  description = "Platform of the container recipe."
  type        = string
  default     = ""
}
variable "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  type        = string
}
variable "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the container recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
  type        = string
  default     = ""
}
variable "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  type        = string
  default     = ""
}
variable "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  type        = string
  default     = ""
}
variable "image" {
  description = "(Optional) The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.block_device_mapping"
  type        = string
  default     = ""
}
variable "parent_image" {
  description = " (Required) The base image for the container recipe."
  type        = string
}
variable "value" {
  description = "(Required) The value for the named component parameter.target_repository"
  type        = string
}
variable "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  type        = string
}
variable "component" {
  description = "(Required) Ordered configuration block(s) with components for the container recipe. Detailed below."
  type        = string
}
variable "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.instance_configuration"
  type        = string
}
variable "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the container recipe."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the component parameter."
  type        = string
}
variable "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  type        = string
  default     = ""
}
variable "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the the container recipe. Detailed below."
  type        = string
  default     = ""
}
variable "dockerfile_template_uri" {
  description = "(Optional) The Amazon S3 URI for the Dockerfile that will be used to build the container image."
  type        = string
  default     = ""
}
variable "dockerfile_template_data" {
  description = "(Optional) The Dockerfile template used to build the image as an inline data blob."
  type        = string
  default     = ""
}
variable "instance_configuration" {
  description = "(Optional) Configuration block used to configure an instance for building and testing container images. Detailed below."
  type        = string
  default     = ""
}
variable "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  type        = string
  default     = ""
}
variable "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.componentThe component block supports the following arguments:"
  type        = string
  default     = ""
}
variable "container_type" {
  description = "(Required) The type of the container to create. Valid values: DOCKER."
  type        = string
}
variable "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  type        = string
  default     = ""
}
variable "owner" {
  description = "Owner of the container recipe."
  type        = string
  default     = ""
}
variable "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  type        = string
  default     = ""
}
variable "target_repository" {
  description = " (Required) The destination repository for the container image. Detailed below."
  type        = string
}
variable "version" {
  description = " (Required) Version of the container recipe.The following attributes are optional:"
  type        = string
}
variable "date_created" {
  description = "Date the container recipe was created."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
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
output "name" {
  description = "(Required) The name of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.instance_configuration"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "description" {
  description = "(Optional) The description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "dockerfile_template_uri" {
  description = "(Optional) The Amazon S3 URI for the Dockerfile that will be used to build the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_uri
}
output "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the the container recipe. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "dockerfile_template_data" {
  description = "(Optional) The Dockerfile template used to build the image as an inline data blob."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "instance_configuration" {
  description = "(Optional) Configuration block used to configure an instance for building and testing container images. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.componentThe component block supports the following arguments:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.working_directory
}
output "container_type" {
  description = "(Required) The type of the container to create. Valid values: DOCKER."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "target_repository" {
  description = " (Required) The destination repository for the container image. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "version" {
  description = " (Required) Version of the container recipe.The following attributes are optional:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags_all
}
output "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the container recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "component" {
  description = "(Required) Ordered configuration block(s) with components for the container recipe. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "image" {
  description = "(Optional) The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.block_device_mapping"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "parent_image" {
  description = " (Required) The base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "value" {
  description = "(Required) The value for the named component parameter.target_repository"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags_all
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
      "kind/name"                   = "aws_imagebuilder_container_recipe"
      "kind/version"                = "v0.1.0"
    }
  }
}
