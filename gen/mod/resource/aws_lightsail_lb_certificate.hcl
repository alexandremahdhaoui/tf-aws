resource "aws_lightsail_lb_certificate" "aws_lightsail_lb_certificate" {
  arn                       = var.arn
  created_at                = var.created_at
  domain_name               = var.domain_name
  id                        = var.id
  lb_name                   = var.lb_name
  name                      = var.name
  subject_alternative_names = var.subject_alternative_names
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "lb_name" {
  description = "(Required) The load balancer name where you want to create the SSL/TLS certificate."
  type        = string
}
variable "name" {
  description = "(Required) The SSL/TLS certificate name."
  type        = string
}
variable "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate. domain_name attribute is automatically added as a Subject Alternative Name.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the lightsail certificate."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the instance was created."
  type        = string
}
variable "domain_name" {
  description = "(Required) The domain name (e.g., example.com) for your SSL/TLS certificate."
  type        = string
}
variable "id" {
  description = "A combination of attributes to create a unique id: lb_name,name"
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
output "subject_alternative_names" {
  description = "(Optional) Set of domains that should be SANs in the issued certificate. domain_name attribute is automatically added as a Subject Alternative Name.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.subject_alternative_names
}
output "arn" {
  description = "The ARN of the lightsail certificate."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.arn
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.created_at
}
output "domain_name" {
  description = "(Required) The domain name (e.g., example.com) for your SSL/TLS certificate."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.domain_name
}
output "id" {
  description = "A combination of attributes to create a unique id: lb_name,name"
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.id
}
output "lb_name" {
  description = "(Required) The load balancer name where you want to create the SSL/TLS certificate."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.lb_name
}
output "name" {
  description = "(Required) The SSL/TLS certificate name."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.name
}
output "domain_validation_options" {
  description = "Set of domain validation objects which can be used to complete certificate validation. Can have more than one element, e.g., if SANs are defined."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.domain_validation_options
}
output "id" {
  description = "A combination of attributes to create a unique id: lb_name,name"
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.id
}
output "arn" {
  description = "The ARN of the lightsail certificate."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.arn
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_lb_certificate.aws_lightsail_lb_certificate.created_at
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
      "kind/name"                   = "aws_lightsail_lb_certificate"
      "kind/version"                = "v0.1.0"
    }
  }
}
