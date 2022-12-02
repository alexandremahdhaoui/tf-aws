resource "aws_codeartifact_repository" "aws_codeartifact_repository" {
  id                       = var.id
  repository               = var.repository
  repository_name          = var.repository_name
  administrator_account    = var.administrator_account
  arn                      = var.arn
  description              = var.description
  domain_owner             = var.domain_owner
  external_connections     = var.external_connections
  upstream                 = var.upstream
  domain                   = var.domain
  external_connection_name = var.external_connection_name
  tags                     = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "domain" {
  description = "(Required) The domain that contains the created repository."
  type        = string
}
variable "external_connection_name" {
  description = "(Required) The name of the external connection associated with a repository.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Upstream"
  type        = string
  default     = ""
}
variable "external_connections" {
  description = "An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections."
  type        = string
}
variable "id" {
  description = "The ARN of the repository."
  type        = string
}
variable "repository" {
  description = "(Required) The name of the repository to create."
  type        = string
}
variable "repository_name" {
  description = "(Required) The name of an upstream repository.External Connections"
  type        = string
}
variable "administrator_account" {
  description = "The account number of the AWS account that manages the repository."
  type        = string
}
variable "arn" {
  description = "The ARN of the repository."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the repository."
  type        = string
  default     = ""
}
variable "domain_owner" {
  description = "(Optional) The account number of the AWS account that owns the domain."
  type        = string
  default     = ""
}
variable "upstream" {
  description = "(Optional) A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream"
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
output "external_connection_name" {
  description = "(Required) The name of the external connection associated with a repository.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codeartifact_repository.aws_codeartifact_repository.external_connection_name
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Upstream"
  value       = aws_codeartifact_repository.aws_codeartifact_repository.tags
}
output "domain" {
  description = "(Required) The domain that contains the created repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.domain
}
output "arn" {
  description = "The ARN of the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.arn
}
output "description" {
  description = "(Optional) The description of the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.description
}
output "domain_owner" {
  description = "(Optional) The account number of the AWS account that owns the domain."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.domain_owner
}
output "external_connections" {
  description = "An array of external connections associated with the repository. Only one external connection can be set per repository. see External Connections."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.external_connections
}
output "id" {
  description = "The ARN of the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.id
}
output "repository" {
  description = "(Required) The name of the repository to create."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.repository
}
output "repository_name" {
  description = "(Required) The name of an upstream repository.External Connections"
  value       = aws_codeartifact_repository.aws_codeartifact_repository.repository_name
}
output "administrator_account" {
  description = "The account number of the AWS account that manages the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.administrator_account
}
output "upstream" {
  description = "(Optional) A list of upstream repositories to associate with the repository. The order of the upstream repositories in the list determines their priority order when AWS CodeArtifact looks for a requested package version. see Upstream"
  value       = aws_codeartifact_repository.aws_codeartifact_repository.upstream
}
output "administrator_account" {
  description = "The account number of the AWS account that manages the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.administrator_account
}
output "arn" {
  description = "The ARN of the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.arn
}
output "id" {
  description = "The ARN of the repository."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codeartifact_repository.aws_codeartifact_repository.tags_all
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
      "kind/name"                   = "aws_codeartifact_repository"
      "kind/version"                = "v0.1.0"
    }
  }
}
