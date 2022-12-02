resource "aws_s3control_multi_region_access_point_policy" "aws_s3control_multi_region_access_point_policy" {
  established = var.established
  id          = var.id
  name        = var.name
  policy      = var.policy
  proposed    = var.proposed
  account_id  = var.account_id
  create      = var.create
  details     = var.details
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "established" {
  description = "The last established policy for the Multi-Region Access Point."
  type        = string
}
variable "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  type        = string
}
variable "name" {
  description = "(Required) The name of the Multi-Region Access Point."
  type        = string
}
variable "policy" {
  description = "(Required) A valid JSON document that specifies the policy that you want to associate with this Multi-Region Access Point. Once applied, the policy can be edited, but not deleted. For more information, see the documentation on Multi-Region Access Point Permissions.-> strongNOTE: When you update the policy, the update is first listed as the proposed policy. After the update is finished and all Regions have been updated, the proposed policy is listed as the established policy. If both policies have the same version number, the proposed policy is the established policy.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "proposed" {
  description = "The proposed policy for the Multi-Region Access Point.TimeoutsConfiguration options:"
  type        = string
}
variable "account_id" {
  description = "(Optional) The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 15m)"
  type        = string
}
variable "details" {
  description = "(Required) A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more detailsDetails ConfigurationThe details block supports the following:"
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
output "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.id
}
output "name" {
  description = "(Required) The name of the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.name
}
output "policy" {
  description = "(Required) A valid JSON document that specifies the policy that you want to associate with this Multi-Region Access Point. Once applied, the policy can be edited, but not deleted. For more information, see the documentation on Multi-Region Access Point Permissions.-> strongNOTE: When you update the policy, the update is first listed as the proposed policy. After the update is finished and all Regions have been updated, the proposed policy is listed as the established policy. If both policies have the same version number, the proposed policy is the established policy.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.policy
}
output "proposed" {
  description = "The proposed policy for the Multi-Region Access Point.TimeoutsConfiguration options:"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.proposed
}
output "account_id" {
  description = "(Optional) The AWS account ID for the owner of the Multi-Region Access Point. Defaults to automatically determined account ID of the Terraform AWS provider."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.account_id
}
output "create" {
  description = "(Default 15m)"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.create
}
output "details" {
  description = "(Required) A configuration block containing details about the policy for the Multi-Region Access Point. See Details Configuration Block below for more detailsDetails ConfigurationThe details block supports the following:"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.details
}
output "established" {
  description = "The last established policy for the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.established
}
output "established" {
  description = "The last established policy for the Multi-Region Access Point."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.established
}
output "id" {
  description = "The AWS account ID and access point name separated by a colon (:)."
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.id
}
output "proposed" {
  description = "The proposed policy for the Multi-Region Access Point.TimeoutsConfiguration options:"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.proposed
}
output "update" {
  description = "(Default 15m)"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.update
}
output "create" {
  description = "(Default 15m)"
  value       = aws_s3control_multi_region_access_point_policy.aws_s3control_multi_region_access_point_policy.create
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
      "kind/name"                   = "aws_s3control_multi_region_access_point_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
