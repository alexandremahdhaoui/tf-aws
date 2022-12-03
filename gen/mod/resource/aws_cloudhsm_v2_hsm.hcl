resource "aws_cloudhsm_v2_hsm" "aws_cloudhsm_v2_hsm" {
  cluster_id        = var.cluster_id
  hsm_id            = var.hsm_id
  hsm_state         = var.hsm_state
  ip_address        = var.ip_address
  subnet_id         = var.subnet_id
  availability_zone = var.availability_zone
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "hsm_id" {
  description = "The id of the HSM module."
  type        = string
}
variable "hsm_state" {
  description = "The state of the HSM module."
  type        = string
}
variable "ip_address" {
  description = "(Optional) The IP address of HSM module. Must be within the CIDR of selected subnet.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Optional) The ID of subnet in which HSM module will be located."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "(Optional) The IDs of AZ in which HSM module will be located. Do not use together with subnet_id."
  type        = string
  default     = ""
}
variable "cluster_id" {
  description = "(Required) The ID of Cloud HSM v2 cluster to which HSM will be added."
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
output "hsm_state" {
  description = "The state of the HSM module."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.hsm_state
}
output "ip_address" {
  description = "(Optional) The IP address of HSM module. Must be within the CIDR of selected subnet.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.ip_address
}
output "subnet_id" {
  description = "(Optional) The ID of subnet in which HSM module will be located."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.subnet_id
}
output "availability_zone" {
  description = "(Optional) The IDs of AZ in which HSM module will be located. Do not use together with subnet_id."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.availability_zone
}
output "cluster_id" {
  description = "(Required) The ID of Cloud HSM v2 cluster to which HSM will be added."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.cluster_id
}
output "hsm_id" {
  description = "The id of the HSM module."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.hsm_id
}
output "hsm_eni_id" {
  description = "The id of the ENI interface allocated for HSM module."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.hsm_eni_id
}
output "hsm_id" {
  description = "The id of the HSM module."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.hsm_id
}
output "hsm_state" {
  description = "The state of the HSM module."
  value       = aws_cloudhsm_v2_hsm.aws_cloudhsm_v2_hsm.hsm_state
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
      "kind/name"                   = "aws_cloudhsm_v2_hsm"
      "kind/version"                = "v0.1.0"
    }
  }
}
