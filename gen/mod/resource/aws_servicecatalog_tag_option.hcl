resource "aws_servicecatalog_tag_option" "aws_servicecatalog_tag_option" {
  owner_id = var.owner_id
  read     = var.read
  update   = var.update
  value    = var.value
  key      = var.key
  create   = var.create
  delete   = var.delete
  id       = var.id
  active   = var.active
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "update" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Tag option value."
  type        = string
}
variable "key" {
  description = "(Required) Tag option key."
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the owner account that created the tag option.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier (e.g., tag-pjtvagohlyo3m)."
  type        = string
  default     = ""
}
variable "active" {
  description = "(Optional) Whether tag option is active. Default is true.In addition to all arguments above, the following attributes are exported:"
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
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.delete
}
output "id" {
  description = "Identifier (e.g., tag-pjtvagohlyo3m)."
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.id
}
output "active" {
  description = "(Optional) Whether tag option is active. Default is true.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.active
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.create
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.read
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.update
}
output "value" {
  description = "(Required) Tag option value."
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.value
}
output "key" {
  description = "(Required) Tag option key."
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.key
}
output "owner_id" {
  description = "AWS account ID of the owner account that created the tag option.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.owner_id
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.update
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.create
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.delete
}
output "id" {
  description = "Identifier (e.g., tag-pjtvagohlyo3m)."
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.id
}
output "owner_id" {
  description = "AWS account ID of the owner account that created the tag option.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.owner_id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_tag_option.aws_servicecatalog_tag_option.read
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
      "kind/name"                   = "aws_servicecatalog_tag_option"
      "kind/version"                = "v0.1.0"
    }
  }
}
