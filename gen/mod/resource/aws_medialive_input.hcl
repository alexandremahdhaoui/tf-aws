resource "aws_medialive_input" "aws_medialive_input" {
  media_connect_flows   = var.media_connect_flows
  name                  = var.name
  sources               = var.sources
  tags                  = var.tags
  update                = var.update
  username              = var.username
  destinations          = var.destinations
  input_partner_ids     = var.input_partner_ids
  input_security_groups = var.input_security_groups
  password_param        = var.password_param
  subnet_ids            = var.subnet_ids
  arn                   = var.arn
  delete                = var.delete
  input_source_type     = var.input_source_type
  stream_name           = var.stream_name
  vpc                   = var.vpc
  flow_arn              = var.flow_arn
  input_devices         = var.input_devices
  id                    = var.id
  input_class           = var.input_class
  role_arn              = var.role_arn
  security_group_ids    = var.security_group_ids
  type                  = var.type
  url                   = var.url
  attached_channels     = var.attached_channels
  create                = var.create
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name of the input."
  type        = string
}
variable "sources" {
  description = "(Optional) The source URLs for a PULL-type input. See Sources for more details."
  type        = string
  default     = ""
}
variable "tags" {
  description = "- (Optional) A map of tags to assign to the Input. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "username" {
  description = "The username for the input source.VPC"
  type        = string
  default     = ""
}
variable "destinations" {
  description = "(Optional) Destination settings for PUSH type inputs. See Destinations for more details."
  type        = string
  default     = ""
}
variable "input_partner_ids" {
  description = "A list of IDs for all Inputs which are partners of this one."
  type        = string
  default     = ""
}
variable "media_connect_flows" {
  description = "(Optional) A list of the MediaConnect Flows. See Media Connect Flows for more details."
  type        = string
  default     = ""
}
variable "password_param" {
  description = "The key used to extract the password from EC2 Parameter store."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "A list of 2 VPC subnet IDs from the same VPC."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Input."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "input_security_groups" {
  description = "(Required) List of input security groups."
  type        = string
}
variable "stream_name" {
  description = "A unique name for the location the RTMP stream is being pushed to.Input Devices"
  type        = string
  default     = ""
}
variable "vpc" {
  description = "(Optional) Settings for a private VPC Input. See VPC for more details.Destinations"
  type        = string
  default     = ""
}
variable "flow_arn" {
  description = "The ARN of the MediaConnect FlowSources"
  type        = string
  default     = ""
}
variable "input_devices" {
  description = "(Optional) Settings for the devices. See Input Devices for more details."
  type        = string
  default     = ""
}
variable "input_source_type" {
  description = "Source type of the input.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "input_class" {
  description = "The input class."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Optional) The ARN of the role this input assumes during and after creation."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "A list of up to 5 EC2 VPC security group IDs to attach to the Input.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The different types of inputs that AWS Elemental MediaLive supports."
  type        = string
}
variable "url" {
  description = "The URL where the stream is pulled from."
  type        = string
  default     = ""
}
variable "attached_channels" {
  description = "Channels attached to Input."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique ID for the device.Media Connect Flows"
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
output "sources" {
  description = "(Optional) The source URLs for a PULL-type input. See Sources for more details."
  value       = aws_medialive_input.aws_medialive_input.sources
}
output "tags" {
  description = "- (Optional) A map of tags to assign to the Input. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_medialive_input.aws_medialive_input.tags
}
output "update" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.update
}
output "username" {
  description = "The username for the input source.VPC"
  value       = aws_medialive_input.aws_medialive_input.username
}
output "destinations" {
  description = "(Optional) Destination settings for PUSH type inputs. See Destinations for more details."
  value       = aws_medialive_input.aws_medialive_input.destinations
}
output "input_partner_ids" {
  description = "A list of IDs for all Inputs which are partners of this one."
  value       = aws_medialive_input.aws_medialive_input.input_partner_ids
}
output "media_connect_flows" {
  description = "(Optional) A list of the MediaConnect Flows. See Media Connect Flows for more details."
  value       = aws_medialive_input.aws_medialive_input.media_connect_flows
}
output "name" {
  description = "(Required) Name of the input."
  value       = aws_medialive_input.aws_medialive_input.name
}
output "subnet_ids" {
  description = "A list of 2 VPC subnet IDs from the same VPC."
  value       = aws_medialive_input.aws_medialive_input.subnet_ids
}
output "arn" {
  description = "ARN of the Input."
  value       = aws_medialive_input.aws_medialive_input.arn
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.delete
}
output "input_security_groups" {
  description = "(Required) List of input security groups."
  value       = aws_medialive_input.aws_medialive_input.input_security_groups
}
output "password_param" {
  description = "The key used to extract the password from EC2 Parameter store."
  value       = aws_medialive_input.aws_medialive_input.password_param
}
output "vpc" {
  description = "(Optional) Settings for a private VPC Input. See VPC for more details.Destinations"
  value       = aws_medialive_input.aws_medialive_input.vpc
}
output "flow_arn" {
  description = "The ARN of the MediaConnect FlowSources"
  value       = aws_medialive_input.aws_medialive_input.flow_arn
}
output "input_devices" {
  description = "(Optional) Settings for the devices. See Input Devices for more details."
  value       = aws_medialive_input.aws_medialive_input.input_devices
}
output "input_source_type" {
  description = "Source type of the input.TimeoutsConfiguration options:"
  value       = aws_medialive_input.aws_medialive_input.input_source_type
}
output "stream_name" {
  description = "A unique name for the location the RTMP stream is being pushed to.Input Devices"
  value       = aws_medialive_input.aws_medialive_input.stream_name
}
output "role_arn" {
  description = "(Optional) The ARN of the role this input assumes during and after creation."
  value       = aws_medialive_input.aws_medialive_input.role_arn
}
output "security_group_ids" {
  description = "A list of up to 5 EC2 VPC security group IDs to attach to the Input.In addition to all arguments above, the following attributes are exported:"
  value       = aws_medialive_input.aws_medialive_input.security_group_ids
}
output "type" {
  description = "(Required) The different types of inputs that AWS Elemental MediaLive supports."
  value       = aws_medialive_input.aws_medialive_input.type
}
output "url" {
  description = "The URL where the stream is pulled from."
  value       = aws_medialive_input.aws_medialive_input.url
}
output "attached_channels" {
  description = "Channels attached to Input."
  value       = aws_medialive_input.aws_medialive_input.attached_channels
}
output "create" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.create
}
output "id" {
  description = "The unique ID for the device.Media Connect Flows"
  value       = aws_medialive_input.aws_medialive_input.id
}
output "input_class" {
  description = "The input class."
  value       = aws_medialive_input.aws_medialive_input.input_class
}
output "input_source_type" {
  description = "Source type of the input.TimeoutsConfiguration options:"
  value       = aws_medialive_input.aws_medialive_input.input_source_type
}
output "update" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.update
}
output "arn" {
  description = "ARN of the Input."
  value       = aws_medialive_input.aws_medialive_input.arn
}
output "attached_channels" {
  description = "Channels attached to Input."
  value       = aws_medialive_input.aws_medialive_input.attached_channels
}
output "create" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_medialive_input.aws_medialive_input.delete
}
output "input_class" {
  description = "The input class."
  value       = aws_medialive_input.aws_medialive_input.input_class
}
output "input_partner_ids" {
  description = "A list of IDs for all Inputs which are partners of this one."
  value       = aws_medialive_input.aws_medialive_input.input_partner_ids
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
      "kind/name"                   = "aws_medialive_input"
      "kind/version"                = "v0.1.0"
    }
  }
}
