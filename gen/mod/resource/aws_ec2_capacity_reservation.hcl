resource "aws_ec2_capacity_reservation" "aws_ec2_capacity_reservation" {
  end_date_type           = var.end_date_type
  instance_count          = var.instance_count
  instance_match_criteria = var.instance_match_criteria
  owner_id                = var.owner_id
  tags                    = var.tags
  ebs_optimized           = var.ebs_optimized
  end_date                = var.end_date
  arn                     = var.arn
  ephemeral_storage       = var.ephemeral_storage
  instance_platform       = var.instance_platform
  outpost_arn             = var.outpost_arn
  tenancy                 = var.tenancy
  availability_zone       = var.availability_zone
  instance_type           = var.instance_type
  placement_group_arn     = var.placement_group_arn
  id                      = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the Capacity Reservation."
  type        = string
}
variable "end_date" {
  description = "(Optional) The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  type        = string
}
variable "availability_zone" {
  description = "(Required) The Availability Zone in which to create the Capacity Reservation."
  type        = string
}
variable "ephemeral_storage" {
  description = "(Optional) Indicates whether the Capacity Reservation supports instances with temporary, block-level storage."
  type        = string
}
variable "instance_platform" {
  description = "(Required) The type of operating system for which to reserve capacity. Valid options are Linux/UNIX, Red Hat Enterprise Linux, SUSE Linux, Windows, Windows with SQL Server, Windows with SQL Server Enterprise, Windows with SQL Server Standard or Windows with SQL Server Web."
  type        = string
}
variable "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation."
  type        = string
}
variable "tenancy" {
  description = "(Optional) Indicates the tenancy of the Capacity Reservation. Specify either default or dedicated.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "The Capacity Reservation ID."
  type        = string
}
variable "instance_type" {
  description = "(Required) The instance type for which to reserve capacity."
  type        = string
}
variable "placement_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation."
  type        = string
}
variable "ebs_optimized" {
  description = "(Optional) Indicates whether the Capacity Reservation supports EBS-optimized instances."
  type        = string
}
variable "end_date_type" {
  description = "(Optional) Indicates the way in which the Capacity Reservation ends. Specify either unlimited or limited."
  type        = string
}
variable "instance_count" {
  description = "(Required) The number of instances for which to reserve capacity."
  type        = string
}
variable "instance_match_criteria" {
  description = "(Optional) Indicates the type of instance launches that the Capacity Reservation accepts. Specify either open or targeted."
  type        = string
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the Capacity Reservation."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "arn" {
  description = "The ARN of the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "end_date" {
  description = "(Optional) The date and time at which the Capacity Reservation expires. When a Capacity Reservation expires, the reserved capacity is released and you can no longer launch instances into it. Valid values: RFC3339 time string (YYYY-MM-DDTHH:MM:SSZ)"
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.end_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the Outpost on which to create the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tenancy" {
  description = "(Optional) Indicates the tenancy of the Capacity Reservation. Specify either default or dedicated.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Required) The Availability Zone in which to create the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_storage" {
  description = "(Optional) Indicates whether the Capacity Reservation supports instances with temporary, block-level storage."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.ephemeral_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_platform" {
  description = "(Required) The type of operating system for which to reserve capacity. Valid options are Linux/UNIX, Red Hat Enterprise Linux, SUSE Linux, Windows, Windows with SQL Server, Windows with SQL Server Enterprise, Windows with SQL Server Standard or Windows with SQL Server Web."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.instance_platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Capacity Reservation ID."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Required) The instance type for which to reserve capacity."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_group_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the cluster placement group in which to create the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.placement_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_match_criteria" {
  description = "(Optional) Indicates the type of instance launches that the Capacity Reservation accepts. Specify either open or targeted."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.instance_match_criteria
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "(Optional) Indicates whether the Capacity Reservation supports EBS-optimized instances."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "end_date_type" {
  description = "(Optional) Indicates the way in which the Capacity Reservation ends. Specify either unlimited or limited."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.end_date_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "(Required) The number of instances for which to reserve capacity."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Capacity Reservation ID."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the Capacity Reservation."
  value       = aws_ec2_capacity_reservation.aws_ec2_capacity_reservation.owner_id
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
      "kind/name"                   = "aws_ec2_capacity_reservation"
      "kind/version"                = "v0.1.0"
    }
  }
}
