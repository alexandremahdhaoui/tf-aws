resource "aws_ram_resource_share_accepter.markdown" "aws_ram_resource_share_accepter.markdown" {
  share_arn           = var.share_arn
  share_id            = var.share_id
  share_name          = var.share_name
  status              = var.status
  invitation_arn      = var.invitation_arn
  receiver_account_id = var.receiver_account_id
  sender_account_id   = var.sender_account_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "invitation_arn" {
  description = "The ARN of the resource share invitation."
  type        = string
}
variable "receiver_account_id" {
  description = "The account ID of the receiver account which accepts the invitation."
  type        = string
}
variable "sender_account_id" {
  description = "The account ID of the sender account which submits the invitation."
  type        = string
}
variable "share_arn" {
  description = "(Required) The ARN of the resource share.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "share_id" {
  description = "The ID of the resource share as displayed in the console."
  type        = string
}
variable "share_name" {
  description = "The name of the resource share."
  type        = string
}
variable "status" {
  description = "The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED)."
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
output "invitation_arn" {
  description = "The ARN of the resource share invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.invitation_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "receiver_account_id" {
  description = "The account ID of the receiver account which accepts the invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.receiver_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sender_account_id" {
  description = "The account ID of the sender account which submits the invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.sender_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_arn" {
  description = "(Required) The ARN of the resource share.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.share_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_id" {
  description = "The ID of the resource share as displayed in the console."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.share_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_name" {
  description = "The name of the resource share."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.share_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED)."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED)."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invitation_arn" {
  description = "The ARN of the resource share invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.invitation_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "receiver_account_id" {
  description = "The account ID of the receiver account which accepts the invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.receiver_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resources" {
  description = "A list of the resource ARNs shared via the resource share."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sender_account_id" {
  description = "The account ID of the sender account which submits the invitation."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.sender_account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_id" {
  description = "The ID of the resource share as displayed in the console."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.share_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "share_name" {
  description = "The name of the resource share."
  value       = aws_ram_resource_share_accepter.markdown.aws_ram_resource_share_accepter.markdown.share_name
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
      "kind/name"                   = "aws_ram_resource_share_accepter.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}