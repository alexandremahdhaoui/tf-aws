resource "aws_s3outposts_endpoint" "aws_s3outposts_endpoint" {
  creation_time      = var.creation_time
  id                 = var.id
  network_interfaces = var.network_interfaces
  outpost_id         = var.outpost_id
  security_group_id  = var.security_group_id
  subnet_id          = var.subnet_id
  arn                = var.arn
  cidr_block         = var.cidr_block
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the endpoint."
  type        = string
}
variable "network_interfaces" {
  description = ""
  type        = string
}
variable "outpost_id" {
  description = "(Required) Identifier of the Outpost to contain this endpoint."
  type        = string
}
variable "security_group_id" {
  description = "(Required) Identifier of the EC2 Security Group."
  type        = string
}
variable "subnet_id" {
  description = "(Required) Identifier of the EC2 Subnet.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the endpoint."
  type        = string
}
variable "cidr_block" {
  description = "VPC CIDR block of the endpoint."
  type        = string
}
variable "creation_time" {
  description = "UTC creation time in RFC3339 format."
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
  description = "Amazon Resource Name (ARN) of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "VPC CIDR block of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "UTC creation time in RFC3339 format."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interfaces" {
  description = ""
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.network_interfaces
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_id" {
  description = "(Required) Identifier of the Outpost to contain this endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.outpost_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_id" {
  description = "(Required) Identifier of the EC2 Security Group."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.security_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "(Required) Identifier of the EC2 Subnet.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "Identifier of the Elastic Network Interface (ENI)."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interfaces" {
  description = ""
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.network_interfaces
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_block" {
  description = "VPC CIDR block of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "creation_time" {
  description = "UTC creation time in RFC3339 format."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.creation_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the endpoint."
  value       = aws_s3outposts_endpoint.aws_s3outposts_endpoint.id
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
      "kind/name"                   = "aws_s3outposts_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
