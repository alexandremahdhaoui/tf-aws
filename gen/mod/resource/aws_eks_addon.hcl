resource "aws_eks_addon" "aws_eks_addon" {
  delete                   = var.delete
  cluster_name             = var.cluster_name
  addon_version            = var.addon_version
  arn                      = var.arn
  create                   = var.create
  id                       = var.id
  modified_at              = var.modified_at
  tags                     = var.tags
  update                   = var.update
  addon_name               = var.addon_name
  preserve                 = var.preserve
  resolve_conflicts        = var.resolve_conflicts
  service_account_role_arn = var.service_account_role_arn
  status                   = var.status
  tags_all                 = var.tags_all
  created_at               = var.created_at
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  type        = string
}
variable "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "update" {
  description = "(Default 20m)"
  type        = string
}
variable "addon_name" {
  description = "describe-addon-versions."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  type        = string
}
variable "create" {
  description = "(Default 20m)"
  type        = string
}
variable "service_account_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of an\nexisting IAM role to bind to the add-on's service account. The role must be\nassigned the IAM permissions required by the add-on. If you don't specify\nan existing IAM role, then the add-on uses the permissions assigned to the node\nIAM role. For more information, see Amazon EKS node IAM role~> strongNote:In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "status" {
  description = "Status of the EKS add-on."
  type        = string
}
variable "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  type        = string
}
variable "preserve" {
  description = "(Optional) Indicates if you want to preserve the created resources when deleting the EKS add-on."
  type        = string
}
variable "resolve_conflicts" {
  description = "NONE, OVERWRITE and PRESERVE. For more details check UpdateAddon API Docs."
  type        = string
}
variable "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  type        = string
}
variable "delete" {
  description = "(Default 40m)"
  type        = string
}
variable "addon_version" {
  description = "describe-addon-versions."
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
output "addon_version" {
  description = "describe-addon-versions."
  value       = aws_eks_addon.aws_eks_addon.addon_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_eks_addon.aws_eks_addon.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "addon_name" {
  description = "describe-addon-versions."
  value       = aws_eks_addon.aws_eks_addon.addon_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  value       = aws_eks_addon.aws_eks_addon.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  value       = aws_eks_addon.aws_eks_addon.modified_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_addon.aws_eks_addon.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  value       = aws_eks_addon.aws_eks_addon.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preserve" {
  description = "(Optional) Indicates if you want to preserve the created resources when deleting the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.preserve
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resolve_conflicts" {
  description = "NONE, OVERWRITE and PRESERVE. For more details check UpdateAddon API Docs."
  value       = aws_eks_addon.aws_eks_addon.resolve_conflicts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_account_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of an\nexisting IAM role to bind to the add-on's service account. The role must be\nassigned the IAM permissions required by the add-on. If you don't specify\nan existing IAM role, then the add-on uses the permissions assigned to the node\nIAM role. For more information, see Amazon EKS node IAM role~> strongNote:In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_addon.aws_eks_addon.service_account_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  value       = aws_eks_addon.aws_eks_addon.cluster_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_eks_addon.aws_eks_addon.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was created."
  value       = aws_eks_addon.aws_eks_addon.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_eks_addon.aws_eks_addon.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "(Optional) Key-value map of resource tags, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_addon.aws_eks_addon.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "EKS Cluster name and EKS Addon name separated by a colon (:)."
  value       = aws_eks_addon.aws_eks_addon.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "modified_at" {
  description = "Date and time in RFC3339 format that the EKS add-on was updated."
  value       = aws_eks_addon.aws_eks_addon.modified_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Status of the EKS add-on."
  value       = aws_eks_addon.aws_eks_addon.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_eks_addon.aws_eks_addon.update
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
      "kind/name"                   = "aws_eks_addon"
      "kind/version"                = "v0.1.0"
    }
  }
}
