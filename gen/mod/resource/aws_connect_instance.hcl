resource "aws_connect_instance" "aws_connect_instance" {
  outbound_calls_enabled           = var.outbound_calls_enabled
  arn                              = var.arn
  id                               = var.id
  identity_management_type         = var.identity_management_type
  directory_id                     = var.directory_id
  inbound_calls_enabled            = var.inbound_calls_enabled
  instance_alias                   = var.instance_alias
  service_role                     = var.service_role
  contact_lens_enabled             = var.contact_lens_enabled
  create                           = var.create
  created_time                     = var.created_time
  status                           = var.status
  auto_resolve_best_voices_enabled = var.auto_resolve_best_voices_enabled
  contact_flow_logs_enabled        = var.contact_flow_logs_enabled
  early_media_enabled              = var.early_media_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_resolve_best_voices_enabled" {
  description = "(Optional) Specifies whether auto resolve best voices is enabled. Defaults to true."
  type        = string
  default     = ""
}
variable "contact_flow_logs_enabled" {
  description = "(Optional) Specifies whether contact flow logs are enabled. Defaults to false."
  type        = string
  default     = ""
}
variable "early_media_enabled" {
  description = "(Optional) Specifies whether early media for outbound calls is enabled . Defaults to true if outbound calls is enabled."
  type        = string
  default     = ""
}
variable "status" {
  description = "The state of the instance.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the instance."
  type        = string
}
variable "id" {
  description = "The identifier of the instance."
  type        = string
}
variable "identity_management_type" {
  description = "(Required) Specifies the identity management type attached to the instance. Allowed Values are: SAML, CONNECT_MANAGED, EXISTING_DIRECTORY."
  type        = string
}
variable "outbound_calls_enabled" {
  description = "(Required) Specifies whether outbound calls are enabled. raw HTML omitted In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "directory_id" {
  description = "(Optional) The identifier for the directory if identity_management_type is EXISTING_DIRECTORY."
  type        = string
  default     = ""
}
variable "inbound_calls_enabled" {
  description = "(Required) Specifies whether inbound calls are enabled."
  type        = string
}
variable "instance_alias" {
  description = "(Optional) Specifies the name of the instance. Required if directory_id not specified."
  type        = string
  default     = ""
}
variable "contact_lens_enabled" {
  description = "(Optional) Specifies whether contact lens is enabled. Defaults to true."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "created_time" {
  description = "When the instance was created."
  type        = string
}
variable "service_role" {
  description = "The service role of the instance."
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
output "auto_resolve_best_voices_enabled" {
  description = "(Optional) Specifies whether auto resolve best voices is enabled. Defaults to true."
  value       = aws_connect_instance.aws_connect_instance.auto_resolve_best_voices_enabled
}
output "contact_flow_logs_enabled" {
  description = "(Optional) Specifies whether contact flow logs are enabled. Defaults to false."
  value       = aws_connect_instance.aws_connect_instance.contact_flow_logs_enabled
}
output "early_media_enabled" {
  description = "(Optional) Specifies whether early media for outbound calls is enabled . Defaults to true if outbound calls is enabled."
  value       = aws_connect_instance.aws_connect_instance.early_media_enabled
}
output "status" {
  description = "The state of the instance.TimeoutsConfiguration options:"
  value       = aws_connect_instance.aws_connect_instance.status
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the instance."
  value       = aws_connect_instance.aws_connect_instance.arn
}
output "id" {
  description = "The identifier of the instance."
  value       = aws_connect_instance.aws_connect_instance.id
}
output "identity_management_type" {
  description = "(Required) Specifies the identity management type attached to the instance. Allowed Values are: SAML, CONNECT_MANAGED, EXISTING_DIRECTORY."
  value       = aws_connect_instance.aws_connect_instance.identity_management_type
}
output "outbound_calls_enabled" {
  description = "(Required) Specifies whether outbound calls are enabled. raw HTML omitted In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_instance.aws_connect_instance.outbound_calls_enabled
}
output "directory_id" {
  description = "(Optional) The identifier for the directory if identity_management_type is EXISTING_DIRECTORY."
  value       = aws_connect_instance.aws_connect_instance.directory_id
}
output "inbound_calls_enabled" {
  description = "(Required) Specifies whether inbound calls are enabled."
  value       = aws_connect_instance.aws_connect_instance.inbound_calls_enabled
}
output "instance_alias" {
  description = "(Optional) Specifies the name of the instance. Required if directory_id not specified."
  value       = aws_connect_instance.aws_connect_instance.instance_alias
}
output "contact_lens_enabled" {
  description = "(Optional) Specifies whether contact lens is enabled. Defaults to true."
  value       = aws_connect_instance.aws_connect_instance.contact_lens_enabled
}
output "create" {
  description = "(Default 5m)"
  value       = aws_connect_instance.aws_connect_instance.create
}
output "created_time" {
  description = "When the instance was created."
  value       = aws_connect_instance.aws_connect_instance.created_time
}
output "service_role" {
  description = "The service role of the instance."
  value       = aws_connect_instance.aws_connect_instance.service_role
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the instance."
  value       = aws_connect_instance.aws_connect_instance.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_connect_instance.aws_connect_instance.create
}
output "created_time" {
  description = "When the instance was created."
  value       = aws_connect_instance.aws_connect_instance.created_time
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_connect_instance.aws_connect_instance.delete
}
output "id" {
  description = "The identifier of the instance."
  value       = aws_connect_instance.aws_connect_instance.id
}
output "service_role" {
  description = "The service role of the instance."
  value       = aws_connect_instance.aws_connect_instance.service_role
}
output "status" {
  description = "The state of the instance.TimeoutsConfiguration options:"
  value       = aws_connect_instance.aws_connect_instance.status
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
      "kind/name"                   = "aws_connect_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
