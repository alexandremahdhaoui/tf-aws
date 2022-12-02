resource "aws_ec2_fleet" "aws_ec2_fleet" {
  max                                              = var.max
  launch_template_specification                    = var.launch_template_specification
  maintenance_strategies                           = var.maintenance_strategies
  priority                                         = var.priority
  target_capacity_specification                    = var.target_capacity_specification
  version                                          = var.version
  accelerator_total_memory_mib                     = var.accelerator_total_memory_mib
  bare_metal                                       = var.bare_metal
  cpu_manufacturers                                = var.cpu_manufacturers
  instance_type                                    = var.instance_type
  spot_max_price_percentage_over_lowest_price      = var.spot_max_price_percentage_over_lowest_price
  total_target_capacity                            = var.total_target_capacity
  update                                           = var.update
  baseline_ebs_bandwidth_mbps                      = var.baseline_ebs_bandwidth_mbps
  burstable_performance                            = var.burstable_performance
  context                                          = var.context
  instance_requirements                            = var.instance_requirements
  replacement_strategy                             = var.replacement_strategy
  spot_target_capacity                             = var.spot_target_capacity
  memory_gib_per_vcpu                              = var.memory_gib_per_vcpu
  memory_mib                                       = var.memory_mib
  subnet_id                                        = var.subnet_id
  capacity_rebalance                               = var.capacity_rebalance
  vcpu_count                                       = var.vcpu_count
  arn                                              = var.arn
  id                                               = var.id
  replace_unhealthy_instances                      = var.replace_unhealthy_instances
  accelerator_names                                = var.accelerator_names
  excluded_instance_types                          = var.excluded_instance_types
  launch_template_name                             = var.launch_template_name
  min                                              = var.min
  tags                                             = var.tags
  local_storage_types                              = var.local_storage_types
  create                                           = var.create
  instance_pools_to_use_count                      = var.instance_pools_to_use_count
  require_hibernate_support                        = var.require_hibernate_support
  terminate_instances                              = var.terminate_instances
  terminate_instances_with_expiration              = var.terminate_instances_with_expiration
  local_storage                                    = var.local_storage
  on_demand_max_price_percentage_over_lowest_price = var.on_demand_max_price_percentage_over_lowest_price
  spot_options                                     = var.spot_options
  weighted_capacity                                = var.weighted_capacity
  allocation_strategy                              = var.allocation_strategy
  launch_template_config                           = var.launch_template_config
  on_demand_options                                = var.on_demand_options
  tags_all                                         = var.tags_all
  target_capacity_unit_type                        = var.target_capacity_unit_type
  accelerator_manufacturers                        = var.accelerator_manufacturers
  accelerator_types                                = var.accelerator_types
  default_target_capacity_type                     = var.default_target_capacity_type
  availability_zone                                = var.availability_zone
  instance_generations                             = var.instance_generations
  instance_interruption_behavior                   = var.instance_interruption_behavior
  network_interface_count                          = var.network_interface_count
  override                                         = var.override
  type                                             = var.type
  accelerator_count                                = var.accelerator_count
  excess_capacity_termination_policy               = var.excess_capacity_termination_policy
  launch_template_id                               = var.launch_template_id
  max_price                                        = var.max_price
  on_demand_target_capacity                        = var.on_demand_target_capacity
  total_local_storage_gb                           = var.total_local_storage_gb
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "launch_template_config" {
  description = "(Required) Nested argument containing EC2 Launch Template configurations. Defined below."
  type        = string
}
variable "on_demand_options" {
  description = "(Optional) Nested argument containing On-Demand configurations. Defined below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "target_capacity_unit_type" {
  description = "(Optional) The unit for the target capacity. This can only be done with instance_requirements definedIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "allocation_strategy" {
  description = "(Optional) How to allocate the target capacity across the Spot pools. Valid values: diversified, lowestPrice, capacity-optimized and capacity-optimized-prioritized. Default: lowestPrice."
  type        = string
}
variable "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  type        = string
}
variable "default_target_capacity_type" {
  description = "(Required) Default target capacity type. Valid values: on-demand, spot."
  type        = string
}
variable "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  type        = string
}
variable "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  type        = string
}
variable "instance_interruption_behavior" {
  description = "(Optional) Behavior when a Spot Instance is interrupted. Valid values: hibernate, stop, terminate. Default: terminate."
  type        = string
}
variable "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  type        = string
}
variable "override" {
  description = "(Optional) Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.launch_template_specification~> emNOTE: Either launch_template_id or launch_template_name must be specified."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) Availability Zone in which to launch the instances."
  type        = string
}
variable "excess_capacity_termination_policy" {
  description = "(Optional) Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: no-termination, termination. Defaults to termination."
  type        = string
}
variable "launch_template_id" {
  description = "(Optional) ID of the launch template."
  type        = string
}
variable "max_price" {
  description = "(Optional) Maximum price per unit hour that you are willing to pay for a Spot Instance."
  type        = string
}
variable "on_demand_target_capacity" {
  description = "(Optional) The number of On-Demand units to request."
  type        = string
}
variable "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  type        = string
}
variable "type" {
  description = "(Optional) The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: maintain, request. Defaults to maintain.launch_template_config"
  type        = string
}
variable "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  type        = string
}
variable "max" {
  description = "(Optional) Maximum.on_demand_options"
  type        = string
}
variable "maintenance_strategies" {
  description = "(Optional) Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.maintenance_strategies"
  type        = string
}
variable "priority" {
  description = "(Optional) Priority for the launch template override. If on_demand_options allocation_strategy is set to prioritized, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0."
  type        = string
}
variable "target_capacity_specification" {
  description = "(Required) Nested argument containing target capacity configurations. Defined below."
  type        = string
}
variable "version" {
  description = "(Required) Version number of the launch template."
  type        = string
}
variable "launch_template_specification" {
  description = "(Required) Nested argument containing EC2 Launch Template to use. Defined below."
  type        = string
}
variable "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  type        = string
}
variable "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  type        = string
}
variable "instance_type" {
  description = "(Optional) Instance type."
  type        = string
}
variable "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
}
variable "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  type        = string
}
variable "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  type        = string
}
variable "context" {
  description = "(Optional) Reserved."
  type        = string
}
variable "instance_requirements" {
  description = "(Optional) Override the instance type in the Launch Template with instance types that satisfy the requirements."
  type        = string
}
variable "replacement_strategy" {
  description = "(Optional) The replacement strategy to use. Only available for fleets of type set to maintain. Valid values: launch.target_capacity_specification"
  type        = string
}
variable "spot_target_capacity" {
  description = "(Optional) The number of Spot units to request."
  type        = string
}
variable "total_target_capacity" {
  description = "(Required) The number of units to request, filled using default_target_capacity_type."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  type        = string
}
variable "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) ID of the subnet in which to launch the instances."
  type        = string
}
variable "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  type        = string
}
variable "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  type        = string
}
variable "capacity_rebalance" {
  description = "(Optional) Nested argument containing the capacity rebalance for your fleet request. Defined below.capacity_rebalance"
  type        = string
}
variable "id" {
  description = "Fleet identifier"
  type        = string
}
variable "replace_unhealthy_instances" {
  description = "(Optional) Whether EC2 Fleet should replace unhealthy instances. Defaults to false."
  type        = string
}
variable "arn" {
  description = "The ARN of the fleet"
  type        = string
}
variable "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  type        = string
}
variable "launch_template_name" {
  description = "(Optional) Name of the launch template.overrideExample:"
  type        = string
}
variable "min" {
  description = "(Required) Minimum."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  type        = string
}
variable "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  type        = string
}
variable "instance_pools_to_use_count" {
  description = "(Optional) Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot allocation_strategy is set to lowestPrice. Default: 1."
  type        = string
}
variable "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  type        = string
}
variable "terminate_instances" {
  description = "(Optional) Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to false."
  type        = string
}
variable "terminate_instances_with_expiration" {
  description = "(Optional) Whether running instances should be terminated when the EC2 Fleet expires. Defaults to false."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
}
variable "spot_options" {
  description = "(Optional) Nested argument containing Spot configurations. Defined below."
  type        = string
}
variable "weighted_capacity" {
  description = "(Optional) Number of units provided by the specified instance type.instance_requirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  type        = string
}
variable "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
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
output "max" {
  description = "(Optional) Maximum.on_demand_options"
  value       = aws_ec2_fleet.aws_ec2_fleet.max
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Optional) Priority for the launch template override. If on_demand_options allocation_strategy is set to prioritized, EC2 Fleet uses priority to determine which launch template override to use first in fulfilling On-Demand capacity. The highest priority is launched first. The lower the number, the higher the priority. If no number is set, the launch template override has the lowest priority. Valid values are whole numbers starting at 0."
  value       = aws_ec2_fleet.aws_ec2_fleet.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_capacity_specification" {
  description = "(Required) Nested argument containing target capacity configurations. Defined below."
  value       = aws_ec2_fleet.aws_ec2_fleet.target_capacity_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "(Required) Version number of the launch template."
  value       = aws_ec2_fleet.aws_ec2_fleet.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_specification" {
  description = "(Required) Nested argument containing EC2 Launch Template to use. Defined below."
  value       = aws_ec2_fleet.aws_ec2_fleet.launch_template_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_strategies" {
  description = "(Optional) Nested argument containing maintenance strategies for managing your Spot Instances that are at an elevated risk of being interrupted. Defined below.maintenance_strategies"
  value       = aws_ec2_fleet.aws_ec2_fleet.maintenance_strategies
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  value       = aws_ec2_fleet.aws_ec2_fleet.cpu_manufacturers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) Instance type."
  value       = aws_ec2_fleet.aws_ec2_fleet.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_ec2_fleet.aws_ec2_fleet.spot_max_price_percentage_over_lowest_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.accelerator_total_memory_mib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  value       = aws_ec2_fleet.aws_ec2_fleet.bare_metal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "context" {
  description = "(Optional) Reserved."
  value       = aws_ec2_fleet.aws_ec2_fleet.context
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_requirements" {
  description = "(Optional) Override the instance type in the Launch Template with instance types that satisfy the requirements."
  value       = aws_ec2_fleet.aws_ec2_fleet.instance_requirements
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replacement_strategy" {
  description = "(Optional) The replacement strategy to use. Only available for fleets of type set to maintain. Valid values: launch.target_capacity_specification"
  value       = aws_ec2_fleet.aws_ec2_fleet.replacement_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_target_capacity" {
  description = "(Optional) The number of Spot units to request."
  value       = aws_ec2_fleet.aws_ec2_fleet.spot_target_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "total_target_capacity" {
  description = "(Required) The number of units to request, filled using default_target_capacity_type."
  value       = aws_ec2_fleet.aws_ec2_fleet.total_target_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_fleet.aws_ec2_fleet.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.baseline_ebs_bandwidth_mbps
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  value       = aws_ec2_fleet.aws_ec2_fleet.burstable_performance
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "(Optional) ID of the subnet in which to launch the instances."
  value       = aws_ec2_fleet.aws_ec2_fleet.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.memory_gib_per_vcpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.memory_mib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_rebalance" {
  description = "(Optional) Nested argument containing the capacity rebalance for your fleet request. Defined below.capacity_rebalance"
  value       = aws_ec2_fleet.aws_ec2_fleet.capacity_rebalance
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.vcpu_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replace_unhealthy_instances" {
  description = "(Optional) Whether EC2 Fleet should replace unhealthy instances. Defaults to false."
  value       = aws_ec2_fleet.aws_ec2_fleet.replace_unhealthy_instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the fleet"
  value       = aws_ec2_fleet.aws_ec2_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Fleet identifier"
  value       = aws_ec2_fleet.aws_ec2_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  value       = aws_ec2_fleet.aws_ec2_fleet.accelerator_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min" {
  description = "(Required) Minimum."
  value       = aws_ec2_fleet.aws_ec2_fleet.min
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of Fleet tags. To tag instances at launch, specify the tags in the Launch Template. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ec2_fleet.aws_ec2_fleet.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  value       = aws_ec2_fleet.aws_ec2_fleet.excluded_instance_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_name" {
  description = "(Optional) Name of the launch template.overrideExample:"
  value       = aws_ec2_fleet.aws_ec2_fleet.launch_template_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  value       = aws_ec2_fleet.aws_ec2_fleet.local_storage_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  value       = aws_ec2_fleet.aws_ec2_fleet.require_hibernate_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "terminate_instances" {
  description = "(Optional) Whether to terminate instances for an EC2 Fleet if it is deleted successfully. Defaults to false."
  value       = aws_ec2_fleet.aws_ec2_fleet.terminate_instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "terminate_instances_with_expiration" {
  description = "(Optional) Whether running instances should be terminated when the EC2 Fleet expires. Defaults to false."
  value       = aws_ec2_fleet.aws_ec2_fleet.terminate_instances_with_expiration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_fleet.aws_ec2_fleet.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_pools_to_use_count" {
  description = "(Optional) Number of Spot pools across which to allocate your target Spot capacity. Valid only when Spot allocation_strategy is set to lowestPrice. Default: 1."
  value       = aws_ec2_fleet.aws_ec2_fleet.instance_pools_to_use_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_options" {
  description = "(Optional) Nested argument containing Spot configurations. Defined below."
  value       = aws_ec2_fleet.aws_ec2_fleet.spot_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weighted_capacity" {
  description = "(Optional) Number of units provided by the specified instance type.instance_requirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  value       = aws_ec2_fleet.aws_ec2_fleet.weighted_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  value       = aws_ec2_fleet.aws_ec2_fleet.local_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_ec2_fleet.aws_ec2_fleet.on_demand_max_price_percentage_over_lowest_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "on_demand_options" {
  description = "(Optional) Nested argument containing On-Demand configurations. Defined below."
  value       = aws_ec2_fleet.aws_ec2_fleet.on_demand_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_fleet.aws_ec2_fleet.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_capacity_unit_type" {
  description = "(Optional) The unit for the target capacity. This can only be done with instance_requirements definedIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_fleet.aws_ec2_fleet.target_capacity_unit_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allocation_strategy" {
  description = "(Optional) How to allocate the target capacity across the Spot pools. Valid values: diversified, lowestPrice, capacity-optimized and capacity-optimized-prioritized. Default: lowestPrice."
  value       = aws_ec2_fleet.aws_ec2_fleet.allocation_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_config" {
  description = "(Required) Nested argument containing EC2 Launch Template configurations. Defined below."
  value       = aws_ec2_fleet.aws_ec2_fleet.launch_template_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_target_capacity_type" {
  description = "(Required) Default target capacity type. Valid values: on-demand, spot."
  value       = aws_ec2_fleet.aws_ec2_fleet.default_target_capacity_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  value       = aws_ec2_fleet.aws_ec2_fleet.accelerator_manufacturers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  value       = aws_ec2_fleet.aws_ec2_fleet.accelerator_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_interruption_behavior" {
  description = "(Optional) Behavior when a Spot Instance is interrupted. Valid values: hibernate, stop, terminate. Default: terminate."
  value       = aws_ec2_fleet.aws_ec2_fleet.instance_interruption_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.network_interface_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "override" {
  description = "(Optional) Nested argument(s) containing parameters to override the same parameters in the Launch Template. Defined below.launch_template_specification~> emNOTE: Either launch_template_id or launch_template_name must be specified."
  value       = aws_ec2_fleet.aws_ec2_fleet.override
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) Availability Zone in which to launch the instances."
  value       = aws_ec2_fleet.aws_ec2_fleet.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  value       = aws_ec2_fleet.aws_ec2_fleet.instance_generations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template_id" {
  description = "(Optional) ID of the launch template."
  value       = aws_ec2_fleet.aws_ec2_fleet.launch_template_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_price" {
  description = "(Optional) Maximum price per unit hour that you are willing to pay for a Spot Instance."
  value       = aws_ec2_fleet.aws_ec2_fleet.max_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "on_demand_target_capacity" {
  description = "(Optional) The number of On-Demand units to request."
  value       = aws_ec2_fleet.aws_ec2_fleet.on_demand_target_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.total_local_storage_gb
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) The type of request. Indicates whether the EC2 Fleet only requests the target capacity, or also attempts to maintain it. Valid values: maintain, request. Defaults to maintain.launch_template_config"
  value       = aws_ec2_fleet.aws_ec2_fleet.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  value       = aws_ec2_fleet.aws_ec2_fleet.accelerator_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excess_capacity_termination_policy" {
  description = "(Optional) Whether running instances should be terminated if the total target capacity of the EC2 Fleet is decreased below the current size of the EC2. Valid values: no-termination, termination. Defaults to termination."
  value       = aws_ec2_fleet.aws_ec2_fleet.excess_capacity_termination_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_ec2_fleet.aws_ec2_fleet.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the fleet"
  value       = aws_ec2_fleet.aws_ec2_fleet.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_ec2_fleet.aws_ec2_fleet.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_ec2_fleet.aws_ec2_fleet.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Fleet identifier"
  value       = aws_ec2_fleet.aws_ec2_fleet.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_ec2_fleet.aws_ec2_fleet.tags_all
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
      "kind/name"                   = "aws_ec2_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}