resource "aws_gamelift_fleet" "aws_gamelift_fleet" {
  create                                  = var.create
  max_concurrent_game_session_activations = var.max_concurrent_game_session_activations
  new_game_session_protection_policy      = var.new_game_session_protection_policy
  policy_period_in_minutes                = var.policy_period_in_minutes
  script_id                               = var.script_id
  certificate_configuration               = var.certificate_configuration
  game_session_activation_timeout_seconds = var.game_session_activation_timeout_seconds
  metric_groups                           = var.metric_groups
  runtime_configuration                   = var.runtime_configuration
  description                             = var.description
  name                                    = var.name
  resource_creation_limit_policy          = var.resource_creation_limit_policy
  id                                      = var.id
  from_port                               = var.from_port
  server_process                          = var.server_process
  tags                                    = var.tags
  to_port                                 = var.to_port
  concurrent_executions                   = var.concurrent_executions
  certificate_type                        = var.certificate_type
  fleet_type                              = var.fleet_type
  operating_system                        = var.operating_system
  parameters                              = var.parameters
  build_arn                               = var.build_arn
  new_game_sessions_per_creator           = var.new_game_sessions_per_creator
  tags_all                                = var.tags_all
  launch_path                             = var.launch_path
  instance_role_arn                       = var.instance_role_arn
  build_id                                = var.build_id
  ec2_inbound_permission                  = var.ec2_inbound_permission
  ec2_instance_type                       = var.ec2_instance_type
  ip_range                                = var.ip_range
  protocol                                = var.protocol
  script_arn                              = var.script_arn
  arn                                     = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "concurrent_executions" {
  description = "(Required) Number of server processes using this configuration to run concurrently on an instance."
  type        = string
}
variable "from_port" {
  description = "(Required) Starting value for a range of allowed port numbers."
  type        = string
}
variable "server_process" {
  description = "(Optional) Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.server_process"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldscertificate_configuration"
  type        = string
}
variable "to_port" {
  description = "(Required) Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than from_port.resource_creation_limit_policy"
  type        = string
}
variable "build_arn" {
  description = "Build ARN."
  type        = string
}
variable "certificate_type" {
  description = "(Optional) Indicates whether a TLS/SSL certificate is generated for a fleet. Valid values are DISABLED and GENERATED. Default value is DISABLED.ec2_inbound_permission"
  type        = string
}
variable "fleet_type" {
  description = "(Optional) Type of fleet. This value must be ON_DEMAND or SPOT. Defaults to ON_DEMAND."
  type        = string
}
variable "operating_system" {
  description = "Operating system of the fleet's computing resources."
  type        = string
}
variable "parameters" {
  description = "(Optional) Optional list of parameters to pass to the server executable on launch.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "launch_path" {
  description = "(Required) Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances C:\\game, and for Linux instances /local/game."
  type        = string
}
variable "new_game_sessions_per_creator" {
  description = "(Optional) Maximum number of game sessions that an individual can create during the policy period."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "build_id" {
  description = "(Optional) ID of the GameLift Build to be deployed on the fleet."
  type        = string
}
variable "instance_role_arn" {
  description = "(Optional) ARN of an IAM role that instances in the fleet can assume."
  type        = string
}
variable "arn" {
  description = "Fleet ARN."
  type        = string
}
variable "ec2_inbound_permission" {
  description = "(Optional) Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below."
  type        = string
}
variable "ec2_instance_type" {
  description = "(Required) Name of an EC2 instance typeE.g., t2.micro"
  type        = string
}
variable "ip_range" {
  description = "(Required) Range of allowed IP addresses expressed in CIDR notationE.g., 000.000.000.000/[subnet mask] or 0.0.0.0/[subnet mask]."
  type        = string
}
variable "protocol" {
  description = "(Required) Network communication protocol used by the fleetE.g., TCP or UDP"
  type        = string
}
variable "script_arn" {
  description = "Script ARN."
  type        = string
}
variable "certificate_configuration" {
  description = "(Optional) Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration."
  type        = string
}
variable "create" {
  description = "(Default 70m)"
  type        = string
}
variable "max_concurrent_game_session_activations" {
  description = "(Optional) Maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously."
  type        = string
}
variable "new_game_session_protection_policy" {
  description = "(Optional) Game session protection policy to apply to all instances in this fleetE.g., FullProtection. Defaults to NoProtection."
  type        = string
}
variable "policy_period_in_minutes" {
  description = "(Optional) Time span used in evaluating the resource creation limit policy.runtime_configuration"
  type        = string
}
variable "script_id" {
  description = "(Optional) ID of the GameLift Script to be deployed on the fleet."
  type        = string
}
variable "description" {
  description = "(Optional) Human-readable description of the fleet."
  type        = string
}
variable "game_session_activation_timeout_seconds" {
  description = "(Optional) Maximum amount of time (in seconds) that a game session can remain in status ACTIVATING."
  type        = string
}
variable "metric_groups" {
  description = "(Optional) List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to default."
  type        = string
}
variable "runtime_configuration" {
  description = "(Optional) Instructions for launching server processes on each instance in the fleet. See below."
  type        = string
}
variable "id" {
  description = "Fleet ID."
  type        = string
}
variable "name" {
  description = "(Required) The name of the fleet."
  type        = string
}
variable "resource_creation_limit_policy" {
  description = "(Optional) Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below."
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
output "build_id" {
  description = "(Optional) ID of the GameLift Build to be deployed on the fleet."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.build_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_role_arn" {
  description = "(Optional) ARN of an IAM role that instances in the fleet can assume."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.instance_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ip_range" {
  description = "(Required) Range of allowed IP addresses expressed in CIDR notationE.g., 000.000.000.000/[subnet mask] or 0.0.0.0/[subnet mask]."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.ip_range
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Required) Network communication protocol used by the fleetE.g., TCP or UDP"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "script_arn" {
  description = "Script ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.script_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Fleet ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ec2_inbound_permission" {
  description = "(Optional) Range of IP addresses and port settings that permit inbound traffic to access server processes running on the fleet. See below."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.ec2_inbound_permission
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ec2_instance_type" {
  description = "(Required) Name of an EC2 instance typeE.g., t2.micro"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.ec2_instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "new_game_session_protection_policy" {
  description = "(Optional) Game session protection policy to apply to all instances in this fleetE.g., FullProtection. Defaults to NoProtection."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.new_game_session_protection_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy_period_in_minutes" {
  description = "(Optional) Time span used in evaluating the resource creation limit policy.runtime_configuration"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.policy_period_in_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "script_id" {
  description = "(Optional) ID of the GameLift Script to be deployed on the fleet."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.script_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_configuration" {
  description = "(Optional) Prompts GameLift to generate a TLS/SSL certificate for the fleet. See certificate_configuration."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.certificate_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 70m)"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_concurrent_game_session_activations" {
  description = "(Optional) Maximum number of game sessions with status ACTIVATING to allow on an instance simultaneously."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.max_concurrent_game_session_activations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime_configuration" {
  description = "(Optional) Instructions for launching server processes on each instance in the fleet. See below."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.runtime_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Human-readable description of the fleet."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "game_session_activation_timeout_seconds" {
  description = "(Optional) Maximum amount of time (in seconds) that a game session can remain in status ACTIVATING."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.game_session_activation_timeout_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metric_groups" {
  description = "(Optional) List of names of metric groups to add this fleet to. A metric group tracks metrics across all fleets in the group. Defaults to default."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.metric_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Fleet ID."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the fleet."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_creation_limit_policy" {
  description = "(Optional) Policy that limits the number of game sessions an individual player can create over a span of time for this fleet. See below."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.resource_creation_limit_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Nested Fieldscertificate_configuration"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "to_port" {
  description = "(Required) Ending value for a range of allowed port numbers. Port numbers are end-inclusive. This value must be higher than from_port.resource_creation_limit_policy"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.to_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "concurrent_executions" {
  description = "(Required) Number of server processes using this configuration to run concurrently on an instance."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.concurrent_executions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "from_port" {
  description = "(Required) Starting value for a range of allowed port numbers."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.from_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_process" {
  description = "(Optional) Collection of server process configurations that describe which server processes to run on each instance in a fleet. See below.server_process"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.server_process
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "operating_system" {
  description = "Operating system of the fleet's computing resources."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.operating_system
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parameters" {
  description = "(Optional) Optional list of parameters to pass to the server executable on launch.In addition to all arguments above, the following attributes are exported:"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_arn" {
  description = "Build ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.build_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_type" {
  description = "(Optional) Indicates whether a TLS/SSL certificate is generated for a fleet. Valid values are DISABLED and GENERATED. Default value is DISABLED.ec2_inbound_permission"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.certificate_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fleet_type" {
  description = "(Optional) Type of fleet. This value must be ON_DEMAND or SPOT. Defaults to ON_DEMAND."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.fleet_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_path" {
  description = "(Required) Location of the server executable in a game build. All game builds are installed on instances at the root : for Windows instances C:\\game, and for Linux instances /local/game."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.launch_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "new_game_sessions_per_creator" {
  description = "(Optional) Maximum number of game sessions that an individual can create during the policy period."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.new_game_sessions_per_creator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Fleet ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_arn" {
  description = "Build ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.build_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 70m)"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_gamelift_fleet.aws_gamelift_fleet.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Fleet ID."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "operating_system" {
  description = "Operating system of the fleet's computing resources."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.operating_system
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "script_arn" {
  description = "Script ARN."
  value       = aws_gamelift_fleet.aws_gamelift_fleet.script_arn
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
      "kind/name"                   = "aws_gamelift_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}
