resource "aws_chime_voice_connector_origination" "aws_chime_voice_connector_origination" {
  protocol           = var.protocol
  route              = var.route
  voice_connector_id = var.voice_connector_id
  weight             = var.weight
  disabled           = var.disabled
  host               = var.host
  port               = var.port
  priority           = var.priority
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "host" {
  description = "(Required) The FQDN or IP address to contact for origination traffic."
  type        = string
}
variable "port" {
  description = "(Required) The designated origination route port. Defaults to 5060."
  type        = string
}
variable "priority" {
  description = "(Required) The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first."
  type        = string
}
variable "protocol" {
  description = "(Required) The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default."
  type        = string
}
variable "route" {
  description = "(Required) Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20."
  type        = string
}
variable "voice_connector_id" {
  description = "(Required) The Amazon Chime Voice Connector ID."
  type        = string
}
variable "weight" {
  description = "(Required) The weight associated with the host. If hosts are equal in priority, calls are redistributed among them based on their relative weight.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "disabled" {
  description = "(Optional) When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.routeOrigination routes define call distribution properties for your SIP hosts to receive inbound calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each Amazon Chime Voice Connector."
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
output "protocol" {
  description = "(Required) The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.protocol
}
output "route" {
  description = "(Required) Set of call distribution properties defined for your SIP hosts. See route below for more details. Minimum of 1. Maximum of 20."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.route
}
output "voice_connector_id" {
  description = "(Required) The Amazon Chime Voice Connector ID."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.voice_connector_id
}
output "weight" {
  description = "(Required) The weight associated with the host. If hosts are equal in priority, calls are redistributed among them based on their relative weight.In addition to all arguments above, the following attributes are exported:"
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.weight
}
output "disabled" {
  description = "(Optional) When origination settings are disabled, inbound calls are not enabled for your Amazon Chime Voice Connector.routeOrigination routes define call distribution properties for your SIP hosts to receive inbound calls using your Amazon Chime Voice Connector. Limit: Ten origination routes for each Amazon Chime Voice Connector."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.disabled
}
output "host" {
  description = "(Required) The FQDN or IP address to contact for origination traffic."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.host
}
output "port" {
  description = "(Required) The designated origination route port. Defaults to 5060."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.port
}
output "priority" {
  description = "(Required) The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.priority
}
output "id" {
  description = "The Amazon Chime Voice Connector ID."
  value       = aws_chime_voice_connector_origination.aws_chime_voice_connector_origination.id
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
      "kind/name"                   = "aws_chime_voice_connector_origination"
      "kind/version"                = "v0.1.0"
    }
  }
}
