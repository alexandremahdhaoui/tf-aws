resource "aws_iot_provisioning_template" "aws_iot_provisioning_template" {
  template_body         = var.template_body
  default_version_id    = var.default_version_id
  enabled               = var.enabled
  name                  = var.name
  pre_provisioning_hook = var.pre_provisioning_hook
  target_arb            = var.target_arb
  arn                   = var.arn
  description           = var.description
  payload_version       = var.payload_version
  provisioning_role_arn = var.provisioning_role_arn
  tags                  = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) The name of the fleet provisioning template."
  type        = string
}
variable "pre_provisioning_hook" {
  description = "(Optional) Creates a pre-provisioning hook template. Details below."
  type        = string
  default     = ""
}
variable "target_arb" {
  description = "(Optional) The ARN of the target function.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "template_body" {
  description = "(Required) The JSON formatted contents of the fleet provisioning template.pre_provisioning_hookThe pre_provisioning_hook configuration block supports the following:"
  type        = string
}
variable "default_version_id" {
  description = "The default version of the fleet provisioning template."
  type        = string
}
variable "enabled" {
  description = "(Optional) True to enable the fleet provisioning template, otherwise false."
  type        = string
  default     = ""
}
variable "payload_version" {
  description = "(Optional) The version of the payload that was sent to the target function. The only valid (and the default) payload version is \"2020-04-01\"."
  type        = string
  default     = ""
}
variable "provisioning_role_arn" {
  description = "(Required) The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN that identifies the provisioning template."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the fleet provisioning template."
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
output "name" {
  description = "(Required) The name of the fleet provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.name
}
output "pre_provisioning_hook" {
  description = "(Optional) Creates a pre-provisioning hook template. Details below."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.pre_provisioning_hook
}
output "target_arb" {
  description = "(Optional) The ARN of the target function.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.target_arb
}
output "template_body" {
  description = "(Required) The JSON formatted contents of the fleet provisioning template.pre_provisioning_hookThe pre_provisioning_hook configuration block supports the following:"
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.template_body
}
output "default_version_id" {
  description = "The default version of the fleet provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.default_version_id
}
output "enabled" {
  description = "(Optional) True to enable the fleet provisioning template, otherwise false."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.enabled
}
output "payload_version" {
  description = "(Optional) The version of the payload that was sent to the target function. The only valid (and the default) payload version is \"2020-04-01\"."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.payload_version
}
output "provisioning_role_arn" {
  description = "(Required) The role ARN for the role associated with the fleet provisioning template. This IoT role grants permission to provision a device."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.provisioning_role_arn
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.tags
}
output "arn" {
  description = "The ARN that identifies the provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.arn
}
output "description" {
  description = "(Optional) The description of the fleet provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.description
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.tags_all
}
output "arn" {
  description = "The ARN that identifies the provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.arn
}
output "default_version_id" {
  description = "The default version of the fleet provisioning template."
  value       = aws_iot_provisioning_template.aws_iot_provisioning_template.default_version_id
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
      "kind/name"                   = "aws_iot_provisioning_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
