resource "aws_lb_ssl_negotiation_policy" "aws_lb_ssl_negotiation_policy" {
  load_balancer = var.load_balancer
  name          = var.name
  value         = var.value
  attribute     = var.attribute
  id            = var.id
  lb_port       = var.lb_port
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "value" {
  description = "The value of the attributeTo set your attributes, please see the AWS Elastic Load Balancing Developer Guide for a listing of the supported SSL protocols, SSL options, and SSL ciphers.~> strongNOTE: The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as Server-Defined-Cipher-Order. If you wish to set Server Order Preference, use this value instead.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "attribute" {
  description = ""
  type        = string
}
variable "id" {
  description = "The ID of the policy."
  type        = string
}
variable "lb_port" {
  description = "The load balancer port to which the policy is applied."
  type        = string
}
variable "load_balancer" {
  description = "The load balancer to which the policy is attached."
  type        = string
}
variable "name" {
  description = "The name of the stickiness policy."
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
output "attribute" {
  description = ""
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the policy."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lb_port" {
  description = "The load balancer port to which the policy is applied."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.lb_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancer" {
  description = "The load balancer to which the policy is attached."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.load_balancer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the stickiness policy."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The value of the attributeTo set your attributes, please see the AWS Elastic Load Balancing Developer Guide for a listing of the supported SSL protocols, SSL options, and SSL ciphers.~> strongNOTE: The AWS documentation references Server Order Preference, which the AWS Elastic Load Balancing API refers to as Server-Defined-Cipher-Order. If you wish to set Server Order Preference, use this value instead.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the stickiness policy."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the policy."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lb_port" {
  description = "The load balancer port to which the policy is applied."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.lb_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancer" {
  description = "The load balancer to which the policy is attached."
  value       = aws_lb_ssl_negotiation_policy.aws_lb_ssl_negotiation_policy.load_balancer
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
      "kind/name"                   = "aws_lb_ssl_negotiation_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
