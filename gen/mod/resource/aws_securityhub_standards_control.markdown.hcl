resource "aws_securityhub_standards_control.markdown" "aws_securityhub_standards_control.markdown" {
  control_status            = var.control_status
  description               = var.description
  disabled_reason           = var.disabled_reason
  id                        = var.id
  related_requirements      = var.related_requirements
  remediation_url           = var.remediation_url
  standards_control_arn     = var.standards_control_arn
  control_id                = var.control_id
  severity_rating           = var.severity_rating
  control_status_updated_at = var.control_status_updated_at
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "related_requirements" {
  description = " – The list of requirements that are related to this control."
  type        = string
}
variable "remediation_url" {
  description = " – A link to remediation information for the control in the Security Hub user documentation."
  type        = string
}
variable "standards_control_arn" {
  description = "(Required) The standards control ARN."
  type        = string
}
variable "control_id" {
  description = " – The identifier of the security standard control."
  type        = string
}
variable "control_status" {
  description = " – (Required) The control status could be ENABLED or DISABLED. You have to specify disabled_reason argument for DISABLED control status."
  type        = string
}
variable "description" {
  description = " – The standard control longer description. Provides information about what the control is checking for."
  type        = string
}
variable "disabled_reason" {
  description = " – (Optional) A description of the reason why you are disabling a security standard control. If you specify this attribute, control_status will be set to DISABLED automatically.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "The standard control ARN."
  type        = string
}
variable "control_status_updated_at" {
  description = " – The date and time that the status of the security standard control was most recently updated."
  type        = string
}
variable "severity_rating" {
  description = " – The severity of findings generated from this security standard control."
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
output "severity_rating" {
  description = " – The severity of findings generated from this security standard control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.severity_rating
}
output "control_status_updated_at" {
  description = " – The date and time that the status of the security standard control was most recently updated."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.control_status_updated_at
}
output "control_status" {
  description = " – (Required) The control status could be ENABLED or DISABLED. You have to specify disabled_reason argument for DISABLED control status."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.control_status
}
output "description" {
  description = " – The standard control longer description. Provides information about what the control is checking for."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.description
}
output "disabled_reason" {
  description = " – (Optional) A description of the reason why you are disabling a security standard control. If you specify this attribute, control_status will be set to DISABLED automatically.In addition to all arguments above, the following attributes are exported:"
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.disabled_reason
}
output "id" {
  description = "The standard control ARN."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.id
}
output "related_requirements" {
  description = " – The list of requirements that are related to this control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.related_requirements
}
output "remediation_url" {
  description = " – A link to remediation information for the control in the Security Hub user documentation."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.remediation_url
}
output "standards_control_arn" {
  description = "(Required) The standards control ARN."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.standards_control_arn
}
output "control_id" {
  description = " – The identifier of the security standard control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.control_id
}
output "description" {
  description = " – The standard control longer description. Provides information about what the control is checking for."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.description
}
output "id" {
  description = "The standard control ARN."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.id
}
output "related_requirements" {
  description = " – The list of requirements that are related to this control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.related_requirements
}
output "remediation_url" {
  description = " – A link to remediation information for the control in the Security Hub user documentation."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.remediation_url
}
output "severity_rating" {
  description = " – The severity of findings generated from this security standard control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.severity_rating
}
output "control_id" {
  description = " – The identifier of the security standard control."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.control_id
}
output "control_status_updated_at" {
  description = " – The date and time that the status of the security standard control was most recently updated."
  value       = aws_securityhub_standards_control.markdown.aws_securityhub_standards_control.markdown.control_status_updated_at
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
      "kind/name"                   = "aws_securityhub_standards_control.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
