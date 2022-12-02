resource "aws_servicecatalog_portfolio_share" "aws_servicecatalog_portfolio_share" {
  type                = var.type
  update              = var.update
  accept_language     = var.accept_language
  portfolio_id        = var.portfolio_id
  principal_id        = var.principal_id
  read                = var.read
  wait_for_acceptance = var.wait_for_acceptance
  accepted            = var.accepted
  create              = var.create
  delete              = var.delete
  share_tag_options   = var.share_tag_options
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "portfolio_id" {
  description = "(Required) Portfolio identifier."
  type        = string
}
variable "principal_id" {
  description = "(Required) Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units."
  type        = string
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of portfolio share. Valid values are ACCOUNT (an external account), ORGANIZATION (a share to every account in an organization), ORGANIZATIONAL_UNIT, ORGANIZATION_MEMBER_ACCOUNT (a share to an account in an organization)."
  type        = string
}
variable "update" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "share_tag_options" {
  description = "(Optional) Whether to enable sharing of aws_servicecatalog_tag_option resources when creating the portfolio share."
  type        = string
  default     = ""
}
variable "wait_for_acceptance" {
  description = "(Optional) Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "accepted" {
  description = "Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.TimeoutsConfiguration options:"
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
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.delete
}
output "share_tag_options" {
  description = "(Optional) Whether to enable sharing of aws_servicecatalog_tag_option resources when creating the portfolio share."
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.share_tag_options
}
output "wait_for_acceptance" {
  description = "(Optional) Whether to wait (up to the timeout) for the share to be accepted. Organizational shares are automatically accepted.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.wait_for_acceptance
}
output "accepted" {
  description = "Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.accepted
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.create
}
output "principal_id" {
  description = "(Required) Identifier of the principal with whom you will share the portfolio. Valid values AWS account IDs and ARNs of AWS Organizations and organizational units."
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.principal_id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.read
}
output "type" {
  description = "(Required) Type of portfolio share. Valid values are ACCOUNT (an external account), ORGANIZATION (a share to every account in an organization), ORGANIZATIONAL_UNIT, ORGANIZATION_MEMBER_ACCOUNT (a share to an account in an organization)."
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.type
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.update
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.accept_language
}
output "portfolio_id" {
  description = "(Required) Portfolio identifier."
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.portfolio_id
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.update
}
output "accepted" {
  description = "Whether the shared portfolio is imported by the recipient account. If the recipient is organizational, the share is automatically imported, and the field is always set to true.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.accepted
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.create
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.delete
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_portfolio_share.aws_servicecatalog_portfolio_share.read
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
      "kind/name"                   = "aws_servicecatalog_portfolio_share"
      "kind/version"                = "v0.1.0"
    }
  }
}
