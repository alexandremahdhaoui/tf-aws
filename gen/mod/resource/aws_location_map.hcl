resource "aws_location_map" "aws_location_map" {
  description   = var.description
  map_arn       = var.map_arn
  style         = var.style
  update_time   = var.update_time
  configuration = var.configuration
  create_time   = var.create_time
  map_name      = var.map_name
  tags          = var.tags
  tags_all      = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "(Optional) An optional description for the map resource."
  type        = string
  default     = ""
}
variable "map_arn" {
  description = "The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS."
  type        = string
  default     = ""
}
variable "style" {
  description = "(Required) Specifies the map style selected from an available data provider. Valid values can be found in the Location Service CreateMap API Reference.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update_time" {
  description = "The timestamp for when the map resource was last updated in ISO 8601 format."
  type        = string
  default     = ""
}
variable "configuration" {
  description = "(Required) Configuration block with the map style selected from an available data provider. Detailed below."
  type        = string
}
variable "create_time" {
  description = "The timestamp for when the map resource was created in ISO 8601 format."
  type        = string
  default     = ""
}
variable "map_name" {
  description = "(Required) The name for the map resource."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the map. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
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
output "description" {
  description = "(Optional) An optional description for the map resource."
  value       = aws_location_map.aws_location_map.description
}
output "map_arn" {
  description = "The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS."
  value       = aws_location_map.aws_location_map.map_arn
}
output "style" {
  description = "(Required) Specifies the map style selected from an available data provider. Valid values can be found in the Location Service CreateMap API Reference.In addition to all arguments above, the following attributes are exported:"
  value       = aws_location_map.aws_location_map.style
}
output "update_time" {
  description = "The timestamp for when the map resource was last updated in ISO 8601 format."
  value       = aws_location_map.aws_location_map.update_time
}
output "configuration" {
  description = "(Required) Configuration block with the map style selected from an available data provider. Detailed below."
  value       = aws_location_map.aws_location_map.configuration
}
output "create_time" {
  description = "The timestamp for when the map resource was created in ISO 8601 format."
  value       = aws_location_map.aws_location_map.create_time
}
output "map_name" {
  description = "(Required) The name for the map resource."
  value       = aws_location_map.aws_location_map.map_name
}
output "tags" {
  description = "(Optional) Key-value tags for the map. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configuration"
  value       = aws_location_map.aws_location_map.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_location_map.aws_location_map.tags_all
}
output "create_time" {
  description = "The timestamp for when the map resource was created in ISO 8601 format."
  value       = aws_location_map.aws_location_map.create_time
}
output "map_arn" {
  description = "The Amazon Resource Name (ARN) for the map resource. Used to specify a resource across all AWS."
  value       = aws_location_map.aws_location_map.map_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_location_map.aws_location_map.tags_all
}
output "update_time" {
  description = "The timestamp for when the map resource was last updated in ISO 8601 format."
  value       = aws_location_map.aws_location_map.update_time
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
      "kind/name"                   = "aws_location_map"
      "kind/version"                = "v0.1.0"
    }
  }
}
