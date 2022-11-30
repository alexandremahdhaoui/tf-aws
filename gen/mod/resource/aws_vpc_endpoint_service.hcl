resource "aws_vpc_endpoint_service" "aws_vpc_endpoint_service" {
  acceptance_required            = var.acceptance_required
  base_endpoint_dns_names        = var.base_endpoint_dns_names
  private_dns_name               = var.private_dns_name
  service_type                   = var.service_type
  type                           = var.type
  allowed_principals             = var.allowed_principals
  gateway_load_balancer_arns     = var.gateway_load_balancer_arns
  id                             = var.id
  manages_vpc_endpoints          = var.manages_vpc_endpoints
  supported_ip_address_types     = var.supported_ip_address_types
  availability_zones             = var.availability_zones
  network_load_balancer_arns     = var.network_load_balancer_arns
  private_dns_name_configuration = var.private_dns_name_configuration
  tags                           = var.tags
  value                          = var.value
  arn                            = var.arn
  name                           = var.name
  service_name                   = var.service_name
  state                          = var.state
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  type        = string
}
variable "supported_ip_address_types" {
  description = "(Optional) The supported IP address types. The possible values are ipv4 and ipv6.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "type" {
  description = "Endpoint service verification type, for example TXT."
  type        = string
}
variable "allowed_principals" {
  description = "(Optional) The ARNs of one or more principals allowed to discover the endpoint service."
  type        = string
}
variable "gateway_load_balancer_arns" {
  description = "(Optional) Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service."
  type        = string
}
variable "id" {
  description = "The ID of the VPC endpoint service."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "value" {
  description = "Value the service provider adds to the private DNS name domain record before verification."
  type        = string
}
variable "availability_zones" {
  description = "A set of Availability Zones in which the service is available."
  type        = string
}
variable "network_load_balancer_arns" {
  description = "(Optional) Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service."
  type        = string
}
variable "private_dns_name_configuration" {
  description = "List of objects containing information about the endpoint service private DNS name configuration.\n"
  type        = string
}
variable "state" {
  description = "Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is verified."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the VPC endpoint service."
  type        = string
}
variable "name" {
  description = "Name of the record subdomain the service provider needs to create."
  type        = string
}
variable "service_name" {
  description = "The service name."
  type        = string
}
variable "service_type" {
  description = "The service type, Gateway or Interface."
  type        = string
}
variable "acceptance_required" {
  description = "(Required) Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - true or false."
  type        = string
}
variable "base_endpoint_dns_names" {
  description = "A set of DNS names for the service."
  type        = string
}
variable "private_dns_name" {
  description = "(Optional) The private DNS name for the service."
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
  description = "The Amazon Resource Name (ARN) of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the record subdomain the service provider needs to create."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "The service name."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is verified."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acceptance_required" {
  description = "(Required) Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.acceptance_required
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base_endpoint_dns_names" {
  description = "A set of DNS names for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.base_endpoint_dns_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_name" {
  description = "(Optional) The private DNS name for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.private_dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_type" {
  description = "The service type, Gateway or Interface."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_principals" {
  description = "(Optional) The ARNs of one or more principals allowed to discover the endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.allowed_principals
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_load_balancer_arns" {
  description = "(Optional) Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.gateway_load_balancer_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.manages_vpc_endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "supported_ip_address_types" {
  description = "(Optional) The supported IP address types. The possible values are ipv4 and ipv6.In addition to all arguments above, the following attributes are exported:"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.supported_ip_address_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Endpoint service verification type, for example TXT."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "A set of Availability Zones in which the service is available."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_load_balancer_arns" {
  description = "(Optional) Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.network_load_balancer_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_name_configuration" {
  description = "List of objects containing information about the endpoint service private DNS name configuration.\n"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.private_dns_name_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value the service provider adds to the private DNS name domain record before verification."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is verified."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "Value the service provider adds to the private DNS name domain record before verification."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "A set of Availability Zones in which the service is available."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base_endpoint_dns_names" {
  description = "A set of DNS names for the service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.base_endpoint_dns_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the VPC endpoint service."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the record subdomain the service provider needs to create."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Endpoint service verification type, for example TXT."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "manages_vpc_endpoints" {
  description = "Whether or not the service manages its VPC endpoints - true or false."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.manages_vpc_endpoints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_name_configuration" {
  description = "List of objects containing information about the endpoint service private DNS name configuration.\n"
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.private_dns_name_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "The service name."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_type" {
  description = "The service type, Gateway or Interface."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.service_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_vpc_endpoint_service.aws_vpc_endpoint_service.tags_all
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
      "kind/name"                   = "aws_vpc_endpoint_service"
      "kind/version"                = "v0.1.0"
    }
  }
}
