resource "aws_vpc_endpoint" "aws_vpc_endpoint" {
  owner_id              = var.owner_id
  network_interface_ids = var.network_interface_ids
  private_dns_enabled   = var.private_dns_enabled
  tags                  = var.tags
  vpc_id                = var.vpc_id
  id                    = var.id
  cidr_blocks           = var.cidr_blocks
  dns_entry             = var.dns_entry
  dns_options           = var.dns_options
  prefix_list_id        = var.prefix_list_id
  tags_all              = var.tags_all
  vpc_endpoint_type     = var.vpc_endpoint_type
  auto_accept           = var.auto_accept
  dns_name              = var.dns_name
  requester_managed     = var.requester_managed
  state                 = var.state
  create                = var.create
  policy                = var.policy
  route_table_ids       = var.route_table_ids
  arn                   = var.arn
  delete                = var.delete
  dns_record_ip_type    = var.dns_record_ip_type
  update                = var.update
  service_name          = var.service_name
  subnet_ids            = var.subnet_ids
  ip_address_type       = var.ip_address_type
  security_group_ids    = var.security_group_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "prefix_list_id" {
  description = "The prefix list ID of the exposed AWS service. Applicable for endpoints of type Gateway."
  type        = string
}
variable "cidr_blocks" {
  description = "The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type Gateway."
  type        = string
}
variable "dns_entry" {
  description = "The DNS entries for the VPC Endpoint. Applicable for endpoints of type Interface. DNS blocks are documented below."
  type        = string
}
variable "dns_options" {
  description = "(Optional) The DNS options for the endpoint. See dns_options below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.DNS blocks (for dns_entry) support the following attributes:"
  type        = string
}
variable "vpc_endpoint_type" {
  description = "(Optional) The VPC endpoint type, Gateway, GatewayLoadBalancer, or Interface. Defaults to Gateway.dns_options"
  type        = string
}
variable "requester_managed" {
  description = " Whether or not the VPC Endpoint is being managed by its service - true or false."
  type        = string
}
variable "state" {
  description = "The state of the VPC endpoint."
  type        = string
}
variable "auto_accept" {
  description = "(Optional) Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account)."
  type        = string
}
variable "dns_name" {
  description = "The DNS name."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "policy" {
  description = "(Optional) A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All Gateway and some Interface endpoints support policies - see the relevant AWS documentation for more details. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  type        = string
}
variable "route_table_ids" {
  description = "(Optional) One or more route table IDs. Applicable for endpoints of type Gateway."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the VPC endpoint."
  type        = string
}
variable "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "dns_record_ip_type" {
  description = "(Optional) The DNS records created for the endpoint. Valid values are ipv4, dualstack, service-defined, and ipv6.TimeoutsConfiguration options:"
  type        = string
}
variable "ip_address_type" {
  description = "(Optional) The IP address type for the endpoint. Valid values are ipv4, dualstack, and ipv6."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type Interfacedefault security group is associated with the endpoint."
  type        = string
}
variable "service_name" {
  description = "(Required) The service name. For AWS services the service name is usually in the form com.amazonaws.<region>.<service> (the SageMaker Notebook service is an exception to this rule, the service name is in the form aws.sagemaker.<region>.notebook)."
  type        = string
}
variable "subnet_ids" {
  description = "(Optional) The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type GatewayLoadBalancer and Interface."
  type        = string
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the VPC endpoint."
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the VPC in which the endpoint will be used."
  type        = string
}
variable "network_interface_ids" {
  description = "One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type Interface."
  type        = string
}
variable "private_dns_enabled" {
  description = "(Optional; AWS services and AWS Marketplace partner services only) Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type Interfacefalse."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "id" {
  description = "The ID of the VPC endpoint."
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
  description = "The Amazon Resource Name (ARN) of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_record_ip_type" {
  description = "(Optional) The DNS records created for the endpoint. Valid values are ipv4, dualstack, service-defined, and ipv6.TimeoutsConfiguration options:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_record_ip_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type Interfacedefault security group is associated with the endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "(Required) The service name. For AWS services the service name is usually in the form com.amazonaws.<region>.<service> (the SageMaker Notebook service is an exception to this rule, the service name is in the form aws.sagemaker.<region>.notebook)."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Optional) The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type GatewayLoadBalancer and Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_address_type" {
  description = "(Optional) The IP address type for the endpoint. Valid values are ipv4, dualstack, and ipv6."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.ip_address_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_enabled" {
  description = "(Optional; AWS services and AWS Marketplace partner services only) Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type Interfacefalse."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.private_dns_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required) The ID of the VPC in which the endpoint will be used."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix_list_id" {
  description = "The prefix list ID of the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.prefix_list_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_blocks" {
  description = "The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.cidr_blocks
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_entry" {
  description = "The DNS entries for the VPC Endpoint. Applicable for endpoints of type Interface. DNS blocks are documented below."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_entry
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_options" {
  description = "(Optional) The DNS options for the endpoint. See dns_options below."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.DNS blocks (for dns_entry) support the following attributes:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_type" {
  description = "(Optional) The VPC endpoint type, Gateway, GatewayLoadBalancer, or Interface. Defaults to Gateway.dns_options"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.vpc_endpoint_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The state of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_accept" {
  description = "(Optional) Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account)."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.auto_accept
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The DNS name."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester_managed" {
  description = " Whether or not the VPC Endpoint is being managed by its service - true or false."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.requester_managed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional) A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All Gateway and some Interface endpoints support policies - see the relevant AWS documentation for more details. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "route_table_ids" {
  description = "(Optional) One or more route table IDs. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.route_table_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type Interface."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester_managed" {
  description = " Whether or not the VPC Endpoint is being managed by its service - true or false."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.requester_managed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cidr_blocks" {
  description = "The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.cidr_blocks
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The DNS name."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "The ID of the private hosted zone."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.hosted_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "The state of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.DNS blocks (for dns_entry) support the following attributes:"
  value       = aws_vpc_endpoint.aws_vpc_endpoint.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_entry" {
  description = "The DNS entries for the VPC Endpoint. Applicable for endpoints of type Interface. DNS blocks are documented below."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.dns_entry
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "The ID of the AWS account that owns the VPC endpoint."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix_list_id" {
  description = "The prefix list ID of the exposed AWS service. Applicable for endpoints of type Gateway."
  value       = aws_vpc_endpoint.aws_vpc_endpoint.prefix_list_id
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
      "kind/name"                   = "aws_vpc_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
