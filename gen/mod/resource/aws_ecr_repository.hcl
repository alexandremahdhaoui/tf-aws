resource "aws_ecr_repository" "aws_ecr_repository" {
  repository_url               = var.repository_url
  tags_all                     = var.tags_all
  force_delete                 = var.force_delete
  kms_key                      = var.kms_key
  name                         = var.name
  registry_id                  = var.registry_id
  image_tag_mutability         = var.image_tag_mutability
  scan_on_push                 = var.scan_on_push
  tags                         = var.tags
  arn                          = var.arn
  encryption_configuration     = var.encryption_configuration
  encryption_type              = var.encryption_type
  image_scanning_configuration = var.image_scanning_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the repository."
  type        = string
}
variable "registry_id" {
  description = "The registry ID where the repository was created."
  type        = string
}
variable "repository_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "force_delete" {
  description = "(Optional) If truefalse."
  type        = string
  default     = ""
}
variable "kms_key" {
  description = "(Optional) The ARN of the KMS key to use when encryption_type is KMS. If not specified, uses the default AWS managed key for ECR.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "encryption_type" {
  description = "(Optional) The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256."
  type        = string
  default     = ""
}
variable "image_scanning_configuration" {
  description = "(Optional) Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide"
  type        = string
  default     = ""
}
variable "image_tag_mutability" {
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE."
  type        = string
  default     = ""
}
variable "scan_on_push" {
  description = "(Required) Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.encryption_configuration"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Full ARN of the repository."
  type        = string
}
variable "encryption_configuration" {
  description = "(Optional) Encryption configuration for the repository. See below for schema."
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
output "encryption_configuration" {
  description = "(Optional) Encryption configuration for the repository. See below for schema."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_configuration
}
output "encryption_type" {
  description = "(Optional) The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256."
  value       = aws_ecr_repository.aws_ecr_repository.encryption_type
}
output "image_scanning_configuration" {
  description = "(Optional) Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide"
  value       = aws_ecr_repository.aws_ecr_repository.image_scanning_configuration
}
output "image_tag_mutability" {
  description = "(Optional) The tag mutability setting for the repository. Must be one of: MUTABLE or IMMUTABLE. Defaults to MUTABLE."
  value       = aws_ecr_repository.aws_ecr_repository.image_tag_mutability
}
output "scan_on_push" {
  description = "(Required) Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)."
  value       = aws_ecr_repository.aws_ecr_repository.scan_on_push
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.encryption_configuration"
  value       = aws_ecr_repository.aws_ecr_repository.tags
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecr_repository.aws_ecr_repository.arn
}
output "kms_key" {
  description = "(Optional) The ARN of the KMS key to use when encryption_type is KMS. If not specified, uses the default AWS managed key for ECR.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecr_repository.aws_ecr_repository.kms_key
}
output "name" {
  description = "(Required) Name of the repository."
  value       = aws_ecr_repository.aws_ecr_repository.name
}
output "registry_id" {
  description = "The registry ID where the repository was created."
  value       = aws_ecr_repository.aws_ecr_repository.registry_id
}
output "repository_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  value       = aws_ecr_repository.aws_ecr_repository.repository_url
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecr_repository.aws_ecr_repository.tags_all
}
output "force_delete" {
  description = "(Optional) If truefalse."
  value       = aws_ecr_repository.aws_ecr_repository.force_delete
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecr_repository.aws_ecr_repository.arn
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_ecr_repository.aws_ecr_repository.delete
}
output "registry_id" {
  description = "The registry ID where the repository was created."
  value       = aws_ecr_repository.aws_ecr_repository.registry_id
}
output "repository_url" {
  description = "The URL of the repository (in the form aws_account_id.dkr.ecr.region.amazonaws.com/repositoryName)."
  value       = aws_ecr_repository.aws_ecr_repository.repository_url
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecr_repository.aws_ecr_repository.tags_all
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
      "kind/name"                   = "aws_ecr_repository"
      "kind/version"                = "v0.1.0"
    }
  }
}
