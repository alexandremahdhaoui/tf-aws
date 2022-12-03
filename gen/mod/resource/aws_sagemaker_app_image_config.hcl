resource "aws_sagemaker_app_image_config" "aws_sagemaker_app_image_config" {
  default_gid                 = var.default_gid
  default_uid                 = var.default_uid
  display_name                = var.display_name
  kernel_spec                 = var.kernel_spec
  mount_path                  = var.mount_path
  name                        = var.name
  app_image_config_name       = var.app_image_config_name
  arn                         = var.arn
  file_system_config          = var.file_system_config
  id                          = var.id
  kernel_gateway_image_config = var.kernel_gateway_image_config
  tags                        = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Kernel Gateway Image Config"
  type        = string
  default     = ""
}
variable "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this App Image Config."
  type        = string
}
variable "file_system_config" {
  description = "(Optional) The URL where the Git repository is located. See File System Config details below."
  type        = string
  default     = ""
}
variable "id" {
  description = "The name of the App Image Config."
  type        = string
}
variable "kernel_gateway_image_config" {
  description = "(Optional) The configuration for the file system and kernels in a SageMaker image running as a KernelGateway app. See Kernel Gateway Image Config details below."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the kernel."
  type        = string
}
variable "default_gid" {
  description = "(Optional) The default POSIX group ID (GID). If not specified, defaults to 100. Valid values are 0 and 100."
  type        = string
  default     = ""
}
variable "default_uid" {
  description = "(Optional) The default POSIX user ID (UID). If not specified, defaults to 1000. Valid values are 0 and 1000."
  type        = string
  default     = ""
}
variable "display_name" {
  description = "(Optional) The display name of the kernel.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "kernel_spec" {
  description = "(Required) The default branch for the Git repository. See Kernel Spec details below.File System Config"
  type        = string
}
variable "mount_path" {
  description = "(Optional) The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to /home/sagemaker-user.~> strongNote: When specifying default_gid and default_uid, Valid value pairs are [0, 0] and [100, 1000].Kernel Spec"
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
output "app_image_config_name" {
  description = "(Required) The name of the App Image Config."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.app_image_config_name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this App Image Config."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.arn
}
output "file_system_config" {
  description = "(Optional) The URL where the Git repository is located. See File System Config details below."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.file_system_config
}
output "id" {
  description = "The name of the App Image Config."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.id
}
output "kernel_gateway_image_config" {
  description = "(Optional) The configuration for the file system and kernels in a SageMaker image running as a KernelGateway app. See Kernel Gateway Image Config details below."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.kernel_gateway_image_config
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Kernel Gateway Image Config"
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.tags
}
output "default_gid" {
  description = "(Optional) The default POSIX group ID (GID). If not specified, defaults to 100. Valid values are 0 and 100."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.default_gid
}
output "default_uid" {
  description = "(Optional) The default POSIX user ID (UID). If not specified, defaults to 1000. Valid values are 0 and 1000."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.default_uid
}
output "display_name" {
  description = "(Optional) The display name of the kernel.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.display_name
}
output "kernel_spec" {
  description = "(Required) The default branch for the Git repository. See Kernel Spec details below.File System Config"
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.kernel_spec
}
output "mount_path" {
  description = "(Optional) The path within the image to mount the user's EFS home directory. The directory should be empty. If not specified, defaults to /home/sagemaker-user.~> strongNote: When specifying default_gid and default_uid, Valid value pairs are [0, 0] and [100, 1000].Kernel Spec"
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.mount_path
}
output "name" {
  description = "(Required) The name of the kernel."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this App Image Config."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.arn
}
output "id" {
  description = "The name of the App Image Config."
  value       = aws_sagemaker_app_image_config.aws_sagemaker_app_image_config.id
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
      "kind/name"                   = "aws_sagemaker_app_image_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
