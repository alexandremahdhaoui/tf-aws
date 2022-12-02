resource "aws_lightsail_disk" "aws_lightsail_disk" {
  arn               = var.arn
  availability_zone = var.availability_zone
  created_at        = var.created_at
  id                = var.id
  name              = var.name
  size_in_gb        = var.size_in_gb
  support_code      = var.support_code
  tags              = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "size_in_gb" {
  description = "(Required) The instance port the load balancer will connect."
  type        = string
}
variable "support_code" {
  description = "The support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the Lightsail load balancer."
  type        = string
}
variable "availability_zone" {
  description = "(Required) The Availability Zone in which to create your disk."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the load balancer was created."
  type        = string
}
variable "id" {
  description = "The name of the disk  (matches name)."
  type        = string
}
variable "name" {
  description = "(Required) The name of the Lightsail load balancer."
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
output "support_code" {
  description = "The support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_disk.aws_lightsail_disk.support_code
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_disk.aws_lightsail_disk.tags
}
output "arn" {
  description = "The ARN of the Lightsail load balancer."
  value       = aws_lightsail_disk.aws_lightsail_disk.arn
}
output "availability_zone" {
  description = "(Required) The Availability Zone in which to create your disk."
  value       = aws_lightsail_disk.aws_lightsail_disk.availability_zone
}
output "created_at" {
  description = "The timestamp when the load balancer was created."
  value       = aws_lightsail_disk.aws_lightsail_disk.created_at
}
output "id" {
  description = "The name of the disk  (matches name)."
  value       = aws_lightsail_disk.aws_lightsail_disk.id
}
output "name" {
  description = "(Required) The name of the Lightsail load balancer."
  value       = aws_lightsail_disk.aws_lightsail_disk.name
}
output "size_in_gb" {
  description = "(Required) The instance port the load balancer will connect."
  value       = aws_lightsail_disk.aws_lightsail_disk.size_in_gb
}
output "support_code" {
  description = "The support code for the disk. Include this code in your email to support when you have questions about a disk in Lightsail. This code enables our support team to look up your Lightsail information more easily."
  value       = aws_lightsail_disk.aws_lightsail_disk.support_code
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lightsail_disk.aws_lightsail_disk.tags_all
}
output "arn" {
  description = "The ARN of the Lightsail load balancer."
  value       = aws_lightsail_disk.aws_lightsail_disk.arn
}
output "created_at" {
  description = "The timestamp when the load balancer was created."
  value       = aws_lightsail_disk.aws_lightsail_disk.created_at
}
output "id" {
  description = "The name of the disk  (matches name)."
  value       = aws_lightsail_disk.aws_lightsail_disk.id
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
      "kind/name"                   = "aws_lightsail_disk"
      "kind/version"                = "v0.1.0"
    }
  }
}
