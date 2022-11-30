resource "aws_route53_zone" "aws_route53_zone" {
  arn                 = var.arn
  delegation_set_id   = var.delegation_set_id
  primary_name_server = var.primary_name_server
  tags                = var.tags
  vpc                 = var.vpc
  vpc_id              = var.vpc_id
  comment             = var.comment
  force_destroy       = var.force_destroy
  name                = var.name
  name_servers        = var.name_servers
  vpc_region          = var.vpc_region
  zone_id             = var.zone_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "vpc_id" {
  description = "(Required) ID of the VPC to associate."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Hosted Zone."
  type        = string
}
variable "delegation_set_id" {
  description = "(Optional) The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with vpc as delegation sets can only be used for public zones."
  type        = string
}
variable "primary_name_server" {
  description = "The Route 53 name server that created the SOA record."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the zone. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "vpc" {
  description = "(Optional) Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the delegation_set_id argument in this resource and any aws_route53_zone_association resource specifying the same zone ID. Detailed below.vpc Argument Reference"
  type        = string
}
variable "zone_id" {
  description = "The Hosted Zone ID. This can be referenced by zone records."
  type        = string
}
variable "comment" {
  description = "(Optional) A comment for the hosted zone. Defaults to 'Managed by Terraform'."
  type        = string
}
variable "force_destroy" {
  description = "(Optional) Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone."
  type        = string
}
variable "name" {
  description = "(Required) This is the name of the hosted zone."
  type        = string
}
variable "name_servers" {
  description = "A list of name servers in associated (or default) delegation set.\nFind more about delegation sets in AWS docs."
  type        = string
}
variable "vpc_region" {
  description = "(Optional) Region of the VPC to associate. Defaults to AWS provider region.In addition to all arguments above, the following attributes are exported:"
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
output "zone_id" {
  description = "The Hosted Zone ID. This can be referenced by zone records."
  value       = aws_route53_zone.aws_route53_zone.zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "comment" {
  description = "(Optional) A comment for the hosted zone. Defaults to 'Managed by Terraform'."
  value       = aws_route53_zone.aws_route53_zone.comment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_destroy" {
  description = "(Optional) Whether to destroy all records (possibly managed outside of Terraform) in the zone when destroying the zone."
  value       = aws_route53_zone.aws_route53_zone.force_destroy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) This is the name of the hosted zone."
  value       = aws_route53_zone.aws_route53_zone.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_servers" {
  description = "A list of name servers in associated (or default) delegation set.\nFind more about delegation sets in AWS docs."
  value       = aws_route53_zone.aws_route53_zone.name_servers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_region" {
  description = "(Optional) Region of the VPC to associate. Defaults to AWS provider region.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_zone.aws_route53_zone.vpc_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required) ID of the VPC to associate."
  value       = aws_route53_zone.aws_route53_zone.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delegation_set_id" {
  description = "(Optional) The ID of the reusable delegation set whose NS records you want to assign to the hosted zone. Conflicts with vpc as delegation sets can only be used for public zones."
  value       = aws_route53_zone.aws_route53_zone.delegation_set_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_name_server" {
  description = "The Route 53 name server that created the SOA record."
  value       = aws_route53_zone.aws_route53_zone.primary_name_server
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the zone. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_route53_zone.aws_route53_zone.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc" {
  description = "(Optional) Configuration block(s) specifying VPC(s) to associate with a private hosted zone. Conflicts with the delegation_set_id argument in this resource and any aws_route53_zone_association resource specifying the same zone ID. Detailed below.vpc Argument Reference"
  value       = aws_route53_zone.aws_route53_zone.vpc
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_name_server" {
  description = "The Route 53 name server that created the SOA record."
  value       = aws_route53_zone.aws_route53_zone.primary_name_server
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_route53_zone.aws_route53_zone.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "zone_id" {
  description = "The Hosted Zone ID. This can be referenced by zone records."
  value       = aws_route53_zone.aws_route53_zone.zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Hosted Zone."
  value       = aws_route53_zone.aws_route53_zone.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_servers" {
  description = "A list of name servers in associated (or default) delegation set.\nFind more about delegation sets in AWS docs."
  value       = aws_route53_zone.aws_route53_zone.name_servers
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
      "kind/name"                   = "aws_route53_zone"
      "kind/version"                = "v0.1.0"
    }
  }
}
