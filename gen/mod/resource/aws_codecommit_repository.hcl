resource "aws_codecommit_repository" "aws_codecommit_repository" {
  clone_url_ssh   = var.clone_url_ssh
  default_branch  = var.default_branch
  description     = var.description
  repository_id   = var.repository_id
  repository_name = var.repository_name
  tags            = var.tags
  arn             = var.arn
  clone_url_http  = var.clone_url_http
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "default_branch" {
  description = "(Optional) The default branch of the repository. The branch specified here needs to exist."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the repository. This needs to be less than 1000 characters"
  type        = string
}
variable "repository_id" {
  description = "The ID of the repository"
  type        = string
}
variable "repository_name" {
  description = "(Required) The name for the repository. This needs to be less than 100 characters."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "The ARN of the repository"
  type        = string
}
variable "clone_url_http" {
  description = "The URL to use for cloning the repository over HTTPS."
  type        = string
}
variable "clone_url_ssh" {
  description = "The URL to use for cloning the repository over SSH."
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
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codecommit_repository.aws_codecommit_repository.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clone_url_http" {
  description = "The URL to use for cloning the repository over HTTPS."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_http
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clone_url_ssh" {
  description = "The URL to use for cloning the repository over SSH."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_ssh
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_branch" {
  description = "(Optional) The default branch of the repository. The branch specified here needs to exist."
  value       = aws_codecommit_repository.aws_codecommit_repository.default_branch
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description of the repository. This needs to be less than 1000 characters"
  value       = aws_codecommit_repository.aws_codecommit_repository.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_id" {
  description = "The ID of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_name" {
  description = "(Required) The name for the repository. This needs to be less than 100 characters."
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clone_url_http" {
  description = "The URL to use for cloning the repository over HTTPS."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_http
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clone_url_ssh" {
  description = "The URL to use for cloning the repository over SSH."
  value       = aws_codecommit_repository.aws_codecommit_repository.clone_url_ssh
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_id" {
  description = "The ID of the repository"
  value       = aws_codecommit_repository.aws_codecommit_repository.repository_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codecommit_repository.aws_codecommit_repository.tags_all
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
      "kind/name"                   = "aws_codecommit_repository"
      "kind/version"                = "v0.1.0"
    }
  }
}