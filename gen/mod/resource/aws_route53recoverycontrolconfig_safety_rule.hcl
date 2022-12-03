resource "aws_route53recoverycontrolconfig_safety_rule" "aws_route53recoverycontrolconfig_safety_rule" {
  gating_controls   = var.gating_controls
  rule_config       = var.rule_config
  status            = var.status
  threshold         = var.threshold
  wait_period_ms    = var.wait_period_ms
  arn               = var.arn
  asserted_controls = var.asserted_controls
  control_panel_arn = var.control_panel_arn
  inverted          = var.inverted
  name              = var.name
  target_controls   = var.target_controls
  type              = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the safety rule."
  type        = string
  default     = ""
}
variable "asserted_controls" {
  description = "(Optional) Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed."
  type        = string
  default     = ""
}
variable "control_panel_arn" {
  description = "(Required) ARN of the control panel in which this safety rule will reside."
  type        = string
}
variable "inverted" {
  description = "(Required) Logical negation of the rule."
  type        = string
}
variable "name" {
  description = "(Required) Name describing the safety rule."
  type        = string
}
variable "target_controls" {
  description = "(Optional) Routing controls that can only be set or unset if the specified rule_config evaluates to true for the specified gating_controls.rule_config"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Rule type. Valid values are ATLEAST, AND, and OR.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "gating_controls" {
  description = "(Optional) Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify."
  type        = string
  default     = ""
}
variable "rule_config" {
  description = "(Required) Configuration block for safety rule criteria. See below."
  type        = string
}
variable "status" {
  description = "Status of the safety rule. PENDING when it is being created/updated, PENDING_DELETION when it is being deleted, and DEPLOYED otherwise."
  type        = string
  default     = ""
}
variable "threshold" {
  description = "(Required) Number of controls that must be set when you specify an ATLEAST type rule."
  type        = string
}
variable "wait_period_ms" {
  description = "(Required) Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail."
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
output "rule_config" {
  description = "(Required) Configuration block for safety rule criteria. See below."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.rule_config
}
output "status" {
  description = "Status of the safety rule. PENDING when it is being created/updated, PENDING_DELETION when it is being deleted, and DEPLOYED otherwise."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.status
}
output "threshold" {
  description = "(Required) Number of controls that must be set when you specify an ATLEAST type rule."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.threshold
}
output "wait_period_ms" {
  description = "(Required) Evaluation period, in milliseconds (ms), during which any request against the target routing controls will fail."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.wait_period_ms
}
output "gating_controls" {
  description = "(Optional) Gating controls for the new gating rule. That is, routing controls that are evaluated by the rule configuration that you specify."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.gating_controls
}
output "asserted_controls" {
  description = "(Optional) Routing controls that are part of transactions that are evaluated to determine if a request to change a routing control state is allowed."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.asserted_controls
}
output "control_panel_arn" {
  description = "(Required) ARN of the control panel in which this safety rule will reside."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.control_panel_arn
}
output "inverted" {
  description = "(Required) Logical negation of the rule."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.inverted
}
output "name" {
  description = "(Required) Name describing the safety rule."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.name
}
output "target_controls" {
  description = "(Optional) Routing controls that can only be set or unset if the specified rule_config evaluates to true for the specified gating_controls.rule_config"
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.target_controls
}
output "type" {
  description = "(Required) Rule type. Valid values are ATLEAST, AND, and OR.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.type
}
output "arn" {
  description = "ARN of the safety rule."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.arn
}
output "status" {
  description = "Status of the safety rule. PENDING when it is being created/updated, PENDING_DELETION when it is being deleted, and DEPLOYED otherwise."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.status
}
output "arn" {
  description = "ARN of the safety rule."
  value       = aws_route53recoverycontrolconfig_safety_rule.aws_route53recoverycontrolconfig_safety_rule.arn
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
      "kind/name"                   = "aws_route53recoverycontrolconfig_safety_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
