resource "aws_route53_resolver_endpoint" "aws_route53_resolver_endpoint" {
  arn                = var.arn
  create             = var.create
  direction          = var.direction
  host_vpc_id        = var.host_vpc_id
  id                 = var.id
  ip_address         = var.ip_address
  name               = var.name
  subnet_id          = var.subnet_id
  tags               = var.tags
  tags_all           = var.tags_all
  ip                 = var.ip
  security_group_ids = var.security_group_ids
  update             = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "host_vpc_id" {
  description = "The ID of the VPC that you want to create the resolver endpoint in."
  type        = string
}
variable "id" {
  description = "The ID of the Route 53 Resolver endpoint."
  type        = string
}
variable "ip_address" {
  description = ""
  type        = string
}
variable "name" {
  description = "(Optional) The friendly name of the Route 53 Resolver endpoint."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Required) The ID of the subnet that contains the IP address."
  type        = string
}
variable "arn" {
  description = "The ARN of the Route 53 Resolver endpoint."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "direction" {
  description = "(Required) The direction of DNS queries to or from the Route 53 Resolver endpoint.\nValid values are INBOUNDOUTBOUND (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC)."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The ip_address object supports the following:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "ip" {
  description = "(Optional) The IP address in the subnet that you want to use for DNS queries.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) The ID of one or more security groups that you want to use to control access to this VPC."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
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
  description = "The ARN of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.create
}
output "direction" {
  description = "(Required) The direction of DNS queries to or from the Route 53 Resolver endpoint.\nValid values are INBOUNDOUTBOUND (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC)."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.direction
}
output "host_vpc_id" {
  description = "The ID of the VPC that you want to create the resolver endpoint in."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.host_vpc_id
}
output "id" {
  description = "The ID of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.id
}
output "ip_address" {
  description = ""
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.ip_address
}
output "name" {
  description = "(Optional) The friendly name of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.name
}
output "subnet_id" {
  description = "(Required) The ID of the subnet that contains the IP address."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.subnet_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The ip_address object supports the following:"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.tags_all
}
output "ip" {
  description = "(Optional) The IP address in the subnet that you want to use for DNS queries.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.ip
}
output "security_group_ids" {
  description = "(Required) The ID of one or more security groups that you want to use to control access to this VPC."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.security_group_ids
}
output "update" {
  description = "(Default 10m)"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.update
}
output "arn" {
  description = "The ARN of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.delete
}
output "host_vpc_id" {
  description = "The ID of the VPC that you want to create the resolver endpoint in."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.host_vpc_id
}
output "id" {
  description = "The ID of the Route 53 Resolver endpoint."
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.tags_all
}
output "update" {
  description = "(Default 10m)"
  value       = aws_route53_resolver_endpoint.aws_route53_resolver_endpoint.update
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
      "kind/name"                   = "aws_route53_resolver_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
