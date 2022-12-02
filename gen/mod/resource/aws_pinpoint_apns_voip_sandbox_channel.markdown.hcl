resource "aws_pinpoint_apns_voip_sandbox_channel.markdown" "aws_pinpoint_apns_voip_sandbox_channel.markdown" {
  default_authentication_method = var.default_authentication_method
  enabled                       = var.enabled
  private_key                   = var.private_key
  team_id                       = var.team_id
  token_key                     = var.token_key
  application_id                = var.application_id
  bundle_id                     = var.bundle_id
  certificate                   = var.certificate
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "team_id" {
  description = "(Required) The ID assigned to your Apple developer account team. This value is provided on the Membership page."
  type        = string
}
variable "token_key" {
  description = "(Required) The .p8 file that you download from your Apple developer account when you create an authentication key."
  type        = string
}
variable "application_id" {
  description = "(Required) The application ID."
  type        = string
}
variable "bundle_id" {
  description = "(Required) The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app."
  type        = string
}
variable "certificate" {
  description = "(Required) The pem encoded TLS Certificate from Apple."
  type        = string
}
variable "default_authentication_method" {
  description = "strongNOTEOne of the following sets of credentials is also required.If you choose to use strongCertificate credentials you will have to provide:"
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether the channel is enabled or disabled. Defaults to true."
  type        = string
  default     = ""
}
variable "private_key" {
  description = "(Required) The Certificate Private Key file (ie. .key file).If you choose to use strongKey credentials you will have to provide:"
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
output "team_id" {
  description = "(Required) The ID assigned to your Apple developer account team. This value is provided on the Membership page."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.team_id
}
output "token_key" {
  description = "(Required) The .p8 file that you download from your Apple developer account when you create an authentication key."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.token_key
}
output "application_id" {
  description = "(Required) The application ID."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.application_id
}
output "bundle_id" {
  description = "(Required) The ID assigned to your iOS app. To find this value, choose Certificates, IDs & Profiles, choose App IDs in the Identifiers section, and choose your app."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.bundle_id
}
output "certificate" {
  description = "(Required) The pem encoded TLS Certificate from Apple."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.certificate
}
output "default_authentication_method" {
  description = "strongNOTEOne of the following sets of credentials is also required.If you choose to use strongCertificate credentials you will have to provide:"
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.default_authentication_method
}
output "enabled" {
  description = "(Optional) Whether the channel is enabled or disabled. Defaults to true."
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.enabled
}
output "private_key" {
  description = "(Required) The Certificate Private Key file (ie. .key file).If you choose to use strongKey credentials you will have to provide:"
  value       = aws_pinpoint_apns_voip_sandbox_channel.markdown.aws_pinpoint_apns_voip_sandbox_channel.markdown.private_key
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
      "kind/name"                   = "aws_pinpoint_apns_voip_sandbox_channel.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
