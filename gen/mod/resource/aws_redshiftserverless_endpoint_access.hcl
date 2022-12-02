resource "aws_redshiftserverless_endpoint_access" "aws_redshiftserverless_endpoint_access" {
  id                     = var.id
  workgroup_name         = var.workgroup_name
  address                = var.address
  vpc_endpoint           = var.vpc_endpoint
  vpc_endpoint_id        = var.vpc_endpoint_id
  vpc_id                 = var.vpc_id
  vpc_security_group_ids = var.vpc_security_group_ids
  arn                    = var.arn
  endpoint_name          = var.endpoint_name
  network_interface      = var.network_interface
  subnet_ids             = var.subnet_ids
  availability_zone      = var.availability_zone
  network_interface_id   = var.network_interface_id
  port                   = var.port
  private_ip_address     = var.private_ip_address
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The Redshift Endpoint Access Name."
  type        = string
}
variable "workgroup_name" {
  description = "(Required) The name of the workgroup.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "address" {
  description = "The DNS address of the VPC endpoint."
  type        = string
}
variable "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  type        = string
}
variable "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access."
  type        = string
}
variable "endpoint_name" {
  description = "(Required) The name of the endpoint."
  type        = string
}
variable "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  type        = string
}
variable "subnet_ids" {
  description = "(Required) An array of VPC subnet IDs to associate with the endpoint."
  type        = string
}
variable "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) An array of security group IDs to associate with the workgroup."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "The availability Zone."
  type        = string
}
variable "network_interface_id" {
  description = "The unique identifier of the network interface."
  type        = string
}
variable "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  type        = string
}
variable "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
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
output "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.port
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.private_ip_address
}
output "availability_zone" {
  description = "The availability Zone."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.availability_zone
}
output "network_interface_id" {
  description = "The unique identifier of the network interface."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.network_interface_id
}
output "id" {
  description = "The Redshift Endpoint Access Name."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.id
}
output "workgroup_name" {
  description = "(Required) The name of the workgroup.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.workgroup_name
}
output "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_endpoint_id
}
output "address" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.address
}
output "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_endpoint
}
output "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.network_interface
}
output "subnet_ids" {
  description = "(Required) An array of VPC subnet IDs to associate with the endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.subnet_ids
}
output "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_id
}
output "vpc_security_group_ids" {
  description = "(Optional) An array of security group IDs to associate with the workgroup."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_security_group_ids
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.arn
}
output "endpoint_name" {
  description = "(Required) The name of the endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.endpoint_name
}
output "port" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.port
}
output "subnet_id" {
  description = "The unique identifier of the subnet."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.subnet_id
}
output "address" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.address
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Endpoint Access."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.arn
}
output "availability_zone" {
  description = "The availability Zone."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.availability_zone
}
output "network_interface" {
  description = "The network interfaces of the endpoint.. See Network Interface below.Network Interface"
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.network_interface
}
output "network_interface_id" {
  description = "The unique identifier of the network interface."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.network_interface_id
}
output "id" {
  description = "The Redshift Endpoint Access Name."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.id
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.private_ip_address
}
output "vpc_endpoint" {
  description = "The VPC endpoint or the Redshift Serverless workgroup. See VPC Endpoint below.VPC Endpoint"
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_endpoint
}
output "vpc_endpoint_id" {
  description = "The DNS address of the VPC endpoint."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_endpoint_id
}
output "vpc_id" {
  description = "The port that Amazon Redshift Serverless listens on."
  value       = aws_redshiftserverless_endpoint_access.aws_redshiftserverless_endpoint_access.vpc_id
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
      "kind/name"                   = "aws_redshiftserverless_endpoint_access"
      "kind/version"                = "v0.1.0"
    }
  }
}
