resource "aws_kendra_thesaurus" "aws_kendra_thesaurus" {
  index_id       = var.index_id
  key            = var.key
  name           = var.name
  source_s3_path = var.source_s3_path
  update         = var.update
  description    = var.description
  status         = var.status
  tags           = var.tags
  create         = var.create
  bucket         = var.bucket
  id             = var.id
  arn            = var.arn
  role_arn       = var.role_arn
  tags_all       = var.tags_all
  delete         = var.delete
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "role_arn" {
  description = "(Required) The IAM (Identity and Access Management) role used to access the thesaurus file in S3."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "description" {
  description = "(Optional) The description for a thesaurus."
  type        = string
}
variable "index_id" {
  description = "- (Required, Forces new resource) The identifier of the index for a thesaurus."
  type        = string
}
variable "key" {
  description = "(Required) The name of the file."
  type        = string
}
variable "name" {
  description = "(Required) The name for the thesaurus."
  type        = string
}
variable "source_s3_path" {
  description = "(Required) The S3 path where your thesaurus file sits in S3. Detailed below.The source_s3_path configuration block supports the following arguments:"
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "status" {
  description = "The current status of the thesaurus."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the thesaurus."
  type        = string
}
variable "bucket" {
  description = "(Required) The name of the S3 bucket that contains the file."
  type        = string
}
variable "id" {
  description = "The unique identifiers of the thesaurus and index separated by a slash (/)."
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
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) The name of the S3 bucket that contains the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifiers of the thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The IAM (Identity and Access Management) role used to access the thesaurus file in S3."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name for the thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_s3_path" {
  description = "(Required) The S3 path where your thesaurus file sits in S3. Detailed below.The source_s3_path configuration block supports the following arguments:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.source_s3_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description for a thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_id" {
  description = "- (Required, Forces new resource) The identifier of the index for a thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.index_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "(Required) The name of the file."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The unique identifiers of the thesaurus and index separated by a slash (/)."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The current status of the thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the thesaurus."
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_thesaurus.aws_kendra_thesaurus.create
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
      "kind/name"                   = "aws_kendra_thesaurus"
      "kind/version"                = "v0.1.0"
    }
  }
}
