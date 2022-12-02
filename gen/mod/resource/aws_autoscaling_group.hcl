resource "aws_autoscaling_group" "aws_autoscaling_group" {
  launch_template_name                             = var.launch_template_name
  name_prefix                                      = var.name_prefix
  require_hibernate_support                        = var.require_hibernate_support
  total_local_storage_gb                           = var.total_local_storage_gb
  capacity_rebalance                               = var.capacity_rebalance
  desired_capacity                                 = var.desired_capacity
  instance_generations                             = var.instance_generations
  instance_requirements                            = var.instance_requirements
  wait_for_elb_capacity                            = var.wait_for_elb_capacity
  vcpu_count                                       = var.vcpu_count
  vpc_zone_identifier                              = var.vpc_zone_identifier
  bare_metal                                       = var.bare_metal
  context                                          = var.context
  cpu_manufacturers                                = var.cpu_manufacturers
  spot_max_price_percentage_over_lowest_price      = var.spot_max_price_percentage_over_lowest_price
  local_storage                                    = var.local_storage
  triggers                                         = var.triggers
  accelerator_manufacturers                        = var.accelerator_manufacturers
  accelerator_types                                = var.accelerator_types
  baseline_ebs_bandwidth_mbps                      = var.baseline_ebs_bandwidth_mbps
  checkpoint_delay                                 = var.checkpoint_delay
  spot_instance_pools                              = var.spot_instance_pools
  strategy                                         = var.strategy
  instance_type                                    = var.instance_type
  load_balancers                                   = var.load_balancers
  min_healthy_percentage                           = var.min_healthy_percentage
  spot_allocation_strategy                         = var.spot_allocation_strategy
  name                                             = var.name
  warm_pool                                        = var.warm_pool
  accelerator_names                                = var.accelerator_names
  force_delete                                     = var.force_delete
  max                                              = var.max
  max_group_prepared_capacity                      = var.max_group_prepared_capacity
  burstable_performance                            = var.burstable_performance
  id                                               = var.id
  max_instance_lifetime                            = var.max_instance_lifetime
  on_demand_base_capacity                          = var.on_demand_base_capacity
  key                                              = var.key
  local_storage_types                              = var.local_storage_types
  on_demand_allocation_strategy                    = var.on_demand_allocation_strategy
  accelerator_count                                = var.accelerator_count
  preferences                                      = var.preferences
  protect_from_scale_in                            = var.protect_from_scale_in
  wait_for_capacity_timeout                        = var.wait_for_capacity_timeout
  spot_max_price                                   = var.spot_max_price
  checkpoint_percentages                           = var.checkpoint_percentages
  memory_gib_per_vcpu                              = var.memory_gib_per_vcpu
  memory_mib                                       = var.memory_mib
  metrics_granularity                              = var.metrics_granularity
  launch_template_specification                    = var.launch_template_specification
  network_interface_count                          = var.network_interface_count
  override                                         = var.override
  placement_group                                  = var.placement_group
  arn                                              = var.arn
  default_instance_warmup                          = var.default_instance_warmup
  excluded_instance_types                          = var.excluded_instance_types
  instance_reuse_policy                            = var.instance_reuse_policy
  on_demand_percentage_above_base_capacity         = var.on_demand_percentage_above_base_capacity
  pool_state                                       = var.pool_state
  accelerator_total_memory_mib                     = var.accelerator_total_memory_mib
  availability_zones                               = var.availability_zones
  enabled_metrics                                  = var.enabled_metrics
  launch_template                                  = var.launch_template
  health_check_grace_period                        = var.health_check_grace_period
  mixed_instances_policy                           = var.mixed_instances_policy
  on_demand_max_price_percentage_over_lowest_price = var.on_demand_max_price_percentage_over_lowest_price
  target_group_arns                                = var.target_group_arns
  tags                                             = var.tags
  default_cooldown                                 = var.default_cooldown
  instance_warmup                                  = var.instance_warmup
  instances_distribution                           = var.instances_distribution
  min                                              = var.min
  propagate_at_launch                              = var.propagate_at_launch
  service_linked_role_arn                          = var.service_linked_role_arn
  suspended_processes                              = var.suspended_processes
  termination_policies                             = var.termination_policies
  instance_refresh                                 = var.instance_refresh
  launch_configuration                             = var.launch_configuration
  min_elb_capacity                                 = var.min_elb_capacity
  min_size                                         = var.min_size
  version                                          = var.version
  weighted_capacity                                = var.weighted_capacity
  health_check_type                                = var.health_check_type
  initial_lifecycle_hook                           = var.initial_lifecycle_hook
  launch_template_id                               = var.launch_template_id
  reuse_on_scale_in                                = var.reuse_on_scale_in
  max_size                                         = var.max_size
  tag                                              = var.tag
  value                                            = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "capacity_rebalance" {
  description = "(Optional) Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled."
  type        = string
  default     = ""
}
variable "desired_capacity" {
  description = " -The number of Amazon EC2 instances that should be running in the group."
  type        = string
}
variable "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  type        = string
  default     = ""
}
variable "instance_requirements" {
  description = "(Optional) Override the instance type in the Launch Template with instance types that satisfy the requirements."
  type        = string
  default     = ""
}
variable "launch_template_name" {
  description = "(Optional) Name of the launch template. Conflicts with launch_template_id."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  type        = string
  default     = ""
}
variable "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "wait_for_elb_capacity" {
  description = "(Optional) Setting this will cause Terraform to wait\nfor exactly this number of healthy instances from this Auto Scaling Group in\nall attached load balancers on both create and update operations. (Takes\nprecedence over min_elb_capacityWaiting for Capacity below.)"
  type        = string
  default     = ""
}
variable "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  type        = string
  default     = ""
}
variable "context" {
  description = "(Optional) Reserved."
  type        = string
  default     = ""
}
variable "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  type        = string
  default     = ""
}
variable "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) Price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
  default     = ""
}
variable "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  type        = string
}
variable "vpc_zone_identifier" {
  description = " (Optional) - The VPC zone identifier~> strongNOTE: When using ELB as the health_check_type, health_check_grace_period is required.~> strongNOTE:initial_lifecycle_hookaws_autoscaling_lifecycle_hookinitial_lifecycle_hookaws_autoscaling_lifecycle_hookcapacityinitial_lifecycle_hookaws_autoscaling_lifecycle_hook.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  type        = string
  default     = ""
}
variable "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  type        = string
  default     = ""
}
variable "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "checkpoint_delay" {
  description = "(Optional) Number of seconds to wait after a checkpoint. Defaults to 3600."
  type        = string
  default     = ""
}
variable "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  type        = string
  default     = ""
}
variable "triggers" {
  description = "(Optional) Set of additional property names that will trigger an Instance Refresh. A refresh will always be triggered by a change in any of launch_configuration, launch_template, or mixed_instances_policy.~> strongNOTE: A refresh is started when any of the following Auto Scaling Group properties change: launch_configuration, launch_template, mixed_instances_policy. Additional properties can be specified in the triggers property of instance_refresh.~> strongNOTE: A refresh will not start when version = \"$Latest\" is configured in the launch_template block. To trigger the instance refresh when a launch template is changed, configure version to use the latest_version attribute of the aws_launch_template resource.~> strongNOTE: Auto Scaling Groups support up to one active instance refresh at a time. When this resource is updated, any existing refresh is cancelled.~> strongNOTE: Depending on health check settings and group size, an instance refresh may take a long time or fail. This resource does not wait for the instance refresh to complete.warm_poolThis configuration block supports the following:"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Optional) Override the instance type in the Launch Template."
  type        = string
  default     = ""
}
variable "load_balancers" {
  description = "target_group_arns instead."
  type        = string
}
variable "min_healthy_percentage" {
  description = "(Optional) Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to 90."
  type        = string
  default     = ""
}
variable "spot_allocation_strategy" {
  description = "(Optional) How to allocate capacity across the Spot pools. Valid values: lowest-price, capacity-optimized, capacity-optimized-prioritized. Default: lowest-price."
  type        = string
  default     = ""
}
variable "spot_instance_pools" {
  description = "(Optional) Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Only available with spot_allocation_strategy set to lowest-price. Otherwise it must be set to 0, if it has been defined before. Default: 2."
  type        = string
  default     = ""
}
variable "strategy" {
  description = "(Required) Strategy to use for instance refresh. The only allowed value is Rolling. See StartInstanceRefresh Action for more information."
  type        = string
}
variable "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  type        = string
  default     = ""
}
variable "force_delete" {
  description = "(Optional) Allows deleting the Auto Scaling Group without waiting\nfor all instances in the pool to terminate.  You can force an Auto Scaling Group to delete\neven if it's in the process of scaling a resource. Normally, Terraform\ndrains all the instances before deleting the group.  This bypasses that\nbehavior and potentially leaves resources dangling."
  type        = string
  default     = ""
}
variable "max" {
  description = "(Optional) Maximum.tag and tagsThe tag attribute accepts exactly one tag declaration with the following fields:"
  type        = string
  default     = ""
}
variable "max_group_prepared_capacity" {
  description = "(Optional) Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.instance_reuse_policyThis configuration block supports the following:"
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}
variable "warm_pool" {
  description = "(Optional) If this block is configured, add a Warm Poolbelowlaunch_template~> strongNOTE: Either id or name must be specified.The top-level launch_template block supports the following:"
  type        = string
  default     = ""
}
variable "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  type        = string
  default     = ""
}
variable "id" {
  description = "Auto Scaling Group id."
  type        = string
}
variable "max_instance_lifetime" {
  description = " (Optional) Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds."
  type        = string
  default     = ""
}
variable "on_demand_base_capacity" {
  description = "(Optional) Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: 0."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Key"
  type        = string
}
variable "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  type        = string
  default     = ""
}
variable "on_demand_allocation_strategy" {
  description = "(Optional) Strategy to use when launching on-demand instances. Valid values: prioritized. Default: prioritized."
  type        = string
  default     = ""
}
variable "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "preferences" {
  description = "(Optional) Override default parameters for Instance Refresh.\n"
  type        = string
  default     = ""
}
variable "protect_from_scale_in" {
  description = "Using instance scale-in protection"
  type        = string
}
variable "wait_for_capacity_timeout" {
  description = "duration"
  type        = string
}
variable "checkpoint_percentages" {
  description = "(Optional) List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be 100."
  type        = string
  default     = ""
}
variable "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  type        = string
}
variable "metrics_granularity" {
  description = "(Optional) Granularity to associate with the metrics to collect. The only valid value is 1Minute. Default is 1Minute."
  type        = string
  default     = ""
}
variable "spot_max_price" {
  description = "(Optional) Maximum price per unit hour that the user is willing to pay for the Spot instances. Default: an empty string which means the on-demand price.mixed_instances_policy launch_templateThis configuration block supports the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN for this Auto Scaling Group"
  type        = string
}
variable "default_instance_warmup" {
  description = "The duration of the default instance warmup, in seconds."
  type        = string
}
variable "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  type        = string
  default     = ""
}
variable "instance_reuse_policy" {
  description = "(Optional) Whether instances in the Auto Scaling group can be returned to the warm pool on scale in. The default is to terminate instances in the Auto Scaling group when the group scales in."
  type        = string
  default     = ""
}
variable "launch_template_specification" {
  description = "(Optional) Override the instance launch template specification in the Launch Template."
  type        = string
  default     = ""
}
variable "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "override" {
  description = "(Optional) List of nested arguments provides the ability to specify multiple instance types. This will override the same parameter in the launch template. For on-demand instances, Auto Scaling considers the order of preference of instance types to launch based on the order specified in the overrides list. Defined below.mixed_instances_policy launch_template launch_template_specification~> strongNOTE: Either launch_template_id or launch_template_name must be specified.This configuration block supports the following:"
  type        = string
  default     = ""
}
variable "placement_group" {
  description = " (Optional) Name of the placement group into which you'll launch your instances, if any."
  type        = string
  default     = ""
}
variable "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "availability_zones" {
  description = "Availability zones of the Auto Scaling Group."
  type        = string
}
variable "enabled_metrics" {
  description = "(Optional) List of metrics to collect. The allowed values are defined by the underlying AWS API."
  type        = string
  default     = ""
}
variable "launch_template" {
  description = "(Required) Nested argument containing launch template settings along with the overrides to specify multiple instance types and weights. Defined below.mixed_instances_policy instances_distributionThis configuration block supports the following:"
  type        = string
}
variable "on_demand_percentage_above_base_capacity" {
  description = "(Optional) Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: 100."
  type        = string
  default     = ""
}
variable "pool_state" {
  description = "(Optional) Sets the instance state to transition to after the lifecycle hooks finish. Valid values are: Stopped (default), Running or Hibernated."
  type        = string
  default     = ""
}
variable "health_check_grace_period" {
  description = "Time after instance comes into service before checking health."
  type        = string
}
variable "mixed_instances_policy" {
  description = " (Optional) Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details."
  type        = string
  default     = ""
}
variable "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) Price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
  default     = ""
}
variable "target_group_arns" {
  description = " (Optional) Set of aws_alb_target_group ARNs, for use with Application or Network Load Balancing."
  type        = string
  default     = ""
}
variable "default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity."
  type        = string
}
variable "instance_warmup" {
  description = "(Optional) Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period."
  type        = string
  default     = ""
}
variable "instances_distribution" {
  description = "(Optional) Nested argument containing settings on how to mix on-demand and Spot instances in the Auto Scaling group. Defined below."
  type        = string
  default     = ""
}
variable "min" {
  description = "(Required) Minimum."
  type        = string
}
variable "tags" {
  description = " (Optional, strongDeprecated use tag instead) Set of maps containing resource tags. Conflicts with tag. See Tags below for more details."
  type        = string
}
variable "instance_refresh" {
  description = "(Optional) If this block is configured, start an\nInstance Refreshbelow."
  type        = string
  default     = ""
}
variable "launch_configuration" {
  description = "The launch configuration of the Auto Scaling Group"
  type        = string
}
variable "min_elb_capacity" {
  description = "(Optional) Setting this causes Terraform to wait for\nthis number of instances from this Auto Scaling Group to show up healthy in the\nELB only on creation. Updates will not wait on ELB instance number changes.\n(See also Waiting for Capacity below.)"
  type        = string
  default     = ""
}
variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = string
}
variable "propagate_at_launch" {
  description = "(Required) Enables propagation of the tag to\nAmazon EC2 instances launched via this ASGTo declare multiple tags additional tagtagstagtag and tags are mutually exclusive, only one of them can be specified.~> strongNOTE: Other AWS APIs may automatically add special tags to their associated Auto Scaling Group for management purposes, such as ECS Capacity Providers adding the AmazonECSManaged tag. These generally should be included in the configuration so Terraform does not attempt to remove them and so if the min_size was greater than zero on creation, that these tag(s) are applied to any initial EC2 Instances in the Auto Scaling Group. If these tag(s) were missing in the Auto Scaling Group configuration on creation, affected EC2 Instances missing the tags may require manual intervention of adding the tags to ensure they work properly with the other AWS service.instance_refreshThis configuration block supports the following:"
  type        = string
}
variable "service_linked_role_arn" {
  description = " (Optional) ARN of the service-linked role that the ASG will use to call other AWS services"
  type        = string
  default     = ""
}
variable "suspended_processes" {
  description = "(Optional) List of processes to suspend for the Auto Scaling Group. The allowed values are Launch, Terminate, HealthCheck, ReplaceUnhealthy, AZRebalance, AlarmNotification, ScheduledActions, AddToLoadBalancer, InstanceRefreshLaunch or Terminate process types, it can prevent your Auto Scaling Group from functioning properly."
  type        = string
  default     = ""
}
variable "termination_policies" {
  description = " (Optional) List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are OldestInstance, NewestInstance, OldestLaunchConfiguration, ClosestToNextInstanceHour, OldestLaunchTemplate, AllocationStrategy, Default. Additionally, the ARN of a Lambda function can be specified for custom termination policies."
  type        = string
  default     = ""
}
variable "version" {
  description = "(Optional) Template version. Can be version number, $Latest, or $Default. (Default: $Default).mixed_instances_policy launch_template overrideThis configuration block supports the following:"
  type        = string
  default     = ""
}
variable "health_check_type" {
  description = "\"EC2\" or \"ELB\". Controls how health checking is done."
  type        = string
}
variable "initial_lifecycle_hook" {
  description = "Lifecycle Hooksstrongbeforeaws_autoscaling_lifecycle_hookautoscaling_group_nameaws_autoscaling_lifecycle_hook resource."
  type        = string
}
variable "launch_template_id" {
  description = "(Optional) ID of the launch template. Conflicts with launch_template_name."
  type        = string
  default     = ""
}
variable "reuse_on_scale_in" {
  description = "(Optional) Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "weighted_capacity" {
  description = "(Optional) Number of capacity units, which gives the instance type a proportional weight to other instance types.mixed_instances_policy launch_template override instance_requirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  type        = string
  default     = ""
}
variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = string
}
variable "tag" {
  description = " (Optional) Configuration block(s) containing resource tags. Conflicts with tags. See Tag below for more details."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Value"
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
output "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  value       = aws_autoscaling_group.aws_autoscaling_group.burstable_performance
}
output "id" {
  description = "Auto Scaling Group id."
  value       = aws_autoscaling_group.aws_autoscaling_group.id
}
output "max_instance_lifetime" {
  description = " (Optional) Maximum amount of time, in seconds, that an instance can be in service, values must be either equal to 0 or between 86400 and 31536000 seconds."
  value       = aws_autoscaling_group.aws_autoscaling_group.max_instance_lifetime
}
output "on_demand_base_capacity" {
  description = "(Optional) Absolute minimum amount of desired capacity that must be fulfilled by on-demand instances. Default: 0."
  value       = aws_autoscaling_group.aws_autoscaling_group.on_demand_base_capacity
}
output "key" {
  description = "(Required) Key"
  value       = aws_autoscaling_group.aws_autoscaling_group.key
}
output "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  value       = aws_autoscaling_group.aws_autoscaling_group.local_storage_types
}
output "on_demand_allocation_strategy" {
  description = "(Optional) Strategy to use when launching on-demand instances. Valid values: prioritized. Default: prioritized."
  value       = aws_autoscaling_group.aws_autoscaling_group.on_demand_allocation_strategy
}
output "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.accelerator_count
}
output "preferences" {
  description = "(Optional) Override default parameters for Instance Refresh.\n"
  value       = aws_autoscaling_group.aws_autoscaling_group.preferences
}
output "protect_from_scale_in" {
  description = "Using instance scale-in protection"
  value       = aws_autoscaling_group.aws_autoscaling_group.protect_from_scale_in
}
output "wait_for_capacity_timeout" {
  description = "duration"
  value       = aws_autoscaling_group.aws_autoscaling_group.wait_for_capacity_timeout
}
output "checkpoint_percentages" {
  description = "(Optional) List of percentages for each checkpoint. Values must be unique and in ascending order. To replace all instances, the final number must be 100."
  value       = aws_autoscaling_group.aws_autoscaling_group.checkpoint_percentages
}
output "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.memory_gib_per_vcpu
}
output "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.memory_mib
}
output "metrics_granularity" {
  description = "(Optional) Granularity to associate with the metrics to collect. The only valid value is 1Minute. Default is 1Minute."
  value       = aws_autoscaling_group.aws_autoscaling_group.metrics_granularity
}
output "spot_max_price" {
  description = "(Optional) Maximum price per unit hour that the user is willing to pay for the Spot instances. Default: an empty string which means the on-demand price.mixed_instances_policy launch_templateThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.spot_max_price
}
output "override" {
  description = "(Optional) List of nested arguments provides the ability to specify multiple instance types. This will override the same parameter in the launch template. For on-demand instances, Auto Scaling considers the order of preference of instance types to launch based on the order specified in the overrides list. Defined below.mixed_instances_policy launch_template launch_template_specification~> strongNOTE: Either launch_template_id or launch_template_name must be specified.This configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.override
}
output "placement_group" {
  description = " (Optional) Name of the placement group into which you'll launch your instances, if any."
  value       = aws_autoscaling_group.aws_autoscaling_group.placement_group
}
output "arn" {
  description = "ARN for this Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.arn
}
output "default_instance_warmup" {
  description = "The duration of the default instance warmup, in seconds."
  value       = aws_autoscaling_group.aws_autoscaling_group.default_instance_warmup
}
output "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  value       = aws_autoscaling_group.aws_autoscaling_group.excluded_instance_types
}
output "instance_reuse_policy" {
  description = "(Optional) Whether instances in the Auto Scaling group can be returned to the warm pool on scale in. The default is to terminate instances in the Auto Scaling group when the group scales in."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_reuse_policy
}
output "launch_template_specification" {
  description = "(Optional) Override the instance launch template specification in the Launch Template."
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_template_specification
}
output "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.network_interface_count
}
output "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.accelerator_total_memory_mib
}
output "availability_zones" {
  description = "Availability zones of the Auto Scaling Group."
  value       = aws_autoscaling_group.aws_autoscaling_group.availability_zones
}
output "enabled_metrics" {
  description = "(Optional) List of metrics to collect. The allowed values are defined by the underlying AWS API."
  value       = aws_autoscaling_group.aws_autoscaling_group.enabled_metrics
}
output "launch_template" {
  description = "(Required) Nested argument containing launch template settings along with the overrides to specify multiple instance types and weights. Defined below.mixed_instances_policy instances_distributionThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_template
}
output "on_demand_percentage_above_base_capacity" {
  description = "(Optional) Percentage split between on-demand and Spot instances above the base on-demand capacity. Default: 100."
  value       = aws_autoscaling_group.aws_autoscaling_group.on_demand_percentage_above_base_capacity
}
output "pool_state" {
  description = "(Optional) Sets the instance state to transition to after the lifecycle hooks finish. Valid values are: Stopped (default), Running or Hibernated."
  value       = aws_autoscaling_group.aws_autoscaling_group.pool_state
}
output "health_check_grace_period" {
  description = "Time after instance comes into service before checking health."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_grace_period
}
output "mixed_instances_policy" {
  description = " (Optional) Configuration block containing settings to define launch targets for Auto Scaling groups. See Mixed Instances Policy below for more details."
  value       = aws_autoscaling_group.aws_autoscaling_group.mixed_instances_policy
}
output "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) Price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_autoscaling_group.aws_autoscaling_group.on_demand_max_price_percentage_over_lowest_price
}
output "target_group_arns" {
  description = " (Optional) Set of aws_alb_target_group ARNs, for use with Application or Network Load Balancing."
  value       = aws_autoscaling_group.aws_autoscaling_group.target_group_arns
}
output "default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity."
  value       = aws_autoscaling_group.aws_autoscaling_group.default_cooldown
}
output "instance_warmup" {
  description = "(Optional) Number of seconds until a newly launched instance is configured and ready to use. Default behavior is to use the Auto Scaling Group's health check grace period."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_warmup
}
output "instances_distribution" {
  description = "(Optional) Nested argument containing settings on how to mix on-demand and Spot instances in the Auto Scaling group. Defined below."
  value       = aws_autoscaling_group.aws_autoscaling_group.instances_distribution
}
output "min" {
  description = "(Required) Minimum."
  value       = aws_autoscaling_group.aws_autoscaling_group.min
}
output "tags" {
  description = " (Optional, strongDeprecated use tag instead) Set of maps containing resource tags. Conflicts with tag. See Tags below for more details."
  value       = aws_autoscaling_group.aws_autoscaling_group.tags
}
output "suspended_processes" {
  description = "(Optional) List of processes to suspend for the Auto Scaling Group. The allowed values are Launch, Terminate, HealthCheck, ReplaceUnhealthy, AZRebalance, AlarmNotification, ScheduledActions, AddToLoadBalancer, InstanceRefreshLaunch or Terminate process types, it can prevent your Auto Scaling Group from functioning properly."
  value       = aws_autoscaling_group.aws_autoscaling_group.suspended_processes
}
output "termination_policies" {
  description = " (Optional) List of policies to decide how the instances in the Auto Scaling Group should be terminated. The allowed values are OldestInstance, NewestInstance, OldestLaunchConfiguration, ClosestToNextInstanceHour, OldestLaunchTemplate, AllocationStrategy, Default. Additionally, the ARN of a Lambda function can be specified for custom termination policies."
  value       = aws_autoscaling_group.aws_autoscaling_group.termination_policies
}
output "instance_refresh" {
  description = "(Optional) If this block is configured, start an\nInstance Refreshbelow."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_refresh
}
output "launch_configuration" {
  description = "The launch configuration of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_configuration
}
output "min_elb_capacity" {
  description = "(Optional) Setting this causes Terraform to wait for\nthis number of instances from this Auto Scaling Group to show up healthy in the\nELB only on creation. Updates will not wait on ELB instance number changes.\n(See also Waiting for Capacity below.)"
  value       = aws_autoscaling_group.aws_autoscaling_group.min_elb_capacity
}
output "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.min_size
}
output "propagate_at_launch" {
  description = "(Required) Enables propagation of the tag to\nAmazon EC2 instances launched via this ASGTo declare multiple tags additional tagtagstagtag and tags are mutually exclusive, only one of them can be specified.~> strongNOTE: Other AWS APIs may automatically add special tags to their associated Auto Scaling Group for management purposes, such as ECS Capacity Providers adding the AmazonECSManaged tag. These generally should be included in the configuration so Terraform does not attempt to remove them and so if the min_size was greater than zero on creation, that these tag(s) are applied to any initial EC2 Instances in the Auto Scaling Group. If these tag(s) were missing in the Auto Scaling Group configuration on creation, affected EC2 Instances missing the tags may require manual intervention of adding the tags to ensure they work properly with the other AWS service.instance_refreshThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.propagate_at_launch
}
output "service_linked_role_arn" {
  description = " (Optional) ARN of the service-linked role that the ASG will use to call other AWS services"
  value       = aws_autoscaling_group.aws_autoscaling_group.service_linked_role_arn
}
output "version" {
  description = "(Optional) Template version. Can be version number, $Latest, or $Default. (Default: $Default).mixed_instances_policy launch_template overrideThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.version
}
output "health_check_type" {
  description = "\"EC2\" or \"ELB\". Controls how health checking is done."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_type
}
output "initial_lifecycle_hook" {
  description = "Lifecycle Hooksstrongbeforeaws_autoscaling_lifecycle_hookautoscaling_group_nameaws_autoscaling_lifecycle_hook resource."
  value       = aws_autoscaling_group.aws_autoscaling_group.initial_lifecycle_hook
}
output "launch_template_id" {
  description = "(Optional) ID of the launch template. Conflicts with launch_template_name."
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_template_id
}
output "reuse_on_scale_in" {
  description = "(Optional) Whether instances in the Auto Scaling group can be returned to the warm pool on scale in.In addition to all arguments above, the following attributes are exported:"
  value       = aws_autoscaling_group.aws_autoscaling_group.reuse_on_scale_in
}
output "weighted_capacity" {
  description = "(Optional) Number of capacity units, which gives the instance type a proportional weight to other instance types.mixed_instances_policy launch_template override instance_requirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  value       = aws_autoscaling_group.aws_autoscaling_group.weighted_capacity
}
output "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.max_size
}
output "tag" {
  description = " (Optional) Configuration block(s) containing resource tags. Conflicts with tags. See Tag below for more details."
  value       = aws_autoscaling_group.aws_autoscaling_group.tag
}
output "value" {
  description = "(Required) Value"
  value       = aws_autoscaling_group.aws_autoscaling_group.value
}
output "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  value       = aws_autoscaling_group.aws_autoscaling_group.require_hibernate_support
}
output "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.total_local_storage_gb
}
output "capacity_rebalance" {
  description = "(Optional) Whether capacity rebalance is enabled. Otherwise, capacity rebalance is disabled."
  value       = aws_autoscaling_group.aws_autoscaling_group.capacity_rebalance
}
output "desired_capacity" {
  description = " -The number of Amazon EC2 instances that should be running in the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.desired_capacity
}
output "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_generations
}
output "instance_requirements" {
  description = "(Optional) Override the instance type in the Launch Template with instance types that satisfy the requirements."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_requirements
}
output "launch_template_name" {
  description = "(Optional) Name of the launch template. Conflicts with launch_template_id."
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_template_name
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified\nprefix. Conflicts with name."
  value       = aws_autoscaling_group.aws_autoscaling_group.name_prefix
}
output "wait_for_elb_capacity" {
  description = "(Optional) Setting this will cause Terraform to wait\nfor exactly this number of healthy instances from this Auto Scaling Group in\nall attached load balancers on both create and update operations. (Takes\nprecedence over min_elb_capacityWaiting for Capacity below.)"
  value       = aws_autoscaling_group.aws_autoscaling_group.wait_for_elb_capacity
}
output "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  value       = aws_autoscaling_group.aws_autoscaling_group.bare_metal
}
output "context" {
  description = "(Optional) Reserved."
  value       = aws_autoscaling_group.aws_autoscaling_group.context
}
output "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  value       = aws_autoscaling_group.aws_autoscaling_group.cpu_manufacturers
}
output "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) Price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_autoscaling_group.aws_autoscaling_group.spot_max_price_percentage_over_lowest_price
}
output "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.vcpu_count
}
output "vpc_zone_identifier" {
  description = " (Optional) - The VPC zone identifier~> strongNOTE: When using ELB as the health_check_type, health_check_grace_period is required.~> strongNOTE:initial_lifecycle_hookaws_autoscaling_lifecycle_hookinitial_lifecycle_hookaws_autoscaling_lifecycle_hookcapacityinitial_lifecycle_hookaws_autoscaling_lifecycle_hook.TimeoutsConfiguration options:"
  value       = aws_autoscaling_group.aws_autoscaling_group.vpc_zone_identifier
}
output "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  value       = aws_autoscaling_group.aws_autoscaling_group.accelerator_manufacturers
}
output "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  value       = aws_autoscaling_group.aws_autoscaling_group.accelerator_types
}
output "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  value       = aws_autoscaling_group.aws_autoscaling_group.baseline_ebs_bandwidth_mbps
}
output "checkpoint_delay" {
  description = "(Optional) Number of seconds to wait after a checkpoint. Defaults to 3600."
  value       = aws_autoscaling_group.aws_autoscaling_group.checkpoint_delay
}
output "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  value       = aws_autoscaling_group.aws_autoscaling_group.local_storage
}
output "triggers" {
  description = "(Optional) Set of additional property names that will trigger an Instance Refresh. A refresh will always be triggered by a change in any of launch_configuration, launch_template, or mixed_instances_policy.~> strongNOTE: A refresh is started when any of the following Auto Scaling Group properties change: launch_configuration, launch_template, mixed_instances_policy. Additional properties can be specified in the triggers property of instance_refresh.~> strongNOTE: A refresh will not start when version = \"$Latest\" is configured in the launch_template block. To trigger the instance refresh when a launch template is changed, configure version to use the latest_version attribute of the aws_launch_template resource.~> strongNOTE: Auto Scaling Groups support up to one active instance refresh at a time. When this resource is updated, any existing refresh is cancelled.~> strongNOTE: Depending on health check settings and group size, an instance refresh may take a long time or fail. This resource does not wait for the instance refresh to complete.warm_poolThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.triggers
}
output "instance_type" {
  description = "(Optional) Override the instance type in the Launch Template."
  value       = aws_autoscaling_group.aws_autoscaling_group.instance_type
}
output "load_balancers" {
  description = "target_group_arns instead."
  value       = aws_autoscaling_group.aws_autoscaling_group.load_balancers
}
output "min_healthy_percentage" {
  description = "(Optional) Amount of capacity in the Auto Scaling group that must remain healthy during an instance refresh to allow the operation to continue, as a percentage of the desired capacity of the Auto Scaling group. Defaults to 90."
  value       = aws_autoscaling_group.aws_autoscaling_group.min_healthy_percentage
}
output "spot_allocation_strategy" {
  description = "(Optional) How to allocate capacity across the Spot pools. Valid values: lowest-price, capacity-optimized, capacity-optimized-prioritized. Default: lowest-price."
  value       = aws_autoscaling_group.aws_autoscaling_group.spot_allocation_strategy
}
output "spot_instance_pools" {
  description = "(Optional) Number of Spot pools per availability zone to allocate capacity. EC2 Auto Scaling selects the cheapest Spot pools and evenly allocates Spot capacity across the number of Spot pools that you specify. Only available with spot_allocation_strategy set to lowest-price. Otherwise it must be set to 0, if it has been defined before. Default: 2."
  value       = aws_autoscaling_group.aws_autoscaling_group.spot_instance_pools
}
output "strategy" {
  description = "(Required) Strategy to use for instance refresh. The only allowed value is Rolling. See StartInstanceRefresh Action for more information."
  value       = aws_autoscaling_group.aws_autoscaling_group.strategy
}
output "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  value       = aws_autoscaling_group.aws_autoscaling_group.accelerator_names
}
output "force_delete" {
  description = "(Optional) Allows deleting the Auto Scaling Group without waiting\nfor all instances in the pool to terminate.  You can force an Auto Scaling Group to delete\neven if it's in the process of scaling a resource. Normally, Terraform\ndrains all the instances before deleting the group.  This bypasses that\nbehavior and potentially leaves resources dangling."
  value       = aws_autoscaling_group.aws_autoscaling_group.force_delete
}
output "max" {
  description = "(Optional) Maximum.tag and tagsThe tag attribute accepts exactly one tag declaration with the following fields:"
  value       = aws_autoscaling_group.aws_autoscaling_group.max
}
output "max_group_prepared_capacity" {
  description = "(Optional) Total maximum number of instances that are allowed to be in the warm pool or in any state except Terminated for the Auto Scaling group.instance_reuse_policyThis configuration block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.max_group_prepared_capacity
}
output "name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.name
}
output "warm_pool" {
  description = "(Optional) If this block is configured, add a Warm Poolbelowlaunch_template~> strongNOTE: Either id or name must be specified.The top-level launch_template block supports the following:"
  value       = aws_autoscaling_group.aws_autoscaling_group.warm_pool
}
output "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.min_size
}
output "default_cooldown" {
  description = "Time between a scaling activity and the succeeding scaling activity."
  value       = aws_autoscaling_group.aws_autoscaling_group.default_cooldown
}
output "health_check_grace_period" {
  description = "Time after instance comes into service before checking health."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_grace_period
}
output "health_check_type" {
  description = "\"EC2\" or \"ELB\". Controls how health checking is done."
  value       = aws_autoscaling_group.aws_autoscaling_group.health_check_type
}
output "name" {
  description = "Name of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.name
}
output "arn" {
  description = "ARN for this Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.arn
}
output "default_instance_warmup" {
  description = "The duration of the default instance warmup, in seconds."
  value       = aws_autoscaling_group.aws_autoscaling_group.default_instance_warmup
}
output "desired_capacity" {
  description = " -The number of Amazon EC2 instances that should be running in the group."
  value       = aws_autoscaling_group.aws_autoscaling_group.desired_capacity
}
output "launch_configuration" {
  description = "The launch configuration of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.launch_configuration
}
output "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  value       = aws_autoscaling_group.aws_autoscaling_group.max_size
}
output "vpc_zone_identifier" {
  description = " (Optional) - The VPC zone identifier~> strongNOTE: When using ELB as the health_check_type, health_check_grace_period is required.~> strongNOTE:initial_lifecycle_hookaws_autoscaling_lifecycle_hookinitial_lifecycle_hookaws_autoscaling_lifecycle_hookcapacityinitial_lifecycle_hookaws_autoscaling_lifecycle_hook.TimeoutsConfiguration options:"
  value       = aws_autoscaling_group.aws_autoscaling_group.vpc_zone_identifier
}
output "availability_zones" {
  description = "Availability zones of the Auto Scaling Group."
  value       = aws_autoscaling_group.aws_autoscaling_group.availability_zones
}
output "delete" {
  description = "(Default 10m)Waiting for CapacityA newly-created ASG is initially empty and begins to scale to min_sizedesired_capacityWaiting for ASG Capacitymin_size (or desired_capacityIf min_size or desired_capacityTerraform considers an instance \"healthy\" when the ASG reports HealthStatus: \"Healthy\" and LifecycleState: \"InService\". See the wait_for_capacity_timeoutSetting wait_for_capacity_timeout to \"0\" disables ASG Capacity waiting.Waiting for ELB Capacityload_balancers attribute or with ALBs specified with target_group_arns.The min_elb_capacity\"InService\"If wait_for_elb_capacity\"InService\"As with ASG Capacity, Terraform will wait for up to wait_for_capacity_timeoutTroubleshooting Capacity Waiting Timeouts"
  value       = aws_autoscaling_group.aws_autoscaling_group.delete
}
output "id" {
  description = "Auto Scaling Group id."
  value       = aws_autoscaling_group.aws_autoscaling_group.id
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
      "kind/name"                   = "aws_autoscaling_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
