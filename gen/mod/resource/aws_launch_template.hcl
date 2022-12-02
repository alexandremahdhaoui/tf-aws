resource "aws_launch_template" "aws_launch_template" {
  description                                      = var.description
  license_configuration_arn                        = var.license_configuration_arn
  spot_instance_type                               = var.spot_instance_type
  tag_specifications                               = var.tag_specifications
  host_id                                          = var.host_id
  instance_initiated_shutdown_behavior             = var.instance_initiated_shutdown_behavior
  ram_disk_id                                      = var.ram_disk_id
  spread_domain                                    = var.spread_domain
  subnet_id                                        = var.subnet_id
  update_default_version                           = var.update_default_version
  http_tokens                                      = var.http_tokens
  memory_mib                                       = var.memory_mib
  associate_carrier_ip_address                     = var.associate_carrier_ip_address
  availability_zone                                = var.availability_zone
  require_hibernate_support                        = var.require_hibernate_support
  type                                             = var.type
  vcpu_count                                       = var.vcpu_count
  associate_public_ip_address                      = var.associate_public_ip_address
  kms_key_id                                       = var.kms_key_id
  capacity_reservation_specification               = var.capacity_reservation_specification
  cpu_options                                      = var.cpu_options
  ipv6_addresses                                   = var.ipv6_addresses
  kernel_id                                        = var.kernel_id
  license_specification                            = var.license_specification
  bare_metal                                       = var.bare_metal
  baseline_ebs_bandwidth_mbps                      = var.baseline_ebs_bandwidth_mbps
  iam_instance_profile                             = var.iam_instance_profile
  market_type                                      = var.market_type
  placement                                        = var.placement
  group_name                                       = var.group_name
  min                                              = var.min
  volume_type                                      = var.volume_type
  total_local_storage_gb                           = var.total_local_storage_gb
  volume_size                                      = var.volume_size
  elastic_inference_accelerator                    = var.elastic_inference_accelerator
  ipv6_address_count                               = var.ipv6_address_count
  security_groups                                  = var.security_groups
  spot_options                                     = var.spot_options
  device_index                                     = var.device_index
  ebs                                              = var.ebs
  block_device_mappings                            = var.block_device_mappings
  ipv4_addresses                                   = var.ipv4_addresses
  burstable_performance                            = var.burstable_performance
  encrypted                                        = var.encrypted
  device_name                                      = var.device_name
  instance_requirements                            = var.instance_requirements
  ipv4_address_count                               = var.ipv4_address_count
  local_storage_types                              = var.local_storage_types
  network_interfaces                               = var.network_interfaces
  accelerator_names                                = var.accelerator_names
  auto_recovery                                    = var.auto_recovery
  capacity_reservation_resource_group_arn          = var.capacity_reservation_resource_group_arn
  capacity_reservation_target                      = var.capacity_reservation_target
  credit_specification                             = var.credit_specification
  instance_type                                    = var.instance_type
  http_put_response_hop_limit                      = var.http_put_response_hop_limit
  monitoring                                       = var.monitoring
  affinity                                         = var.affinity
  enabled                                          = var.enabled
  interface_type                                   = var.interface_type
  key_name                                         = var.key_name
  accelerator_count                                = var.accelerator_count
  network_interface_id                             = var.network_interface_id
  resource_type                                    = var.resource_type
  accelerator_manufacturers                        = var.accelerator_manufacturers
  enable_resource_name_dns_aaaa_record             = var.enable_resource_name_dns_aaaa_record
  hostname_type                                    = var.hostname_type
  latest_version                                   = var.latest_version
  name_prefix                                      = var.name_prefix
  disable_api_stop                                 = var.disable_api_stop
  ebs_optimized                                    = var.ebs_optimized
  instance_metadata_tags                           = var.instance_metadata_tags
  private_ip_address                               = var.private_ip_address
  user_data                                        = var.user_data
  accelerator_total_memory_mib                     = var.accelerator_total_memory_mib
  arn                                              = var.arn
  core_count                                       = var.core_count
  cpu_credits                                      = var.cpu_credits
  default_version                                  = var.default_version
  elastic_gpu_specifications                       = var.elastic_gpu_specifications
  instance_generations                             = var.instance_generations
  max                                              = var.max
  network_card_index                               = var.network_card_index
  partition_number                                 = var.partition_number
  excluded_instance_types                          = var.excluded_instance_types
  host_resource_group_arn                          = var.host_resource_group_arn
  http_protocol_ipv6                               = var.http_protocol_ipv6
  id                                               = var.id
  local_storage                                    = var.local_storage
  valid_until                                      = var.valid_until
  disable_api_termination                          = var.disable_api_termination
  ipv6_prefixes                                    = var.ipv6_prefixes
  network_interface_count                          = var.network_interface_count
  no_device                                        = var.no_device
  tags                                             = var.tags
  tenancy                                          = var.tenancy
  accelerator_types                                = var.accelerator_types
  configured                                       = var.configured
  image_id                                         = var.image_id
  maintenance_options                              = var.maintenance_options
  memory_gib_per_vcpu                              = var.memory_gib_per_vcpu
  snapshot_id                                      = var.snapshot_id
  hibernation_options                              = var.hibernation_options
  http_endpoint                                    = var.http_endpoint
  instance_interruption_behavior                   = var.instance_interruption_behavior
  ipv6_prefix_count                                = var.ipv6_prefix_count
  capacity_reservation_id                          = var.capacity_reservation_id
  enable_resource_name_dns_a_record                = var.enable_resource_name_dns_a_record
  on_demand_max_price_percentage_over_lowest_price = var.on_demand_max_price_percentage_over_lowest_price
  security_group_names                             = var.security_group_names
  throughput                                       = var.throughput
  delete_on_termination                            = var.delete_on_termination
  instance_market_options                          = var.instance_market_options
  max_price                                        = var.max_price
  capacity_reservation_preference                  = var.capacity_reservation_preference
  cpu_manufacturers                                = var.cpu_manufacturers
  iops                                             = var.iops
  ipv4_prefixes                                    = var.ipv4_prefixes
  threads_per_core                                 = var.threads_per_core
  ipv4_prefix_count                                = var.ipv4_prefix_count
  vpc_security_group_ids                           = var.vpc_security_group_ids
  block_duration_minutes                           = var.block_duration_minutes
  metadata_options                                 = var.metadata_options
  private_dns_name_options                         = var.private_dns_name_options
  enclave_options                                  = var.enclave_options
  name                                             = var.name
  spot_max_price_percentage_over_lowest_price      = var.spot_max_price_percentage_over_lowest_price
  virtual_name                                     = var.virtual_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "block_duration_minutes" {
  description = "The required duration in minutes. This value must be a multiple of 60."
  type        = string
}
variable "metadata_options" {
  description = "(Optional) Customize the metadata options for the instance. See Metadata Options below for more details."
  type        = string
  default     = ""
}
variable "private_dns_name_options" {
  description = "(Optional) The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  type        = string
  default     = ""
}
variable "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  type        = string
  default     = ""
}
variable "name" {
  description = "The name of the instance profile.Instance RequirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  type        = string
}
variable "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
  default     = ""
}
variable "virtual_name" {
  description = "The \"ephemeral0\").The ebs block supports the following:"
  type        = string
}
variable "description" {
  description = "Description of the network interface."
  type        = string
}
variable "license_configuration_arn" {
  description = "(Required) ARN of the license configuration.Maintenance OptionsThe maintenance_options block supports the following:"
  type        = string
}
variable "spot_instance_type" {
  description = "The Spot Instance request type. Can be one-time, or persistent."
  type        = string
}
variable "tag_specifications" {
  description = "(Optional) The tags to apply to the resources during launch. See Tag Specifications below for more details."
  type        = string
  default     = ""
}
variable "host_id" {
  description = "The ID of the Dedicated Host for the instance."
  type        = string
}
variable "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Can be stop or terminatestop)."
  type        = string
  default     = ""
}
variable "ram_disk_id" {
  description = "(Optional) The ID of the RAM disk."
  type        = string
  default     = ""
}
variable "spread_domain" {
  description = "Reserved for future use."
  type        = string
}
variable "subnet_id" {
  description = "The VPC Subnet ID to associate.PlacementThe Placement Group of the instance.The placement block supports the following:"
  type        = string
}
variable "update_default_version" {
  description = "(Optional) Whether to update Default Version each update. Conflicts with default_version."
  type        = string
  default     = ""
}
variable "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Can be \"optional\" or \"required\". (Default: \"optional\")."
  type        = string
  default     = ""
}
variable "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  type        = string
}
variable "associate_carrier_ip_address" {
  description = "Associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value."
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone for the instance."
  type        = string
}
variable "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Accelerator type.Enclave OptionsThe enclave_options block supports the following:"
  type        = string
}
variable "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  type        = string
}
variable "associate_public_ip_address" {
  description = "Associate a public ip address with the network interface.  Boolean value."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume.\nencrypted must be set to true when this is set."
  type        = string
}
variable "capacity_reservation_specification" {
  description = "(Optional) Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details."
  type        = string
  default     = ""
}
variable "cpu_options" {
  description = "(Optional) The CPU options for the instance. See CPU Options below for more details."
  type        = string
  default     = ""
}
variable "ipv6_addresses" {
  description = "One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with ipv6_address_count"
  type        = string
}
variable "kernel_id" {
  description = "(Optional) The kernel ID."
  type        = string
  default     = ""
}
variable "license_specification" {
  description = "(Optional) A list of license specifications to associate with. See License Specification below for more details."
  type        = string
  default     = ""
}
variable "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  type        = string
  default     = ""
}
variable "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "iam_instance_profile" {
  description = "(Optional) The IAM Instance Profile to launch the instance with. See Instance Profile"
  type        = string
  default     = ""
}
variable "market_type" {
  description = "The market type. Can be spot."
  type        = string
}
variable "placement" {
  description = "(Optional) The placement of the instance. See Placement below for more details."
  type        = string
  default     = ""
}
variable "group_name" {
  description = "The name of the placement group for the instance."
  type        = string
}
variable "min" {
  description = "(Required) Minimum."
  type        = string
}
variable "volume_type" {
  description = "The volume type. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2).Capacity Reservation SpecificationThe capacity_reservation_specification block supports the following:"
  type        = string
}
variable "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "The size of the volume in gigabytes."
  type        = string
}
variable "elastic_inference_accelerator" {
  description = "(Optional) Configuration block containing an Elastic Inference Accelerator to attach to the instance. See Elastic Inference Accelerator below for more details."
  type        = string
  default     = ""
}
variable "ipv6_address_count" {
  description = "The number of IPv6 addresses to assign to a network interface. Conflicts with ipv6_addresses"
  type        = string
}
variable "security_groups" {
  description = "A list of security group IDs to associate."
  type        = string
}
variable "spot_options" {
  description = "The options for Spot InstanceThe spot_options block supports the following:"
  type        = string
}
variable "device_index" {
  description = "The integer index of the network interface attachment."
  type        = string
}
variable "ebs" {
  description = "Configure EBS volume properties."
  type        = string
}
variable "block_device_mappings" {
  description = "(Optional) Specify volumes to attach to the instance besides the volumes specified by the AMI.\nSee Block Devices below for details."
  type        = string
  default     = ""
}
variable "ipv4_addresses" {
  description = "One or more private IPv4 addresses to associate. Conflicts with ipv4_address_count"
  type        = string
}
variable "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  type        = string
  default     = ""
}
variable "encrypted" {
  description = "Enables EBS encryptionfalse). Cannot be used with snapshot_id."
  type        = string
}
variable "device_name" {
  description = "The name of the device to mount."
  type        = string
}
variable "instance_requirements" {
  description = "(Optional) The attribute requirements for the type of instance. If present then instance_type cannot be present."
  type        = string
  default     = ""
}
variable "ipv4_address_count" {
  description = "The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with ipv4_addresses"
  type        = string
}
variable "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  type        = string
  default     = ""
}
variable "auto_recovery" {
  description = "(Optional) Disables the automatic recovery behavior of your instance or sets it to default. Can be \"default\" or \"disabled\". See Recover your instance for more details.Market OptionsThe market (purchasing) option for the instances.The instance_market_options block supports the following:"
  type        = string
  default     = ""
}
variable "capacity_reservation_resource_group_arn" {
  description = "The ARN of the Capacity Reservation resource group in which to run the instance.CPU OptionsThe cpu_options block supports the following:"
  type        = string
}
variable "capacity_reservation_target" {
  description = "Used to target a specific Capacity Reservation:The capacity_reservation_target block supports the following:"
  type        = string
}
variable "credit_specification" {
  description = "(Optional) Customize the credit specification of the instance. See  below for more details."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Optional) The type of the instance. If present then instance_requirements cannot be present."
  type        = string
  default     = ""
}
variable "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  type        = string
  default     = ""
}
variable "network_interfaces" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See  below for more details."
  type        = string
  default     = ""
}
variable "http_put_response_hop_limit" {
  description = "(Optional) The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from 1 to 64. (Default: 1)."
  type        = string
  default     = ""
}
variable "monitoring" {
  description = "(Optional) The monitoring option for the instance. See Monitoring below for more details."
  type        = string
  default     = ""
}
variable "affinity" {
  description = "The affinity setting for an instance on a Dedicated Host."
  type        = string
}
variable "enabled" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled.Network InterfacesAttaches one or more Network Interfaces to the instance.Check limitations for autoscaling group in Creating an Auto Scaling Group Using a Launch Template GuideEach network_interfaces block supports the following:"
  type        = string
}
variable "interface_type" {
  description = "The type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa."
  type        = string
}
variable "key_name" {
  description = "(Optional) The key name to use for the instance."
  type        = string
  default     = ""
}
variable "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "network_interface_id" {
  description = "The ID of the network interface to attach."
  type        = string
}
variable "resource_type" {
  description = "The type of resource to tag."
  type        = string
}
variable "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  type        = string
  default     = ""
}
variable "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = string
}
variable "hostname_type" {
  description = "The type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Tag SpecificationsThe tags to apply to the resources during launch. You can tag instances, volumes, elastic GPUs and spot instance requests. More information can be found in the EC2 API documentation.Each tag_specifications block supports the following:"
  type        = string
}
variable "latest_version" {
  description = "The latest version of the launch template."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
  type        = string
  default     = ""
}
variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  type        = string
  default     = ""
}
variable "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. (Default: disabled).For more information, see the documentation on the Instance Metadata Service.MonitoringThe monitoring block supports the following:"
  type        = string
  default     = ""
}
variable "private_ip_address" {
  description = "The primary private IPv4 address."
  type        = string
}
variable "user_data" {
  description = "(Optional) The base64-encoded user data to provide when launching the instance."
  type        = string
  default     = ""
}
variable "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  type        = string
}
variable "core_count" {
  description = "The number of CPU cores for the instance."
  type        = string
}
variable "cpu_credits" {
  description = "The credit option for CPU usage. Can be \"standard\" or \"unlimited\". T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.Elastic GPUAttach an elastic GPU the instance.The elastic_gpu_specifications block supports the following:"
  type        = string
}
variable "default_version" {
  description = "(Optional) Default Version of the launch template."
  type        = string
  default     = ""
}
variable "elastic_gpu_specifications" {
  description = "(Optional) The elastic GPU to attach to the instance. See Elastic GPU"
  type        = string
  default     = ""
}
variable "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  type        = string
  default     = ""
}
variable "max" {
  description = "(Optional) Maximum.License SpecificationAssociate one of more license configurations.The license_specification block supports the following:"
  type        = string
  default     = ""
}
variable "network_card_index" {
  description = "The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0."
  type        = string
}
variable "partition_number" {
  description = "The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  type        = string
}
variable "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  type        = string
  default     = ""
}
variable "host_resource_group_arn" {
  description = "The ARN of the Host Resource Group in which to launch instances."
  type        = string
}
variable "http_protocol_ipv6" {
  description = "(Optional) Enables or disables the IPv6 endpoint for the instance metadata service. (Default: disabled)."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the launch template."
  type        = string
}
variable "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  type        = string
  default     = ""
}
variable "valid_until" {
  description = "The end date of the request.Metadata OptionsThe metadata options for the instances.The metadata_options block supports the following:"
  type        = string
}
variable "disable_api_termination" {
  description = "(Optional) If true, enables "
  type        = string
  default     = ""
}
variable "ipv6_prefixes" {
  description = "One or more IPv6 prefixes to be assigned to the network interface. Conflicts with ipv6_prefix_count"
  type        = string
}
variable "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "no_device" {
  description = "Suppresses the specified device included in the AMI's block device mapping."
  type        = string
}
variable "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  type        = string
  default     = ""
}
variable "configured" {
  description = "If set to true, the launched EC2 instance will hibernation enabled.Instance ProfileThe IAM Instance ProfileThe iam_instance_profile block supports the following:"
  type        = string
}
variable "image_id" {
  description = "(Optional) The AMI from which to launch the instance."
  type        = string
  default     = ""
}
variable "maintenance_options" {
  description = "(Optional) The maintenance options for the instance. See Maintenance Options below for more details."
  type        = string
  default     = ""
}
variable "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  type        = string
  default     = ""
}
variable "snapshot_id" {
  description = "The Snapshot ID to mount."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Can be default, dedicated, or host."
  type        = string
}
variable "hibernation_options" {
  description = "(Optional) The hibernation options for the instance. See Hibernation Options below for more details."
  type        = string
  default     = ""
}
variable "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Can be \"enabled\" or \"disabled\". (Default: \"enabled\")."
  type        = string
  default     = ""
}
variable "instance_interruption_behavior" {
  description = "The behavior when a Spot Instance is interrupted. Can be hibernatestop, or terminate. (Default: terminate)."
  type        = string
}
variable "ipv6_prefix_count" {
  description = "The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with ipv6_prefixes"
  type        = string
}
variable "capacity_reservation_id" {
  description = "The ID of the Capacity Reservation in which to run the instance."
  type        = string
}
variable "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = string
}
variable "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
  default     = ""
}
variable "security_group_names" {
  description = "(Optional) A list of security group names to associate with. If you are creating Instances in a VPC, use\nvpc_security_group_ids instead."
  type        = string
  default     = ""
}
variable "throughput" {
  description = "The throughput to provision for a gp3 volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether the network interface should be destroyed on instance termination. Defaults to false if not set."
  type        = string
}
variable "instance_market_options" {
  description = "(Optional) The market (purchasing) option for the instance. See Market Options"
  type        = string
  default     = ""
}
variable "max_price" {
  description = "The maximum hourly price you're willing to pay for the Spot Instances."
  type        = string
}
variable "capacity_reservation_preference" {
  description = "Indicates the instance's Capacity Reservation preferences. Can be open or none. (Default none)."
  type        = string
}
variable "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  type        = string
  default     = ""
}
variable "iops" {
  description = "The amount of provisioned\nIOPSvolume_type of \"io1/io2\"."
  type        = string
}
variable "ipv4_prefixes" {
  description = "One or more IPv4 prefixes to be assigned to the network interface. Conflicts with ipv4_prefix_count"
  type        = string
}
variable "threads_per_core" {
  description = "The number of threads per CPU core. To disable Intel Hyper-Threading Technology for the instance, specify a value of 1.\nOtherwise, specify the default value of 2.Both number of CPU cores and threads per core must be specified. Valid number of CPU cores and threads per core for the instance type can be found in the CPU Options DocumentationCredit SpecificationCredit specification can be applied/modified to the EC2 Instance at any time.The credit_specification block supports the following:"
  type        = string
}
variable "ipv4_prefix_count" {
  description = "The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with ipv4_prefixes"
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) A list of security group IDs to associate with. Conflicts with network_interfaces.security_groupsBlock devicesAWS's Block Device Mapping docsTo find out more information for an existing AMI to override the configuration, such as device_name, you can use the AWS CLI ec2 describe-images command.Each block_device_mappings supports the following:"
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
output "security_group_names" {
  description = "(Optional) A list of security group names to associate with. If you are creating Instances in a VPC, use\nvpc_security_group_ids instead."
  value       = aws_launch_template.aws_launch_template.security_group_names
}
output "throughput" {
  description = "The throughput to provision for a gp3 volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s."
  value       = aws_launch_template.aws_launch_template.throughput
}
output "capacity_reservation_id" {
  description = "The ID of the Capacity Reservation in which to run the instance."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_id
}
output "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_launch_template.aws_launch_template.enable_resource_name_dns_a_record
}
output "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_launch_template.aws_launch_template.on_demand_max_price_percentage_over_lowest_price
}
output "delete_on_termination" {
  description = "Whether the network interface should be destroyed on instance termination. Defaults to false if not set."
  value       = aws_launch_template.aws_launch_template.delete_on_termination
}
output "instance_market_options" {
  description = "(Optional) The market (purchasing) option for the instance. See Market Options"
  value       = aws_launch_template.aws_launch_template.instance_market_options
}
output "max_price" {
  description = "The maximum hourly price you're willing to pay for the Spot Instances."
  value       = aws_launch_template.aws_launch_template.max_price
}
output "ipv4_prefixes" {
  description = "One or more IPv4 prefixes to be assigned to the network interface. Conflicts with ipv4_prefix_count"
  value       = aws_launch_template.aws_launch_template.ipv4_prefixes
}
output "threads_per_core" {
  description = "The number of threads per CPU core. To disable Intel Hyper-Threading Technology for the instance, specify a value of 1.\nOtherwise, specify the default value of 2.Both number of CPU cores and threads per core must be specified. Valid number of CPU cores and threads per core for the instance type can be found in the CPU Options DocumentationCredit SpecificationCredit specification can be applied/modified to the EC2 Instance at any time.The credit_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.threads_per_core
}
output "capacity_reservation_preference" {
  description = "Indicates the instance's Capacity Reservation preferences. Can be open or none. (Default none)."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_preference
}
output "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  value       = aws_launch_template.aws_launch_template.cpu_manufacturers
}
output "iops" {
  description = "The amount of provisioned\nIOPSvolume_type of \"io1/io2\"."
  value       = aws_launch_template.aws_launch_template.iops
}
output "ipv4_prefix_count" {
  description = "The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with ipv4_prefixes"
  value       = aws_launch_template.aws_launch_template.ipv4_prefix_count
}
output "vpc_security_group_ids" {
  description = "(Optional) A list of security group IDs to associate with. Conflicts with network_interfaces.security_groupsBlock devicesAWS's Block Device Mapping docsTo find out more information for an existing AMI to override the configuration, such as device_name, you can use the AWS CLI ec2 describe-images command.Each block_device_mappings supports the following:"
  value       = aws_launch_template.aws_launch_template.vpc_security_group_ids
}
output "block_duration_minutes" {
  description = "The required duration in minutes. This value must be a multiple of 60."
  value       = aws_launch_template.aws_launch_template.block_duration_minutes
}
output "metadata_options" {
  description = "(Optional) Customize the metadata options for the instance. See Metadata Options below for more details."
  value       = aws_launch_template.aws_launch_template.metadata_options
}
output "private_dns_name_options" {
  description = "(Optional) The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  value       = aws_launch_template.aws_launch_template.private_dns_name_options
}
output "virtual_name" {
  description = "The \"ephemeral0\").The ebs block supports the following:"
  value       = aws_launch_template.aws_launch_template.virtual_name
}
output "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  value       = aws_launch_template.aws_launch_template.enclave_options
}
output "name" {
  description = "The name of the instance profile.Instance RequirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  value       = aws_launch_template.aws_launch_template.name
}
output "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_launch_template.aws_launch_template.spot_max_price_percentage_over_lowest_price
}
output "tag_specifications" {
  description = "(Optional) The tags to apply to the resources during launch. See Tag Specifications below for more details."
  value       = aws_launch_template.aws_launch_template.tag_specifications
}
output "description" {
  description = "Description of the network interface."
  value       = aws_launch_template.aws_launch_template.description
}
output "license_configuration_arn" {
  description = "(Required) ARN of the license configuration.Maintenance OptionsThe maintenance_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.license_configuration_arn
}
output "spot_instance_type" {
  description = "The Spot Instance request type. Can be one-time, or persistent."
  value       = aws_launch_template.aws_launch_template.spot_instance_type
}
output "spread_domain" {
  description = "Reserved for future use."
  value       = aws_launch_template.aws_launch_template.spread_domain
}
output "subnet_id" {
  description = "The VPC Subnet ID to associate.PlacementThe Placement Group of the instance.The placement block supports the following:"
  value       = aws_launch_template.aws_launch_template.subnet_id
}
output "update_default_version" {
  description = "(Optional) Whether to update Default Version each update. Conflicts with default_version."
  value       = aws_launch_template.aws_launch_template.update_default_version
}
output "host_id" {
  description = "The ID of the Dedicated Host for the instance."
  value       = aws_launch_template.aws_launch_template.host_id
}
output "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Can be stop or terminatestop)."
  value       = aws_launch_template.aws_launch_template.instance_initiated_shutdown_behavior
}
output "ram_disk_id" {
  description = "(Optional) The ID of the RAM disk."
  value       = aws_launch_template.aws_launch_template.ram_disk_id
}
output "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Can be \"optional\" or \"required\". (Default: \"optional\")."
  value       = aws_launch_template.aws_launch_template.http_tokens
}
output "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  value       = aws_launch_template.aws_launch_template.memory_mib
}
output "type" {
  description = "(Required) Accelerator type.Enclave OptionsThe enclave_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.type
}
output "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  value       = aws_launch_template.aws_launch_template.vcpu_count
}
output "associate_carrier_ip_address" {
  description = "Associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value."
  value       = aws_launch_template.aws_launch_template.associate_carrier_ip_address
}
output "availability_zone" {
  description = "The Availability Zone for the instance."
  value       = aws_launch_template.aws_launch_template.availability_zone
}
output "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  value       = aws_launch_template.aws_launch_template.require_hibernate_support
}
output "associate_public_ip_address" {
  description = "Associate a public ip address with the network interface.  Boolean value."
  value       = aws_launch_template.aws_launch_template.associate_public_ip_address
}
output "kms_key_id" {
  description = "The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume.\nencrypted must be set to true when this is set."
  value       = aws_launch_template.aws_launch_template.kms_key_id
}
output "kernel_id" {
  description = "(Optional) The kernel ID."
  value       = aws_launch_template.aws_launch_template.kernel_id
}
output "license_specification" {
  description = "(Optional) A list of license specifications to associate with. See License Specification below for more details."
  value       = aws_launch_template.aws_launch_template.license_specification
}
output "capacity_reservation_specification" {
  description = "(Optional) Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_specification
}
output "cpu_options" {
  description = "(Optional) The CPU options for the instance. See CPU Options below for more details."
  value       = aws_launch_template.aws_launch_template.cpu_options
}
output "ipv6_addresses" {
  description = "One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with ipv6_address_count"
  value       = aws_launch_template.aws_launch_template.ipv6_addresses
}
output "market_type" {
  description = "The market type. Can be spot."
  value       = aws_launch_template.aws_launch_template.market_type
}
output "placement" {
  description = "(Optional) The placement of the instance. See Placement below for more details."
  value       = aws_launch_template.aws_launch_template.placement
}
output "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  value       = aws_launch_template.aws_launch_template.bare_metal
}
output "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.baseline_ebs_bandwidth_mbps
}
output "iam_instance_profile" {
  description = "(Optional) The IAM Instance Profile to launch the instance with. See Instance Profile"
  value       = aws_launch_template.aws_launch_template.iam_instance_profile
}
output "group_name" {
  description = "The name of the placement group for the instance."
  value       = aws_launch_template.aws_launch_template.group_name
}
output "min" {
  description = "(Required) Minimum."
  value       = aws_launch_template.aws_launch_template.min
}
output "volume_type" {
  description = "The volume type. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2).Capacity Reservation SpecificationThe capacity_reservation_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.volume_type
}
output "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.total_local_storage_gb
}
output "volume_size" {
  description = "The size of the volume in gigabytes."
  value       = aws_launch_template.aws_launch_template.volume_size
}
output "spot_options" {
  description = "The options for Spot InstanceThe spot_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.spot_options
}
output "elastic_inference_accelerator" {
  description = "(Optional) Configuration block containing an Elastic Inference Accelerator to attach to the instance. See Elastic Inference Accelerator below for more details."
  value       = aws_launch_template.aws_launch_template.elastic_inference_accelerator
}
output "ipv6_address_count" {
  description = "The number of IPv6 addresses to assign to a network interface. Conflicts with ipv6_addresses"
  value       = aws_launch_template.aws_launch_template.ipv6_address_count
}
output "security_groups" {
  description = "A list of security group IDs to associate."
  value       = aws_launch_template.aws_launch_template.security_groups
}
output "device_index" {
  description = "The integer index of the network interface attachment."
  value       = aws_launch_template.aws_launch_template.device_index
}
output "ebs" {
  description = "Configure EBS volume properties."
  value       = aws_launch_template.aws_launch_template.ebs
}
output "block_device_mappings" {
  description = "(Optional) Specify volumes to attach to the instance besides the volumes specified by the AMI.\nSee Block Devices below for details."
  value       = aws_launch_template.aws_launch_template.block_device_mappings
}
output "ipv4_addresses" {
  description = "One or more private IPv4 addresses to associate. Conflicts with ipv4_address_count"
  value       = aws_launch_template.aws_launch_template.ipv4_addresses
}
output "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  value       = aws_launch_template.aws_launch_template.burstable_performance
}
output "encrypted" {
  description = "Enables EBS encryptionfalse). Cannot be used with snapshot_id."
  value       = aws_launch_template.aws_launch_template.encrypted
}
output "device_name" {
  description = "The name of the device to mount."
  value       = aws_launch_template.aws_launch_template.device_name
}
output "instance_requirements" {
  description = "(Optional) The attribute requirements for the type of instance. If present then instance_type cannot be present."
  value       = aws_launch_template.aws_launch_template.instance_requirements
}
output "ipv4_address_count" {
  description = "The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with ipv4_addresses"
  value       = aws_launch_template.aws_launch_template.ipv4_address_count
}
output "capacity_reservation_target" {
  description = "Used to target a specific Capacity Reservation:The capacity_reservation_target block supports the following:"
  value       = aws_launch_template.aws_launch_template.capacity_reservation_target
}
output "credit_specification" {
  description = "(Optional) Customize the credit specification of the instance. See  below for more details."
  value       = aws_launch_template.aws_launch_template.credit_specification
}
output "instance_type" {
  description = "(Optional) The type of the instance. If present then instance_requirements cannot be present."
  value       = aws_launch_template.aws_launch_template.instance_type
}
output "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  value       = aws_launch_template.aws_launch_template.local_storage_types
}
output "network_interfaces" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See  below for more details."
  value       = aws_launch_template.aws_launch_template.network_interfaces
}
output "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  value       = aws_launch_template.aws_launch_template.accelerator_names
}
output "auto_recovery" {
  description = "(Optional) Disables the automatic recovery behavior of your instance or sets it to default. Can be \"default\" or \"disabled\". See Recover your instance for more details.Market OptionsThe market (purchasing) option for the instances.The instance_market_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.auto_recovery
}
output "capacity_reservation_resource_group_arn" {
  description = "The ARN of the Capacity Reservation resource group in which to run the instance.CPU OptionsThe cpu_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.capacity_reservation_resource_group_arn
}
output "http_put_response_hop_limit" {
  description = "(Optional) The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from 1 to 64. (Default: 1)."
  value       = aws_launch_template.aws_launch_template.http_put_response_hop_limit
}
output "monitoring" {
  description = "(Optional) The monitoring option for the instance. See Monitoring below for more details."
  value       = aws_launch_template.aws_launch_template.monitoring
}
output "key_name" {
  description = "(Optional) The key name to use for the instance."
  value       = aws_launch_template.aws_launch_template.key_name
}
output "affinity" {
  description = "The affinity setting for an instance on a Dedicated Host."
  value       = aws_launch_template.aws_launch_template.affinity
}
output "enabled" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled.Network InterfacesAttaches one or more Network Interfaces to the instance.Check limitations for autoscaling group in Creating an Auto Scaling Group Using a Launch Template GuideEach network_interfaces block supports the following:"
  value       = aws_launch_template.aws_launch_template.enabled
}
output "interface_type" {
  description = "The type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa."
  value       = aws_launch_template.aws_launch_template.interface_type
}
output "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.accelerator_count
}
output "network_interface_id" {
  description = "The ID of the network interface to attach."
  value       = aws_launch_template.aws_launch_template.network_interface_id
}
output "resource_type" {
  description = "The type of resource to tag."
  value       = aws_launch_template.aws_launch_template.resource_type
}
output "latest_version" {
  description = "The latest version of the launch template."
  value       = aws_launch_template.aws_launch_template.latest_version
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_launch_template.aws_launch_template.name_prefix
}
output "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  value       = aws_launch_template.aws_launch_template.accelerator_manufacturers
}
output "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_launch_template.aws_launch_template.enable_resource_name_dns_aaaa_record
}
output "hostname_type" {
  description = "The type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Tag SpecificationsThe tags to apply to the resources during launch. You can tag instances, volumes, elastic GPUs and spot instance requests. More information can be found in the EC2 API documentation.Each tag_specifications block supports the following:"
  value       = aws_launch_template.aws_launch_template.hostname_type
}
output "private_ip_address" {
  description = "The primary private IPv4 address."
  value       = aws_launch_template.aws_launch_template.private_ip_address
}
output "user_data" {
  description = "(Optional) The base64-encoded user data to provide when launching the instance."
  value       = aws_launch_template.aws_launch_template.user_data
}
output "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
  value       = aws_launch_template.aws_launch_template.disable_api_stop
}
output "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_template.aws_launch_template.ebs_optimized
}
output "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. (Default: disabled).For more information, see the documentation on the Instance Metadata Service.MonitoringThe monitoring block supports the following:"
  value       = aws_launch_template.aws_launch_template.instance_metadata_tags
}
output "cpu_credits" {
  description = "The credit option for CPU usage. Can be \"standard\" or \"unlimited\". T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.Elastic GPUAttach an elastic GPU the instance.The elastic_gpu_specifications block supports the following:"
  value       = aws_launch_template.aws_launch_template.cpu_credits
}
output "default_version" {
  description = "(Optional) Default Version of the launch template."
  value       = aws_launch_template.aws_launch_template.default_version
}
output "elastic_gpu_specifications" {
  description = "(Optional) The elastic GPU to attach to the instance. See Elastic GPU"
  value       = aws_launch_template.aws_launch_template.elastic_gpu_specifications
}
output "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.accelerator_total_memory_mib
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  value       = aws_launch_template.aws_launch_template.arn
}
output "core_count" {
  description = "The number of CPU cores for the instance."
  value       = aws_launch_template.aws_launch_template.core_count
}
output "partition_number" {
  description = "The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.partition_number
}
output "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  value       = aws_launch_template.aws_launch_template.instance_generations
}
output "max" {
  description = "(Optional) Maximum.License SpecificationAssociate one of more license configurations.The license_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.max
}
output "network_card_index" {
  description = "The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0."
  value       = aws_launch_template.aws_launch_template.network_card_index
}
output "id" {
  description = "The ID of the launch template."
  value       = aws_launch_template.aws_launch_template.id
}
output "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  value       = aws_launch_template.aws_launch_template.local_storage
}
output "valid_until" {
  description = "The end date of the request.Metadata OptionsThe metadata options for the instances.The metadata_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.valid_until
}
output "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  value       = aws_launch_template.aws_launch_template.excluded_instance_types
}
output "host_resource_group_arn" {
  description = "The ARN of the Host Resource Group in which to launch instances."
  value       = aws_launch_template.aws_launch_template.host_resource_group_arn
}
output "http_protocol_ipv6" {
  description = "(Optional) Enables or disables the IPv6 endpoint for the instance metadata service. (Default: disabled)."
  value       = aws_launch_template.aws_launch_template.http_protocol_ipv6
}
output "no_device" {
  description = "Suppresses the specified device included in the AMI's block device mapping."
  value       = aws_launch_template.aws_launch_template.no_device
}
output "disable_api_termination" {
  description = "(Optional) If true, enables "
  value       = aws_launch_template.aws_launch_template.disable_api_termination
}
output "ipv6_prefixes" {
  description = "One or more IPv6 prefixes to be assigned to the network interface. Conflicts with ipv6_prefix_count"
  value       = aws_launch_template.aws_launch_template.ipv6_prefixes
}
output "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.network_interface_count
}
output "maintenance_options" {
  description = "(Optional) The maintenance options for the instance. See Maintenance Options below for more details."
  value       = aws_launch_template.aws_launch_template.maintenance_options
}
output "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.memory_gib_per_vcpu
}
output "snapshot_id" {
  description = "The Snapshot ID to mount."
  value       = aws_launch_template.aws_launch_template.snapshot_id
}
output "tags" {
  description = "A map of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_launch_template.aws_launch_template.tags
}
output "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Can be default, dedicated, or host."
  value       = aws_launch_template.aws_launch_template.tenancy
}
output "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  value       = aws_launch_template.aws_launch_template.accelerator_types
}
output "configured" {
  description = "If set to true, the launched EC2 instance will hibernation enabled.Instance ProfileThe IAM Instance ProfileThe iam_instance_profile block supports the following:"
  value       = aws_launch_template.aws_launch_template.configured
}
output "image_id" {
  description = "(Optional) The AMI from which to launch the instance."
  value       = aws_launch_template.aws_launch_template.image_id
}
output "ipv6_prefix_count" {
  description = "The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with ipv6_prefixes"
  value       = aws_launch_template.aws_launch_template.ipv6_prefix_count
}
output "hibernation_options" {
  description = "(Optional) The hibernation options for the instance. See Hibernation Options below for more details."
  value       = aws_launch_template.aws_launch_template.hibernation_options
}
output "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Can be \"enabled\" or \"disabled\". (Default: \"enabled\")."
  value       = aws_launch_template.aws_launch_template.http_endpoint
}
output "instance_interruption_behavior" {
  description = "The behavior when a Spot Instance is interrupted. Can be hibernatestop, or terminate. (Default: terminate)."
  value       = aws_launch_template.aws_launch_template.instance_interruption_behavior
}
output "id" {
  description = "The ID of the launch template."
  value       = aws_launch_template.aws_launch_template.id
}
output "latest_version" {
  description = "The latest version of the launch template."
  value       = aws_launch_template.aws_launch_template.latest_version
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_launch_template.aws_launch_template.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  value       = aws_launch_template.aws_launch_template.arn
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
      "kind/name"                   = "aws_launch_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
