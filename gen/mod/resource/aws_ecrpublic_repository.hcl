resource "aws_ecrpublic_repository" "aws_ecrpublic_repository" {
  logo_image_blob   = var.logo_image_blob
  tags_all          = var.tags_all
  usage_text        = var.usage_text
  arn               = var.arn
  description       = var.description
  operating_systems = var.operating_systems
  registry_id       = var.registry_id
  catalog_data      = var.catalog_data
  id                = var.id
  repository_name   = var.repository_name
  tags              = var.tags
  about_text        = var.about_text
  architectures     = var.architectures
  repository_uri    = var.repository_uri
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "catalog_data" {
  description = "(Optional) Catalog data configuration for the repository. See below for schema."
  type        = string
  default     = ""
}
variable "id" {
  description = "The repository name."
  type        = string
}
variable "repository_name" {
  description = "(Required) Name of the repository."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.catalog_data"
  type        = string
  default     = ""
}
variable "about_text" {
  description = "(Optional) A detailed description of the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The text must be in markdown format."
  type        = string
  default     = ""
}
variable "architectures" {
  description = "(Optional) The system architecture that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported architectures will appear as badges on the repository and are used as search filters: ARM, ARM 64, x86, x86-64"
  type        = string
  default     = ""
}
variable "repository_uri" {
  description = "The URI of the repository."
  type        = string
}
variable "logo_image_blob" {
  description = "(Optional) The base64-encoded repository logo payload. (Only visible for verified accounts) Note that drift detection is disabled for this attribute."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "usage_text" {
  description = " (Optional) Detailed information on how to use the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The usage text provides context, support information, and additional usage details for users of the repository. The text must be in markdown format.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Full ARN of the repository."
  type        = string
}
variable "description" {
  description = "(Optional) A short description of the contents of the repository. This text appears in both the image details and also when searching for repositories on the Amazon ECR Public Gallery."
  type        = string
  default     = ""
}
variable "operating_systems" {
  description = " (Optional) The operating systems that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported operating systems will appear as badges on the repository and are used as search filters: Linux, Windows"
  type        = string
  default     = ""
}
variable "registry_id" {
  description = "The registry ID where the repository was created."
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
output "logo_image_blob" {
  description = "(Optional) The base64-encoded repository logo payload. (Only visible for verified accounts) Note that drift detection is disabled for this attribute."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.logo_image_blob
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.tags_all
}
output "usage_text" {
  description = " (Optional) Detailed information on how to use the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The usage text provides context, support information, and additional usage details for users of the repository. The text must be in markdown format.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.usage_text
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.arn
}
output "description" {
  description = "(Optional) A short description of the contents of the repository. This text appears in both the image details and also when searching for repositories on the Amazon ECR Public Gallery."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.description
}
output "operating_systems" {
  description = " (Optional) The operating systems that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported operating systems will appear as badges on the repository and are used as search filters: Linux, Windows"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.operating_systems
}
output "registry_id" {
  description = "The registry ID where the repository was created."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.registry_id
}
output "catalog_data" {
  description = "(Optional) Catalog data configuration for the repository. See below for schema."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.catalog_data
}
output "id" {
  description = "The repository name."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.id
}
output "repository_name" {
  description = "(Required) Name of the repository."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.repository_name
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.catalog_data"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.tags
}
output "about_text" {
  description = "(Optional) A detailed description of the contents of the repository. It is publicly visible in the Amazon ECR Public Gallery. The text must be in markdown format."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.about_text
}
output "architectures" {
  description = "(Optional) The system architecture that the images in the repository are compatible with. On the Amazon ECR Public Gallery, the following supported architectures will appear as badges on the repository and are used as search filters: ARM, ARM 64, x86, x86-64"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.architectures
}
output "repository_uri" {
  description = "The URI of the repository."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.repository_uri
}
output "repository_uri" {
  description = "The URI of the repository."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.repository_uri
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.tags_all
}
output "arn" {
  description = "Full ARN of the repository."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.arn
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.delete
}
output "id" {
  description = "The repository name."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.id
}
output "registry_id" {
  description = "The registry ID where the repository was created."
  value       = aws_ecrpublic_repository.aws_ecrpublic_repository.registry_id
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
      "kind/name"                   = "aws_ecrpublic_repository"
      "kind/version"                = "v0.1.0"
    }
  }
}
