resource "aws_lightsail_key_pair" "aws_lightsail_key_pair" {
  pgp_key               = var.pgp_key
  private_key           = var.private_key
  public_key            = var.public_key
  arn                   = var.arn
  encrypted_private_key = var.encrypted_private_key
  fingerprint           = var.fingerprint
  id                    = var.id
  name                  = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "pgp_key" {
  description = ""
  type        = string
}
variable "private_key" {
  description = "the private key, base64 encoded. This is only populated\nwhen creating a new key, and when no pgp_key is provided"
  type        = string
}
variable "public_key" {
  description = "the public key, base64 encoded"
  type        = string
}
variable "arn" {
  description = "The ARN of the Lightsail key pair"
  type        = string
}
variable "encrypted_private_key" {
  description = "pgp_keypgp_key is supplied"
  type        = string
}
variable "fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  type        = string
}
variable "id" {
  description = "The name used for this key pair"
  type        = string
}
variable "name" {
  description = ""
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
  description = "The ARN of the Lightsail key pair"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted_private_key" {
  description = "pgp_keypgp_key is supplied"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.encrypted_private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name used for this key pair"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = ""
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pgp_key" {
  description = ""
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.pgp_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_key" {
  description = "the private key, base64 encoded. This is only populated\nwhen creating a new key, and when no pgp_key is provided"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "the public key, base64 encoded"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.public_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name used for this key pair"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_key" {
  description = "the private key, base64 encoded. This is only populated\nwhen creating a new key, and when no pgp_key is provided"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_key" {
  description = "the public key, base64 encoded"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.public_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the Lightsail key pair"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted_fingerprint" {
  description = ""
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.encrypted_fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted_private_key" {
  description = "pgp_keypgp_key is supplied"
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.encrypted_private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fingerprint" {
  description = "The MD5 public key fingerprint as specified in section 4 of RFC 4716."
  value       = aws_lightsail_key_pair.aws_lightsail_key_pair.fingerprint
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
      "kind/name"                   = "aws_lightsail_key_pair"
      "kind/version"                = "v0.1.0"
    }
  }
}