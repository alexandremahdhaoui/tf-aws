resource "aws_gamelift_game_server_group.markdown" "aws_gamelift_game_server_group.markdown" {
  game_server_protection_policy = var.game_server_protection_policy
  role_arn                      = var.role_arn
  target_value                  = var.target_value
  version                       = var.version
  create                        = var.create
  game_server_group_name        = var.game_server_group_name
  max_size                      = var.max_size
  min_size                      = var.min_size
  name                          = var.name
  auto_scaling_group_arn        = var.auto_scaling_group_arn
  balancing_strategy            = var.balancing_strategy
  id                            = var.id
  weighted_capacity             = var.weighted_capacity
  arn                           = var.arn
  estimated_instance_warmup     = var.estimated_instance_warmup
  instance_type                 = var.instance_type
  tags                          = var.tags
  vpc_subnets                   = var.vpc_subnets
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "game_server_group_name" {
  description = "(Required) Name of the game server group.\nThis value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group."
  type        = string
}
variable "max_size" {
  description = ""
  type        = string
}
variable "min_size" {
  description = ""
  type        = string
}
variable "name" {
  description = "(Optional) A readable identifier for an existing EC2 launch template."
  type        = string
}
variable "auto_scaling_group_arn" {
  description = "The ARN of the created EC2 Auto Scaling group.TimeoutsConfiguration options:"
  type        = string
}
variable "balancing_strategy" {
  description = "(Optional) Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.\nValid values: SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY. Defaults to SPOT_PREFERRED."
  type        = string
}
variable "id" {
  description = "The name of the GameLift Game Server Group."
  type        = string
}
variable "weighted_capacity" {
  description = "(Optional) Instance weighting that indicates how much this instance type contributes\nto the total capacity of a game server group.\nInstance weights are used by GameLift FleetIQ to calculate the instance type's cost per unit hour and better identify\nthe most cost-effective options.launch_template"
  type        = string
}
variable "arn" {
  description = "The ARN of the GameLift Game Server Group."
  type        = string
}
variable "estimated_instance_warmup" {
  description = "60.target_tracking_configurationPercentUtilizedGameServers"
  type        = string
}
variable "instance_type" {
  description = "(Required) An EC2 instance type."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags"
  type        = string
}
variable "vpc_subnets" {
  description = "(Optional) A list of VPC subnets to use with instances in the game server group.\nBy default, all GameLift FleetIQ-supported Availability Zones are used.auto_scaling_policyPercentUtilizedGameServers"
  type        = string
}
variable "game_server_protection_policy" {
  description = "(Optional) Indicates whether instances in the game server group are protected from early termination.\nUnprotected instances that have active game servers running might be terminated during a scale-down event,\ncausing players to be dropped from the game.\nProtected instances cannot be terminated while there are active game servers running except in the event\nof a forced game server group deletion.\nValid values: NO_PROTECTION, FULL_PROTECTION. Defaults to NO_PROTECTION."
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups."
  type        = string
}
variable "target_value" {
  description = "(Required) Desired value to use with a game server group target-based scaling policy.instance_definition"
  type        = string
}
variable "version" {
  description = "(Optional) The version of the EC2 launch template to use. If none is set, the default is the first version created.In addition to all arguments above, the following attributes are exported:"
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
output "auto_scaling_group_arn" {
  description = "The ARN of the created EC2 Auto Scaling group.TimeoutsConfiguration options:"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.auto_scaling_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "balancing_strategy" {
  description = "(Optional) Indicates how GameLift FleetIQ balances the use of Spot Instances and On-Demand Instances.\nValid values: SPOT_ONLY, SPOT_PREFERRED, ON_DEMAND_ONLY. Defaults to SPOT_PREFERRED."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.balancing_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the GameLift Game Server Group."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weighted_capacity" {
  description = "(Optional) Instance weighting that indicates how much this instance type contributes\nto the total capacity of a game server group.\nInstance weights are used by GameLift FleetIQ to calculate the instance type's cost per unit hour and better identify\nthe most cost-effective options.launch_template"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.weighted_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the GameLift Game Server Group."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "estimated_instance_warmup" {
  description = "60.target_tracking_configurationPercentUtilizedGameServers"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.estimated_instance_warmup
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Required) An EC2 instance type."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_subnets" {
  description = "(Optional) A list of VPC subnets to use with instances in the game server group.\nBy default, all GameLift FleetIQ-supported Availability Zones are used.auto_scaling_policyPercentUtilizedGameServers"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.vpc_subnets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "game_server_protection_policy" {
  description = "(Optional) Indicates whether instances in the game server group are protected from early termination.\nUnprotected instances that have active game servers running might be terminated during a scale-down event,\ncausing players to be dropped from the game.\nProtected instances cannot be terminated while there are active game servers running except in the event\nof a forced game server group deletion.\nValid values: NO_PROTECTION, FULL_PROTECTION. Defaults to NO_PROTECTION."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.game_server_protection_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) ARN for an IAM role that allows Amazon GameLift to access your EC2 Auto Scaling groups."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_value" {
  description = "(Required) Desired value to use with a game server group target-based scaling policy.instance_definition"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.target_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "(Optional) The version of the EC2 launch template to use. If none is set, the default is the first version created.In addition to all arguments above, the following attributes are exported:"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "game_server_group_name" {
  description = "(Required) Name of the game server group.\nThis value is used to generate unique ARN identifiers for the EC2 Auto Scaling group and the GameLift FleetIQ game server group."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.game_server_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_size" {
  description = ""
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.max_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min_size" {
  description = ""
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.min_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) A readable identifier for an existing EC2 launch template."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the GameLift Game Server Group."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_group_arn" {
  description = "The ARN of the created EC2 Auto Scaling group.TimeoutsConfiguration options:"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.auto_scaling_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the GameLift Game Server Group."
  value       = aws_gamelift_game_server_group.markdown.aws_gamelift_game_server_group.markdown.id
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
      "kind/name"                   = "aws_gamelift_game_server_group.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
