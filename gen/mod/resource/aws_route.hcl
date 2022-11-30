resource "aws_route" "aws_route" {
  transit_gateway_id          = var.transit_gateway_id
  destination_prefix_list_id  = var.destination_prefix_list_id
  egress_only_gateway_id      = var.egress_only_gateway_id
  id                          = var.id
  instance_id                 = var.instance_id
  instance_owner_id           = var.instance_owner_id
  local_gateway_id            = var.local_gateway_id
  route_table_id              = var.route_table_id
  core_network_arn            = var.core_network_arn
  gateway_id                  = var.gateway_id
  network_interface_id        = var.network_interface_id
  origin                      = var.origin
  create                      = var.create
  destination_ipv6_cidr_block = var.destination_ipv6_cidr_block
  nat_gateway_id              = var.nat_gateway_id
  state                       = var.state
  carrier_gateway_id          = var.carrier_gateway_id
  destination_cidr_block      = var.destination_cidr_block
  update                      = var.update
  vpc_endpoint_id             = var.vpc_endpoint_id
  vpc_peering_connection_id   = var.vpc_peering_connection_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) Identifier of an EC2 Transit Gateway."
  type        = string
}
variable "destination_prefix_list_id" {
  description = "(Optional) The ID of a managed prefix list destination.One of the following target arguments must be supplied:"
  type        = string
}
variable "egress_only_gateway_id" {
  description = "(Optional) Identifier of a VPC Egress Only Internet Gateway."
  type        = string
}
variable "id" {
  description = "Route identifier computed from the routing table identifier and route destination."
  type        = string
}
variable "instance_id" {
  description = "(Optional, strongDeprecated use network_interface_id instead) Identifier of an EC2 instance."
  type        = string
}
variable "instance_owner_id" {
  description = "The AWS account ID of the owner of the EC2 instance."
  type        = string
}
variable "local_gateway_id" {
  description = "(Optional) Identifier of a Outpost local gateway."
  type        = string
}
variable "route_table_id" {
  description = "(Required) The ID of the routing table.One of the following destination arguments must be supplied:"
  type        = string
}
variable "core_network_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a core network."
  type        = string
}
variable "gateway_id" {
  description = "(Optional) Identifier of a VPC internet gateway or a virtual private gateway."
  type        = string
}
variable "network_interface_id" {
  description = "(Optional) Identifier of an EC2 network interface."
  type        = string
}
variable "origin" {
  description = "How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "destination_ipv6_cidr_block" {
  description = "(Optional) The destination IPv6 CIDR block."
  type        = string
}
variable "nat_gateway_id" {
  description = "(Optional) Identifier of a VPC NAT gateway."
  type        = string
}
variable "state" {
  description = "The state of the route - active or blackhole.TimeoutsConfiguration options:"
  type        = string
}
variable "carrier_gateway_id" {
  description = "(Optional) Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone."
  type        = string
}
variable "destination_cidr_block" {
  description = "(Optional) The destination CIDR block."
  type        = string
}
variable "update" {
  description = "(Default 2m)"
  type        = string
}
variable "vpc_endpoint_id" {
  description = "(Optional) Identifier of a VPC Endpoint."
  type        = string
}
variable "vpc_peering_connection_id" {
  description = "(Optional) Identifier of a VPC peering connection.Note that the default route, mapping the VPC's CIDR block to \"local\", is created implicitly and cannot be specified.In addition to all arguments above, the following attributes are exported:~> strongNOTE: Only the arguments that are configured (one of the above) will be exported as an attribute once the resource is created."
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
output "gateway_id" {
  description = "(Optional) Identifier of a VPC internet gateway or a virtual private gateway."
  value       = aws_route.aws_route.gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "(Optional) Identifier of an EC2 network interface."
  value       = aws_route.aws_route.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "origin" {
  description = "How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation."
  value       = aws_route.aws_route.origin
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "core_network_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a core network."
  value       = aws_route.aws_route.core_network_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_ipv6_cidr_block" {
  description = "(Optional) The destination IPv6 CIDR block."
  value       = aws_route.aws_route.destination_ipv6_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nat_gateway_id" {
  description = "(Optional) Identifier of a VPC NAT gateway."
  value       = aws_route.aws_route.nat_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The state of the route - active or blackhole.TimeoutsConfiguration options:"
  value       = aws_route.aws_route.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_route.aws_route.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_cidr_block" {
  description = "(Optional) The destination CIDR block."
  value       = aws_route.aws_route.destination_cidr_block
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 2m)"
  value       = aws_route.aws_route.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_id" {
  description = "(Optional) Identifier of a VPC Endpoint."
  value       = aws_route.aws_route.vpc_endpoint_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_peering_connection_id" {
  description = "(Optional) Identifier of a VPC peering connection.Note that the default route, mapping the VPC's CIDR block to \"local\", is created implicitly and cannot be specified.In addition to all arguments above, the following attributes are exported:~> strongNOTE: Only the arguments that are configured (one of the above) will be exported as an attribute once the resource is created."
  value       = aws_route.aws_route.vpc_peering_connection_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "carrier_gateway_id" {
  description = "(Optional) Identifier of a carrier gateway. This attribute can only be used when the VPC contains a subnet which is associated with a Wavelength Zone."
  value       = aws_route.aws_route.carrier_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_only_gateway_id" {
  description = "(Optional) Identifier of a VPC Egress Only Internet Gateway."
  value       = aws_route.aws_route.egress_only_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Route identifier computed from the routing table identifier and route destination."
  value       = aws_route.aws_route.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Optional, strongDeprecated use network_interface_id instead) Identifier of an EC2 instance."
  value       = aws_route.aws_route.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_owner_id" {
  description = "The AWS account ID of the owner of the EC2 instance."
  value       = aws_route.aws_route.instance_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_gateway_id" {
  description = "(Optional) Identifier of a Outpost local gateway."
  value       = aws_route.aws_route.local_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_id" {
  description = "(Required) The ID of the routing table.One of the following destination arguments must be supplied:"
  value       = aws_route.aws_route.route_table_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_gateway_id" {
  description = "(Optional) Identifier of an EC2 Transit Gateway."
  value       = aws_route.aws_route.transit_gateway_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination_prefix_list_id" {
  description = "(Optional) The ID of a managed prefix list destination.One of the following target arguments must be supplied:"
  value       = aws_route.aws_route.destination_prefix_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The state of the route - active or blackhole.TimeoutsConfiguration options:"
  value       = aws_route.aws_route.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 2m)"
  value       = aws_route.aws_route.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_route.aws_route.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_route.aws_route.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Route identifier computed from the routing table identifier and route destination."
  value       = aws_route.aws_route.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_owner_id" {
  description = "The AWS account ID of the owner of the EC2 instance."
  value       = aws_route.aws_route.instance_owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "origin" {
  description = "How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation."
  value       = aws_route.aws_route.origin
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
      "kind/name"                   = "aws_route"
      "kind/version"                = "v0.1.0"
    }
  }
}
