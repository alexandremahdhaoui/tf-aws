resource "aws_worklink_fleet" "aws_worklink_fleet" {
  optimize_for_end_user_location = var.optimize_for_end_user_location
  saml_metadata                  = var.saml_metadata
  security_group_ids             = var.security_group_ids
  vpc_id                         = var.vpc_id
  display_name                   = var.display_name
  name                           = var.name
  company_code                   = var.company_code
  identity_provider              = var.identity_provider
  id                             = var.id
  network                        = var.network
  type                           = var.type
  audit_stream_arn               = var.audit_stream_arn
  created_time                   = var.created_time
  subnet_ids                     = var.subnet_ids
  arn                            = var.arn
  device_ca_certificate          = var.device_ca_certificate
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "audit_stream_arn" {
  description = "(Optional) The ARN of the Amazon Kinesis data stream that receives the audit events. Kinesis data stream name must begin with \"AmazonWorkLink-\"."
  type        = string
  default     = ""
}
variable "created_time" {
  description = "The time that the fleet was created."
  type        = string
}
variable "id" {
  description = "The ARN of the created WorkLink Fleet."
  type        = string
}
variable "network" {
  description = "(Optional) Provide this to allow manage the company network configuration for the fleet. Fields documented below."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The type of identity provider."
  type        = string
}
variable "arn" {
  description = "The ARN of the created WorkLink Fleet."
  type        = string
}
variable "device_ca_certificate" {
  description = "(Optional) The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) A list of subnet IDs used for X-ENI connections from Amazon WorkLink rendering containers."
  type        = string
}
variable "display_name" {
  description = "(Optional) The name of the fleet."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A region-unique name for the AMI."
  type        = string
}
variable "optimize_for_end_user_location" {
  description = "(Optional) The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region. Defaults to true.strongnetwork requires the following:~> strongNOTE: network cannot be removed without force recreating by terraform taint."
  type        = string
  default     = ""
}
variable "saml_metadata" {
  description = "(Required) The SAML metadata document provided by the customer’s identity provider.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "security_group_ids" {
  description = "(Required) A list of security group IDs associated with access to the provided subnets.strongidentity_provider requires the following:~> strongNOTE: identity_provider cannot be removed without force recreating by terraform taint."
  type        = string
}
variable "vpc_id" {
  description = "(Required) The VPC ID with connectivity to associated websites."
  type        = string
}
variable "company_code" {
  description = "The identifier used by users to sign in to the Amazon WorkLink app."
  type        = string
}
variable "identity_provider" {
  description = "(Optional) Provide this to allow manage the identity provider configuration for the fleet. Fields documented below."
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
output "audit_stream_arn" {
  description = "(Optional) The ARN of the Amazon Kinesis data stream that receives the audit events. Kinesis data stream name must begin with \"AmazonWorkLink-\"."
  value       = aws_worklink_fleet.aws_worklink_fleet.audit_stream_arn
}
output "created_time" {
  description = "The time that the fleet was created."
  value       = aws_worklink_fleet.aws_worklink_fleet.created_time
}
output "id" {
  description = "The ARN of the created WorkLink Fleet."
  value       = aws_worklink_fleet.aws_worklink_fleet.id
}
output "network" {
  description = "(Optional) Provide this to allow manage the company network configuration for the fleet. Fields documented below."
  value       = aws_worklink_fleet.aws_worklink_fleet.network
}
output "type" {
  description = "(Required) The type of identity provider."
  value       = aws_worklink_fleet.aws_worklink_fleet.type
}
output "arn" {
  description = "The ARN of the created WorkLink Fleet."
  value       = aws_worklink_fleet.aws_worklink_fleet.arn
}
output "device_ca_certificate" {
  description = "(Optional) The certificate chain, including intermediate certificates and the root certificate authority certificate used to issue device certificates."
  value       = aws_worklink_fleet.aws_worklink_fleet.device_ca_certificate
}
output "subnet_ids" {
  description = "(Required) A list of subnet IDs used for X-ENI connections from Amazon WorkLink rendering containers."
  value       = aws_worklink_fleet.aws_worklink_fleet.subnet_ids
}
output "display_name" {
  description = "(Optional) The name of the fleet."
  value       = aws_worklink_fleet.aws_worklink_fleet.display_name
}
output "name" {
  description = "(Required) A region-unique name for the AMI."
  value       = aws_worklink_fleet.aws_worklink_fleet.name
}
output "optimize_for_end_user_location" {
  description = "(Optional) The option to optimize for better performance by routing traffic through the closest AWS Region to users, which may be outside of your home Region. Defaults to true.strongnetwork requires the following:~> strongNOTE: network cannot be removed without force recreating by terraform taint."
  value       = aws_worklink_fleet.aws_worklink_fleet.optimize_for_end_user_location
}
output "saml_metadata" {
  description = "(Required) The SAML metadata document provided by the customer’s identity provider.In addition to all arguments above, the following attributes are exported:"
  value       = aws_worklink_fleet.aws_worklink_fleet.saml_metadata
}
output "security_group_ids" {
  description = "(Required) A list of security group IDs associated with access to the provided subnets.strongidentity_provider requires the following:~> strongNOTE: identity_provider cannot be removed without force recreating by terraform taint."
  value       = aws_worklink_fleet.aws_worklink_fleet.security_group_ids
}
output "vpc_id" {
  description = "(Required) The VPC ID with connectivity to associated websites."
  value       = aws_worklink_fleet.aws_worklink_fleet.vpc_id
}
output "company_code" {
  description = "The identifier used by users to sign in to the Amazon WorkLink app."
  value       = aws_worklink_fleet.aws_worklink_fleet.company_code
}
output "identity_provider" {
  description = "(Optional) Provide this to allow manage the identity provider configuration for the fleet. Fields documented below."
  value       = aws_worklink_fleet.aws_worklink_fleet.identity_provider
}
output "arn" {
  description = "The ARN of the created WorkLink Fleet."
  value       = aws_worklink_fleet.aws_worklink_fleet.arn
}
output "company_code" {
  description = "The identifier used by users to sign in to the Amazon WorkLink app."
  value       = aws_worklink_fleet.aws_worklink_fleet.company_code
}
output "created_time" {
  description = "The time that the fleet was created."
  value       = aws_worklink_fleet.aws_worklink_fleet.created_time
}
output "id" {
  description = "The ARN of the created WorkLink Fleet."
  value       = aws_worklink_fleet.aws_worklink_fleet.id
}
output "last_updated_time" {
  description = "The time that the fleet was last updated."
  value       = aws_worklink_fleet.aws_worklink_fleet.last_updated_time
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
      "kind/name"                   = "aws_worklink_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}
