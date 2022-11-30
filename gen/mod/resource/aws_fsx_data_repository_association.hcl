resource "aws_fsx_data_repository_association" "aws_fsx_data_repository_association" {
  auto_export_policy               = var.auto_export_policy
  events                           = var.events
  file_system_path                 = var.file_system_path
  id                               = var.id
  imported_file_chunk_size         = var.imported_file_chunk_size
  s3                               = var.s3
  auto_import_policy               = var.auto_import_policy
  batch_import_meta_data_on_create = var.batch_import_meta_data_on_create
  tags                             = var.tags
  create                           = var.create
  data_repository_path             = var.data_repository_path
  delete_data_in_filesystem        = var.delete_data_in_filesystem
  file_system_id                   = var.file_system_id
  arn                              = var.arn
  tags_all                         = var.tags_all
  update                           = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "data_repository_path" {
  description = "(Required) The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system."
  type        = string
}
variable "delete_data_in_filesystem" {
  description = "(Optional) Set to true to delete files from the file system upon deleting this data repository association. Defaults to false."
  type        = string
}
variable "file_system_id" {
  description = "(Required) The ID of the Amazon FSx file system to on which to create a data repository association."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "events" {
  description = "(Optional) A list of file event types to automatically export to your linked S3 bucket or import from the linked S3 bucket. Valid values are NEW, CHANGED, DELETED. Max of 3.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "file_system_path" {
  description = "(Required) A path on the file system that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with data_repository_path. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path /ns1/, then you cannot link another data repository with file system path /ns1/ns2. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory."
  type        = string
}
variable "id" {
  description = "Identifier of the data repository association, e.g., dra-12345678"
  type        = string
}
variable "imported_file_chunk_size" {
  description = "(Optional) For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system."
  type        = string
}
variable "s3" {
  description = "(Optional) See the s3 configuration"
  type        = string
}
variable "auto_export_policy" {
  description = "(Optional) Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the events configuration block."
  type        = string
}
variable "batch_import_meta_data_on_create" {
  description = "(Optional) Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to false."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the data repository association. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.S3 arguments"
  type        = string
}
variable "auto_import_policy" {
  description = "(Optional) Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the events configuration block.Events arguments"
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
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "events" {
  description = "(Optional) A list of file event types to automatically export to your linked S3 bucket or import from the linked S3 bucket. Valid values are NEW, CHANGED, DELETED. Max of 3.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.events
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_path" {
  description = "(Required) A path on the file system that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with data_repository_path. The leading forward slash in the name is required. Two data repository associations cannot have overlapping file system paths. For example, if a data repository is associated with file system path /ns1/, then you cannot link another data repository with file system path /ns1/ns2. This path specifies where in your file system files will be exported from or imported to. This file system directory can be linked to only one Amazon S3 bucket, and no other S3 bucket can be linked to the directory."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.file_system_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the data repository association, e.g., dra-12345678"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "imported_file_chunk_size" {
  description = "(Optional) For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. The maximum number of disks that a single file can be striped across is limited by the total number of disks that make up the file system."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.imported_file_chunk_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3" {
  description = "(Optional) See the s3 configuration"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.s3
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_export_policy" {
  description = "(Optional) Specifies the type of updated objects that will be automatically exported from your file system to the linked S3 bucket. See the events configuration block."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.auto_export_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "batch_import_meta_data_on_create" {
  description = "(Optional) Set to true to run an import data repository task to import metadata from the data repository to the file system after the data repository association is created. Defaults to false."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.batch_import_meta_data_on_create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the data repository association. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.S3 arguments"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_import_policy" {
  description = "(Optional) Specifies the type of updated objects that will be automatically imported from the linked S3 bucket to your file system. See the events configuration block.Events arguments"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.auto_import_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_path" {
  description = "(Required) The path to the Amazon S3 data repository that will be linked to the file system. The path must be an S3 bucket s3://myBucket/myPrefix/. This path specifies where in the S3 data repository files will be imported from or exported to. The same S3 bucket cannot be linked more than once to the same file system."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.data_repository_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_data_in_filesystem" {
  description = "(Optional) Set to true to delete files from the file system upon deleting this data repository association. Defaults to false."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.delete_data_in_filesystem
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "(Required) The ID of the Amazon FSx file system to on which to create a data repository association."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the data repository association, e.g., dra-12345678"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_data_repository_association.aws_fsx_data_repository_association.arn
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
      "kind/name"                   = "aws_fsx_data_repository_association"
      "kind/version"                = "v0.1.0"
    }
  }
}
