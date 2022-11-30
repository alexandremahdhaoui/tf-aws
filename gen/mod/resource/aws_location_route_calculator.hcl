resource "aws_location_route_calculator" "aws_location_route_calculator" {
  tags_all        = var.tags_all
  update          = var.update
  update_time     = var.update_time
  create          = var.create
  delete          = var.delete
  tags            = var.tags
  data_source     = var.data_source
  description     = var.description
  calculator_arn  = var.calculator_arn
  calculator_name = var.calculator_name
  create_time     = var.create_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "(Optional) The optional description for the route calculator resource."
  type        = string
}
variable "calculator_arn" {
  description = "The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS."
  type        = string
}
variable "calculator_name" {
  description = "(Required) The name of the route calculator resource."
  type        = string
}
variable "create_time" {
  description = "The timestamp for when the route calculator resource was created in ISO 8601 format."
  type        = string
}
variable "data_source" {
  description = "(Required) Specifies the data provider of traffic and road network data."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "update_time" {
  description = "The timestamp for when the route calculator resource was last update in ISO 8601."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value tags for the route calculator. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
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
  value       = aws_location_route_calculator.aws_location_route_calculator.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_time" {
  description = "The timestamp for when the route calculator resource was last update in ISO 8601."
  value       = aws_location_route_calculator.aws_location_route_calculator.update_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value tags for the route calculator. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_location_route_calculator.aws_location_route_calculator.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_source" {
  description = "(Required) Specifies the data provider of traffic and road network data."
  value       = aws_location_route_calculator.aws_location_route_calculator.data_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The optional description for the route calculator resource."
  value       = aws_location_route_calculator.aws_location_route_calculator.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "calculator_arn" {
  description = "The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS."
  value       = aws_location_route_calculator.aws_location_route_calculator.calculator_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "calculator_name" {
  description = "(Required) The name of the route calculator resource."
  value       = aws_location_route_calculator.aws_location_route_calculator.calculator_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "The timestamp for when the route calculator resource was created in ISO 8601 format."
  value       = aws_location_route_calculator.aws_location_route_calculator.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "calculator_arn" {
  description = "The Amazon Resource Name (ARN) for the Route calculator resource. Use the ARN when you specify a resource across AWS."
  value       = aws_location_route_calculator.aws_location_route_calculator.calculator_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "The timestamp for when the route calculator resource was created in ISO 8601 format."
  value       = aws_location_route_calculator.aws_location_route_calculator.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_location_route_calculator.aws_location_route_calculator.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_location_route_calculator.aws_location_route_calculator.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_time" {
  description = "The timestamp for when the route calculator resource was last update in ISO 8601."
  value       = aws_location_route_calculator.aws_location_route_calculator.update_time
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
      "kind/name"                   = "aws_location_route_calculator"
      "kind/version"                = "v0.1.0"
    }
  }
}
