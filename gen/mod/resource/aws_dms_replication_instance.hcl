resource "aws_dms_replication_instance" "aws_dms_replication_instance" {
  publicly_accessible                                                                                                            = var.publicly_accessible
  replication_instance_id                                                                                                        = var.replication_instance_id
  First character must be a letter.                                                                                              = var.First character must be a letter.
  allocated_storage                                                                                                              = var.allocated_storage
  apply_immediately                                                                                                              = var.apply_immediately
  Cannot contain two consecutive hyphens.                                                                                        = var.Cannot contain two consecutive hyphens.
  Cannot end with a hyphen                                                                                                       = var.Cannot end with a hyphen
  update                                                                                                                         = var.update
  Must contain from 1 to 63 alphanumeric characters or hyphens.                                                                  = var.Must contain from 1 to 63 alphanumeric characters or hyphens.
  replication_instance_class                                                                                                     = var.replication_instance_class
  replication_instance_public_ips                                                                                                = var.replication_instance_public_ips
  kms_key_arn                                                                                                                    = var.kms_key_arn
  replication_instance_private_ips                                                                                               = var.replication_instance_private_ips
  Constraints: Minimum 30-minute window.                                                                                         = var.Constraints: Minimum 30-minute window.
  Valid Days:                                                                                                                    = var.Valid Days: 
  auto_minor_version_upgrade                                                                                                     = var.auto_minor_version_upgrade
  tags_all                                                                                                                       = var.tags_all
  Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week. = var.Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
  create                                                                                                                         = var.create
  replication_instance_arn                                                                                                       = var.replication_instance_arn
  preferred_maintenance_window                                                                                                   = var.preferred_maintenance_window
  replication_subnet_group_id                                                                                                    = var.replication_subnet_group_id
  tags                                                                                                                           = var.tags
  vpc_security_group_ids                                                                                                         = var.vpc_security_group_ids
  allow_major_version_upgrade                                                                                                    = var.allow_major_version_upgrade
  engine_version                                                                                                                 = var.engine_version
  multi_az                                                                                                                       = var.multi_az
  Format:                                                                                                                        = var.Format: 
  availability_zone                                                                                                              = var.availability_zone
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)."
  type        = string
  default     = ""
}
variable "engine_version" {
  description = "(Optional) The engine version number of the replication instance."
  type        = string
  default     = ""
}
variable "multi_az" {
  description = "(Optional) Specifies if the replication instance is a multi-az deployment. You cannot set the availability_zone parameter if the multi_az parameter is set to true."
  type        = string
  default     = ""
}
variable "replication_subnet_group_id" {
  description = "(Optional) A subnet group to associate with the replication instance."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "vpc_security_group_ids" {
  description = "(Optional) A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allow_major_version_upgrade" {
  description = "(Optional, Default: false) Indicates that major version upgrades are allowed."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) The EC2 Availability Zone that the replication instance will be created in."
  type        = string
  default     = ""
}
variable "Format: " {
  description = "ddd:hh24:mi-ddd:hh24:mi"
  type        = string
}
variable "allocated_storage" {
  description = "(Optional, Default: 50, Min: 5, Max: 6144) The amount of storage (in gigabytes) to be initially allocated for the replication instance."
  type        = string
}
variable "apply_immediately" {
  description = "(Optional, Default: false) Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource."
  type        = string
}
variable "publicly_accessible" {
  description = "(Optional, Default: false) Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address."
  type        = string
}
variable "replication_instance_id" {
  description = "(Required) The replication instance identifier. This parameter is stored as a lowercase string."
  type        = string
}
variable "First character must be a letter." {
  description = ""
  type        = string
}
variable "Cannot end with a hyphen" {
  description = ""
  type        = string
}
variable "Cannot contain two consecutive hyphens." {
  description = ""
  type        = string
}
variable "replication_instance_class" {
  description = "(Required) The compute and memory capacity of the replication instance as specified by the replication instance class. See AWS DMS User Guide for available instance sizes and advice on which one to choose."
  type        = string
}
variable "replication_instance_public_ips" {
  description = "A list of the public IP addresses of the replication instance."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "Must contain from 1 to 63 alphanumeric characters or hyphens." {
  description = ""
  type        = string
}
variable "Valid Days: " {
  description = "mon, tue, wed, thu, fri, sat, sun"
  type        = string
}
variable "auto_minor_version_upgrade" {
  description = "(Optional, Default: false) Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region."
  type        = string
  default     = ""
}
variable "replication_instance_private_ips" {
  description = " A list of the private IP addresses of the replication instance."
  type        = string
}
variable "Constraints: Minimum 30-minute window." {
  description = ""
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "replication_instance_arn" {
  description = "The Amazon Resource Name (ARN) of the replication instance."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week." {
  description = ""
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
output "Valid Days: " {
  description = "mon, tue, wed, thu, fri, sat, sun"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Valid Days: 
}
output "auto_minor_version_upgrade" {
  description = "(Optional, Default: false) Indicates that minor engine upgrades will be applied automatically to the replication instance during the maintenance window."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.auto_minor_version_upgrade
}
output "kms_key_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the KMS key that will be used to encrypt the connection parameters. If you do not specify a value for kms_key_arn, then AWS DMS will use your default encryption key. AWS KMS creates the default encryption key for your AWS account. Your AWS account has a different default encryption key for each AWS region."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.kms_key_arn
}
output "replication_instance_private_ips" {
  description = " A list of the private IP addresses of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_private_ips
}
output "Constraints: Minimum 30-minute window." {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Constraints: Minimum 30-minute window.
}
output "create" {
  description = "(Default 30m)"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.create
}
output "replication_instance_arn" {
  description = "The Amazon Resource Name (ARN) of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.tags_all
}
output "Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week." {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Default: A 30-minute window selected at random from an 8-hour block of time per region, occurring on a random day of the week.
}
output "preferred_maintenance_window" {
  description = "(Optional) The weekly time range during which system maintenance can occur, in Universal Coordinated Time (UTC)."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.preferred_maintenance_window
}
output "engine_version" {
  description = "(Optional) The engine version number of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.engine_version
}
output "multi_az" {
  description = "(Optional) Specifies if the replication instance is a multi-az deployment. You cannot set the availability_zone parameter if the multi_az parameter is set to true."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.multi_az
}
output "replication_subnet_group_id" {
  description = "(Optional) A subnet group to associate with the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_subnet_group_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.tags
}
output "vpc_security_group_ids" {
  description = "(Optional) A list of VPC security group IDs to be used with the replication instance. The VPC security groups must work with the VPC containing the replication instance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.vpc_security_group_ids
}
output "allow_major_version_upgrade" {
  description = "(Optional, Default: false) Indicates that major version upgrades are allowed."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.allow_major_version_upgrade
}
output "availability_zone" {
  description = "(Optional) The EC2 Availability Zone that the replication instance will be created in."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.availability_zone
}
output "Format: " {
  description = "ddd:hh24:mi-ddd:hh24:mi"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Format: 
}
output "allocated_storage" {
  description = "(Optional, Default: 50, Min: 5, Max: 6144) The amount of storage (in gigabytes) to be initially allocated for the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.allocated_storage
}
output "apply_immediately" {
  description = "(Optional, Default: false) Indicates whether the changes should be applied immediately or during the next maintenance window. Only used when updating an existing resource."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.apply_immediately
}
output "publicly_accessible" {
  description = "(Optional, Default: false) Specifies the accessibility options for the replication instance. A value of true represents an instance with a public IP address. A value of false represents an instance with a private IP address."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.publicly_accessible
}
output "replication_instance_id" {
  description = "(Required) The replication instance identifier. This parameter is stored as a lowercase string."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_id
}
output "First character must be a letter." {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.First character must be a letter.
}
output "Cannot end with a hyphen" {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Cannot end with a hyphen
}
output "Cannot contain two consecutive hyphens." {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Cannot contain two consecutive hyphens.
}
output "replication_instance_class" {
  description = "(Required) The compute and memory capacity of the replication instance as specified by the replication instance class. See AWS DMS User Guide for available instance sizes and advice on which one to choose."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_class
}
output "replication_instance_public_ips" {
  description = "A list of the public IP addresses of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_public_ips
}
output "update" {
  description = "(Default 30m)"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.update
}
output "Must contain from 1 to 63 alphanumeric characters or hyphens." {
  description = ""
  value       = aws_dms_replication_instance.aws_dms_replication_instance.Must contain from 1 to 63 alphanumeric characters or hyphens.
}
output "replication_instance_private_ips" {
  description = " A list of the private IP addresses of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_private_ips
}
output "replication_instance_public_ips" {
  description = "A list of the public IP addresses of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_public_ips
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.tags_all
}
output "update" {
  description = "(Default 30m)"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.update
}
output "create" {
  description = "(Default 30m)"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_dms_replication_instance.aws_dms_replication_instance.delete
}
output "replication_instance_arn" {
  description = "The Amazon Resource Name (ARN) of the replication instance."
  value       = aws_dms_replication_instance.aws_dms_replication_instance.replication_instance_arn
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
      "kind/name"                   = "aws_dms_replication_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
