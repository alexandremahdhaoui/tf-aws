resource "aws_imagebuilder_container_recipe" "aws_imagebuilder_container_recipe" {
  component                = var.component
  container_type           = var.container_type
  ebs                      = var.ebs
  instance_configuration   = var.instance_configuration
  parameter                = var.parameter
  delete_on_termination    = var.delete_on_termination
  snapshot_id              = var.snapshot_id
  image                    = var.image
  repository_name          = var.repository_name
  target_repository        = var.target_repository
  throughput               = var.throughput
  volume_size              = var.volume_size
  arn                      = var.arn
  device_name              = var.device_name
  kms_key_id               = var.kms_key_id
  dockerfile_template_data = var.dockerfile_template_data
  encrypted                = var.encrypted
  no_device                = var.no_device
  tags_all                 = var.tags_all
  value                    = var.value
  virtual_name             = var.virtual_name
  component_arn            = var.component_arn
  date_created             = var.date_created
  platform                 = var.platform
  version                  = var.version
  volume_type              = var.volume_type
  working_directory        = var.working_directory
  block_device_mapping     = var.block_device_mapping
  dockerfile_template_uri  = var.dockerfile_template_uri
  iops                     = var.iops
  name                     = var.name
  owner                    = var.owner
  service                  = var.service
  tags                     = var.tags
  description              = var.description
  parent_image             = var.parent_image
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  type        = string
}
variable "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  type        = string
}
variable "value" {
  description = "(Required) The value for the named component parameter.target_repository"
  type        = string
}
variable "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
  type        = string
}
variable "dockerfile_template_data" {
  description = "(Optional) The Dockerfile template used to build the image as an inline data blob."
  type        = string
}
variable "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  type        = string
}
variable "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.componentThe component block supports the following arguments:"
  type        = string
}
variable "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  type        = string
}
variable "date_created" {
  description = "Date the container recipe was created."
  type        = string
}
variable "platform" {
  description = "Platform of the container recipe."
  type        = string
}
variable "version" {
  description = " (Required) Version of the container recipe.The following attributes are optional:"
  type        = string
}
variable "owner" {
  description = "Owner of the container recipe."
  type        = string
}
variable "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.instance_configuration"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the container recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the the container recipe. Detailed below."
  type        = string
}
variable "dockerfile_template_uri" {
  description = "(Optional) The Amazon S3 URI for the Dockerfile that will be used to build the container image."
  type        = string
}
variable "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  type        = string
}
variable "name" {
  description = "(Required) The name of the component parameter."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the container recipe."
  type        = string
}
variable "parent_image" {
  description = " (Required) The base image for the container recipe."
  type        = string
}
variable "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  type        = string
}
variable "component" {
  description = "(Required) Ordered configuration block(s) with components for the container recipe. Detailed below."
  type        = string
}
variable "container_type" {
  description = "(Required) The type of the container to create. Valid values: DOCKER."
  type        = string
}
variable "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  type        = string
}
variable "instance_configuration" {
  description = "(Optional) Configuration block used to configure an instance for building and testing container images. Detailed below."
  type        = string
}
variable "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  type        = string
}
variable "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  type        = string
}
variable "image" {
  description = "(Optional) The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.block_device_mapping"
  type        = string
}
variable "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  type        = string
}
variable "target_repository" {
  description = " (Required) The destination repository for the container image. Detailed below."
  type        = string
}
variable "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
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
output "ebs" {
  description = "(Optional) Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_configuration" {
  description = "(Optional) Configuration block used to configure an instance for building and testing container images. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.instance_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameter" {
  description = "(Optional) Configuration block(s) for parameters to configure the component. Detailed below.parameter"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component" {
  description = "(Required) Ordered configuration block(s) with components for the container recipe. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_type" {
  description = "(Required) The type of the container to create. Valid values: DOCKER."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.container_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "(Optional) Whether to delete the volume on termination. Defaults to unset, which is the value inherited from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "(Optional) Identifier of the EC2 Volume Snapshot."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_repository" {
  description = " (Required) The destination repository for the container image. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.target_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "(Optional) For GP3 volumes only. The throughput in MiB/s that the volume supports."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "(Optional) Size of the volume, in GiB."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "(Optional) The AMI ID to use as the base image for a container build and test instance. If not specified, Image Builder will use the appropriate ECS-optimized AMI as a base image.block_device_mapping"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_name" {
  description = "(Required) The name of the container repository where the output container image is stored. This name is prefixed by the repository location."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.repository_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key for encryption."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "(Optional) Name of the device. For example, /dev/sda or /dev/xvdb."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "(Optional) Set to true to remove a mapping from the parent image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) The value for the named component parameter.target_repository"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "(Optional) Virtual device name. For example, ephemeral0. Instance store volumes are numbered starting from 0.ebs"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dockerfile_template_data" {
  description = "(Optional) The Dockerfile template used to build the image as an inline data blob."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = " (Required) Version of the container recipe.The following attributes are optional:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "(Optional) Type of the volume. For example, gp2 or io2.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "working_directory" {
  description = "(Optional) The working directory to be used during build and test workflows.componentThe component block supports the following arguments:"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.working_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Component to associate."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) Number of Input/Output (I/O) operations per second to provision for an io1 or io2 volume."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the component parameter."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service" {
  description = "(Required) The service in which this image is registered. Valid values: ECR.instance_configuration"
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the container recipe. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mapping" {
  description = "(Optional) Configuration block(s) with block device mappings for the the container recipe. Detailed below."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.block_device_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dockerfile_template_uri" {
  description = "(Optional) The Amazon S3 URI for the Dockerfile that will be used to build the container image."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.dockerfile_template_uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_image" {
  description = " (Required) The base image for the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.parent_image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the container recipe was created."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "A flag that indicates if the target container is encrypted."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "Owner of the container recipe."
  value       = aws_imagebuilder_container_recipe.aws_imagebuilder_container_recipe.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
