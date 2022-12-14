resource "aws_default_route_table" "aws_default_route_table" {
  create                     = var.create
  destination_prefix_list_id = var.destination_prefix_list_id
  gateway_id                 = var.gateway_id
  network_interface_id       = var.network_interface_id
  propagating_vgws           = var.propagating_vgws
  vpc_endpoint_id            = var.vpc_endpoint_id
  core_network_arn           = var.core_network_arn
  instance_id                = var.instance_id
  nat_gateway_id             = var.nat_gateway_id
  vpc_peering_connection_id  = var.vpc_peering_connection_id
  arn                        = var.arn
  id                         = var.id
  tags_all                   = var.tags_all
  transit_gateway_id         = var.transit_gateway_id
  update                     = var.update
  cidr_block                 = var.cidr_block
  default_route_table_id     = var.default_route_table_id
  egress_only_gateway_id     = var.egress_only_gateway_id
  ipv6_cidr_block            = var.ipv6_cidr_block
  owner_id                   = var.owner_id
  route                      = var.route
  tags                       = var.tags
  vpc_id                     = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 2m)"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the route table."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the route table."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "transit_gateway_id" {
  description = "(Optional) Identifier of an EC2 Transit Gateway."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "ID of the AWS account that owns the route table."
  type        = string
  default     = ""
}
variable "route" {
  description = "(Optional) Configuration block of routes. Detailed below. This argument is processed in attribute-as-blocks mode. This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.routeThis argument is processed in attribute-as-blocks mode.One of the following destination arguments must be supplied:"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "cidr_block" {
  description = "(Required) The CIDR block of the route."
  type        = string
}
variable "default_route_table_id" {
  description = "(Required) ID of the default route table."
  type        = string
}
variable "egress_only_gateway_id" {
  description = "(Optional) Identifier of a VPC Egress Only Internet Gateway."
  type        = string
  default     = ""
}
variable "ipv6_cidr_block" {
  description = "(Optional) The Ipv6 CIDR block of the route"
  type        = string
  default     = ""
}
variable "propagating_vgws" {
  description = "(Optional) List of virtual gateways for propagation."
  type        = string
  default     = ""
}
variable "vpc_endpoint_id" {
  description = "(Optional) Identifier of a VPC Endpoint. This route must be removed prior to VPC Endpoint deletion."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 2m)"
  type        = string
  default     = ""
}
variable "destination_prefix_list_id" {
  description = "(Optional) The ID of a managed prefix list destination of the route.One of the following target arguments must be supplied:"
  type        = string
  default     = ""
}
variable "gateway_id" {
  description = "(Optional) Identifier of a VPC internet gateway or a virtual private gateway."
  type        = string
  default     = ""
}
variable "network_interface_id" {
  description = "(Optional) Identifier of an EC2 network interface."
  type        = string
  default     = ""
}
variable "core_network_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a core network."
  type        = string
  default     = ""
}
variable "instance_id" {
  description = "(Optional) Identifier of an EC2 instance."
  type        = string
  default     = ""
}
variable "nat_gateway_id" {
  description = "(Optional) Identifier of a VPC NAT gateway."
  type        = string
  default     = ""
}
variable "vpc_peering_connection_id" {
  description = "(Optional) Identifier of a VPC peering connection.Note that the default route, mapping the VPC's CIDR block to \"local\", is created implicitly and cannot be specified.In addition to all arguments above, the following attributes are exported:"
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
output "owner_id" {
  description = "ID of the AWS account that owns the route table."
  value       = aws_default_route_table.aws_default_route_table.owner_id
}
output "route" {
  description = "(Optional) Configuration block of routes. Detailed below. This argument is processed in attribute-as-blocks mode. This means that omitting this argument is interpreted as ignoring any existing routes. To remove all managed routes an empty list should be specified. See the example above."
  value       = aws_default_route_table.aws_default_route_table.route
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.routeThis argument is processed in attribute-as-blocks mode.One of the following destination arguments must be supplied:"
  value       = aws_default_route_table.aws_default_route_table.tags
}
output "vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_default_route_table.aws_default_route_table.vpc_id
}
output "cidr_block" {
  description = "(Required) The CIDR block of the route."
  value       = aws_default_route_table.aws_default_route_table.cidr_block
}
output "default_route_table_id" {
  description = "(Required) ID of the default route table."
  value       = aws_default_route_table.aws_default_route_table.default_route_table_id
}
output "egress_only_gateway_id" {
  description = "(Optional) Identifier of a VPC Egress Only Internet Gateway."
  value       = aws_default_route_table.aws_default_route_table.egress_only_gateway_id
}
output "ipv6_cidr_block" {
  description = "(Optional) The Ipv6 CIDR block of the route"
  value       = aws_default_route_table.aws_default_route_table.ipv6_cidr_block
}
output "propagating_vgws" {
  description = "(Optional) List of virtual gateways for propagation."
  value       = aws_default_route_table.aws_default_route_table.propagating_vgws
}
output "vpc_endpoint_id" {
  description = "(Optional) Identifier of a VPC Endpoint. This route must be removed prior to VPC Endpoint deletion."
  value       = aws_default_route_table.aws_default_route_table.vpc_endpoint_id
}
output "create" {
  description = "(Default 2m)"
  value       = aws_default_route_table.aws_default_route_table.create
}
output "destination_prefix_list_id" {
  description = "(Optional) The ID of a managed prefix list destination of the route.One of the following target arguments must be supplied:"
  value       = aws_default_route_table.aws_default_route_table.destination_prefix_list_id
}
output "gateway_id" {
  description = "(Optional) Identifier of a VPC internet gateway or a virtual private gateway."
  value       = aws_default_route_table.aws_default_route_table.gateway_id
}
output "network_interface_id" {
  description = "(Optional) Identifier of an EC2 network interface."
  value       = aws_default_route_table.aws_default_route_table.network_interface_id
}
output "core_network_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a core network."
  value       = aws_default_route_table.aws_default_route_table.core_network_arn
}
output "instance_id" {
  description = "(Optional) Identifier of an EC2 instance."
  value       = aws_default_route_table.aws_default_route_table.instance_id
}
output "nat_gateway_id" {
  description = "(Optional) Identifier of a VPC NAT gateway."
  value       = aws_default_route_table.aws_default_route_table.nat_gateway_id
}
output "vpc_peering_connection_id" {
  description = "(Optional) Identifier of a VPC peering connection.Note that the default route, mapping the VPC's CIDR block to \"local\", is created implicitly and cannot be specified.In addition to all arguments above, the following attributes are exported:"
  value       = aws_default_route_table.aws_default_route_table.vpc_peering_connection_id
}
output "update" {
  description = "(Default 2m)"
  value       = aws_default_route_table.aws_default_route_table.update
}
output "arn" {
  description = "The ARN of the route table."
  value       = aws_default_route_table.aws_default_route_table.arn
}
output "id" {
  description = "ID of the route table."
  value       = aws_default_route_table.aws_default_route_table.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_default_route_table.aws_default_route_table.tags_all
}
output "transit_gateway_id" {
  description = "(Optional) Identifier of an EC2 Transit Gateway."
  value       = aws_default_route_table.aws_default_route_table.transit_gateway_id
}
output "vpc_id" {
  description = "ID of the VPC.TimeoutsConfiguration options:"
  value       = aws_default_route_table.aws_default_route_table.vpc_id
}
output "arn" {
  description = "The ARN of the route table."
  value       = aws_default_route_table.aws_default_route_table.arn
}
output "create" {
  description = "(Default 2m)"
  value       = aws_default_route_table.aws_default_route_table.create
}
output "id" {
  description = "ID of the route table."
  value       = aws_default_route_table.aws_default_route_table.id
}
output "owner_id" {
  description = "ID of the AWS account that owns the route table."
  value       = aws_default_route_table.aws_default_route_table.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_default_route_table.aws_default_route_table.tags_all
}
output "update" {
  description = "(Default 2m)"
  value       = aws_default_route_table.aws_default_route_table.update
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
      "kind/name"                   = "aws_default_route_table"
      "kind/version"                = "v0.1.0"
    }
  }
}
