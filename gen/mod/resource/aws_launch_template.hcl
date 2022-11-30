resource "aws_launch_template" "aws_launch_template" {
  availability_zone                                = var.availability_zone
  block_device_mappings                            = var.block_device_mappings
  device_index                                     = var.device_index
  name_prefix                                      = var.name_prefix
  on_demand_max_price_percentage_over_lowest_price = var.on_demand_max_price_percentage_over_lowest_price
  arn                                              = var.arn
  capacity_reservation_preference                  = var.capacity_reservation_preference
  iam_instance_profile                             = var.iam_instance_profile
  latest_version                                   = var.latest_version
  network_card_index                               = var.network_card_index
  tags                                             = var.tags
  enable_resource_name_dns_a_record                = var.enable_resource_name_dns_a_record
  ipv4_prefix_count                                = var.ipv4_prefix_count
  elastic_inference_accelerator                    = var.elastic_inference_accelerator
  placement                                        = var.placement
  security_groups                                  = var.security_groups
  subnet_id                                        = var.subnet_id
  accelerator_count                                = var.accelerator_count
  associate_public_ip_address                      = var.associate_public_ip_address
  baseline_ebs_bandwidth_mbps                      = var.baseline_ebs_bandwidth_mbps
  capacity_reservation_id                          = var.capacity_reservation_id
  name                                             = var.name
  default_version                                  = var.default_version
  excluded_instance_types                          = var.excluded_instance_types
  monitoring                                       = var.monitoring
  throughput                                       = var.throughput
  user_data                                        = var.user_data
  volume_size                                      = var.volume_size
  block_duration_minutes                           = var.block_duration_minutes
  device_name                                      = var.device_name
  enclave_options                                  = var.enclave_options
  ipv6_address_count                               = var.ipv6_address_count
  threads_per_core                                 = var.threads_per_core
  ebs_optimized                                    = var.ebs_optimized
  instance_generations                             = var.instance_generations
  network_interface_count                          = var.network_interface_count
  tag_specifications                               = var.tag_specifications
  vpc_security_group_ids                           = var.vpc_security_group_ids
  ipv4_addresses                                   = var.ipv4_addresses
  no_device                                        = var.no_device
  spot_instance_type                               = var.spot_instance_type
  auto_recovery                                    = var.auto_recovery
  enabled                                          = var.enabled
  interface_type                                   = var.interface_type
  ipv4_prefixes                                    = var.ipv4_prefixes
  ipv6_prefixes                                    = var.ipv6_prefixes
  license_specification                            = var.license_specification
  memory_gib_per_vcpu                              = var.memory_gib_per_vcpu
  instance_type                                    = var.instance_type
  capacity_reservation_resource_group_arn          = var.capacity_reservation_resource_group_arn
  cpu_manufacturers                                = var.cpu_manufacturers
  instance_metadata_tags                           = var.instance_metadata_tags
  metadata_options                                 = var.metadata_options
  network_interface_id                             = var.network_interface_id
  snapshot_id                                      = var.snapshot_id
  credit_specification                             = var.credit_specification
  disable_api_termination                          = var.disable_api_termination
  max_price                                        = var.max_price
  partition_number                                 = var.partition_number
  accelerator_types                                = var.accelerator_types
  private_dns_name_options                         = var.private_dns_name_options
  require_hibernate_support                        = var.require_hibernate_support
  key_name                                         = var.key_name
  market_type                                      = var.market_type
  private_ip_address                               = var.private_ip_address
  capacity_reservation_specification               = var.capacity_reservation_specification
  max                                              = var.max
  ram_disk_id                                      = var.ram_disk_id
  affinity                                         = var.affinity
  http_endpoint                                    = var.http_endpoint
  http_protocol_ipv6                               = var.http_protocol_ipv6
  min                                              = var.min
  type                                             = var.type
  accelerator_total_memory_mib                     = var.accelerator_total_memory_mib
  ebs                                              = var.ebs
  http_tokens                                      = var.http_tokens
  instance_requirements                            = var.instance_requirements
  spread_domain                                    = var.spread_domain
  accelerator_names                                = var.accelerator_names
  description                                      = var.description
  group_name                                       = var.group_name
  host_id                                          = var.host_id
  ipv4_address_count                               = var.ipv4_address_count
  maintenance_options                              = var.maintenance_options
  accelerator_manufacturers                        = var.accelerator_manufacturers
  encrypted                                        = var.encrypted
  spot_max_price_percentage_over_lowest_price      = var.spot_max_price_percentage_over_lowest_price
  bare_metal                                       = var.bare_metal
  instance_market_options                          = var.instance_market_options
  iops                                             = var.iops
  vcpu_count                                       = var.vcpu_count
  cpu_credits                                      = var.cpu_credits
  elastic_gpu_specifications                       = var.elastic_gpu_specifications
  ipv6_prefix_count                                = var.ipv6_prefix_count
  valid_until                                      = var.valid_until
  burstable_performance                            = var.burstable_performance
  http_put_response_hop_limit                      = var.http_put_response_hop_limit
  id                                               = var.id
  cpu_options                                      = var.cpu_options
  security_group_names                             = var.security_group_names
  tenancy                                          = var.tenancy
  virtual_name                                     = var.virtual_name
  core_count                                       = var.core_count
  hibernation_options                              = var.hibernation_options
  delete_on_termination                            = var.delete_on_termination
  hostname_type                                    = var.hostname_type
  image_id                                         = var.image_id
  network_interfaces                               = var.network_interfaces
  configured                                       = var.configured
  instance_initiated_shutdown_behavior             = var.instance_initiated_shutdown_behavior
  kernel_id                                        = var.kernel_id
  kms_key_id                                       = var.kms_key_id
  resource_type                                    = var.resource_type
  total_local_storage_gb                           = var.total_local_storage_gb
  update_default_version                           = var.update_default_version
  associate_carrier_ip_address                     = var.associate_carrier_ip_address
  disable_api_stop                                 = var.disable_api_stop
  local_storage_types                              = var.local_storage_types
  memory_mib                                       = var.memory_mib
  capacity_reservation_target                      = var.capacity_reservation_target
  instance_interruption_behavior                   = var.instance_interruption_behavior
  local_storage                                    = var.local_storage
  enable_resource_name_dns_aaaa_record             = var.enable_resource_name_dns_aaaa_record
  host_resource_group_arn                          = var.host_resource_group_arn
  ipv6_addresses                                   = var.ipv6_addresses
  license_configuration_arn                        = var.license_configuration_arn
  spot_options                                     = var.spot_options
  volume_type                                      = var.volume_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "associate_carrier_ip_address" {
  description = "Associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value."
  type        = string
}
variable "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
  type        = string
}
variable "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  type        = string
}
variable "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  type        = string
}
variable "capacity_reservation_target" {
  description = "Used to target a specific Capacity Reservation:The capacity_reservation_target block supports the following:"
  type        = string
}
variable "instance_interruption_behavior" {
  description = "The behavior when a Spot Instance is interrupted. Can be hibernatestop, or terminate. (Default: terminate)."
  type        = string
}
variable "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  type        = string
}
variable "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = string
}
variable "host_resource_group_arn" {
  description = "The ARN of the Host Resource Group in which to launch instances."
  type        = string
}
variable "ipv6_addresses" {
  description = "One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with ipv6_address_count"
  type        = string
}
variable "license_configuration_arn" {
  description = "(Required) ARN of the license configuration.Maintenance OptionsThe maintenance_options block supports the following:"
  type        = string
}
variable "spot_options" {
  description = "The options for Spot InstanceThe spot_options block supports the following:"
  type        = string
}
variable "volume_type" {
  description = "The volume type. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2).Capacity Reservation SpecificationThe capacity_reservation_specification block supports the following:"
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone for the instance."
  type        = string
}
variable "block_device_mappings" {
  description = "(Optional) Specify volumes to attach to the instance besides the volumes specified by the AMI.\nSee Block Devices below for details."
  type        = string
}
variable "device_index" {
  description = "The integer index of the network interface attachment."
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  type        = string
}
variable "capacity_reservation_preference" {
  description = "Indicates the instance's Capacity Reservation preferences. Can be open or none. (Default none)."
  type        = string
}
variable "iam_instance_profile" {
  description = "(Optional) The IAM Instance Profile to launch the instance with. See Instance Profile"
  type        = string
}
variable "latest_version" {
  description = "The latest version of the launch template."
  type        = string
}
variable "network_card_index" {
  description = "The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0."
  type        = string
}
variable "tags" {
  description = "A map of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = string
}
variable "ipv4_prefix_count" {
  description = "The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with ipv4_prefixes"
  type        = string
}
variable "elastic_inference_accelerator" {
  description = "(Optional) Configuration block containing an Elastic Inference Accelerator to attach to the instance. See Elastic Inference Accelerator below for more details."
  type        = string
}
variable "placement" {
  description = "(Optional) The placement of the instance. See Placement below for more details."
  type        = string
}
variable "security_groups" {
  description = "A list of security group IDs to associate."
  type        = string
}
variable "subnet_id" {
  description = "The VPC Subnet ID to associate.PlacementThe Placement Group of the instance.The placement block supports the following:"
  type        = string
}
variable "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  type        = string
}
variable "associate_public_ip_address" {
  description = "Associate a public ip address with the network interface.  Boolean value."
  type        = string
}
variable "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  type        = string
}
variable "capacity_reservation_id" {
  description = "The ID of the Capacity Reservation in which to run the instance."
  type        = string
}
variable "name" {
  description = "The name of the instance profile.Instance RequirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  type        = string
}
variable "default_version" {
  description = "(Optional) Default Version of the launch template."
  type        = string
}
variable "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  type        = string
}
variable "monitoring" {
  description = "(Optional) The monitoring option for the instance. See Monitoring below for more details."
  type        = string
}
variable "throughput" {
  description = "The throughput to provision for a gp3 volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s."
  type        = string
}
variable "user_data" {
  description = "(Optional) The base64-encoded user data to provide when launching the instance."
  type        = string
}
variable "volume_size" {
  description = "The size of the volume in gigabytes."
  type        = string
}
variable "block_duration_minutes" {
  description = "The required duration in minutes. This value must be a multiple of 60."
  type        = string
}
variable "device_name" {
  description = "The name of the device to mount."
  type        = string
}
variable "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  type        = string
}
variable "ipv6_address_count" {
  description = "The number of IPv6 addresses to assign to a network interface. Conflicts with ipv6_addresses"
  type        = string
}
variable "threads_per_core" {
  description = "The number of threads per CPU core. To disable Intel Hyper-Threading Technology for the instance, specify a value of 1.\nOtherwise, specify the default value of 2.Both number of CPU cores and threads per core must be specified. Valid number of CPU cores and threads per core for the instance type can be found in the CPU Options DocumentationCredit SpecificationCredit specification can be applied/modified to the EC2 Instance at any time.The credit_specification block supports the following:"
  type        = string
}
variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  type        = string
}
variable "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  type        = string
}
variable "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  type        = string
}
variable "tag_specifications" {
  description = "(Optional) The tags to apply to the resources during launch. See Tag Specifications below for more details."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) A list of security group IDs to associate with. Conflicts with network_interfaces.security_groupsBlock devicesAWS's Block Device Mapping docsTo find out more information for an existing AMI to override the configuration, such as device_name, you can use the AWS CLI ec2 describe-images command.Each block_device_mappings supports the following:"
  type        = string
}
variable "ipv4_addresses" {
  description = "One or more private IPv4 addresses to associate. Conflicts with ipv4_address_count"
  type        = string
}
variable "no_device" {
  description = "Suppresses the specified device included in the AMI's block device mapping."
  type        = string
}
variable "spot_instance_type" {
  description = "The Spot Instance request type. Can be one-time, or persistent."
  type        = string
}
variable "auto_recovery" {
  description = "(Optional) Disables the automatic recovery behavior of your instance or sets it to default. Can be \"default\" or \"disabled\". See Recover your instance for more details.Market OptionsThe market (purchasing) option for the instances.The instance_market_options block supports the following:"
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
variable "ipv4_prefixes" {
  description = "One or more IPv4 prefixes to be assigned to the network interface. Conflicts with ipv4_prefix_count"
  type        = string
}
variable "ipv6_prefixes" {
  description = "One or more IPv6 prefixes to be assigned to the network interface. Conflicts with ipv6_prefix_count"
  type        = string
}
variable "license_specification" {
  description = "(Optional) A list of license specifications to associate with. See License Specification below for more details."
  type        = string
}
variable "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  type        = string
}
variable "instance_type" {
  description = "(Optional) The type of the instance. If present then instance_requirements cannot be present."
  type        = string
}
variable "capacity_reservation_resource_group_arn" {
  description = "The ARN of the Capacity Reservation resource group in which to run the instance.CPU OptionsThe cpu_options block supports the following:"
  type        = string
}
variable "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  type        = string
}
variable "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. (Default: disabled).For more information, see the documentation on the Instance Metadata Service.MonitoringThe monitoring block supports the following:"
  type        = string
}
variable "metadata_options" {
  description = "(Optional) Customize the metadata options for the instance. See Metadata Options below for more details."
  type        = string
}
variable "network_interface_id" {
  description = "The ID of the network interface to attach."
  type        = string
}
variable "snapshot_id" {
  description = "The Snapshot ID to mount."
  type        = string
}
variable "credit_specification" {
  description = "(Optional) Customize the credit specification of the instance. See  below for more details."
  type        = string
}
variable "disable_api_termination" {
  description = "(Optional) If true, enables "
  type        = string
}
variable "max_price" {
  description = "The maximum hourly price you're willing to pay for the Spot Instances."
  type        = string
}
variable "partition_number" {
  description = "The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  type        = string
}
variable "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  type        = string
}
variable "private_dns_name_options" {
  description = "(Optional) The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  type        = string
}
variable "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  type        = string
}
variable "key_name" {
  description = "(Optional) The key name to use for the instance."
  type        = string
}
variable "market_type" {
  description = "The market type. Can be spot."
  type        = string
}
variable "private_ip_address" {
  description = "The primary private IPv4 address."
  type        = string
}
variable "capacity_reservation_specification" {
  description = "(Optional) Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details."
  type        = string
}
variable "max" {
  description = "(Optional) Maximum.License SpecificationAssociate one of more license configurations.The license_specification block supports the following:"
  type        = string
}
variable "ram_disk_id" {
  description = "(Optional) The ID of the RAM disk."
  type        = string
}
variable "affinity" {
  description = "The affinity setting for an instance on a Dedicated Host."
  type        = string
}
variable "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Can be \"enabled\" or \"disabled\". (Default: \"enabled\")."
  type        = string
}
variable "http_protocol_ipv6" {
  description = "(Optional) Enables or disables the IPv6 endpoint for the instance metadata service. (Default: disabled)."
  type        = string
}
variable "min" {
  description = "(Required) Minimum."
  type        = string
}
variable "type" {
  description = "(Required) Accelerator type.Enclave OptionsThe enclave_options block supports the following:"
  type        = string
}
variable "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  type        = string
}
variable "ebs" {
  description = "Configure EBS volume properties."
  type        = string
}
variable "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Can be \"optional\" or \"required\". (Default: \"optional\")."
  type        = string
}
variable "instance_requirements" {
  description = "(Optional) The attribute requirements for the type of instance. If present then instance_type cannot be present."
  type        = string
}
variable "spread_domain" {
  description = "Reserved for future use."
  type        = string
}
variable "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  type        = string
}
variable "description" {
  description = "Description of the network interface."
  type        = string
}
variable "group_name" {
  description = "The name of the placement group for the instance."
  type        = string
}
variable "host_id" {
  description = "The ID of the Dedicated Host for the instance."
  type        = string
}
variable "ipv4_address_count" {
  description = "The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with ipv4_addresses"
  type        = string
}
variable "maintenance_options" {
  description = "(Optional) The maintenance options for the instance. See Maintenance Options below for more details."
  type        = string
}
variable "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  type        = string
}
variable "encrypted" {
  description = "Enables EBS encryptionfalse). Cannot be used with snapshot_id."
  type        = string
}
variable "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  type        = string
}
variable "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  type        = string
}
variable "instance_market_options" {
  description = "(Optional) The market (purchasing) option for the instance. See Market Options"
  type        = string
}
variable "iops" {
  description = "The amount of provisioned\nIOPSvolume_type of \"io1/io2\"."
  type        = string
}
variable "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  type        = string
}
variable "cpu_credits" {
  description = "The credit option for CPU usage. Can be \"standard\" or \"unlimited\". T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.Elastic GPUAttach an elastic GPU the instance.The elastic_gpu_specifications block supports the following:"
  type        = string
}
variable "elastic_gpu_specifications" {
  description = "(Optional) The elastic GPU to attach to the instance. See Elastic GPU"
  type        = string
}
variable "ipv6_prefix_count" {
  description = "The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with ipv6_prefixes"
  type        = string
}
variable "valid_until" {
  description = "The end date of the request.Metadata OptionsThe metadata options for the instances.The metadata_options block supports the following:"
  type        = string
}
variable "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "(Optional) The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from 1 to 64. (Default: 1)."
  type        = string
}
variable "id" {
  description = "The ID of the launch template."
  type        = string
}
variable "cpu_options" {
  description = "(Optional) The CPU options for the instance. See CPU Options below for more details."
  type        = string
}
variable "security_group_names" {
  description = "(Optional) A list of security group names to associate with. If you are creating Instances in a VPC, use\nvpc_security_group_ids instead."
  type        = string
}
variable "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Can be default, dedicated, or host."
  type        = string
}
variable "virtual_name" {
  description = "The \"ephemeral0\").The ebs block supports the following:"
  type        = string
}
variable "core_count" {
  description = "The number of CPU cores for the instance."
  type        = string
}
variable "hibernation_options" {
  description = "(Optional) The hibernation options for the instance. See Hibernation Options below for more details."
  type        = string
}
variable "delete_on_termination" {
  description = "Whether the network interface should be destroyed on instance termination. Defaults to false if not set."
  type        = string
}
variable "hostname_type" {
  description = "The type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Tag SpecificationsThe tags to apply to the resources during launch. You can tag instances, volumes, elastic GPUs and spot instance requests. More information can be found in the EC2 API documentation.Each tag_specifications block supports the following:"
  type        = string
}
variable "image_id" {
  description = "(Optional) The AMI from which to launch the instance."
  type        = string
}
variable "network_interfaces" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See  below for more details."
  type        = string
}
variable "configured" {
  description = "If set to true, the launched EC2 instance will hibernation enabled.Instance ProfileThe IAM Instance ProfileThe iam_instance_profile block supports the following:"
  type        = string
}
variable "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Can be stop or terminatestop)."
  type        = string
}
variable "kernel_id" {
  description = "(Optional) The kernel ID."
  type        = string
}
variable "kms_key_id" {
  description = "The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume.\nencrypted must be set to true when this is set."
  type        = string
}
variable "resource_type" {
  description = "The type of resource to tag."
  type        = string
}
variable "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  type        = string
}
variable "update_default_version" {
  description = "(Optional) Whether to update Default Version each update. Conflicts with default_version."
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
output "ipv4_addresses" {
  description = "One or more private IPv4 addresses to associate. Conflicts with ipv4_address_count"
  value       = aws_launch_template.aws_launch_template.ipv4_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "Suppresses the specified device included in the AMI's block device mapping."
  value       = aws_launch_template.aws_launch_template.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_instance_type" {
  description = "The Spot Instance request type. Can be one-time, or persistent."
  value       = aws_launch_template.aws_launch_template.spot_instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_recovery" {
  description = "(Optional) Disables the automatic recovery behavior of your instance or sets it to default. Can be \"default\" or \"disabled\". See Recover your instance for more details.Market OptionsThe market (purchasing) option for the instances.The instance_market_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.auto_recovery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled.Network InterfacesAttaches one or more Network Interfaces to the instance.Check limitations for autoscaling group in Creating an Auto Scaling Group Using a Launch Template GuideEach network_interfaces block supports the following:"
  value       = aws_launch_template.aws_launch_template.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interface_type" {
  description = "The type of network interface. To create an Elastic Fabric Adapter (EFA), specify efa."
  value       = aws_launch_template.aws_launch_template.interface_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv4_prefixes" {
  description = "One or more IPv4 prefixes to be assigned to the network interface. Conflicts with ipv4_prefix_count"
  value       = aws_launch_template.aws_launch_template.ipv4_prefixes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_prefixes" {
  description = "One or more IPv6 prefixes to be assigned to the network interface. Conflicts with ipv6_prefix_count"
  value       = aws_launch_template.aws_launch_template.ipv6_prefixes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "license_specification" {
  description = "(Optional) A list of license specifications to associate with. See License Specification below for more details."
  value       = aws_launch_template.aws_launch_template.license_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_gib_per_vcpu" {
  description = "(Optional) Block describing the minimum and maximum amount of memory (GiB) per vCPU. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.memory_gib_per_vcpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) The type of the instance. If present then instance_requirements cannot be present."
  value       = aws_launch_template.aws_launch_template.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_resource_group_arn" {
  description = "The ARN of the Capacity Reservation resource group in which to run the instance.CPU OptionsThe cpu_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.capacity_reservation_resource_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_manufacturers" {
  description = " (Optional) List of CPU manufacturer names. Default is any manufacturer.~> strongNOTE: Don't confuse the CPU hardware manufacturer with the CPU hardware architecture. Instances will be launched with a compatible CPU architecture based on the Amazon Machine Image (AMI) that you specify in your launch template."
  value       = aws_launch_template.aws_launch_template.cpu_manufacturers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. (Default: disabled).For more information, see the documentation on the Instance Metadata Service.MonitoringThe monitoring block supports the following:"
  value       = aws_launch_template.aws_launch_template.instance_metadata_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metadata_options" {
  description = "(Optional) Customize the metadata options for the instance. See Metadata Options below for more details."
  value       = aws_launch_template.aws_launch_template.metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "The ID of the network interface to attach."
  value       = aws_launch_template.aws_launch_template.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "The Snapshot ID to mount."
  value       = aws_launch_template.aws_launch_template.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "credit_specification" {
  description = "(Optional) Customize the credit specification of the instance. See  below for more details."
  value       = aws_launch_template.aws_launch_template.credit_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_api_termination" {
  description = "(Optional) If true, enables "
  value       = aws_launch_template.aws_launch_template.disable_api_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_price" {
  description = "The maximum hourly price you're willing to pay for the Spot Instances."
  value       = aws_launch_template.aws_launch_template.max_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "partition_number" {
  description = "The number of the partition the instance should launch in. Valid only if the placement group strategy is set to partition.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.partition_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_types" {
  description = "(Optional) List of accelerator types. Default is any accelerator type."
  value       = aws_launch_template.aws_launch_template.accelerator_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_name_options" {
  description = "(Optional) The options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  value       = aws_launch_template.aws_launch_template.private_dns_name_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "require_hibernate_support" {
  description = "(Optional) Indicate whether instance types must support On-Demand Instance Hibernation, either true or false. Default is false."
  value       = aws_launch_template.aws_launch_template.require_hibernate_support
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_name" {
  description = "(Optional) The key name to use for the instance."
  value       = aws_launch_template.aws_launch_template.key_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "market_type" {
  description = "The market type. Can be spot."
  value       = aws_launch_template.aws_launch_template.market_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip_address" {
  description = "The primary private IPv4 address."
  value       = aws_launch_template.aws_launch_template.private_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_specification" {
  description = "(Optional) Targeting for EC2 capacity reservations. See Capacity Reservation Specification below for more details."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max" {
  description = "(Optional) Maximum.License SpecificationAssociate one of more license configurations.The license_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.max
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ram_disk_id" {
  description = "(Optional) The ID of the RAM disk."
  value       = aws_launch_template.aws_launch_template.ram_disk_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "affinity" {
  description = "The affinity setting for an instance on a Dedicated Host."
  value       = aws_launch_template.aws_launch_template.affinity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Can be \"enabled\" or \"disabled\". (Default: \"enabled\")."
  value       = aws_launch_template.aws_launch_template.http_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_protocol_ipv6" {
  description = "(Optional) Enables or disables the IPv6 endpoint for the instance metadata service. (Default: disabled)."
  value       = aws_launch_template.aws_launch_template.http_protocol_ipv6
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "min" {
  description = "(Required) Minimum."
  value       = aws_launch_template.aws_launch_template.min
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Accelerator type.Enclave OptionsThe enclave_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_total_memory_mib" {
  description = "(Optional) Block describing the minimum and maximum total memory of the accelerators. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.accelerator_total_memory_mib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs" {
  description = "Configure EBS volume properties."
  value       = aws_launch_template.aws_launch_template.ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Can be \"optional\" or \"required\". (Default: \"optional\")."
  value       = aws_launch_template.aws_launch_template.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_requirements" {
  description = "(Optional) The attribute requirements for the type of instance. If present then instance_type cannot be present."
  value       = aws_launch_template.aws_launch_template.instance_requirements
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spread_domain" {
  description = "Reserved for future use."
  value       = aws_launch_template.aws_launch_template.spread_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_names" {
  description = "(Optional) List of accelerator names. Default is any acclerator."
  value       = aws_launch_template.aws_launch_template.accelerator_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the network interface."
  value       = aws_launch_template.aws_launch_template.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_name" {
  description = "The name of the placement group for the instance."
  value       = aws_launch_template.aws_launch_template.group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_id" {
  description = "The ID of the Dedicated Host for the instance."
  value       = aws_launch_template.aws_launch_template.host_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv4_address_count" {
  description = "The number of secondary private IPv4 addresses to assign to a network interface. Conflicts with ipv4_addresses"
  value       = aws_launch_template.aws_launch_template.ipv4_address_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_options" {
  description = "(Optional) The maintenance options for the instance. See Maintenance Options below for more details."
  value       = aws_launch_template.aws_launch_template.maintenance_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_manufacturers" {
  description = "(Optional) List of accelerator manufacturer names. Default is any manufacturer."
  value       = aws_launch_template.aws_launch_template.accelerator_manufacturers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "Enables EBS encryptionfalse). Cannot be used with snapshot_id."
  value       = aws_launch_template.aws_launch_template.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for Spot Instances. This is the maximum you’ll pay for a Spot Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 100.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_launch_template.aws_launch_template.spot_max_price_percentage_over_lowest_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bare_metal" {
  description = "(Optional) Indicate whether bare metal instace types should be included, excluded, or required. Default is excluded."
  value       = aws_launch_template.aws_launch_template.bare_metal
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_market_options" {
  description = "(Optional) The market (purchasing) option for the instance. See Market Options"
  value       = aws_launch_template.aws_launch_template.instance_market_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "The amount of provisioned\nIOPSvolume_type of \"io1/io2\"."
  value       = aws_launch_template.aws_launch_template.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vcpu_count" {
  description = "(Required) Block describing the minimum and maximum number of vCPUs. Default is no maximum."
  value       = aws_launch_template.aws_launch_template.vcpu_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_credits" {
  description = "The credit option for CPU usage. Can be \"standard\" or \"unlimited\". T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.Elastic GPUAttach an elastic GPU the instance.The elastic_gpu_specifications block supports the following:"
  value       = aws_launch_template.aws_launch_template.cpu_credits
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elastic_gpu_specifications" {
  description = "(Optional) The elastic GPU to attach to the instance. See Elastic GPU"
  value       = aws_launch_template.aws_launch_template.elastic_gpu_specifications
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_prefix_count" {
  description = "The number of IPv6 prefixes to be automatically assigned to the network interface. Conflicts with ipv6_prefixes"
  value       = aws_launch_template.aws_launch_template.ipv6_prefix_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "valid_until" {
  description = "The end date of the request.Metadata OptionsThe metadata options for the instances.The metadata_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.valid_until
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "burstable_performance" {
  description = "(Optional) Indicate whether burstable performance instance types should be included, excluded, or required. Default is excluded."
  value       = aws_launch_template.aws_launch_template.burstable_performance
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "(Optional) The desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Can be an integer from 1 to 64. (Default: 1)."
  value       = aws_launch_template.aws_launch_template.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the launch template."
  value       = aws_launch_template.aws_launch_template.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_options" {
  description = "(Optional) The CPU options for the instance. See CPU Options below for more details."
  value       = aws_launch_template.aws_launch_template.cpu_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_names" {
  description = "(Optional) A list of security group names to associate with. If you are creating Instances in a VPC, use\nvpc_security_group_ids instead."
  value       = aws_launch_template.aws_launch_template.security_group_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tenancy" {
  description = "The tenancy of the instance (if the instance is running in a VPC). Can be default, dedicated, or host."
  value       = aws_launch_template.aws_launch_template.tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "The \"ephemeral0\").The ebs block supports the following:"
  value       = aws_launch_template.aws_launch_template.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "core_count" {
  description = "The number of CPU cores for the instance."
  value       = aws_launch_template.aws_launch_template.core_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hibernation_options" {
  description = "(Optional) The hibernation options for the instance. See Hibernation Options below for more details."
  value       = aws_launch_template.aws_launch_template.hibernation_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "Whether the network interface should be destroyed on instance termination. Defaults to false if not set."
  value       = aws_launch_template.aws_launch_template.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hostname_type" {
  description = "The type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Tag SpecificationsThe tags to apply to the resources during launch. You can tag instances, volumes, elastic GPUs and spot instance requests. More information can be found in the EC2 API documentation.Each tag_specifications block supports the following:"
  value       = aws_launch_template.aws_launch_template.hostname_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_id" {
  description = "(Optional) The AMI from which to launch the instance."
  value       = aws_launch_template.aws_launch_template.image_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interfaces" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See  below for more details."
  value       = aws_launch_template.aws_launch_template.network_interfaces
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configured" {
  description = "If set to true, the launched EC2 instance will hibernation enabled.Instance ProfileThe IAM Instance ProfileThe iam_instance_profile block supports the following:"
  value       = aws_launch_template.aws_launch_template.configured
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Can be stop or terminatestop)."
  value       = aws_launch_template.aws_launch_template.instance_initiated_shutdown_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kernel_id" {
  description = "(Optional) The kernel ID."
  value       = aws_launch_template.aws_launch_template.kernel_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "The ARN of the AWS Key Management Service (AWS KMS) customer master key (CMK) to use when creating the encrypted volume.\nencrypted must be set to true when this is set."
  value       = aws_launch_template.aws_launch_template.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_type" {
  description = "The type of resource to tag."
  value       = aws_launch_template.aws_launch_template.resource_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "total_local_storage_gb" {
  description = "(Optional) Block describing the minimum and maximum total local storage (GB). Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.total_local_storage_gb
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update_default_version" {
  description = "(Optional) Whether to update Default Version each update. Conflicts with default_version."
  value       = aws_launch_template.aws_launch_template.update_default_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associate_carrier_ip_address" {
  description = "Associate a Carrier IP address with eth0 for a new network interface. Use this option when you launch an instance in a Wavelength Zone and want to associate a Carrier IP address with the network interface. Boolean value."
  value       = aws_launch_template.aws_launch_template.associate_carrier_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
  value       = aws_launch_template.aws_launch_template.disable_api_stop
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_storage_types" {
  description = "(Optional) List of local storage type names. Default any storage type."
  value       = aws_launch_template.aws_launch_template.local_storage_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory_mib" {
  description = "(Required) Block describing the minimum and maximum amount of memory (MiB). Default is no maximum."
  value       = aws_launch_template.aws_launch_template.memory_mib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_target" {
  description = "Used to target a specific Capacity Reservation:The capacity_reservation_target block supports the following:"
  value       = aws_launch_template.aws_launch_template.capacity_reservation_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_interruption_behavior" {
  description = "The behavior when a Spot Instance is interrupted. Can be hibernatestop, or terminate. (Default: terminate)."
  value       = aws_launch_template.aws_launch_template.instance_interruption_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "local_storage" {
  description = "(Optional) Indicate whether instance types with local storage volumes are included, excluded, or required. Default is included."
  value       = aws_launch_template.aws_launch_template.local_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_launch_template.aws_launch_template.enable_resource_name_dns_aaaa_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_resource_group_arn" {
  description = "The ARN of the Host Resource Group in which to launch instances."
  value       = aws_launch_template.aws_launch_template.host_resource_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_addresses" {
  description = "One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Conflicts with ipv6_address_count"
  value       = aws_launch_template.aws_launch_template.ipv6_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "license_configuration_arn" {
  description = "(Required) ARN of the license configuration.Maintenance OptionsThe maintenance_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.license_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spot_options" {
  description = "The options for Spot InstanceThe spot_options block supports the following:"
  value       = aws_launch_template.aws_launch_template.spot_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "The volume type. Can be standard, gp2, gp3, io1, io2, sc1 or st1 (Default: gp2).Capacity Reservation SpecificationThe capacity_reservation_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "The Availability Zone for the instance."
  value       = aws_launch_template.aws_launch_template.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_device_mappings" {
  description = "(Optional) Specify volumes to attach to the instance besides the volumes specified by the AMI.\nSee Block Devices below for details."
  value       = aws_launch_template.aws_launch_template.block_device_mappings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_index" {
  description = "The integer index of the network interface attachment."
  value       = aws_launch_template.aws_launch_template.device_index
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_launch_template.aws_launch_template.name_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "on_demand_max_price_percentage_over_lowest_price" {
  description = "(Optional) The price protection threshold for On-Demand Instances. This is the maximum you’ll pay for an On-Demand Instance, expressed as a percentage higher than the cheapest M, C, or R instance type with your specified attributes. When Amazon EC2 Auto Scaling selects instance types with your attributes, we will exclude instance types whose price is higher than your threshold. The parameter accepts an integer, which Amazon EC2 Auto Scaling interprets as a percentage. To turn off price protection, specify a high value, such as 999999. Default is 20.If you set DesiredCapacityType to vcpu or memory-mib, the price protection threshold is applied based on the per vCPU or per memory price instead of the per instance price."
  value       = aws_launch_template.aws_launch_template.on_demand_max_price_percentage_over_lowest_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  value       = aws_launch_template.aws_launch_template.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_preference" {
  description = "Indicates the instance's Capacity Reservation preferences. Can be open or none. (Default none)."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_preference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_instance_profile" {
  description = "(Optional) The IAM Instance Profile to launch the instance with. See Instance Profile"
  value       = aws_launch_template.aws_launch_template.iam_instance_profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latest_version" {
  description = "The latest version of the launch template."
  value       = aws_launch_template.aws_launch_template.latest_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_card_index" {
  description = "The index of the network card. Some instance types support multiple network cards. The primary network interface must be assigned to network card index 0. The default is network card index 0."
  value       = aws_launch_template.aws_launch_template.network_card_index
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "A map of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_launch_template.aws_launch_template.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_launch_template.aws_launch_template.enable_resource_name_dns_a_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv4_prefix_count" {
  description = "The number of IPv4 prefixes to be automatically assigned to the network interface. Conflicts with ipv4_prefixes"
  value       = aws_launch_template.aws_launch_template.ipv4_prefix_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elastic_inference_accelerator" {
  description = "(Optional) Configuration block containing an Elastic Inference Accelerator to attach to the instance. See Elastic Inference Accelerator below for more details."
  value       = aws_launch_template.aws_launch_template.elastic_inference_accelerator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement" {
  description = "(Optional) The placement of the instance. See Placement below for more details."
  value       = aws_launch_template.aws_launch_template.placement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "A list of security group IDs to associate."
  value       = aws_launch_template.aws_launch_template.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "The VPC Subnet ID to associate.PlacementThe Placement Group of the instance.The placement block supports the following:"
  value       = aws_launch_template.aws_launch_template.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accelerator_count" {
  description = "(Optional) Block describing the minimum and maximum number of accelerators (GPUs, FPGAs, or AWS Inferentia chips). Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.accelerator_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associate_public_ip_address" {
  description = "Associate a public ip address with the network interface.  Boolean value."
  value       = aws_launch_template.aws_launch_template.associate_public_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "baseline_ebs_bandwidth_mbps" {
  description = "(Optional) Block describing the minimum and maximum baseline EBS bandwidth, in Mbps. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.baseline_ebs_bandwidth_mbps
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_id" {
  description = "The ID of the Capacity Reservation in which to run the instance."
  value       = aws_launch_template.aws_launch_template.capacity_reservation_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the instance profile.Instance RequirementsThis configuration block supports the following:~> strongNOTE: Both memory_mib.min and vcpu_count.min must be specified."
  value       = aws_launch_template.aws_launch_template.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_version" {
  description = "(Optional) Default Version of the launch template."
  value       = aws_launch_template.aws_launch_template.default_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "excluded_instance_types" {
  description = "(Optional) List of instance types to exclude. You can use strings with one or more wild cards, represented by an asterisk (*). The following are examples: c5*, m5a.*, r*, *3*. For example, if you specify c5*, you are excluding the entire C5 instance family, which includes all C5a and C5n instance types. If you specify m5a.*, you are excluding all the M5a instance types, but not the M5n instance types. Maximum of 400 entries in the list; each entry is limited to 30 characters. Default is no excluded instance types."
  value       = aws_launch_template.aws_launch_template.excluded_instance_types
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "monitoring" {
  description = "(Optional) The monitoring option for the instance. See Monitoring below for more details."
  value       = aws_launch_template.aws_launch_template.monitoring
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "The throughput to provision for a gp3 volume in MiB/s (specified as an integer, e.g., 500), with a maximum of 1,000 MiB/s."
  value       = aws_launch_template.aws_launch_template.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data" {
  description = "(Optional) The base64-encoded user data to provide when launching the instance."
  value       = aws_launch_template.aws_launch_template.user_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "The size of the volume in gigabytes."
  value       = aws_launch_template.aws_launch_template.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "block_duration_minutes" {
  description = "The required duration in minutes. This value must be a multiple of 60."
  value       = aws_launch_template.aws_launch_template.block_duration_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "The name of the device to mount."
  value       = aws_launch_template.aws_launch_template.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  value       = aws_launch_template.aws_launch_template.enclave_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_address_count" {
  description = "The number of IPv6 addresses to assign to a network interface. Conflicts with ipv6_addresses"
  value       = aws_launch_template.aws_launch_template.ipv6_address_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "threads_per_core" {
  description = "The number of threads per CPU core. To disable Intel Hyper-Threading Technology for the instance, specify a value of 1.\nOtherwise, specify the default value of 2.Both number of CPU cores and threads per core must be specified. Valid number of CPU cores and threads per core for the instance type can be found in the CPU Options DocumentationCredit SpecificationCredit specification can be applied/modified to the EC2 Instance at any time.The credit_specification block supports the following:"
  value       = aws_launch_template.aws_launch_template.threads_per_core
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized."
  value       = aws_launch_template.aws_launch_template.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_generations" {
  description = "(Optional) List of instance generation names. Default is any generation."
  value       = aws_launch_template.aws_launch_template.instance_generations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_count" {
  description = "(Optional) Block describing the minimum and maximum number of network interfaces. Default is no minimum or maximum."
  value       = aws_launch_template.aws_launch_template.network_interface_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tag_specifications" {
  description = "(Optional) The tags to apply to the resources during launch. See Tag Specifications below for more details."
  value       = aws_launch_template.aws_launch_template.tag_specifications
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_security_group_ids" {
  description = "(Optional) A list of security group IDs to associate with. Conflicts with network_interfaces.security_groupsBlock devicesAWS's Block Device Mapping docsTo find out more information for an existing AMI to override the configuration, such as device_name, you can use the AWS CLI ec2 describe-images command.Each block_device_mappings supports the following:"
  value       = aws_launch_template.aws_launch_template.vpc_security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the launch template."
  value       = aws_launch_template.aws_launch_template.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The ID of the launch template."
  value       = aws_launch_template.aws_launch_template.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "latest_version" {
  description = "The latest version of the launch template."
  value       = aws_launch_template.aws_launch_template.latest_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_launch_template.aws_launch_template.tags_all
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
      "kind/name"                   = "aws_launch_template"
      "kind/version"                = "v0.1.0"
    }
  }
}
