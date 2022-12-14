resource "aws_codedeploy_deployment_group" "aws_codedeploy_deployment_group" {
  KEEP_ALIVE                                     = var.KEEP_ALIVE
  action_on_timeout                              = var.action_on_timeout
  test_traffic_route                             = var.test_traffic_route
  cluster_name                                   = var.cluster_name
  green_fleet_provisioning_option                = var.green_fleet_provisioning_option
  name                                           = var.name
  deployment_option                              = var.deployment_option
  id                                             = var.id
  on_premises_instance_tag_filter                = var.on_premises_instance_tag_filter
  value                                          = var.value
  compute_platform                               = var.compute_platform
  deployment_group_name                          = var.deployment_group_name
  ec2_tag_filter                                 = var.ec2_tag_filter
  elb_info                                       = var.elb_info
  auto_rollback_configuration                    = var.auto_rollback_configuration
  deployment_ready_option                        = var.deployment_ready_option
  target_group_info                              = var.target_group_info
  target_group_pair_info                         = var.target_group_pair_info
  deployment_group_id                            = var.deployment_group_id
  action                                         = var.action
  alarms                                         = var.alarms
  listener_arns                                  = var.listener_arns
  events                                         = var.events
  arn                                            = var.arn
  deployment_style                               = var.deployment_style
  service_name                                   = var.service_name
  trigger_target_arn                             = var.trigger_target_arn
  deployment_type                                = var.deployment_type
  prod_traffic_route                             = var.prod_traffic_route
  service_role_arn                               = var.service_role_arn
  trigger_configuration                          = var.trigger_configuration
  DISCOVER_EXISTING                              = var.DISCOVER_EXISTING
  alarm_configuration                            = var.alarm_configuration
  app_name                                       = var.app_name
  deployment_config_name                         = var.deployment_config_name
  wait_time_in_minutes                           = var.wait_time_in_minutes
  type                                           = var.type
  COPY_AUTO_SCALING_GROUP                        = var.COPY_AUTO_SCALING_GROUP
  blue_green_deployment_config                   = var.blue_green_deployment_config
  tags                                           = var.tags
  trigger_events                                 = var.trigger_events
  key                                            = var.key
  load_balancer_info                             = var.load_balancer_info
  target_group                                   = var.target_group
  termination_wait_time_in_minutes               = var.termination_wait_time_in_minutes
  CONTINUE_DEPLOYMENT                            = var.CONTINUE_DEPLOYMENT
  TERMINATE                                      = var.TERMINATE
  ecs_service                                    = var.ecs_service
  terminate_blue_instances_on_deployment_success = var.terminate_blue_instances_on_deployment_success
  ignore_poll_alarm_failure                      = var.ignore_poll_alarm_failure
  true                                           = var.true
  STOP_DEPLOYMENT                                = var.STOP_DEPLOYMENT
  false                                          = var.false
  autoscaling_groups                             = var.autoscaling_groups
  ec2_tag_set                                    = var.ec2_tag_set
  enabled                                        = var.enabled
  trigger_name                                   = var.trigger_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "terminate_blue_instances_on_deployment_success" {
  description = "(Optional) Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).emOnly one blue_green_deployment_config is allowed.You can configure how traffic is rerouted to instances in a replacement environment in a blue/green deployment. deployment_ready_option supports the following:"
  type        = string
  default     = ""
}
variable "CONTINUE_DEPLOYMENT" {
  description = ": Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment."
  type        = string
}
variable "TERMINATE" {
  description = ": Instances are terminated after a specified wait time."
  type        = string
}
variable "ecs_service" {
  description = "(Optional) Configuration block(s) of the ECS services for a deployment group (documented below)."
  type        = string
  default     = ""
}
variable "ignore_poll_alarm_failure" {
  description = "(Optional) Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is false"
  type        = string
  default     = ""
}
variable "true" {
  description = ": The deployment will proceed even if alarm status information can't be retrieved."
  type        = string
}
variable "STOP_DEPLOYMENT" {
  description = ": Do not register new instances with load balancer unless traffic is rerouted manually. If traffic is not rerouted manually before the end of the specified wait period, the deployment status is changed to Stopped."
  type        = string
}
variable "false" {
  description = ": The deployment will stop if alarm status information can't be retrieved.emOnly one alarm_configuration is allowed.auto_rollback_configuration Argument ReferenceYou can configure a deployment group to automatically rollback when a deployment fails or when a monitoring threshold you specify is met. In this case, the last known good version of an application revision is deployed. auto_rollback_configuration supports the following:"
  type        = string
}
variable "trigger_name" {
  description = "(Required) The name of the notification trigger."
  type        = string
}
variable "autoscaling_groups" {
  description = "(Optional) Autoscaling groups associated with the deployment group."
  type        = string
  default     = ""
}
variable "ec2_tag_set" {
  description = "(Optional) Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details."
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) Indicates whether a defined automatic rollback configuration is currently enabled for this Deployment Group. If you enable automatic rollback, you must specify at least one event type."
  type        = string
  default     = ""
}
variable "KEEP_ALIVE" {
  description = ": Instances are left running after they are deregistered from the load balancer and removed from the deployment group."
  type        = string
}
variable "action_on_timeout" {
  description = "(Optional) When to reroute traffic from an original environment to a replacement environment in a blue/green deployment.\n"
  type        = string
  default     = ""
}
variable "test_traffic_route" {
  description = "(Optional) Configuration block for the test traffic route (documented below).load_balancer_info target_group_pair_info prod_traffic_route Argument ReferenceThe prod_traffic_route configuration block supports the following:"
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = "(Required) The name of the ECS cluster."
  type        = string
}
variable "green_fleet_provisioning_option" {
  description = "(Optional) Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below)."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the target group.load_balancer_info target_group_pair_info test_traffic_route Argument ReferenceThe test_traffic_route configuration block supports the following:"
  type        = string
}
variable "deployment_option" {
  description = "(Optional) Indicates whether to route deployment traffic behind a load balancer. Valid Values are WITH_TRAFFIC_CONTROL or WITHOUT_TRAFFIC_CONTROL. Default is WITHOUT_TRAFFIC_CONTROL."
  type        = string
  default     = ""
}
variable "id" {
  description = "Application name and deployment group name."
  type        = string
}
variable "elb_info" {
  description = "(Optional) The Classic Elastic Load Balancer to use in a deployment. Conflicts with target_group_info and target_group_pair_info."
  type        = string
  default     = ""
}
variable "on_premises_instance_tag_filter" {
  description = "(Optional) On premise tag filters associated with the group. See the AWS docs for details."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) The value of the tag filter.trigger_configuration Argument ReferenceAdd triggers to a Deployment Group to receive notifications about events related to deployments or instances in the group. Notifications are sent to subscribers of the strongSNS topic associated with the trigger. emCodeDeploy must have permission to publish to the topic from this deployment group. trigger_configuration supports the following:"
  type        = string
  default     = ""
}
variable "compute_platform" {
  description = "The destination platform type for the deployment."
  type        = string
}
variable "deployment_group_name" {
  description = "(Required) The name of the deployment group."
  type        = string
}
variable "ec2_tag_filter" {
  description = "(Optional) Tag filters associated with the deployment group. See the AWS docs for details."
  type        = string
  default     = ""
}
variable "target_group_pair_info" {
  description = "(Optional) The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with elb_info and target_group_info.load_balancer_info elb_info Argument ReferenceThe elb_info configuration block supports the following:"
  type        = string
  default     = ""
}
variable "auto_rollback_configuration" {
  description = "(Optional) Configuration block of the automatic rollback configuration associated with the deployment group (documented below)."
  type        = string
  default     = ""
}
variable "deployment_ready_option" {
  description = "(Optional) Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below)."
  type        = string
  default     = ""
}
variable "target_group_info" {
  description = "(Optional) The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with elb_info and target_group_pair_info."
  type        = string
  default     = ""
}
variable "deployment_group_id" {
  description = "The ID of the CodeDeploy deployment group."
  type        = string
}
variable "action" {
  description = "(Optional) The action to take on instances in the original environment after a successful blue/green deployment.\n"
  type        = string
  default     = ""
}
variable "alarms" {
  description = "(Optional) A list of alarms configured for the deployment group. emA maximum of 10 alarms can be added to a deployment group."
  type        = string
  default     = ""
}
variable "listener_arns" {
  description = "(Required) List of Amazon Resource Names (ARNs) of the load balancer listeners.on_premises_instance_tag_filter Argument ReferenceThe on_premises_instance_tag_filter configuration block supports the following:"
  type        = string
}
variable "events" {
  description = "(Optional) The event type or types that trigger a rollback. Supported types are DEPLOYMENT_FAILURE and DEPLOYMENT_STOP_ON_ALARM.emOnly one auto_rollback_configuration is allowed.blue_green_deployment_config Argument ReferenceYou can configure options for a blue/green deployment. blue_green_deployment_config supports the following:"
  type        = string
  default     = ""
}
variable "trigger_target_arn" {
  description = "(Required) The ARN of the SNS topic through which notifications are sent.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "The ARN of the CodeDeploy deployment group."
  type        = string
}
variable "deployment_style" {
  description = "(Optional) Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below)."
  type        = string
  default     = ""
}
variable "service_name" {
  description = "(Required) The name of the ECS service.load_balancer_info Argument ReferenceYou can configure the strongLoad Balancer to use in a deployment. load_balancer_info supports the following:"
  type        = string
}
variable "deployment_config_name" {
  description = "(Optional) The name of the group's deployment config. The default is \"CodeDeployDefault.OneAtATime\"."
  type        = string
  default     = ""
}
variable "deployment_type" {
  description = "(Optional) Indicates whether to run an in-place deployment or a blue/green deployment. Valid Values are IN_PLACE or BLUE_GREEN. Default is IN_PLACE.emOnly one deployment_style is allowed.ec2_tag_filter Argument ReferenceThe ec2_tag_filter configuration block supports the following:"
  type        = string
  default     = ""
}
variable "prod_traffic_route" {
  description = "(Required) Configuration block for the production traffic route (documented below)."
  type        = string
}
variable "service_role_arn" {
  description = "(Required) The service role ARN that allows deployments."
  type        = string
}
variable "trigger_configuration" {
  description = "(Optional) Configuration block(s) of the triggers for the deployment group (documented below)."
  type        = string
  default     = ""
}
variable "DISCOVER_EXISTING" {
  description = ": Use instances that already exist or will be created manually."
  type        = string
}
variable "alarm_configuration" {
  description = "(Optional) Configuration block of alarms associated with the deployment group (documented below)."
  type        = string
  default     = ""
}
variable "app_name" {
  description = "(Required) The name of the application."
  type        = string
}
variable "wait_time_in_minutes" {
  description = "(Optional) The number of minutes to wait before the status of a blue/green deployment changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for action_on_timeout.You can configure how instances will be added to the replacement environment in a blue/green deployment. green_fleet_provisioning_option supports the following:"
  type        = string
  default     = ""
}
variable "trigger_events" {
  description = "(Required) The event type or types for which notifications are triggered. Some values that are supported: DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, InstanceStart, InstanceSuccess, InstanceFailure.  See the CodeDeploy documentation for all possible values."
  type        = string
}
variable "type" {
  description = "(Optional) The type of the tag filter, either KEY_ONLY, VALUE_ONLY, or KEY_AND_VALUE."
  type        = string
  default     = ""
}
variable "COPY_AUTO_SCALING_GROUP" {
  description = ": Use settings from a specified strongAuto Scaling group to define and create instances in a new Auto Scaling group. emExactly one Auto Scaling group must be specified when selecting COPY_AUTO_SCALING_GROUP. Use autoscaling_groups to specify the Auto Scaling group.You can configure how instances in the original environment are terminated when a blue/green deployment is successful. terminate_blue_instances_on_deployment_success supports the following:"
  type        = string
}
variable "blue_green_deployment_config" {
  description = "(Optional) Configuration block of the blue/green deployment options for a deployment group (documented below)."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.alarm_configuration Argument ReferenceYou can configure a deployment to stop when a strongCloudWatch alarm detects that a metric has fallen below or exceeded a defined threshold. alarm_configuration supports the following:"
  type        = string
  default     = ""
}
variable "termination_wait_time_in_minutes" {
  description = "(Optional) The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.deployment_style Argument ReferenceYou can configure the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer. deployment_style supports the following:"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Optional) The key of the tag filter."
  type        = string
  default     = ""
}
variable "load_balancer_info" {
  description = "(Optional) Single configuration block of the load balancer to use in a blue/green deployment (documented below)."
  type        = string
  default     = ""
}
variable "target_group" {
  description = "(Required) Configuration blocks for a target group within a target group pair (documented below)."
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
output "COPY_AUTO_SCALING_GROUP" {
  description = ": Use settings from a specified strongAuto Scaling group to define and create instances in a new Auto Scaling group. emExactly one Auto Scaling group must be specified when selecting COPY_AUTO_SCALING_GROUP. Use autoscaling_groups to specify the Auto Scaling group.You can configure how instances in the original environment are terminated when a blue/green deployment is successful. terminate_blue_instances_on_deployment_success supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.COPY_AUTO_SCALING_GROUP
}
output "blue_green_deployment_config" {
  description = "(Optional) Configuration block of the blue/green deployment options for a deployment group (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.blue_green_deployment_config
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.alarm_configuration Argument ReferenceYou can configure a deployment to stop when a strongCloudWatch alarm detects that a metric has fallen below or exceeded a defined threshold. alarm_configuration supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.tags
}
output "trigger_events" {
  description = "(Required) The event type or types for which notifications are triggered. Some values that are supported: DeploymentStart, DeploymentSuccess, DeploymentFailure, DeploymentStop, DeploymentRollback, InstanceStart, InstanceSuccess, InstanceFailure.  See the CodeDeploy documentation for all possible values."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.trigger_events
}
output "type" {
  description = "(Optional) The type of the tag filter, either KEY_ONLY, VALUE_ONLY, or KEY_AND_VALUE."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.type
}
output "key" {
  description = "(Optional) The key of the tag filter."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.key
}
output "load_balancer_info" {
  description = "(Optional) Single configuration block of the load balancer to use in a blue/green deployment (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.load_balancer_info
}
output "target_group" {
  description = "(Required) Configuration blocks for a target group within a target group pair (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.target_group
}
output "termination_wait_time_in_minutes" {
  description = "(Optional) The number of minutes to wait after a successful blue/green deployment before terminating instances from the original environment.deployment_style Argument ReferenceYou can configure the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer. deployment_style supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.termination_wait_time_in_minutes
}
output "CONTINUE_DEPLOYMENT" {
  description = ": Register new instances with the load balancer immediately after the new application revision is installed on the instances in the replacement environment."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.CONTINUE_DEPLOYMENT
}
output "TERMINATE" {
  description = ": Instances are terminated after a specified wait time."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.TERMINATE
}
output "ecs_service" {
  description = "(Optional) Configuration block(s) of the ECS services for a deployment group (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.ecs_service
}
output "terminate_blue_instances_on_deployment_success" {
  description = "(Optional) Information about whether to terminate instances in the original fleet during a blue/green deployment (documented below).emOnly one blue_green_deployment_config is allowed.You can configure how traffic is rerouted to instances in a replacement environment in a blue/green deployment. deployment_ready_option supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.terminate_blue_instances_on_deployment_success
}
output "ignore_poll_alarm_failure" {
  description = "(Optional) Indicates whether a deployment should continue if information about the current state of alarms cannot be retrieved from CloudWatch. The default value is false"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.ignore_poll_alarm_failure
}
output "true" {
  description = ": The deployment will proceed even if alarm status information can't be retrieved."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.true
}
output "STOP_DEPLOYMENT" {
  description = ": Do not register new instances with load balancer unless traffic is rerouted manually. If traffic is not rerouted manually before the end of the specified wait period, the deployment status is changed to Stopped."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.STOP_DEPLOYMENT
}
output "false" {
  description = ": The deployment will stop if alarm status information can't be retrieved.emOnly one alarm_configuration is allowed.auto_rollback_configuration Argument ReferenceYou can configure a deployment group to automatically rollback when a deployment fails or when a monitoring threshold you specify is met. In this case, the last known good version of an application revision is deployed. auto_rollback_configuration supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.false
}
output "autoscaling_groups" {
  description = "(Optional) Autoscaling groups associated with the deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.autoscaling_groups
}
output "ec2_tag_set" {
  description = "(Optional) Configuration block(s) of Tag filters associated with the deployment group, which are also referred to as tag groups (documented below). See the AWS docs for details."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.ec2_tag_set
}
output "enabled" {
  description = "(Optional) Indicates whether a defined automatic rollback configuration is currently enabled for this Deployment Group. If you enable automatic rollback, you must specify at least one event type."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.enabled
}
output "trigger_name" {
  description = "(Required) The name of the notification trigger."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.trigger_name
}
output "KEEP_ALIVE" {
  description = ": Instances are left running after they are deregistered from the load balancer and removed from the deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.KEEP_ALIVE
}
output "action_on_timeout" {
  description = "(Optional) When to reroute traffic from an original environment to a replacement environment in a blue/green deployment.\n"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.action_on_timeout
}
output "test_traffic_route" {
  description = "(Optional) Configuration block for the test traffic route (documented below).load_balancer_info target_group_pair_info prod_traffic_route Argument ReferenceThe prod_traffic_route configuration block supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.test_traffic_route
}
output "cluster_name" {
  description = "(Required) The name of the ECS cluster."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.cluster_name
}
output "green_fleet_provisioning_option" {
  description = "(Optional) Information about how instances are provisioned for a replacement environment in a blue/green deployment (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.green_fleet_provisioning_option
}
output "name" {
  description = "(Required) Name of the target group.load_balancer_info target_group_pair_info test_traffic_route Argument ReferenceThe test_traffic_route configuration block supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.name
}
output "deployment_option" {
  description = "(Optional) Indicates whether to route deployment traffic behind a load balancer. Valid Values are WITH_TRAFFIC_CONTROL or WITHOUT_TRAFFIC_CONTROL. Default is WITHOUT_TRAFFIC_CONTROL."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_option
}
output "id" {
  description = "Application name and deployment group name."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.id
}
output "compute_platform" {
  description = "The destination platform type for the deployment."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.compute_platform
}
output "deployment_group_name" {
  description = "(Required) The name of the deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_group_name
}
output "ec2_tag_filter" {
  description = "(Optional) Tag filters associated with the deployment group. See the AWS docs for details."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.ec2_tag_filter
}
output "elb_info" {
  description = "(Optional) The Classic Elastic Load Balancer to use in a deployment. Conflicts with target_group_info and target_group_pair_info."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.elb_info
}
output "on_premises_instance_tag_filter" {
  description = "(Optional) On premise tag filters associated with the group. See the AWS docs for details."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.on_premises_instance_tag_filter
}
output "value" {
  description = "(Optional) The value of the tag filter.trigger_configuration Argument ReferenceAdd triggers to a Deployment Group to receive notifications about events related to deployments or instances in the group. Notifications are sent to subscribers of the strongSNS topic associated with the trigger. emCodeDeploy must have permission to publish to the topic from this deployment group. trigger_configuration supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.value
}
output "auto_rollback_configuration" {
  description = "(Optional) Configuration block of the automatic rollback configuration associated with the deployment group (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.auto_rollback_configuration
}
output "deployment_ready_option" {
  description = "(Optional) Information about the action to take when newly provisioned instances are ready to receive traffic in a blue/green deployment (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_ready_option
}
output "target_group_info" {
  description = "(Optional) The (Application/Network Load Balancer) target group to use in a deployment. Conflicts with elb_info and target_group_pair_info."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.target_group_info
}
output "target_group_pair_info" {
  description = "(Optional) The (Application/Network Load Balancer) target group pair to use in a deployment. Conflicts with elb_info and target_group_info.load_balancer_info elb_info Argument ReferenceThe elb_info configuration block supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.target_group_pair_info
}
output "deployment_group_id" {
  description = "The ID of the CodeDeploy deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_group_id
}
output "action" {
  description = "(Optional) The action to take on instances in the original environment after a successful blue/green deployment.\n"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.action
}
output "alarms" {
  description = "(Optional) A list of alarms configured for the deployment group. emA maximum of 10 alarms can be added to a deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.alarms
}
output "listener_arns" {
  description = "(Required) List of Amazon Resource Names (ARNs) of the load balancer listeners.on_premises_instance_tag_filter Argument ReferenceThe on_premises_instance_tag_filter configuration block supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.listener_arns
}
output "events" {
  description = "(Optional) The event type or types that trigger a rollback. Supported types are DEPLOYMENT_FAILURE and DEPLOYMENT_STOP_ON_ALARM.emOnly one auto_rollback_configuration is allowed.blue_green_deployment_config Argument ReferenceYou can configure options for a blue/green deployment. blue_green_deployment_config supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.events
}
output "arn" {
  description = "The ARN of the CodeDeploy deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.arn
}
output "deployment_style" {
  description = "(Optional) Configuration block of the type of deployment, either in-place or blue/green, you want to run and whether to route deployment traffic behind a load balancer (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_style
}
output "service_name" {
  description = "(Required) The name of the ECS service.load_balancer_info Argument ReferenceYou can configure the strongLoad Balancer to use in a deployment. load_balancer_info supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.service_name
}
output "trigger_target_arn" {
  description = "(Required) The ARN of the SNS topic through which notifications are sent.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.trigger_target_arn
}
output "trigger_configuration" {
  description = "(Optional) Configuration block(s) of the triggers for the deployment group (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.trigger_configuration
}
output "DISCOVER_EXISTING" {
  description = ": Use instances that already exist or will be created manually."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.DISCOVER_EXISTING
}
output "alarm_configuration" {
  description = "(Optional) Configuration block of alarms associated with the deployment group (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.alarm_configuration
}
output "app_name" {
  description = "(Required) The name of the application."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.app_name
}
output "deployment_config_name" {
  description = "(Optional) The name of the group's deployment config. The default is \"CodeDeployDefault.OneAtATime\"."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_config_name
}
output "deployment_type" {
  description = "(Optional) Indicates whether to run an in-place deployment or a blue/green deployment. Valid Values are IN_PLACE or BLUE_GREEN. Default is IN_PLACE.emOnly one deployment_style is allowed.ec2_tag_filter Argument ReferenceThe ec2_tag_filter configuration block supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_type
}
output "prod_traffic_route" {
  description = "(Required) Configuration block for the production traffic route (documented below)."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.prod_traffic_route
}
output "service_role_arn" {
  description = "(Required) The service role ARN that allows deployments."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.service_role_arn
}
output "wait_time_in_minutes" {
  description = "(Optional) The number of minutes to wait before the status of a blue/green deployment changed to Stopped if rerouting is not started manually. Applies only to the STOP_DEPLOYMENT option for action_on_timeout.You can configure how instances will be added to the replacement environment in a blue/green deployment. green_fleet_provisioning_option supports the following:"
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.wait_time_in_minutes
}
output "deployment_group_id" {
  description = "The ID of the CodeDeploy deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.deployment_group_id
}
output "id" {
  description = "Application name and deployment group name."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.tags_all
}
output "arn" {
  description = "The ARN of the CodeDeploy deployment group."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.arn
}
output "compute_platform" {
  description = "The destination platform type for the deployment."
  value       = aws_codedeploy_deployment_group.aws_codedeploy_deployment_group.compute_platform
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
      "kind/name"                   = "aws_codedeploy_deployment_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
