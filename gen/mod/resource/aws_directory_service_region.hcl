resource "aws_directory_service_region" "aws_directory_service_region" {
  create                               = var.create
  subnet_ids                           = var.subnet_ids
  tags                                 = var.tags
  tags_all                             = var.tags_all
  desired_number_of_domain_controllers = var.desired_number_of_domain_controllers
  directory_id                         = var.directory_id
  region_name                          = var.region_name
  update                               = var.update
  vpc_id                               = var.vpc_id
  vpc_settings                         = var.vpc_settings
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "desired_number_of_domain_controllers" {
  description = "(Optional) The number of domain controllers desired in the replicated directory. Minimum value of 2."
  type        = string
  default     = ""
}
variable "directory_id" {
  description = "(Required) The identifier of the directory to which you want to add Region replication."
  type        = string
}
variable "region_name" {
  description = "(Required) The name of the Region where you want to add domain controllers for replication."
  type        = string
}
variable "update" {
  description = "(Default 90 minutes) Used for replicated directory update"
  type        = string
}
variable "vpc_id" {
  description = "(Optional) The identifier of the VPC in which to create the directory.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "vpc_settings" {
  description = "(Required) VPC information in the replicated Region. Detailed below.vpc_settings"
  type        = string
}
variable "create" {
  description = "(Default 180 minutes) Used for Region addition"
  type        = string
}
variable "subnet_ids" {
  description = "(Required) The identifiers of the subnets for the directory servers."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_directory_service_region provides the following Timeouts configuration options:"
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
output "desired_number_of_domain_controllers" {
  description = "(Optional) The number of domain controllers desired in the replicated directory. Minimum value of 2."
  value       = aws_directory_service_region.aws_directory_service_region.desired_number_of_domain_controllers
}
output "directory_id" {
  description = "(Required) The identifier of the directory to which you want to add Region replication."
  value       = aws_directory_service_region.aws_directory_service_region.directory_id
}
output "region_name" {
  description = "(Required) The name of the Region where you want to add domain controllers for replication."
  value       = aws_directory_service_region.aws_directory_service_region.region_name
}
output "update" {
  description = "(Default 90 minutes) Used for replicated directory update"
  value       = aws_directory_service_region.aws_directory_service_region.update
}
output "vpc_id" {
  description = "(Optional) The identifier of the VPC in which to create the directory.In addition to all arguments above, the following attributes are exported:"
  value       = aws_directory_service_region.aws_directory_service_region.vpc_id
}
output "vpc_settings" {
  description = "(Required) VPC information in the replicated Region. Detailed below.vpc_settings"
  value       = aws_directory_service_region.aws_directory_service_region.vpc_settings
}
output "create" {
  description = "(Default 180 minutes) Used for Region addition"
  value       = aws_directory_service_region.aws_directory_service_region.create
}
output "subnet_ids" {
  description = "(Required) The identifiers of the subnets for the directory servers."
  value       = aws_directory_service_region.aws_directory_service_region.subnet_ids
}
output "tags" {
  description = "(Optional) Map of tags to assign to this resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_directory_service_region.aws_directory_service_region.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_directory_service_region provides the following Timeouts configuration options:"
  value       = aws_directory_service_region.aws_directory_service_region.tags_all
}
output "create" {
  description = "(Default 180 minutes) Used for Region addition"
  value       = aws_directory_service_region.aws_directory_service_region.create
}
output "delete" {
  description = "(Default 90 minutes) Used for Region removal"
  value       = aws_directory_service_region.aws_directory_service_region.delete
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_directory_service_region provides the following Timeouts configuration options:"
  value       = aws_directory_service_region.aws_directory_service_region.tags_all
}
output "update" {
  description = "(Default 90 minutes) Used for replicated directory update"
  value       = aws_directory_service_region.aws_directory_service_region.update
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
      "kind/name"                   = "aws_directory_service_region"
      "kind/version"                = "v0.1.0"
    }
  }
}
