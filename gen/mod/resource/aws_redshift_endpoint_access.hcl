resource "aws_redshift_endpoint_access" "aws_redshift_endpoint_access" {
  subnet_group_name      = var.subnet_group_name
  vpc_id                 = var.vpc_id
  id                     = var.id
  private_ip_address     = var.private_ip_address
  vpc_endpoint           = var.vpc_endpoint
  address                = var.address
  port                   = var.port
  network_interface_id   = var.network_interface_id
  resource_owner         = var.resource_owner
  vpc_endpoint_id        = var.vpc_endpoint_id
  availability_zone      = var.availability_zone
  cluster_identifier     = var.cluster_identifier
  vpc_security_group_ids = var.vpc_security_group_ids
  endpoint_name          = var.endpoint_name
  network_interface      = var.network_interface
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone."
  type        = string
}
variable "cluster_identifier" {
  description = "(Required) The cluster identifier of the cluster to access."
  type        = string
}
variable "network_interface_id" {
  description = "The network interface identifier."
  type        = string
}
variable "resource_owner" {
  description = "(Optional) The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account."
  type        = string
  default     = ""
}
variable "vpc_endpoint_id" {
  description = "The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy."
  type        = string
}
variable "endpoint_name" {
  description = "(Required) The Redshift-managed VPC endpoint name."
  type        = string
}
variable "network_interface" {
  description = "One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "The Redshift-managed VPC endpoint name."
  type        = string
}
variable "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  type        = string
}
variable "subnet_group_name" {
  description = "(Required) The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint."
  type        = string
}
variable "vpc_id" {
  description = "The VPC identifier that the endpoint is associated.Network Interface"
  type        = string
}
variable "address" {
  description = "The DNS address of the endpoint."
  type        = string
}
variable "port" {
  description = "The port number on which the cluster accepts incoming connections."
  type        = string
}
variable "vpc_endpoint" {
  description = "The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.VPC Endpoint"
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
output "id" {
  description = "The Redshift-managed VPC endpoint name."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.id
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.private_ip_address
}
output "subnet_group_name" {
  description = "(Required) The subnet group from which Amazon Redshift chooses the subnet to deploy the endpoint."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.subnet_group_name
}
output "vpc_id" {
  description = "The VPC identifier that the endpoint is associated.Network Interface"
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_id
}
output "address" {
  description = "The DNS address of the endpoint."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.address
}
output "port" {
  description = "The port number on which the cluster accepts incoming connections."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.port
}
output "vpc_endpoint" {
  description = "The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.VPC Endpoint"
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_endpoint
}
output "vpc_endpoint_id" {
  description = "The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_endpoint_id
}
output "availability_zone" {
  description = "The Availability Zone."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.availability_zone
}
output "cluster_identifier" {
  description = "(Required) The cluster identifier of the cluster to access."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.cluster_identifier
}
output "network_interface_id" {
  description = "The network interface identifier."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.network_interface_id
}
output "resource_owner" {
  description = "(Optional) The Amazon Web Services account ID of the owner of the cluster. This is only required if the cluster is in another Amazon Web Services account."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.resource_owner
}
output "endpoint_name" {
  description = "(Required) The Redshift-managed VPC endpoint name."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.endpoint_name
}
output "network_interface" {
  description = "One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.network_interface
}
output "vpc_security_group_ids" {
  description = "(Optional) The security group that defines the ports, protocols, and sources for inbound traffic that you are authorizing into your endpoint.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_security_group_ids
}
output "subnet_id" {
  description = "The subnet identifier."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.subnet_id
}
output "vpc_id" {
  description = "The VPC identifier that the endpoint is associated.Network Interface"
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_id
}
output "availability_zone" {
  description = "The Availability Zone."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.availability_zone
}
output "id" {
  description = "The Redshift-managed VPC endpoint name."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.id
}
output "private_ip_address" {
  description = "The IPv4 address of the network interface within the subnet."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.private_ip_address
}
output "port" {
  description = "The port number on which the cluster accepts incoming connections."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.port
}
output "vpc_endpoint" {
  description = "The connection endpoint for connecting to an Amazon Redshift cluster through the proxy. See details below.VPC Endpoint"
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_endpoint
}
output "vpc_endpoint_id" {
  description = "The connection endpoint ID for connecting an Amazon Redshift cluster through the proxy."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.vpc_endpoint_id
}
output "address" {
  description = "The DNS address of the endpoint."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.address
}
output "network_interface" {
  description = "One or more network interfaces of the endpoint. Also known as an interface endpoint. See details below."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.network_interface
}
output "network_interface_id" {
  description = "The network interface identifier."
  value       = aws_redshift_endpoint_access.aws_redshift_endpoint_access.network_interface_id
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
      "kind/name"                   = "aws_redshift_endpoint_access"
      "kind/version"                = "v0.1.0"
    }
  }
}
