resource "aws_datasync_location_smb" "aws_datasync_location_smb" {
  domain          = var.domain
  mount_options   = var.mount_options
  password        = var.password
  user            = var.user
  tags            = var.tags
  version         = var.version
  agent_arns      = var.agent_arns
  arn             = var.arn
  server_hostname = var.server_hostname
  subdirectory    = var.subdirectory
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "domain" {
  description = "(Optional) The name of the Windows domain the SMB server belongs to."
  type        = string
  default     = ""
}
variable "mount_options" {
  description = "(Optional) Configuration block containing mount options used by DataSync to access the SMB Server. Can be AUTOMATIC, SMB2, or SMB3."
  type        = string
  default     = ""
}
variable "password" {
  description = "(Required) The password of the user who can mount the share and has file permissions in the SMB."
  type        = string
}
variable "user" {
  description = "(Required) The user who can mount the share and has file and folder permissions in the SMB share.mount_options Argument Referencemount_options configuration block:"
  type        = string
}
variable "agent_arns" {
  description = "(Required) A list of DataSync Agent ARNs with which this location will be associated."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "server_hostname" {
  description = "(Required) Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share."
  type        = string
}
variable "subdirectory" {
  description = "(Required) Subdirectory to perform actions as source or destination. Should be exported by the NFS server."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) The specific SMB version that you want DataSync to use for mounting your SMB share. Valid values: AUTOMATIC, SMB2, and SMB3. Default: AUTOMATICIn addition to all arguments above, the following attributes are exported:"
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
output "password" {
  description = "(Required) The password of the user who can mount the share and has file permissions in the SMB."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.password
}
output "user" {
  description = "(Required) The user who can mount the share and has file and folder permissions in the SMB share.mount_options Argument Referencemount_options configuration block:"
  value       = aws_datasync_location_smb.aws_datasync_location_smb.user
}
output "domain" {
  description = "(Optional) The name of the Windows domain the SMB server belongs to."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.domain
}
output "mount_options" {
  description = "(Optional) Configuration block containing mount options used by DataSync to access the SMB Server. Can be AUTOMATIC, SMB2, or SMB3."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.mount_options
}
output "server_hostname" {
  description = "(Required) Specifies the IP address or DNS name of the SMB server. The DataSync Agent(s) use this to mount the SMB share."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.server_hostname
}
output "subdirectory" {
  description = "(Required) Subdirectory to perform actions as source or destination. Should be exported by the NFS server."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.subdirectory
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.tags
}
output "version" {
  description = "(Optional) The specific SMB version that you want DataSync to use for mounting your SMB share. Valid values: AUTOMATIC, SMB2, and SMB3. Default: AUTOMATICIn addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_location_smb.aws_datasync_location_smb.version
}
output "agent_arns" {
  description = "(Required) A list of DataSync Agent ARNs with which this location will be associated."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.agent_arns
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_smb.aws_datasync_location_smb.tags_all
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
      "kind/name"                   = "aws_datasync_location_smb"
      "kind/version"                = "v0.1.0"
    }
  }
}
