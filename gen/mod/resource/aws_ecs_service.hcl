resource "aws_ecs_service" "aws_ecs_service" {
  rollback                           = var.rollback
  type                               = var.type
  deployment_minimum_healthy_percent = var.deployment_minimum_healthy_percent
  capacity_provider_strategy         = var.capacity_provider_strategy
  delete                             = var.delete
  deployment_controller              = var.deployment_controller
  security_groups                    = var.security_groups
  target_group_arn                   = var.target_group_arn
  assign_public_ip                   = var.assign_public_ip
  create                             = var.create
  desired_count                      = var.desired_count
  enable_ecs_managed_tags            = var.enable_ecs_managed_tags
  name                               = var.name
  propagate_tags                     = var.propagate_tags
  scheduling_strategy                = var.scheduling_strategy
  container_port                     = var.container_port
  elb_name                           = var.elb_name
  port                               = var.port
  registry_arn                       = var.registry_arn
  service_registries                 = var.service_registries
  subnets                            = var.subnets
  tags                               = var.tags
  task_definition                    = var.task_definition
  capacity_provider                  = var.capacity_provider
  force_new_deployment               = var.force_new_deployment
  launch_type                        = var.launch_type
  ordered_placement_strategy         = var.ordered_placement_strategy
  platform_version                   = var.platform_version
  wait_for_steady_state              = var.wait_for_steady_state
  enable                             = var.enable
  deployment_circuit_breaker         = var.deployment_circuit_breaker
  id                                 = var.id
  weight                             = var.weight
  cluster                            = var.cluster
  enable_execute_command             = var.enable_execute_command
  field                              = var.field
  health_check_grace_period_seconds  = var.health_check_grace_period_seconds
  iam_role                           = var.iam_role
  load_balancer                      = var.load_balancer
  update                             = var.update
  base                               = var.base
  deployment_maximum_percent         = var.deployment_maximum_percent
  expression                         = var.expression
  network_configuration              = var.network_configuration
  placement_constraints              = var.placement_constraints
  tags_all                           = var.tags_all
  container_name                     = var.container_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "rollback" {
  description = "(Required) Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.deployment_controllerThe deployment_controller configuration block supports the following:"
  type        = string
}
variable "type" {
  description = "(Required) Type of constraint. The only valid values at this time are memberOf and distinctInstance."
  type        = string
}
variable "deployment_minimum_healthy_percent" {
  description = "(Optional) Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment."
  type        = string
}
variable "capacity_provider_strategy" {
  description = "(Optional) Capacity provider strategies to use for the service. Can be one or more. These can be updated without destroying and recreating the service only if force_new_deployment = true and not changing from 0 capacity_provider_strategy blocks to greater than 0, or vice versa. See below."
  type        = string
}
variable "delete" {
  description = "(Default 20m)"
  type        = string
}
variable "deployment_controller" {
  description = "(Optional) Configuration block for deployment controller configuration. See below."
  type        = string
}
variable "security_groups" {
  description = "(Optional) Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  type        = string
}
variable "target_group_arn" {
  description = "(Required for ALB/NLB) ARN of the Load Balancer target group to associate with the service."
  type        = string
}
variable "assign_public_ip" {
  description = "(Optional) Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false.For more information, see Task Networkingordered_placement_strategyordered_placement_strategy supports the following:"
  type        = string
}
variable "create" {
  description = "(Default 20m)"
  type        = string
}
variable "desired_count" {
  description = "Number of instances of the task definition."
  type        = string
}
variable "enable_ecs_managed_tags" {
  description = "(Optional) Specifies whether to enable Amazon ECS managed tags for the tasks within the service."
  type        = string
}
variable "name" {
  description = "Name of the service."
  type        = string
}
variable "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the task definition or the service to the tasks. The valid values are SERVICE and TASK_DEFINITION."
  type        = string
}
variable "scheduling_strategy" {
  description = "(Optional) Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA. Note that emTasks using the Fargate launch type or the CODE_DEPLOY or EXTERNAL deployment controller types don't support the DAEMON scheduling strategy."
  type        = string
}
variable "container_port" {
  description = "(Optional) Port value, already specified in the task definition, to be used for your service discovery service."
  type        = string
}
variable "elb_name" {
  description = "(Required for ELB Classic) Name of the ELB (Classic) to associate with the service."
  type        = string
}
variable "port" {
  description = "(Optional) Port value used if your Service Discovery service specified an SRV record."
  type        = string
}
variable "registry_arn" {
  description = "(Required) ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(aws_service_discovery_service). For more information, see Service"
  type        = string
}
variable "service_registries" {
  description = "(Optional) Service discovery registries for the service. The maximum number of service_registries blocks is 1. See below."
  type        = string
}
variable "subnets" {
  description = "(Required) Subnets associated with the task or service."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "task_definition" {
  description = "(Optional) Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used."
  type        = string
}
variable "capacity_provider" {
  description = "(Required) Short name of the capacity provider."
  type        = string
}
variable "force_new_deployment" {
  description = "(Optional) Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered_placement_strategy and placement_constraints updates."
  type        = string
}
variable "launch_type" {
  description = "(Optional) Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2."
  type        = string
}
variable "ordered_placement_strategy" {
  description = "(Optional) Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. The maximum number of ordered_placement_strategy blocks is 5. See below."
  type        = string
}
variable "platform_version" {
  description = "(Optional) Platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST. More information about Fargate platform versions can be found in the AWS ECS User Guide."
  type        = string
}
variable "wait_for_steady_state" {
  description = "(Optional) If true, Terraform will wait for the service to reach a steady state (like aws ecs wait services-stable) before continuing. Default false.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  type        = string
}
variable "enable" {
  description = "(Required) Whether to enable the deployment circuit breaker logic for the service."
  type        = string
}
variable "deployment_circuit_breaker" {
  description = "(Optional) Configuration block for deployment circuit breaker. See below."
  type        = string
}
variable "id" {
  description = "ARN that identifies the service."
  type        = string
}
variable "weight" {
  description = "(Required) Relative percentage of the total number of launched tasks that should use the specified capacity provider.deployment_circuit_breakerThe deployment_circuit_breaker configuration block supports the following:"
  type        = string
}
variable "cluster" {
  description = "Amazon Resource Name (ARN) of cluster which the service runs on."
  type        = string
}
variable "enable_execute_command" {
  description = "(Optional) Specifies whether to enable Amazon ECS Exec for the tasks within the service."
  type        = string
}
variable "field" {
  description = "(Optional) For the spread placement strategy, valid values are instanceId (or hostbinpack type, valid values are memory and cpu. For the randomPlacement Strategy.-> strongNote: for spread, host and instanceId will be normalized, by AWS, to be instanceId. This means the statefile will show instanceId but your config will differ if you use host.placement_constraintsplacement_constraints support the following:"
  type        = string
}
variable "health_check_grace_period_seconds" {
  description = "(Optional) Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers."
  type        = string
}
variable "iam_role" {
  description = "ARN of IAM role used for ELB."
  type        = string
}
variable "load_balancer" {
  description = "(Optional) Configuration block for load balancers. See below."
  type        = string
}
variable "update" {
  description = "(Default 20m)"
  type        = string
}
variable "base" {
  description = "(Optional) Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined."
  type        = string
}
variable "deployment_maximum_percent" {
  description = "(Optional) Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the DAEMON scheduling strategy."
  type        = string
}
variable "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. Does not need to be specified for the distinctInstance type. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.service_registriesservice_registries support the following:"
  type        = string
}
variable "network_configuration" {
  description = "(Optional) Network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below."
  type        = string
}
variable "placement_constraints" {
  description = "(Optional) Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. Maximum number of placement_constraints is 10. See below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "container_name" {
  description = "(Optional) Container name value, already specified in the task definition, to be used for your service discovery service.In addition to all arguments above, the following attributes are exported:"
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
output "security_groups" {
  description = "(Optional) Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used."
  value       = aws_ecs_service.aws_ecs_service.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_group_arn" {
  description = "(Required for ALB/NLB) ARN of the Load Balancer target group to associate with the service."
  value       = aws_ecs_service.aws_ecs_service.target_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assign_public_ip" {
  description = "(Optional) Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false.For more information, see Task Networkingordered_placement_strategyordered_placement_strategy supports the following:"
  value       = aws_ecs_service.aws_ecs_service.assign_public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_provider_strategy" {
  description = "(Optional) Capacity provider strategies to use for the service. Can be one or more. These can be updated without destroying and recreating the service only if force_new_deployment = true and not changing from 0 capacity_provider_strategy blocks to greater than 0, or vice versa. See below."
  value       = aws_ecs_service.aws_ecs_service.capacity_provider_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_controller" {
  description = "(Optional) Configuration block for deployment controller configuration. See below."
  value       = aws_ecs_service.aws_ecs_service.deployment_controller
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the service."
  value       = aws_ecs_service.aws_ecs_service.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "propagate_tags" {
  description = "(Optional) Specifies whether to propagate the tags from the task definition or the service to the tasks. The valid values are SERVICE and TASK_DEFINITION."
  value       = aws_ecs_service.aws_ecs_service.propagate_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scheduling_strategy" {
  description = "(Optional) Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA. Note that emTasks using the Fargate launch type or the CODE_DEPLOY or EXTERNAL deployment controller types don't support the DAEMON scheduling strategy."
  value       = aws_ecs_service.aws_ecs_service.scheduling_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_port" {
  description = "(Optional) Port value, already specified in the task definition, to be used for your service discovery service."
  value       = aws_ecs_service.aws_ecs_service.container_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_count" {
  description = "Number of instances of the task definition."
  value       = aws_ecs_service.aws_ecs_service.desired_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_ecs_managed_tags" {
  description = "(Optional) Specifies whether to enable Amazon ECS managed tags for the tasks within the service."
  value       = aws_ecs_service.aws_ecs_service.enable_ecs_managed_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_registries" {
  description = "(Optional) Service discovery registries for the service. The maximum number of service_registries blocks is 1. See below."
  value       = aws_ecs_service.aws_ecs_service.service_registries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnets" {
  description = "(Required) Subnets associated with the task or service."
  value       = aws_ecs_service.aws_ecs_service.subnets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ecs_service.aws_ecs_service.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_definition" {
  description = "(Optional) Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used."
  value       = aws_ecs_service.aws_ecs_service.task_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_provider" {
  description = "(Required) Short name of the capacity provider."
  value       = aws_ecs_service.aws_ecs_service.capacity_provider
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elb_name" {
  description = "(Required for ELB Classic) Name of the ELB (Classic) to associate with the service."
  value       = aws_ecs_service.aws_ecs_service.elb_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "(Optional) Port value used if your Service Discovery service specified an SRV record."
  value       = aws_ecs_service.aws_ecs_service.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registry_arn" {
  description = "(Required) ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(aws_service_discovery_service). For more information, see Service"
  value       = aws_ecs_service.aws_ecs_service.registry_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_version" {
  description = "(Optional) Platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST. More information about Fargate platform versions can be found in the AWS ECS User Guide."
  value       = aws_ecs_service.aws_ecs_service.platform_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wait_for_steady_state" {
  description = "(Optional) If true, Terraform will wait for the service to reach a steady state (like aws ecs wait services-stable) before continuing. Default false.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  value       = aws_ecs_service.aws_ecs_service.wait_for_steady_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable" {
  description = "(Required) Whether to enable the deployment circuit breaker logic for the service."
  value       = aws_ecs_service.aws_ecs_service.enable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_new_deployment" {
  description = "(Optional) Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered_placement_strategy and placement_constraints updates."
  value       = aws_ecs_service.aws_ecs_service.force_new_deployment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_type" {
  description = "(Optional) Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2."
  value       = aws_ecs_service.aws_ecs_service.launch_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ordered_placement_strategy" {
  description = "(Optional) Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. The maximum number of ordered_placement_strategy blocks is 5. See below."
  value       = aws_ecs_service.aws_ecs_service.ordered_placement_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster" {
  description = "Amazon Resource Name (ARN) of cluster which the service runs on."
  value       = aws_ecs_service.aws_ecs_service.cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_circuit_breaker" {
  description = "(Optional) Configuration block for deployment circuit breaker. See below."
  value       = aws_ecs_service.aws_ecs_service.deployment_circuit_breaker
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the service."
  value       = aws_ecs_service.aws_ecs_service.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weight" {
  description = "(Required) Relative percentage of the total number of launched tasks that should use the specified capacity provider.deployment_circuit_breakerThe deployment_circuit_breaker configuration block supports the following:"
  value       = aws_ecs_service.aws_ecs_service.weight
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_role" {
  description = "ARN of IAM role used for ELB."
  value       = aws_ecs_service.aws_ecs_service.iam_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancer" {
  description = "(Optional) Configuration block for load balancers. See below."
  value       = aws_ecs_service.aws_ecs_service.load_balancer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base" {
  description = "(Optional) Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined."
  value       = aws_ecs_service.aws_ecs_service.base
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_execute_command" {
  description = "(Optional) Specifies whether to enable Amazon ECS Exec for the tasks within the service."
  value       = aws_ecs_service.aws_ecs_service.enable_execute_command
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "field" {
  description = "(Optional) For the spread placement strategy, valid values are instanceId (or hostbinpack type, valid values are memory and cpu. For the randomPlacement Strategy.-> strongNote: for spread, host and instanceId will be normalized, by AWS, to be instanceId. This means the statefile will show instanceId but your config will differ if you use host.placement_constraintsplacement_constraints support the following:"
  value       = aws_ecs_service.aws_ecs_service.field
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check_grace_period_seconds" {
  description = "(Optional) Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers."
  value       = aws_ecs_service.aws_ecs_service.health_check_grace_period_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_constraints" {
  description = "(Optional) Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. Maximum number of placement_constraints is 10. See below."
  value       = aws_ecs_service.aws_ecs_service.placement_constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecs_service.aws_ecs_service.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_name" {
  description = "(Optional) Container name value, already specified in the task definition, to be used for your service discovery service.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_service.aws_ecs_service.container_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_maximum_percent" {
  description = "(Optional) Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the DAEMON scheduling strategy."
  value       = aws_ecs_service.aws_ecs_service.deployment_maximum_percent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. Does not need to be specified for the distinctInstance type. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.service_registriesservice_registries support the following:"
  value       = aws_ecs_service.aws_ecs_service.expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_configuration" {
  description = "(Optional) Network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below."
  value       = aws_ecs_service.aws_ecs_service.network_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_minimum_healthy_percent" {
  description = "(Optional) Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment."
  value       = aws_ecs_service.aws_ecs_service.deployment_minimum_healthy_percent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rollback" {
  description = "(Required) Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.deployment_controllerThe deployment_controller configuration block supports the following:"
  value       = aws_ecs_service.aws_ecs_service.rollback
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Type of constraint. The only valid values at this time are memberOf and distinctInstance."
  value       = aws_ecs_service.aws_ecs_service.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "desired_count" {
  description = "Number of instances of the task definition."
  value       = aws_ecs_service.aws_ecs_service.desired_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_role" {
  description = "ARN of IAM role used for ELB."
  value       = aws_ecs_service.aws_ecs_service.iam_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN that identifies the service."
  value       = aws_ecs_service.aws_ecs_service.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster" {
  description = "Amazon Resource Name (ARN) of cluster which the service runs on."
  value       = aws_ecs_service.aws_ecs_service.cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ecs_service.aws_ecs_service.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_ecs_service.aws_ecs_service.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the service."
  value       = aws_ecs_service.aws_ecs_service.name
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
      "kind/name"                   = "aws_ecs_service"
      "kind/version"                = "v0.1.0"
    }
  }
}