resource "aws_opsworks_custom_layer" "aws_opsworks_custom_layer" {
  mount_point                 = var.mount_point
  number_of_disks             = var.number_of_disks
  file                        = var.file
  tags                        = var.tags
  name                        = var.name
  short_name                  = var.short_name
  type                        = var.type
  cloudwatch_configuration    = var.cloudwatch_configuration
  custom_security_group_ids   = var.custom_security_group_ids
  downscaling                 = var.downscaling
  batch_size                  = var.batch_size
  custom_instance_profile_arn = var.custom_instance_profile_arn
  ignore_metrics_time         = var.ignore_metrics_time
  alarms                      = var.alarms
  enabled                     = var.enabled
  file_fingerprint_lines      = var.file_fingerprint_lines
  load_based_auto_scaling     = var.load_based_auto_scaling
  time_zone                   = var.time_zone
  custom_configure_recipes    = var.custom_configure_recipes
  enable                      = var.enable
  memory_threshold            = var.memory_threshold
  multiline_start_pattern     = var.multiline_start_pattern
  thresholds_wait_time        = var.thresholds_wait_time
  auto_healing                = var.auto_healing
  elastic_load_balancer       = var.elastic_load_balancer
  install_updates_on_boot     = var.install_updates_on_boot
  initial_position            = var.initial_position
  iops                        = var.iops
  arn                         = var.arn
  custom_setup_recipes        = var.custom_setup_recipes
  datetime_format             = var.datetime_format
  log_streams                 = var.log_streams
  stack_id                    = var.stack_id
  raid_level                  = var.raid_level
  auto_assign_public_ips      = var.auto_assign_public_ips
  id                          = var.id
  instance_count              = var.instance_count
  custom_undeploy_recipes     = var.custom_undeploy_recipes
  size                        = var.size
  use_ebs_optimized_instances = var.use_ebs_optimized_instances
  drain_elb_on_shutdown       = var.drain_elb_on_shutdown
  encrypted                   = var.encrypted
  upscaling                   = var.upscaling
  cpu_threshold               = var.cpu_threshold
  custom_json                 = var.custom_json
  custom_shutdown_recipes     = var.custom_shutdown_recipes
  instance_shutdown_timeout   = var.instance_shutdown_timeout
  log_group_name              = var.log_group_name
  auto_assign_elastic_ips     = var.auto_assign_elastic_ips
  buffer_duration             = var.buffer_duration
  ebs_volume                  = var.ebs_volume
  load_threshold              = var.load_threshold
  system_packages             = var.system_packages
  batch_count                 = var.batch_count
  custom_deploy_recipes       = var.custom_deploy_recipes
  encoding                    = var.encoding
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  type        = string
}
variable "datetime_format" {
  description = "(Optional) Specifies how the timestamp is extracted from logs. For more information, see the CloudWatch Logs Agent Reference (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html)."
  type        = string
}
variable "log_streams" {
  description = "(Optional) A block the specifies how an opsworks logs look like. See Log Streams.Log Streams"
  type        = string
}
variable "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  type        = string
}
variable "instance_count" {
  description = "(Optional) The number of instances to add or remove when the load exceeds a threshold."
  type        = string
}
variable "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  type        = string
}
variable "id" {
  description = "The id of the layer."
  type        = string
}
variable "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  type        = string
}
variable "custom_undeploy_recipes" {
  description = "EBS Volume"
  type        = string
}
variable "size" {
  description = "(Required) The size of the volume in gigabytes."
  type        = string
}
variable "custom_shutdown_recipes" {
  description = ""
  type        = string
}
variable "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  type        = string
}
variable "encrypted" {
  description = "(Optional) Encrypt the volume.Cloudwatch Configuration"
  type        = string
}
variable "upscaling" {
  description = "(Optional) The upscaling settings, as defined below, used for load-based autoscalingThe downscaling and upscaling blocks supports the following arguments:Though the three thresholds are optional, at least one threshold must be set when using load-based autoscaling."
  type        = string
}
variable "cpu_threshold" {
  description = "(Optional) The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold."
  type        = string
}
variable "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  type        = string
}
variable "ebs_volume" {
  description = "(Optional) Will create an EBS volume and connect it to the layer's instances. See EBS Volume."
  type        = string
}
variable "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  type        = string
}
variable "log_group_name" {
  description = "(Required) Specifies the destination log group. A log group is created automatically if it doesn't already exist."
  type        = string
}
variable "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  type        = string
}
variable "buffer_duration" {
  description = "(Optional) Specifies the time duration for the batching of log events. The minimum value is 5000 and default value is 5000."
  type        = string
}
variable "encoding" {
  description = "(Optional) Specifies the encoding of the log file so that the file can be read correctly. The default is utf_8."
  type        = string
}
variable "load_threshold" {
  description = "(Optional) The load threshold. A value of -1 disables the threshold."
  type        = string
}
variable "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
  type        = string
}
variable "batch_count" {
  description = "(Optional) Specifies the max number of log events in a batch, up to 10000. The default value is 1000."
  type        = string
}
variable "custom_deploy_recipes" {
  description = ""
  type        = string
}
variable "file" {
  description = "(Required) Specifies log files that you want to push to CloudWatch Logs. File can point to a specific file or multiple files (by using wild card characters such as /var/log/system.log*)."
  type        = string
}
variable "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  type        = string
}
variable "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "downscaling" {
  description = "(Optional) The downscaling settings, as defined below, used for load-based autoscaling"
  type        = string
}
variable "name" {
  description = "(Required) A human-readable name for the layer."
  type        = string
}
variable "short_name" {
  description = "(Required) A short, machine-readable name for the layer, which will be used to identify it in the Chef node JSON."
  type        = string
}
variable "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  type        = string
}
variable "cloudwatch_configuration" {
  description = "(Optional) Will create an EBS volume and connect it to the layer's instances. See Cloudwatch Configuration."
  type        = string
}
variable "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  type        = string
}
variable "ignore_metrics_time" {
  description = "(Optional) The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events."
  type        = string
}
variable "batch_size" {
  description = "(Optional) Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes."
  type        = string
}
variable "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  type        = string
}
variable "file_fingerprint_lines" {
  description = "(Optional) Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as 1, 2-5. The default value is 1."
  type        = string
}
variable "alarms" {
  description = "(Optional) Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack."
  type        = string
}
variable "enabled" {
  description = "(Optional)"
  type        = string
}
variable "load_based_auto_scaling" {
  description = "(Optional) Load-based auto scaling configuration. See Load Based AutoScaling"
  type        = string
}
variable "time_zone" {
  description = "(Optional) Specifies the time zone of log event time stamps.Load Based Autoscaling"
  type        = string
}
variable "memory_threshold" {
  description = "(Optional) The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold."
  type        = string
}
variable "custom_configure_recipes" {
  description = ""
  type        = string
}
variable "enable" {
  description = "(Optional) Whether load-based auto scaling is enabled for the layer."
  type        = string
}
variable "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  type        = string
}
variable "multiline_start_pattern" {
  description = "(Optional) Specifies the pattern for identifying the start of a log message."
  type        = string
}
variable "thresholds_wait_time" {
  description = "(Optional) The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "auto_healing" {
  description = "(Optional) Whether to enable auto-healing for the layer."
  type        = string
}
variable "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  type        = string
}
variable "initial_position" {
  description = "(Optional) Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file."
  type        = string
}
variable "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  type        = string
}
variable "custom_setup_recipes" {
  description = ""
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
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_configuration" {
  description = "(Optional) Will create an EBS volume and connect it to the layer's instances. See Cloudwatch Configuration."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.cloudwatch_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "downscaling" {
  description = "(Optional) The downscaling settings, as defined below, used for load-based autoscaling"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.downscaling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) A human-readable name for the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "short_name" {
  description = "(Required) A short, machine-readable name for the layer, which will be used to identify it in the Chef node JSON."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.short_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "batch_size" {
  description = "(Optional) Specifies the maximum size of log events in a batch, in bytes, up to 1048576 bytes. The default value is 32768 bytes."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.batch_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_instance_profile_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ignore_metrics_time" {
  description = "(Optional) The amount of time (in minutes) after a scaling event occurs that AWS OpsWorks Stacks should ignore metrics and suppress additional scaling events."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.ignore_metrics_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alarms" {
  description = "(Optional) Custom Cloudwatch auto scaling alarms, to be used as thresholds. This parameter takes a list of up to five alarm names, which are case sensitive and must be in the same region as the stack."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.alarms
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional)"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_fingerprint_lines" {
  description = "(Optional) Specifies the range of lines for identifying a file. The valid values are one number, or two dash-delimited numbers, such as 1, 2-5. The default value is 1."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.file_fingerprint_lines
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_based_auto_scaling" {
  description = "(Optional) Load-based auto scaling configuration. See Load Based AutoScaling"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.load_based_auto_scaling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "time_zone" {
  description = "(Optional) Specifies the time zone of log event time stamps.Load Based Autoscaling"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.time_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_configure_recipes" {
  description = ""
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_configure_recipes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable" {
  description = "(Optional) Whether load-based auto scaling is enabled for the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.enable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_threshold" {
  description = "(Optional) The memory utilization threshold, as a percent of the available memory. A value of -1 disables the threshold."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.memory_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_healing" {
  description = "(Optional) Whether to enable auto-healing for the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.auto_healing
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.elastic_load_balancer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.install_updates_on_boot
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "multiline_start_pattern" {
  description = "(Optional) Specifies the pattern for identifying the start of a log message."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.multiline_start_pattern
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "thresholds_wait_time" {
  description = "(Optional) The amount of time, in minutes, that the load must exceed a threshold before more instances are added or removed.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.thresholds_wait_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_setup_recipes" {
  description = ""
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_setup_recipes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "initial_position" {
  description = "(Optional) Specifies where to start to read data (start_of_file or end_of_file). The default is start_of_file."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.initial_position
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "datetime_format" {
  description = "(Optional) Specifies how the timestamp is extracted from logs. For more information, see the CloudWatch Logs Agent Reference (https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html)."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.datetime_format
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_streams" {
  description = "(Optional) A block the specifies how an opsworks logs look like. See Log Streams.Log Streams"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.log_streams
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.stack_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.raid_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.auto_assign_public_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_count" {
  description = "(Optional) The number of instances to add or remove when the load exceeds a threshold."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.instance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_undeploy_recipes" {
  description = "EBS Volume"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_undeploy_recipes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size" {
  description = "(Required) The size of the volume in gigabytes."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.use_ebs_optimized_instances
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_threshold" {
  description = "(Optional) The CPU utilization threshold, as a percent of the available CPU. A value of -1 disables the threshold."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.cpu_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_json
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_shutdown_recipes" {
  description = ""
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_shutdown_recipes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.drain_elb_on_shutdown
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "(Optional) Encrypt the volume.Cloudwatch Configuration"
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "upscaling" {
  description = "(Optional) The upscaling settings, as defined below, used for load-based autoscalingThe downscaling and upscaling blocks supports the following arguments:Though the three thresholds are optional, at least one threshold must be set when using load-based autoscaling."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.upscaling
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.auto_assign_elastic_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "buffer_duration" {
  description = "(Optional) Specifies the time duration for the batching of log events. The minimum value is 5000 and default value is 5000."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.buffer_duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_volume" {
  description = "(Optional) Will create an EBS volume and connect it to the layer's instances. See EBS Volume."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.ebs_volume
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.instance_shutdown_timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "log_group_name" {
  description = "(Required) Specifies the destination log group. A log group is created automatically if it doesn't already exist."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.log_group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "batch_count" {
  description = "(Optional) Specifies the max number of log events in a batch, up to 10000. The default value is 1000."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.batch_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "custom_deploy_recipes" {
  description = ""
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.custom_deploy_recipes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encoding" {
  description = "(Optional) Specifies the encoding of the log file so that the file can be read correctly. The default is utf_8."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.encoding
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_threshold" {
  description = "(Optional) The load threshold. A value of -1 disables the threshold."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.load_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.system_packages
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file" {
  description = "(Required) Specifies log files that you want to push to CloudWatch Logs. File can point to a specific file or multiple files (by using wild card characters such as /var/log/system.log*)."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.file
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.mount_point
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.number_of_disks
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_opsworks_custom_layer.aws_opsworks_custom_layer.tags_all
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
      "kind/name"                   = "aws_opsworks_custom_layer"
      "kind/version"                = "v0.1.0"
    }
  }
}
