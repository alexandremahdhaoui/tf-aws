resource "aws_eks_addon" "aws_eks_addon" {
  preserve                 = var.preserve
  resolve_conflicts        = var.resolve_conflicts
  tags_all                 = var.tags_all
  arn                      = var.arn
  cluster_name             = var.cluster_name
  modified_at              = var.modified_at
  service_account_role_arn = var.service_account_role_arn
  tags                     = var.tags
  update                   = var.update
  addon_name               = var.addon_name
  created_at               = var.created_at
  delete                   = var.delete
  id                       = var.id
  addon_version            = var.addon_version
  create                   = var.create
  status                   = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "preserve" {
  description = "(Optional) Indicates if you want to preserve the created resources when deleting the EKS add-on."
  type        = string
  default     = ""
}
variable "resolve_conflicts" {
  description = "(Optional) Define how to resolve parameter value conflicts\nwhen migrating an existing add-on to an Amazon EKS add-on or when applying\nversion updates to the add-on. Valid values are NONE, OVERWRITE and PRESERVE. For more details check UpdateAddon API Docs."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  type        = string
}
variable "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  type        = string
  default     = ""
}
variable "service_account_role_arn" {
  description = "Amazon EKS node IAM role~> strongNote:In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 20m)"
  type        = string
  default     = ""
}
variable "addon_name" {
  description = "describe-addon-versions."
  type        = string
}
variable "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 40m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "addon_version" {
  description = "describe-addon-versions."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 20m)"
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of the EKS add-on."
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
output "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  value       = aws_eks_addon.aws_eks_addon.id
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_eks_addon.aws_eks_addon.tags
}
output "update" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.update
}
output "addon_name" {
  description = "describe-addon-versions."
  value       = aws_eks_addon.aws_eks_addon.addon_name
}
output "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  value       = aws_eks_addon.aws_eks_addon.created_at
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_eks_addon.aws_eks_addon.delete
}
output "addon_version" {
  description = "describe-addon-versions."
  value       = aws_eks_addon.aws_eks_addon.addon_version
}
output "create" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.create
}
output "status" {
  description = "Status of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.status
}
output "preserve" {
  description = "(Optional) Indicates if you want to preserve the created resources when deleting the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.preserve
}
output "resolve_conflicts" {
  description = "(Optional) Define how to resolve parameter value conflicts\nwhen migrating an existing add-on to an Amazon EKS add-on or when applying\nversion updates to the add-on. Valid values are NONE, OVERWRITE and PRESERVE. For more details check UpdateAddon API Docs."
  value       = aws_eks_addon.aws_eks_addon.resolve_conflicts
}
output "service_account_role_arn" {
  description = "Amazon EKS node IAM role~> strongNote:In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_addon.aws_eks_addon.service_account_role_arn
}
output "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_addon.aws_eks_addon.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.arn
}
output "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  value       = aws_eks_addon.aws_eks_addon.cluster_name
}
output "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  value       = aws_eks_addon.aws_eks_addon.modified_at
}
output "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  value       = aws_eks_addon.aws_eks_addon.created_at
}
output "status" {
  description = "Status of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.status
}
output "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_addon.aws_eks_addon.tags_all
}
output "update" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.update
}
output "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  value       = aws_eks_addon.aws_eks_addon.modified_at
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.arn
}
output "create" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.create
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_eks_addon.aws_eks_addon.delete
}
output "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  value       = aws_eks_addon.aws_eks_addon.id
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
      "kind/name"                   = "aws_eks_addon"
      "kind/version"                = "v0.1.0"
    }
  }
}
