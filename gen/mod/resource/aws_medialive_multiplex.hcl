resource "aws_medialive_multiplex" "aws_medialive_multiplex" {
  maximum_video_buffer_delay_milliseconds = var.maximum_video_buffer_delay_milliseconds
  transport_stream_id                     = var.transport_stream_id
  availability_zones                      = var.availability_zones
  create                                  = var.create
  delete                                  = var.delete
  example_attribute                       = var.example_attribute
  arn                                     = var.arn
  multiplex_settings                      = var.multiplex_settings
  transport_stream_bitrate                = var.transport_stream_bitrate
  transport_stream_reserved_bitrate       = var.transport_stream_reserved_bitrate
  update                                  = var.update
  name                                    = var.name
  start_multiplex                         = var.start_multiplex
  tags                                    = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "transport_stream_reserved_bitrate" {
  description = "(Optional) Transport stream reserved bit rate."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "transport_stream_bitrate" {
  description = "(Required) Transport stream bit rate."
  type        = string
}
variable "start_multiplex" {
  description = "(Optional) Whether to start the Multiplex. Defaults to false."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the Multiplex. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Multiplex Settings"
  type        = string
}
variable "name" {
  description = "(Required) name of Multiplex."
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
variable "example_attribute" {
  description = "Concise description.TimeoutsConfiguration options:"
  type        = string
}
variable "maximum_video_buffer_delay_milliseconds" {
  description = "(Optional) Maximum video buffer delay.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "transport_stream_id" {
  description = "(Required) Unique ID for each multiplex."
  type        = string
}
variable "availability_zones" {
  description = "(Required) A list of availability zones. You must specify exactly two."
  type        = string
}
variable "multiplex_settings" {
  description = "- (Required) Multiplex settings. See Multiplex Settings for more details."
  type        = string
}
variable "arn" {
  description = "ARN of the Multiplex."
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
  value       = aws_medialive_multiplex.aws_medialive_multiplex.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "example_attribute" {
  description = "Concise description.TimeoutsConfiguration options:"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.example_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_video_buffer_delay_milliseconds" {
  description = "(Optional) Maximum video buffer delay.In addition to all arguments above, the following attributes are exported:"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.maximum_video_buffer_delay_milliseconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transport_stream_id" {
  description = "(Required) Unique ID for each multiplex."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.transport_stream_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zones" {
  description = "(Required) A list of availability zones. You must specify exactly two."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.availability_zones
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multiplex_settings" {
  description = "- (Required) Multiplex settings. See Multiplex Settings for more details."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.multiplex_settings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Multiplex."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transport_stream_reserved_bitrate" {
  description = "(Optional) Transport stream reserved bit rate."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.transport_stream_reserved_bitrate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transport_stream_bitrate" {
  description = "(Required) Transport stream bit rate."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.transport_stream_bitrate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_multiplex" {
  description = "(Optional) Whether to start the Multiplex. Defaults to false."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.start_multiplex
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the Multiplex. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Multiplex Settings"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) name of Multiplex."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Multiplex."
  value       = aws_medialive_multiplex.aws_medialive_multiplex.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "example_attribute" {
  description = "Concise description.TimeoutsConfiguration options:"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.example_attribute
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_medialive_multiplex.aws_medialive_multiplex.update
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
      "kind/name"                   = "aws_medialive_multiplex"
      "kind/version"                = "v0.1.0"
    }
  }
}
