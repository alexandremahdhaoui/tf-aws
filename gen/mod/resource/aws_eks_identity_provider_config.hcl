resource "aws_eks_identity_provider_config" "aws_eks_identity_provider_config" {
  username_prefix               = var.username_prefix
  arn                           = var.arn
  client_id                     = var.client_id
  create                        = var.create
  oidc                          = var.oidc
  status                        = var.status
  tags                          = var.tags
  groups_prefix                 = var.groups_prefix
  id                            = var.id
  identity_provider_config_name = var.identity_provider_config_name
  cluster_name                  = var.cluster_name
  groups_claim                  = var.groups_claim
  issuer_url                    = var.issuer_url
  required_claims               = var.required_claims
  tags_all                      = var.tags_all
  username_claim                = var.username_claim
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "identity_provider_config_name" {
  description = " – (Required) The name of the identity provider config."
  type        = string
}
variable "groups_prefix" {
  description = "(Optional) A prefix that is prepended to group claims e.g., oidc:."
  type        = string
  default     = ""
}
variable "id" {
  description = "EKS Cluster name and EKS Identity Provider Configuration name separated by a colon (:)."
  type        = string
}
variable "issuer_url" {
  description = "(Required) Issuer URL for the OpenID Connect identity provider."
  type        = string
}
variable "required_claims" {
  description = "(Optional) The key value pairs that describe required claims in the identity token."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "username_claim" {
  description = "(Optional) The JWT claim that the provider will use as the username."
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = " – (Required) Name of the EKS Cluster."
  type        = string
}
variable "groups_claim" {
  description = "(Optional) The JWT claim that the provider will use to return groups."
  type        = string
  default     = ""
}
variable "username_prefix" {
  description = "(Optional) A prefix that is prepended to username claims.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "oidc" {
  description = "(Required) Nested attribute containing OpenID Connect identity provider information for the cluster. Detailed below."
  type        = string
}
variable "status" {
  description = "Status of the EKS Identity Provider Configuration."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.oidc Configuration Block"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Identity Provider Configuration."
  type        = string
}
variable "client_id" {
  description = " – (Required) Client ID for the OpenID Connect identity provider."
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
output "create" {
  description = "(Default 40m)"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.create
}
output "oidc" {
  description = "(Required) Nested attribute containing OpenID Connect identity provider information for the cluster. Detailed below."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.oidc
}
output "status" {
  description = "Status of the EKS Identity Provider Configuration."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.status
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.oidc Configuration Block"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Identity Provider Configuration."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.arn
}
output "client_id" {
  description = " – (Required) Client ID for the OpenID Connect identity provider."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.client_id
}
output "identity_provider_config_name" {
  description = " – (Required) The name of the identity provider config."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.identity_provider_config_name
}
output "groups_prefix" {
  description = "(Optional) A prefix that is prepended to group claims e.g., oidc:."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.groups_prefix
}
output "id" {
  description = "EKS Cluster name and EKS Identity Provider Configuration name separated by a colon (:)."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.id
}
output "issuer_url" {
  description = "(Required) Issuer URL for the OpenID Connect identity provider."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.issuer_url
}
output "required_claims" {
  description = "(Optional) The key value pairs that describe required claims in the identity token."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.required_claims
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.tags_all
}
output "username_claim" {
  description = "(Optional) The JWT claim that the provider will use as the username."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.username_claim
}
output "cluster_name" {
  description = " – (Required) Name of the EKS Cluster."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.cluster_name
}
output "groups_claim" {
  description = "(Optional) The JWT claim that the provider will use to return groups."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.groups_claim
}
output "username_prefix" {
  description = "(Optional) A prefix that is prepended to username claims.In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.username_prefix
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Identity Provider Configuration."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.arn
}
output "create" {
  description = "(Default 40m)"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.create
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.delete
}
output "id" {
  description = "EKS Cluster name and EKS Identity Provider Configuration name separated by a colon (:)."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.id
}
output "status" {
  description = "Status of the EKS Identity Provider Configuration."
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_eks_identity_provider_config.aws_eks_identity_provider_config.tags_all
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
      "kind/name"                   = "aws_eks_identity_provider_config"
      "kind/version"                = "v0.1.0"
    }
  }
}
