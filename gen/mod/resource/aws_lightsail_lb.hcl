resource "aws_lightsail_lb" "aws_lightsail_lb" {
  arn               = var.arn
  created_at        = var.created_at
  health_check_path = var.health_check_path
  name              = var.name
  public_ports      = var.public_ports
  support_code      = var.support_code
  tags              = var.tags
  dns_name          = var.dns_name
  id                = var.id
  instance_port     = var.instance_port
  protocol          = var.protocol
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The ARN of the Lightsail load balancer."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the load balancer was created."
  type        = string
}
variable "health_check_path" {
  description = "(Optional) The health check path of the load balancer. Default value \"/\"."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the Lightsail load balancer."
  type        = string
}
variable "dns_name" {
  description = "The DNS name of the load balancer."
  type        = string
}
variable "id" {
  description = "The name used for this load balancer (matches name)."
  type        = string
}
variable "instance_port" {
  description = "(Required) The instance port the load balancer will connect."
  type        = string
}
variable "protocol" {
  description = "The protocol of the load balancer."
  type        = string
}
variable "public_ports" {
  description = "The public ports of the load balancer."
  type        = string
}
variable "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "instance_port" {
  description = "(Required) The instance port the load balancer will connect."
  value       = aws_lightsail_lb.aws_lightsail_lb.instance_port
}
output "protocol" {
  description = "The protocol of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.protocol
}
output "public_ports" {
  description = "The public ports of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.public_ports
}
output "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_lb.aws_lightsail_lb.support_code
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_lb.aws_lightsail_lb.tags
}
output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.dns_name
}
output "id" {
  description = "The name used for this load balancer (matches name)."
  value       = aws_lightsail_lb.aws_lightsail_lb.id
}
output "health_check_path" {
  description = "(Optional) The health check path of the load balancer. Default value \"/\"."
  value       = aws_lightsail_lb.aws_lightsail_lb.health_check_path
}
output "name" {
  description = "(Required) The name of the Lightsail load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.name
}
output "arn" {
  description = "The ARN of the Lightsail load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.arn
}
output "created_at" {
  description = "The timestamp when the load balancer was created."
  value       = aws_lightsail_lb.aws_lightsail_lb.created_at
}
output "protocol" {
  description = "The protocol of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.protocol
}
output "public_ports" {
  description = "The public ports of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.public_ports
}
output "support_code" {
  description = "The support code for the database. Include this code in your email to support when you have questions about a database in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_lb.aws_lightsail_lb.support_code
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lightsail_lb.aws_lightsail_lb.tags_all
}
output "arn" {
  description = "The ARN of the Lightsail load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.arn
}
output "created_at" {
  description = "The timestamp when the load balancer was created."
  value       = aws_lightsail_lb.aws_lightsail_lb.created_at
}
output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lightsail_lb.aws_lightsail_lb.dns_name
}
output "id" {
  description = "The name used for this load balancer (matches name)."
  value       = aws_lightsail_lb.aws_lightsail_lb.id
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
      "kind/name"                   = "aws_lightsail_lb"
      "kind/version"                = "v0.1.0"
    }
  }
}
