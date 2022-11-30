resource "aws_appstream_fleet" "aws_appstream_fleet" {
  idle_disconnect_timeout_in_seconds     = var.idle_disconnect_timeout_in_seconds
  image_name                             = var.image_name
  instance_type                          = var.instance_type
  description                            = var.description
  directory_name                         = var.directory_name
  disconnect_timeout_in_seconds          = var.disconnect_timeout_in_seconds
  domain_join_info                       = var.domain_join_info
  enable_default_internet_access         = var.enable_default_internet_access
  compute_capacity                       = var.compute_capacity
  created_time                           = var.created_time
  id                                     = var.id
  name                                   = var.name
  subnet_ids                             = var.subnet_ids
  max_user_duration_in_seconds           = var.max_user_duration_in_seconds
  stream_view                            = var.stream_view
  available                              = var.available
  display_name                           = var.display_name
  organizational_unit_distinguished_name = var.organizational_unit_distinguished_name
  security_group_ids                     = var.security_group_ids
  tags                                   = var.tags
  iam_role_arn                           = var.iam_role_arn
  arn                                    = var.arn
  fleet_type                             = var.fleet_type
  in_use                                 = var.in_use
  running                                = var.running
  desired_instances                      = var.desired_instances
  image_arn                              = var.image_arn
  state                                  = var.state
  vpc_config                             = var.vpc_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "directory_name" {
  description = "(Optional) Fully qualified name of the directory (for example, corp.example.com)."
  type        = string
}
variable "disconnect_timeout_in_seconds" {
  description = "(Optional) Amount of time that a streaming session remains active after users disconnect."
  type        = string
}
variable "domain_join_info" {
  description = "(Optional) Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below."
  type        = string
}
variable "enable_default_internet_access" {
  description = "(Optional) Enables or disables default internet access for the fleet."
  type        = string
}
variable "description" {
  description = "(Optional) Description to display."
  type        = string
}
variable "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the fleet was created."
  type        = string
}
variable "id" {
  description = "Unique identifier (ID) of the appstream fleet."
  type        = string
}
variable "name" {
  description = "(Required) Unique name for the fleet."
  type        = string
}
variable "subnet_ids" {
  description = "Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "compute_capacity" {
  description = "Describes the capacity status for a fleet.compute_capacity"
  type        = string
}
variable "stream_view" {
  description = "(Optional) AppStream 2.0 view that is displayed to your users when they stream from the fleet. When APP is specified, only the windows of applications opened by users display. When DESKTOP is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to APP."
  type        = string
}
variable "max_user_duration_in_seconds" {
  description = "(Optional) Maximum amount of time that a streaming session can remain active, in seconds."
  type        = string
}
variable "display_name" {
  description = "(Optional) Human-readable friendly name for the AppStream fleet."
  type        = string
}
variable "organizational_unit_distinguished_name" {
  description = "(Optional) Distinguished name of the organizational unit for computer accounts.vpc_config"
  type        = string
}
variable "security_group_ids" {
  description = "Identifiers of the security groups for the fleet or image builder."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to attach to AppStream instances.compute_capacity"
  type        = string
}
variable "available" {
  description = "Number of currently available instances that can be used to stream sessions."
  type        = string
}
variable "iam_role_arn" {
  description = "(Optional) ARN of the IAM role to apply to the fleet."
  type        = string
}
variable "fleet_type" {
  description = "(Optional) Fleet type. Valid values are: ON_DEMAND, ALWAYS_ON"
  type        = string
}
variable "in_use" {
  description = "Number of instances in use for streaming."
  type        = string
}
variable "running" {
  description = "Total number of simultaneous streaming instances that are running."
  type        = string
}
variable "arn" {
  description = "ARN of the appstream fleet."
  type        = string
}
variable "image_arn" {
  description = "(Optional) ARN of the public, private, or shared image to use."
  type        = string
}
variable "state" {
  description = "State of the fleet. Can be STARTING, RUNNING, STOPPING or STOPPED"
  type        = string
}
variable "vpc_config" {
  description = "(Optional) Configuration block for the VPC configuration for the image builder. See below."
  type        = string
}
variable "desired_instances" {
  description = "(Required) Desired number of streaming instances.domain_join_info"
  type        = string
}
variable "image_name" {
  description = "(Optional) Name of the image used to create the fleet."
  type        = string
}
variable "instance_type" {
  description = "(Required) Instance type to use when launching fleet instances."
  type        = string
}
variable "idle_disconnect_timeout_in_seconds" {
  description = "(Optional) Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect_timeout_in_seconds time interval begins."
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
output "fleet_type" {
  description = "(Optional) Fleet type. Valid values are: ON_DEMAND, ALWAYS_ON"
  value       = aws_appstream_fleet.aws_appstream_fleet.fleet_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "in_use" {
  description = "Number of instances in use for streaming."
  value       = aws_appstream_fleet.aws_appstream_fleet.in_use
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "running" {
  description = "Total number of simultaneous streaming instances that are running."
  value       = aws_appstream_fleet.aws_appstream_fleet.running
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the appstream fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_arn" {
  description = "(Optional) ARN of the public, private, or shared image to use."
  value       = aws_appstream_fleet.aws_appstream_fleet.image_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "State of the fleet. Can be STARTING, RUNNING, STOPPING or STOPPED"
  value       = aws_appstream_fleet.aws_appstream_fleet.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_config" {
  description = "(Optional) Configuration block for the VPC configuration for the image builder. See below."
  value       = aws_appstream_fleet.aws_appstream_fleet.vpc_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_instances" {
  description = "(Required) Desired number of streaming instances.domain_join_info"
  value       = aws_appstream_fleet.aws_appstream_fleet.desired_instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_name" {
  description = "(Optional) Name of the image used to create the fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.image_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Required) Instance type to use when launching fleet instances."
  value       = aws_appstream_fleet.aws_appstream_fleet.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idle_disconnect_timeout_in_seconds" {
  description = "(Optional) Amount of time that users can be idle (inactive) before they are disconnected from their streaming session and the disconnect_timeout_in_seconds time interval begins."
  value       = aws_appstream_fleet.aws_appstream_fleet.idle_disconnect_timeout_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "directory_name" {
  description = "(Optional) Fully qualified name of the directory (for example, corp.example.com)."
  value       = aws_appstream_fleet.aws_appstream_fleet.directory_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disconnect_timeout_in_seconds" {
  description = "(Optional) Amount of time that a streaming session remains active after users disconnect."
  value       = aws_appstream_fleet.aws_appstream_fleet.disconnect_timeout_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_join_info" {
  description = "(Optional) Configuration block for the name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. See below."
  value       = aws_appstream_fleet.aws_appstream_fleet.domain_join_info
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_default_internet_access" {
  description = "(Optional) Enables or disables default internet access for the fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.enable_default_internet_access
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Description to display."
  value       = aws_appstream_fleet.aws_appstream_fleet.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the fleet was created."
  value       = aws_appstream_fleet.aws_appstream_fleet.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier (ID) of the appstream fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Unique name for the fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "Identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appstream_fleet.aws_appstream_fleet.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_capacity" {
  description = "Describes the capacity status for a fleet.compute_capacity"
  value       = aws_appstream_fleet.aws_appstream_fleet.compute_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_view" {
  description = "(Optional) AppStream 2.0 view that is displayed to your users when they stream from the fleet. When APP is specified, only the windows of applications opened by users display. When DESKTOP is specified, the standard desktop that is provided by the operating system displays. If not specified, defaults to APP."
  value       = aws_appstream_fleet.aws_appstream_fleet.stream_view
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_user_duration_in_seconds" {
  description = "(Optional) Maximum amount of time that a streaming session can remain active, in seconds."
  value       = aws_appstream_fleet.aws_appstream_fleet.max_user_duration_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "(Optional) Human-readable friendly name for the AppStream fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organizational_unit_distinguished_name" {
  description = "(Optional) Distinguished name of the organizational unit for computer accounts.vpc_config"
  value       = aws_appstream_fleet.aws_appstream_fleet.organizational_unit_distinguished_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Identifiers of the security groups for the fleet or image builder."
  value       = aws_appstream_fleet.aws_appstream_fleet.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to attach to AppStream instances.compute_capacity"
  value       = aws_appstream_fleet.aws_appstream_fleet.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available" {
  description = "Number of currently available instances that can be used to stream sessions."
  value       = aws_appstream_fleet.aws_appstream_fleet.available
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_role_arn" {
  description = "(Optional) ARN of the IAM role to apply to the fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.iam_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_capacity" {
  description = "Describes the capacity status for a fleet.compute_capacity"
  value       = aws_appstream_fleet.aws_appstream_fleet.compute_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the fleet was created."
  value       = aws_appstream_fleet.aws_appstream_fleet.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Unique identifier (ID) of the appstream fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "in_use" {
  description = "Number of instances in use for streaming."
  value       = aws_appstream_fleet.aws_appstream_fleet.in_use
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "running" {
  description = "Total number of simultaneous streaming instances that are running."
  value       = aws_appstream_fleet.aws_appstream_fleet.running
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "State of the fleet. Can be STARTING, RUNNING, STOPPING or STOPPED"
  value       = aws_appstream_fleet.aws_appstream_fleet.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the appstream fleet."
  value       = aws_appstream_fleet.aws_appstream_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "available" {
  description = "Number of currently available instances that can be used to stream sessions."
  value       = aws_appstream_fleet.aws_appstream_fleet.available
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
      "kind/name"                   = "aws_appstream_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}
