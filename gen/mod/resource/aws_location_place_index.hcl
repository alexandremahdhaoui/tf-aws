resource "aws_location_place_index" "aws_location_place_index" {
  data_source               = var.data_source
  intended_use              = var.intended_use
  tags_all                  = var.tags_all
  create_time               = var.create_time
  data_source_configuration = var.data_source_configuration
  description               = var.description
  index_arn                 = var.index_arn
  index_name                = var.index_name
  tags                      = var.tags
  update_time               = var.update_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "data_source" {
  description = "(Required) Specifies the geospatial data provider for the new place index."
  type        = string
}
variable "intended_use" {
  description = "(Optional) Specifies how the results of an operation will be stored by the caller. Valid values: SingleUse, Storage. Default: SingleUse.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "create_time" {
  description = "The timestamp for when the place index resource was created in ISO 8601 format."
  type        = string
  default     = ""
}
variable "data_source_configuration" {
  description = "(Optional) Configuration block with the data storage option chosen for requesting Places. Detailed below."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The optional description for the place index resource."
  type        = string
  default     = ""
}
variable "index_arn" {
  description = "The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS."
  type        = string
  default     = ""
}
variable "index_name" {
  description = "(Required) The name of the place index resource."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the place index. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.data_source_configuration"
  type        = string
  default     = ""
}
variable "update_time" {
  description = "The timestamp for when the place index resource was last update in ISO 8601."
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
output "data_source_configuration" {
  description = "(Optional) Configuration block with the data storage option chosen for requesting Places. Detailed below."
  value       = aws_location_place_index.aws_location_place_index.data_source_configuration
}
output "description" {
  description = "(Optional) The optional description for the place index resource."
  value       = aws_location_place_index.aws_location_place_index.description
}
output "index_arn" {
  description = "The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS."
  value       = aws_location_place_index.aws_location_place_index.index_arn
}
output "index_name" {
  description = "(Required) The name of the place index resource."
  value       = aws_location_place_index.aws_location_place_index.index_name
}
output "tags" {
  description = "(Optional) Key-value tags for the place index. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.data_source_configuration"
  value       = aws_location_place_index.aws_location_place_index.tags
}
output "update_time" {
  description = "The timestamp for when the place index resource was last update in ISO 8601."
  value       = aws_location_place_index.aws_location_place_index.update_time
}
output "create_time" {
  description = "The timestamp for when the place index resource was created in ISO 8601 format."
  value       = aws_location_place_index.aws_location_place_index.create_time
}
output "intended_use" {
  description = "(Optional) Specifies how the results of an operation will be stored by the caller. Valid values: SingleUse, Storage. Default: SingleUse.In addition to all arguments above, the following attributes are exported:"
  value       = aws_location_place_index.aws_location_place_index.intended_use
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_location_place_index.aws_location_place_index.tags_all
}
output "data_source" {
  description = "(Required) Specifies the geospatial data provider for the new place index."
  value       = aws_location_place_index.aws_location_place_index.data_source
}
output "create_time" {
  description = "The timestamp for when the place index resource was created in ISO 8601 format."
  value       = aws_location_place_index.aws_location_place_index.create_time
}
output "index_arn" {
  description = "The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS."
  value       = aws_location_place_index.aws_location_place_index.index_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_location_place_index.aws_location_place_index.tags_all
}
output "update_time" {
  description = "The timestamp for when the place index resource was last update in ISO 8601."
  value       = aws_location_place_index.aws_location_place_index.update_time
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
      "kind/name"                   = "aws_location_place_index"
      "kind/version"                = "v0.1.0"
    }
  }
}
