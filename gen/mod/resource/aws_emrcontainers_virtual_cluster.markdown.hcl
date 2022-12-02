resource "aws_emrcontainers_virtual_cluster.markdown" "aws_emrcontainers_virtual_cluster.markdown" {
  arn                = var.arn
  container_provider = var.container_provider
  id                 = var.id
  info               = var.info
  tags               = var.tags
  eks_info           = var.eks_info
  name               = var.name
  namespace          = var.namespace
  type               = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "ARN of the cluster."
  type        = string
}
variable "container_provider" {
  description = "(Required) Configuration block for the container provider associated with your cluster."
  type        = string
}
variable "id" {
  description = "The ID of the cluster."
  type        = string
}
variable "info" {
  description = "Nested list containing information about the configuration of the container provider\n"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.container_provider Arguments"
  type        = string
  default     = ""
}
variable "eks_info" {
  description = "Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running\n"
  type        = string
}
variable "name" {
  description = " – (Required) Name of the virtual cluster."
  type        = string
}
variable "namespace" {
  description = "The namespace where the EMR Containers cluster is running"
  type        = string
}
variable "type" {
  description = "The type of the container providerIn addition to all arguments above, the following attributes are exported:"
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
output "arn" {
  description = "ARN of the cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.arn
}
output "container_provider" {
  description = "(Required) Configuration block for the container provider associated with your cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.container_provider
}
output "id" {
  description = "The ID of the cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.id
}
output "info" {
  description = "Nested list containing information about the configuration of the container provider\n"
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.info
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.container_provider Arguments"
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.tags
}
output "eks_info" {
  description = "Nested list containing EKS-specific information about the cluster where the EMR Containers cluster is running\n"
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.eks_info
}
output "name" {
  description = " – (Required) Name of the virtual cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.name
}
output "namespace" {
  description = "The namespace where the EMR Containers cluster is running"
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.namespace
}
output "type" {
  description = "The type of the container providerIn addition to all arguments above, the following attributes are exported:"
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.type
}
output "id" {
  description = "The ID of the cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.tags_all
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_emrcontainers_virtual_cluster.markdown.aws_emrcontainers_virtual_cluster.markdown.arn
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
      "kind/name"                   = "aws_emrcontainers_virtual_cluster.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
