resource "aws_efs_access_point" "aws_efs_access_point" {
  creation_info   = var.creation_info
  file_system_arn = var.file_system_arn
  file_system_id  = var.file_system_id
  owner_uid       = var.owner_uid
  path            = var.path
  arn             = var.arn
  gid             = var.gid
  id              = var.id
  posix_user      = var.posix_user
  root_directory  = var.root_directory
  tags            = var.tags
  uid             = var.uid
  owner_gid       = var.owner_gid
  permissions     = var.permissions
  secondary_gids  = var.secondary_gids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "posix_user" {
  description = "(Optional) Operating system user and group applied to all file system requests made using the access point. Detailed below."
  type        = string
  default     = ""
}
variable "root_directory" {
  description = "- (Optional) Directory on the Amazon EFS file system that the access point provides access to. Detailed below."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.posix_user"
  type        = string
  default     = ""
}
variable "uid" {
  description = "(Required) POSIX user ID used for all file system operations using this access point.root_directoryThe access point exposes the specified file system path as the root directory of your file system to applications using the access point. NFS clients using the access point can only access data in the access point's RootDirectory and it's subdirectories."
  type        = string
}
variable "arn" {
  description = "ARN of the access point."
  type        = string
}
variable "gid" {
  description = "(Required) POSIX group ID used for all file system operations using this access point."
  type        = string
}
variable "id" {
  description = "ID of the access point."
  type        = string
}
variable "owner_gid" {
  description = "(Required) POSIX group ID to apply to the root_directory."
  type        = string
}
variable "permissions" {
  description = "(Required) POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "secondary_gids" {
  description = "(Optional) Secondary POSIX group IDs used for all file system operations using this access point."
  type        = string
  default     = ""
}
variable "creation_info" {
  description = "(Optional) POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide creation_info.creation_infoIf the path specified does not exist, EFS creates the root directory using the creation_info settings when a client connects to an access point."
  type        = string
  default     = ""
}
variable "file_system_arn" {
  description = "ARN of the file system."
  type        = string
}
variable "file_system_id" {
  description = "(Required) ID of the file system for which the access point is intended."
  type        = string
}
variable "owner_uid" {
  description = "(Required) POSIX user ID to apply to the root_directory."
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
output "owner_gid" {
  description = "(Required) POSIX group ID to apply to the root_directory."
  value       = aws_efs_access_point.aws_efs_access_point.owner_gid
}
output "permissions" {
  description = "(Required) POSIX permissions to apply to the RootDirectory, in the format of an octal number representing the file's mode bits.In addition to all arguments above, the following attributes are exported:"
  value       = aws_efs_access_point.aws_efs_access_point.permissions
}
output "secondary_gids" {
  description = "(Optional) Secondary POSIX group IDs used for all file system operations using this access point."
  value       = aws_efs_access_point.aws_efs_access_point.secondary_gids
}
output "creation_info" {
  description = "(Optional) POSIX IDs and permissions to apply to the access point's Root Directory. See Creation Info below."
  value       = aws_efs_access_point.aws_efs_access_point.creation_info
}
output "file_system_arn" {
  description = "ARN of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "file_system_id" {
  description = "(Required) ID of the file system for which the access point is intended."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_id
}
output "owner_uid" {
  description = "(Required) POSIX user ID to apply to the root_directory."
  value       = aws_efs_access_point.aws_efs_access_point.owner_uid
}
output "path" {
  description = "(Optional) Path on the EFS file system to expose as the root directory to NFS clients using the access point to access the EFS file system. A path can have up to four subdirectories. If the specified path does not exist, you are required to provide creation_info.creation_infoIf the path specified does not exist, EFS creates the root directory using the creation_info settings when a client connects to an access point."
  value       = aws_efs_access_point.aws_efs_access_point.path
}
output "arn" {
  description = "ARN of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.arn
}
output "gid" {
  description = "(Required) POSIX group ID used for all file system operations using this access point."
  value       = aws_efs_access_point.aws_efs_access_point.gid
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "posix_user" {
  description = "(Optional) Operating system user and group applied to all file system requests made using the access point. Detailed below."
  value       = aws_efs_access_point.aws_efs_access_point.posix_user
}
output "root_directory" {
  description = "- (Optional) Directory on the Amazon EFS file system that the access point provides access to. Detailed below."
  value       = aws_efs_access_point.aws_efs_access_point.root_directory
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.posix_user"
  value       = aws_efs_access_point.aws_efs_access_point.tags
}
output "uid" {
  description = "(Required) POSIX user ID used for all file system operations using this access point.root_directoryThe access point exposes the specified file system path as the root directory of your file system to applications using the access point. NFS clients using the access point can only access data in the access point's RootDirectory and it's subdirectories."
  value       = aws_efs_access_point.aws_efs_access_point.uid
}
output "file_system_arn" {
  description = "ARN of the file system."
  value       = aws_efs_access_point.aws_efs_access_point.file_system_arn
}
output "id" {
  description = "ID of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_efs_access_point.aws_efs_access_point.tags_all
}
output "arn" {
  description = "ARN of the access point."
  value       = aws_efs_access_point.aws_efs_access_point.arn
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
      "kind/name"                   = "aws_efs_access_point"
      "kind/version"                = "v0.1.0"
    }
  }
}
