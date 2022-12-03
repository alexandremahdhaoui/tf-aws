resource "aws_datasync_location_efs" "aws_datasync_location_efs" {
  access_point_arn            = var.access_point_arn
  arn                         = var.arn
  efs_file_system_arn         = var.efs_file_system_arn
  id                          = var.id
  security_group_arns         = var.security_group_arns
  subdirectory                = var.subdirectory
  subnet_arn                  = var.subnet_arn
  ec2_config                  = var.ec2_config
  file_system_access_role_arn = var.file_system_access_role_arn
  in_transit_encryption       = var.in_transit_encryption
  tags                        = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "access_point_arn" {
  description = "(Optional) Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "efs_file_system_arn" {
  description = "(Required) Amazon Resource Name (ARN) of EFS File System."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  type        = string
}
variable "security_group_arns" {
  description = "(Required) List of Amazon Resource Names (ARNs) of the EC2 Security Groups that are associated with the EFS Mount Target."
  type        = string
}
variable "subdirectory" {
  description = "(Optional) Subdirectory to perform actions as source or destination. Default /."
  type        = string
  default     = ""
}
variable "subnet_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the EC2 Subnet that is associated with the EFS Mount Target.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ec2_config" {
  description = "(Required) Configuration block containing EC2 configurations for connecting to the EFS File System."
  type        = string
}
variable "file_system_access_role_arn" {
  description = "(Optional)  Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system."
  type        = string
  default     = ""
}
variable "in_transit_encryption" {
  description = "(Optional) Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are NONE and TLS1_2."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.ec2_config Argument Referenceec2_config configuration block:"
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
output "subdirectory" {
  description = "(Optional) Subdirectory to perform actions as source or destination. Default /."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.subdirectory
}
output "subnet_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the EC2 Subnet that is associated with the EFS Mount Target.In addition to all arguments above, the following attributes are exported:"
  value       = aws_datasync_location_efs.aws_datasync_location_efs.subnet_arn
}
output "access_point_arn" {
  description = "(Optional) Specifies the Amazon Resource Name (ARN) of the access point that DataSync uses to access the Amazon EFS file system."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.access_point_arn
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.arn
}
output "efs_file_system_arn" {
  description = "(Required) Amazon Resource Name (ARN) of EFS File System."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.efs_file_system_arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.id
}
output "security_group_arns" {
  description = "(Required) List of Amazon Resource Names (ARNs) of the EC2 Security Groups that are associated with the EFS Mount Target."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.security_group_arns
}
output "ec2_config" {
  description = "(Required) Configuration block containing EC2 configurations for connecting to the EFS File System."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.ec2_config
}
output "file_system_access_role_arn" {
  description = "(Optional)  Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.file_system_access_role_arn
}
output "in_transit_encryption" {
  description = "(Optional) Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are NONE and TLS1_2."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.in_transit_encryption
}
output "tags" {
  description = "(Optional) Key-value pairs of resource tags to assign to the DataSync Location. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.ec2_config Argument Referenceec2_config configuration block:"
  value       = aws_datasync_location_efs.aws_datasync_location_efs.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.arn
}
output "id" {
  description = "Amazon Resource Name (ARN) of the DataSync Location."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_datasync_location_efs.aws_datasync_location_efs.tags_all
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
      "kind/name"                   = "aws_datasync_location_efs"
      "kind/version"                = "v0.1.0"
    }
  }
}
