resource "aws_instance" "aws_instance" {
  instance_state                          = var.instance_state
  primary_network_interface_id            = var.primary_network_interface_id
  secondary_private_ips                   = var.secondary_private_ips
  availability_zone                       = var.availability_zone
  capacity_reservation_preference         = var.capacity_reservation_preference
  security_groups                         = var.security_groups
  private_dns                             = var.private_dns
  arn                                     = var.arn
  cpu_core_count                          = var.cpu_core_count
  device_index                            = var.device_index
  get_password_data                       = var.get_password_data
  http_endpoint                           = var.http_endpoint
  launch_template                         = var.launch_template
  password_data                           = var.password_data
  public_dns                              = var.public_dns
  snapshot_id                             = var.snapshot_id
  user_data_replace_on_change             = var.user_data_replace_on_change
  volume_id                               = var.volume_id
  ebs_optimized                           = var.ebs_optimized
  hostname_type                           = var.hostname_type
  version                                 = var.version
  volume_size                             = var.volume_size
  root_block_device                       = var.root_block_device
  capacity_reservation_target             = var.capacity_reservation_target
  delete_on_termination                   = var.delete_on_termination
  disable_api_stop                        = var.disable_api_stop
  disable_api_termination                 = var.disable_api_termination
  iops                                    = var.iops
  name                                    = var.name
  public_ip                               = var.public_ip
  ami                                     = var.ami
  enclave_options                         = var.enclave_options
  ipv6_address_count                      = var.ipv6_address_count
  monitoring                              = var.monitoring
  device_name                             = var.device_name
  id                                      = var.id
  cpu_credits                             = var.cpu_credits
  instance_metadata_tags                  = var.instance_metadata_tags
  maintenance_options                     = var.maintenance_options
  private_ip                              = var.private_ip
  tenancy                                 = var.tenancy
  update                                  = var.update
  key_name                                = var.key_name
  throughput                              = var.throughput
  capacity_reservation_specification      = var.capacity_reservation_specification
  host_id                                 = var.host_id
  iam_instance_profile                    = var.iam_instance_profile
  ipv6_addresses                          = var.ipv6_addresses
  no_device                               = var.no_device
  placement_partition_number              = var.placement_partition_number
  capacity_reservation_id                 = var.capacity_reservation_id
  create                                  = var.create
  credit_specification                    = var.credit_specification
  http_put_response_hop_limit             = var.http_put_response_hop_limit
  network_interface                       = var.network_interface
  user_data                               = var.user_data
  vpc_security_group_ids                  = var.vpc_security_group_ids
  virtual_name                            = var.virtual_name
  enable_resource_name_dns_a_record       = var.enable_resource_name_dns_a_record
  encrypted                               = var.encrypted
  http_tokens                             = var.http_tokens
  kms_key_id                              = var.kms_key_id
  placement_group                         = var.placement_group
  private_dns_name_options                = var.private_dns_name_options
  tags_all                                = var.tags_all
  volume_type                             = var.volume_type
  auto_recovery                           = var.auto_recovery
  ebs_block_device                        = var.ebs_block_device
  hibernation                             = var.hibernation
  host_resource_group_arn                 = var.host_resource_group_arn
  network_card_index                      = var.network_card_index
  tags                                    = var.tags
  user_data_base64                        = var.user_data_base64
  subnet_id                               = var.subnet_id
  capacity_reservation_resource_group_arn = var.capacity_reservation_resource_group_arn
  enable_resource_name_dns_aaaa_record    = var.enable_resource_name_dns_aaaa_record
  enabled                                 = var.enabled
  instance_initiated_shutdown_behavior    = var.instance_initiated_shutdown_behavior
  network_interface_id                    = var.network_interface_id
  outpost_arn                             = var.outpost_arn
  source_dest_check                       = var.source_dest_check
  volume_tags                             = var.volume_tags
  associate_public_ip_address             = var.associate_public_ip_address
  cpu_threads_per_core                    = var.cpu_threads_per_core
  ephemeral_block_device                  = var.ephemeral_block_device
  instance_type                           = var.instance_type
  metadata_options                        = var.metadata_options
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "monitoring" {
  description = "(Optional) If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)"
  type        = string
}
variable "ami" {
  description = "(Optional) AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  type        = string
}
variable "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  type        = string
}
variable "ipv6_address_count" {
  description = "- (Optional) Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet."
  type        = string
}
variable "device_name" {
  description = "Device name, e.g., /dev/sdh or xvdh.TimeoutsConfiguration options:"
  type        = string
}
variable "id" {
  description = "ID of the launch template. Conflicts with name."
  type        = string
}
variable "private_ip" {
  description = "(Optional) Private IP address to associate with the instance in a VPC."
  type        = string
}
variable "tenancy" {
  description = "(Optional) Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware. The host tenancy is not supported for the import-instance command. Valid values are default, dedicated, and host."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "cpu_credits" {
  description = "(Optional) Credit option for CPU usage. Valid values include standard or unlimited. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.EBS, Ephemeral, and Root Block DevicesEach of the *_block_device attributes control a portion of the EC2 Instance's \"Block Device Mapping\". For more information, see the AWS Block Device Mapping documentation.The root_block_device block supports the following:"
  type        = string
}
variable "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. Valid values include enabled or disabled. Defaults to disabled.For more information, see the documentation on the Instance Metadata Service.Network InterfacesEach of the network_interface blocks attach a network interface to an EC2 Instance during boot time. However, because the network interface is attached at boot-time, replacing/modifying the network interface strongWILL trigger a recreation of the EC2 Instance. If you should need at any point to detach/modify/re-attach a network interface to the instance, use the aws_network_interface or aws_network_interface_attachment resources instead.The network_interface configuration block emdoes, however, allow users to supply their own network interface to be used as the default network interface on an EC2 Instance, attached at eth0.Each network_interface block supports the following:"
  type        = string
}
variable "maintenance_options" {
  description = "(Optional) Maintenance and recovery options for the instance. See Maintenance Options below for more details."
  type        = string
}
variable "key_name" {
  description = "(Optional) Key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource."
  type        = string
}
variable "throughput" {
  description = "(Optional) Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for volume_type of gp3."
  type        = string
}
variable "ipv6_addresses" {
  description = "(Optional) Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface"
  type        = string
}
variable "no_device" {
  description = "(Optional) Suppresses the specified device included in the AMI's block device mapping."
  type        = string
}
variable "placement_partition_number" {
  description = "(Optional) Number of the partition the instance is in. Valid only if the aws_placement_group resource's strategy argument is set to \"partition\"."
  type        = string
}
variable "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance."
  type        = string
}
variable "host_id" {
  description = "(Optional) ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host."
  type        = string
}
variable "iam_instance_profile" {
  description = "(Optional) IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the EC2 documentation, notably iam:PassRole."
  type        = string
}
variable "http_put_response_hop_limit" {
  description = "(Optional) Desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Valid values are integer from 1 to 64. Defaults to 1."
  type        = string
}
variable "network_interface" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details."
  type        = string
}
variable "user_data" {
  description = "(Optional) User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the user_data_replace_on_change is set then updates to this field will trigger a destroy and recreate."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional, VPC only) List of security group IDs to associate with.Capacity Reservation Specification~> strongNOTE: You can specify only one argument at a time. If you specify both capacity_reservation_preference and capacity_reservation_target, the request fails. Modifying capacity_reservation_preference or capacity_reservation_target in this block requires the instance to be in stopped state.Capacity reservation specification can be applied/modified to the EC2 Instance at creation time or when the instance is stopped.The capacity_reservation_specification block supports the following:"
  type        = string
}
variable "capacity_reservation_id" {
  description = "(Optional) ID of the Capacity Reservation in which to run the instance."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "credit_specification" {
  description = "(Optional) Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. Terraform will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection."
  type        = string
}
variable "placement_group" {
  description = "(Optional) Placement Group to start the instance in."
  type        = string
}
variable "private_dns_name_options" {
  description = "(Optional) Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.For ebs_block_device, in addition to the arguments above, the following attribute is exported:"
  type        = string
}
variable "virtual_name" {
  description = "(Optional) Instance Store Device Name (e.g., ephemeral0).Each AWS Instance type has a different set of Instance Store block devices available for attachment. AWS publishes a list of which ephemeral devices are available on each type. The devices are always identified by the virtual_name in the format ephemeral{0..N}.Enclave Options-> strongNOTE: Changing enabled will cause the resource to be destroyed and re-created.Enclave options apply to the instance at boot time.The enclave_options block supports the following:"
  type        = string
}
variable "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  type        = string
}
variable "encrypted" {
  description = "(Optional) Enables EBS encryption on the volume. Defaults to false. Cannot be used with snapshot_id. Must be configured to perform drift detection."
  type        = string
}
variable "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Valid values include optional or required. Defaults to optional."
  type        = string
}
variable "volume_type" {
  description = "(Optional) Type of volume. Valid values include standard, gp2, gp3, io1, io2, sc1, or st1. Defaults to gp2.~> strongNOTE: Currently, changes to the ebs_block_device configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes and attachments of an EBS block to an instance, use the aws_ebs_volume and aws_volume_attachment resources instead. If you use ebs_block_device on an aws_instance, Terraform will assume management over the full set of non-root EBS block devices for the instance, treating additional block devices as drift. For this reason, ebs_block_device cannot be mixed with external aws_ebs_volume and aws_volume_attachment resources for a given instance.Each ephemeral_block_device block supports the following:"
  type        = string
}
variable "host_resource_group_arn" {
  description = "(Optional) ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the tenancy parameter or set it to host."
  type        = string
}
variable "auto_recovery" {
  description = "(Optional) Automatic recovery behavior of the Instance. Can be \"default\" or \"disabled\". See Recover your instance for more details.Metadata OptionsMetadata options can be applied/modified to the EC2 Instance at any time.The metadata_options block supports the following:"
  type        = string
}
variable "ebs_block_device" {
  description = "(Optional) One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects."
  type        = string
}
variable "hibernation" {
  description = "(Optional) If true, the launched EC2 instance will support hibernation."
  type        = string
}
variable "network_card_index" {
  description = "(Optional) Integer index of the network card. Limited by instance type. The default index is 0."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the device."
  type        = string
}
variable "user_data_base64" {
  description = "(Optional) Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the user_data_replace_on_change is set then updates to this field will trigger a destroy and recreate."
  type        = string
}
variable "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Amazon defaults this to stop for EBS-backed instances and terminate for instance-store instances. Cannot be set on instance-store instances. See Shutdown Behavior for more information."
  type        = string
}
variable "network_interface_id" {
  description = "(Required) ID of the network interface to attach.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  type        = string
}
variable "outpost_arn" {
  description = "ARN of the Outpost the instance is assigned to."
  type        = string
}
variable "source_dest_check" {
  description = "(Optional) Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) VPC Subnet ID to launch in."
  type        = string
}
variable "capacity_reservation_resource_group_arn" {
  description = "(Optional) ARN of the Capacity Reservation resource group in which to run the instance.Credit SpecificationThe credit_specification block supports the following:"
  type        = string
}
variable "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  type        = string
}
variable "enabled" {
  description = "(Optional) Whether Nitro Enclaves will be enabled on the instance. Defaults to false.For more information, see the documentation on Nitro Enclaves.Maintenance OptionsThe maintenance_options block supports the following:"
  type        = string
}
variable "volume_tags" {
  description = "(Optional) Map of tags to assign, at instance-creation time, to root and EBS volumes.~> strongNOTE: Do not use volume_tags if you plan to manage block device tags outside the aws_instance configuration, such as using tags in an aws_ebs_volume resource attached via aws_volume_attachment. Doing so will result in resource cycling and inconsistent behavior."
  type        = string
}
variable "instance_type" {
  description = "(Optional) Instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance."
  type        = string
}
variable "metadata_options" {
  description = "(Optional) Customize the metadata options of the instance. See Metadata Options below for more details."
  type        = string
}
variable "associate_public_ip_address" {
  description = "(Optional) Whether to associate a public IP address with an instance in a VPC."
  type        = string
}
variable "cpu_threads_per_core" {
  description = "(Optional - has no effect unless cpu_core_count is also set)  If set to to 1, hyperthreading is disabled on the launched instance. Defaults to 2 if not set. See Optimizing CPU Options for more information."
  type        = string
}
variable "ephemeral_block_device" {
  description = "(Optional) One or more configuration blocks to customize Ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects."
  type        = string
}
variable "instance_state" {
  description = "State of the instance. One of: pending, running, shutting-down, terminated, stopping, stopped. See Instance Lifecycle for more information."
  type        = string
}
variable "primary_network_interface_id" {
  description = "ID of the instance's primary network interface."
  type        = string
}
variable "secondary_private_ips" {
  description = "(Optional) List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a network_interface block. Refer to the Elastic network interfaces documentation to see the maximum number of private IP addresses allowed per instance type."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) AZ to start the instance in."
  type        = string
}
variable "capacity_reservation_preference" {
  description = "(Optional) Indicates the instance's Capacity Reservation preferences. Can be \"open\" or \"none\". (Default: \"open\")."
  type        = string
}
variable "security_groups" {
  description = "(Optional, EC2-Classic and default VPC only) List of security group names to associate with.-> strongNOTE: If you are creating Instances in a VPC, use vpc_security_group_ids instead."
  type        = string
}
variable "get_password_data" {
  description = "(Optional) If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the password_data attribute. See GetPasswordData for more information."
  type        = string
}
variable "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Valid values include enabled or disabled. Defaults to enabled."
  type        = string
}
variable "launch_template" {
  description = "(Optional) Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template.\nSee Launch Template Specification below for more details."
  type        = string
}
variable "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See GetPasswordData for more information."
  type        = string
}
variable "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  type        = string
}
variable "arn" {
  description = "ARN of the instance."
  type        = string
}
variable "cpu_core_count" {
  description = "(Optional) Sets the number of CPU cores for an instance. This option is only supported on creation of instance type that support CPU Options CPU Cores and Threads Per CPU Core Per Instance Typespecifying this option for unsupported instance types will return an error from the EC2 API."
  type        = string
}
variable "device_index" {
  description = "(Required) Integer index of the network interface attachment. Limited by instance type."
  type        = string
}
variable "volume_id" {
  description = "ID of the volume. For example, the ID can be accessed like this, aws_instance.web.root_block_device.0.volume_id."
  type        = string
}
variable "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  type        = string
}
variable "user_data_replace_on_change" {
  description = "(Optional) When used in combination with user_data or user_data_base64 will trigger a destroy and recreate when set to true. Defaults to false if not set."
  type        = string
}
variable "volume_size" {
  description = "(Optional) Size of the volume in gibibytes (GiB)."
  type        = string
}
variable "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the EBS Optimized section of the AWS User Guide for more information."
  type        = string
}
variable "hostname_type" {
  description = "Type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Launch Template Specification-> strongNote:Any other instance parameters that you specify will override the same parameters in the launch template.The launch_template block supports the following:"
  type        = string
}
variable "version" {
  description = "Template version. Can be a specific version number, $Latest or $Default. The default value is $Default.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "disable_api_termination" {
  description = "(Optional) If true, enables EC2 Instance Termination Protection."
  type        = string
}
variable "iops" {
  description = "(Optional) Amount of provisioned IOPS. Only valid for volume_type of io1, io2 or gp3."
  type        = string
}
variable "name" {
  description = "Name of the launch template. Conflicts with id."
  type        = string
}
variable "public_ip" {
  description = "Public IP address assigned to the instance, if applicable. strongNOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip as this field will change after the EIP is attached."
  type        = string
}
variable "root_block_device" {
  description = "(Optional) Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object."
  type        = string
}
variable "capacity_reservation_target" {
  description = "(Optional) Information about the target Capacity Reservation. See Capacity Reservation Target below for more details.For more information, see the documentation on Capacity Reservations.Capacity Reservation Target~> strongNOTE: Modifying capacity_reservation_id in this block requires the instance to be in stopped state.Describes a target Capacity Reservation.This capacity_reservation_target block supports the following:"
  type        = string
}
variable "delete_on_termination" {
  description = "(Optional) Whether or not to delete the network interface on instance termination. Defaults to false. Currently, the only valid value is false, as this is only supported when creating new network interfaces when launching an instance."
  type        = string
}
variable "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
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
output "source_dest_check" {
  description = "(Optional) Controls if traffic is routed to the instance when the destination address does not match the instance. Used for NAT or VPNs. Defaults true."
  value       = aws_instance.aws_instance.source_dest_check
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "(Optional) VPC Subnet ID to launch in."
  value       = aws_instance.aws_instance.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_resource_group_arn" {
  description = "(Optional) ARN of the Capacity Reservation resource group in which to run the instance.Credit SpecificationThe credit_specification block supports the following:"
  value       = aws_instance.aws_instance.capacity_reservation_resource_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_aaaa_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records."
  value       = aws_instance.aws_instance.enable_resource_name_dns_aaaa_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) Whether Nitro Enclaves will be enabled on the instance. Defaults to false.For more information, see the documentation on Nitro Enclaves.Maintenance OptionsThe maintenance_options block supports the following:"
  value       = aws_instance.aws_instance.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_initiated_shutdown_behavior" {
  description = "(Optional) Shutdown behavior for the instance. Amazon defaults this to stop for EBS-backed instances and terminate for instance-store instances. Cannot be set on instance-store instances. See Shutdown Behavior for more information."
  value       = aws_instance.aws_instance.instance_initiated_shutdown_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_id" {
  description = "(Required) ID of the network interface to attach.Private DNS Name OptionsThe private_dns_name_options block supports the following:"
  value       = aws_instance.aws_instance.network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost the instance is assigned to."
  value       = aws_instance.aws_instance.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_tags" {
  description = "(Optional) Map of tags to assign, at instance-creation time, to root and EBS volumes.~> strongNOTE: Do not use volume_tags if you plan to manage block device tags outside the aws_instance configuration, such as using tags in an aws_ebs_volume resource attached via aws_volume_attachment. Doing so will result in resource cycling and inconsistent behavior."
  value       = aws_instance.aws_instance.volume_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "associate_public_ip_address" {
  description = "(Optional) Whether to associate a public IP address with an instance in a VPC."
  value       = aws_instance.aws_instance.associate_public_ip_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_threads_per_core" {
  description = "(Optional - has no effect unless cpu_core_count is also set)  If set to to 1, hyperthreading is disabled on the launched instance. Defaults to 2 if not set. See Optimizing CPU Options for more information."
  value       = aws_instance.aws_instance.cpu_threads_per_core
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_block_device" {
  description = "(Optional) One or more configuration blocks to customize Ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a set of objects."
  value       = aws_instance.aws_instance.ephemeral_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) Instance type to use for the instance. Updates to this field will trigger a stop/start of the EC2 instance."
  value       = aws_instance.aws_instance.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metadata_options" {
  description = "(Optional) Customize the metadata options of the instance. See Metadata Options below for more details."
  value       = aws_instance.aws_instance.metadata_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_state" {
  description = "State of the instance. One of: pending, running, shutting-down, terminated, stopping, stopped. See Instance Lifecycle for more information."
  value       = aws_instance.aws_instance.instance_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_network_interface_id" {
  description = "ID of the instance's primary network interface."
  value       = aws_instance.aws_instance.primary_network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_private_ips" {
  description = "(Optional) List of secondary private IPv4 addresses to assign to the instance's primary network interface (eth0) in a VPC. Can only be assigned to the primary network interface (eth0) attached at instance creation, not a pre-existing network interface i.e., referenced in a network_interface block. Refer to the Elastic network interfaces documentation to see the maximum number of private IP addresses allowed per instance type."
  value       = aws_instance.aws_instance.secondary_private_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) AZ to start the instance in."
  value       = aws_instance.aws_instance.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_preference" {
  description = "(Optional) Indicates the instance's Capacity Reservation preferences. Can be \"open\" or \"none\". (Default: \"open\")."
  value       = aws_instance.aws_instance.capacity_reservation_preference
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "(Optional, EC2-Classic and default VPC only) List of security group names to associate with.-> strongNOTE: If you are creating Instances in a VPC, use vpc_security_group_ids instead."
  value       = aws_instance.aws_instance.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See GetPasswordData for more information."
  value       = aws_instance.aws_instance.password_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.private_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the instance."
  value       = aws_instance.aws_instance.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_core_count" {
  description = "(Optional) Sets the number of CPU cores for an instance. This option is only supported on creation of instance type that support CPU Options CPU Cores and Threads Per CPU Core Per Instance Typespecifying this option for unsupported instance types will return an error from the EC2 API."
  value       = aws_instance.aws_instance.cpu_core_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_index" {
  description = "(Required) Integer index of the network interface attachment. Limited by instance type."
  value       = aws_instance.aws_instance.device_index
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "get_password_data" {
  description = "(Optional) If true, wait for password data to become available and retrieve it. Useful for getting the administrator password for instances running Microsoft Windows. The password data is exported to the password_data attribute. See GetPasswordData for more information."
  value       = aws_instance.aws_instance.get_password_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_endpoint" {
  description = "(Optional) Whether the metadata service is available. Valid values include enabled or disabled. Defaults to enabled."
  value       = aws_instance.aws_instance.http_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_template" {
  description = "(Optional) Specifies a Launch Template to configure the instance. Parameters configured on this resource will override the corresponding parameters in the Launch Template.\nSee Launch Template Specification below for more details."
  value       = aws_instance.aws_instance.launch_template
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.public_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  value       = aws_instance.aws_instance.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data_replace_on_change" {
  description = "(Optional) When used in combination with user_data or user_data_base64 will trigger a destroy and recreate when set to true. Defaults to false if not set."
  value       = aws_instance.aws_instance.user_data_replace_on_change
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_id" {
  description = "ID of the volume. For example, the ID can be accessed like this, aws_instance.web.root_block_device.0.volume_id."
  value       = aws_instance.aws_instance.volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "(Optional) If true, the launched EC2 instance will be EBS-optimized. Note that if this is not set on an instance type that is optimized by default then this will show as disabled but if the instance type is optimized by default then there is no need to set this and there is no effect to disabling it. See the EBS Optimized section of the AWS User Guide for more information."
  value       = aws_instance.aws_instance.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hostname_type" {
  description = "Type of hostname for Amazon EC2 instances. For IPv4 only subnets, an instance DNS name must be based on the instance IPv4 address. For IPv6 native subnets, an instance DNS name must be based on the instance ID. For dual-stack subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: ip-name and resource-name.Launch Template Specification-> strongNote:Any other instance parameters that you specify will override the same parameters in the launch template.The launch_template block supports the following:"
  value       = aws_instance.aws_instance.hostname_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Template version. Can be a specific version number, $Latest or $Default. The default value is $Default.In addition to all arguments above, the following attributes are exported:"
  value       = aws_instance.aws_instance.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "(Optional) Size of the volume in gibibytes (GiB)."
  value       = aws_instance.aws_instance.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable. strongNOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip as this field will change after the EIP is attached."
  value       = aws_instance.aws_instance.public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_block_device" {
  description = "(Optional) Configuration block to customize details about the root block device of the instance. See Block Devices below for details. When accessing this as an attribute reference, it is a list containing one object."
  value       = aws_instance.aws_instance.root_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_target" {
  description = "(Optional) Information about the target Capacity Reservation. See Capacity Reservation Target below for more details.For more information, see the documentation on Capacity Reservations.Capacity Reservation Target~> strongNOTE: Modifying capacity_reservation_id in this block requires the instance to be in stopped state.Describes a target Capacity Reservation.This capacity_reservation_target block supports the following:"
  value       = aws_instance.aws_instance.capacity_reservation_target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "(Optional) Whether or not to delete the network interface on instance termination. Defaults to false. Currently, the only valid value is false, as this is only supported when creating new network interfaces when launching an instance."
  value       = aws_instance.aws_instance.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_api_stop" {
  description = "(Optional) If true, enables EC2 Instance Stop Protection."
  value       = aws_instance.aws_instance.disable_api_stop
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disable_api_termination" {
  description = "(Optional) If true, enables EC2 Instance Termination Protection."
  value       = aws_instance.aws_instance.disable_api_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) Amount of provisioned IOPS. Only valid for volume_type of io1, io2 or gp3."
  value       = aws_instance.aws_instance.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the launch template. Conflicts with id."
  value       = aws_instance.aws_instance.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ami" {
  description = "(Optional) AMI to use for the instance. Required unless launch_template is specified and the Launch Template specifes an AMI. If an AMI is specified in the Launch Template, setting ami will override the AMI specified in the Launch Template."
  value       = aws_instance.aws_instance.ami
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enclave_options" {
  description = "(Optional) Enable Nitro Enclaves on launched instances. See Enclave Options below for more details."
  value       = aws_instance.aws_instance.enclave_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_address_count" {
  description = "- (Optional) Number of IPv6 addresses to associate with the primary network interface. Amazon EC2 chooses the IPv6 addresses from the range of your subnet."
  value       = aws_instance.aws_instance.ipv6_address_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "monitoring" {
  description = "(Optional) If true, the launched EC2 instance will have detailed monitoring enabled. (Available since v0.6.0)"
  value       = aws_instance.aws_instance.monitoring
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Device name, e.g., /dev/sdh or xvdh.TimeoutsConfiguration options:"
  value       = aws_instance.aws_instance.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the launch template. Conflicts with name."
  value       = aws_instance.aws_instance.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_credits" {
  description = "(Optional) Credit option for CPU usage. Valid values include standard or unlimited. T3 instances are launched as unlimited by default. T2 instances are launched as standard by default.EBS, Ephemeral, and Root Block DevicesEach of the *_block_device attributes control a portion of the EC2 Instance's \"Block Device Mapping\". For more information, see the AWS Block Device Mapping documentation.The root_block_device block supports the following:"
  value       = aws_instance.aws_instance.cpu_credits
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_metadata_tags" {
  description = "(Optional) Enables or disables access to instance tags from the instance metadata service. Valid values include enabled or disabled. Defaults to disabled.For more information, see the documentation on the Instance Metadata Service.Network InterfacesEach of the network_interface blocks attach a network interface to an EC2 Instance during boot time. However, because the network interface is attached at boot-time, replacing/modifying the network interface strongWILL trigger a recreation of the EC2 Instance. If you should need at any point to detach/modify/re-attach a network interface to the instance, use the aws_network_interface or aws_network_interface_attachment resources instead.The network_interface configuration block emdoes, however, allow users to supply their own network interface to be used as the default network interface on an EC2 Instance, attached at eth0.Each network_interface block supports the following:"
  value       = aws_instance.aws_instance.instance_metadata_tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maintenance_options" {
  description = "(Optional) Maintenance and recovery options for the instance. See Maintenance Options below for more details."
  value       = aws_instance.aws_instance.maintenance_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip" {
  description = "(Optional) Private IP address to associate with the instance in a VPC."
  value       = aws_instance.aws_instance.private_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tenancy" {
  description = "(Optional) Tenancy of the instance (if the instance is running in a VPC). An instance with a tenancy of dedicated runs on single-tenant hardware. The host tenancy is not supported for the import-instance command. Valid values are default, dedicated, and host."
  value       = aws_instance.aws_instance.tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_instance.aws_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key_name" {
  description = "(Optional) Key name of the Key Pair to use for the instance; which can be managed using the aws_key_pair resource."
  value       = aws_instance.aws_instance.key_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput" {
  description = "(Optional) Throughput to provision for a volume in mebibytes per second (MiB/s). This is only valid for volume_type of gp3."
  value       = aws_instance.aws_instance.throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance."
  value       = aws_instance.aws_instance.capacity_reservation_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_id" {
  description = "(Optional) ID of a dedicated host that the instance will be assigned to. Use when an instance is to be launched on a specific dedicated host."
  value       = aws_instance.aws_instance.host_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam_instance_profile" {
  description = "(Optional) IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile. Ensure your credentials have the correct permission to assign the instance profile according to the EC2 documentation, notably iam:PassRole."
  value       = aws_instance.aws_instance.iam_instance_profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipv6_addresses" {
  description = "(Optional) Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface"
  value       = aws_instance.aws_instance.ipv6_addresses
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "no_device" {
  description = "(Optional) Suppresses the specified device included in the AMI's block device mapping."
  value       = aws_instance.aws_instance.no_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_partition_number" {
  description = "(Optional) Number of the partition the instance is in. Valid only if the aws_placement_group resource's strategy argument is set to \"partition\"."
  value       = aws_instance.aws_instance.placement_partition_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_security_group_ids" {
  description = "(Optional, VPC only) List of security group IDs to associate with.Capacity Reservation Specification~> strongNOTE: You can specify only one argument at a time. If you specify both capacity_reservation_preference and capacity_reservation_target, the request fails. Modifying capacity_reservation_preference or capacity_reservation_target in this block requires the instance to be in stopped state.Capacity reservation specification can be applied/modified to the EC2 Instance at creation time or when the instance is stopped.The capacity_reservation_specification block supports the following:"
  value       = aws_instance.aws_instance.vpc_security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_id" {
  description = "(Optional) ID of the Capacity Reservation in which to run the instance."
  value       = aws_instance.aws_instance.capacity_reservation_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_instance.aws_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "credit_specification" {
  description = "(Optional) Configuration block for customizing the credit specification of the instance. See Credit Specification below for more details. Terraform will only perform drift detection of its value when present in a configuration. Removing this configuration on existing instances will only stop managing it. It will not change the configuration back to the default for the instance type."
  value       = aws_instance.aws_instance.credit_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_put_response_hop_limit" {
  description = "(Optional) Desired HTTP PUT response hop limit for instance metadata requests. The larger the number, the further instance metadata requests can travel. Valid values are integer from 1 to 64. Defaults to 1."
  value       = aws_instance.aws_instance.http_put_response_hop_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface" {
  description = "(Optional) Customize network interfaces to be attached at instance boot time. See Network Interfaces below for more details."
  value       = aws_instance.aws_instance.network_interface
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data" {
  description = "(Optional) User data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead. Updates to this field will trigger a stop/start of the EC2 instance by default. If the user_data_replace_on_change is set then updates to this field will trigger a destroy and recreate."
  value       = aws_instance.aws_instance.user_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.For ebs_block_device, in addition to the arguments above, the following attribute is exported:"
  value       = aws_instance.aws_instance.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "(Optional) Instance Store Device Name (e.g., ephemeral0).Each AWS Instance type has a different set of Instance Store block devices available for attachment. AWS publishes a list of which ephemeral devices are available on each type. The devices are always identified by the virtual_name in the format ephemeral{0..N}.Enclave Options-> strongNOTE: Changing enabled will cause the resource to be destroyed and re-created.Enclave options apply to the instance at boot time.The enclave_options block supports the following:"
  value       = aws_instance.aws_instance.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_resource_name_dns_a_record" {
  description = "Indicates whether to respond to DNS queries for instance hostnames with DNS A records."
  value       = aws_instance.aws_instance.enable_resource_name_dns_a_record
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encrypted" {
  description = "(Optional) Enables EBS encryption on the volume. Defaults to false. Cannot be used with snapshot_id. Must be configured to perform drift detection."
  value       = aws_instance.aws_instance.encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http_tokens" {
  description = "(Optional) Whether or not the metadata service requires session tokens, also referred to as emInstance Metadata Service Version 2 (IMDSv2). Valid values include optional or required. Defaults to optional."
  value       = aws_instance.aws_instance.http_tokens
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the KMS Key to use when encrypting the volume. Must be configured to perform drift detection."
  value       = aws_instance.aws_instance.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_group" {
  description = "(Optional) Placement Group to start the instance in."
  value       = aws_instance.aws_instance.placement_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns_name_options" {
  description = "(Optional) Options for the instance hostname. The default values are inherited from the subnet. See Private DNS Name Options below for more details."
  value       = aws_instance.aws_instance.private_dns_name_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "(Optional) Type of volume. Valid values include standard, gp2, gp3, io1, io2, sc1, or st1. Defaults to gp2.~> strongNOTE: Currently, changes to the ebs_block_device configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes and attachments of an EBS block to an instance, use the aws_ebs_volume and aws_volume_attachment resources instead. If you use ebs_block_device on an aws_instance, Terraform will assume management over the full set of non-root EBS block devices for the instance, treating additional block devices as drift. For this reason, ebs_block_device cannot be mixed with external aws_ebs_volume and aws_volume_attachment resources for a given instance.Each ephemeral_block_device block supports the following:"
  value       = aws_instance.aws_instance.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_recovery" {
  description = "(Optional) Automatic recovery behavior of the Instance. Can be \"default\" or \"disabled\". See Recover your instance for more details.Metadata OptionsMetadata options can be applied/modified to the EC2 Instance at any time.The metadata_options block supports the following:"
  value       = aws_instance.aws_instance.auto_recovery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_block_device" {
  description = "(Optional) One or more configuration blocks with additional EBS block devices to attach to the instance. Block device configurations only apply on resource creation. See Block Devices below for details on attributes and drift detection. When accessing this as an attribute reference, it is a set of objects."
  value       = aws_instance.aws_instance.ebs_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hibernation" {
  description = "(Optional) If true, the launched EC2 instance will support hibernation."
  value       = aws_instance.aws_instance.hibernation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_resource_group_arn" {
  description = "(Optional) ARN of the host resource group in which to launch the instances. If you specify an ARN, omit the tenancy parameter or set it to host."
  value       = aws_instance.aws_instance.host_resource_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_card_index" {
  description = "(Optional) Integer index of the network card. Limited by instance type. The default index is 0."
  value       = aws_instance.aws_instance.network_card_index
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the device."
  value       = aws_instance.aws_instance.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_data_base64" {
  description = "(Optional) Can be used instead of user_data to pass base64-encoded binary data directly. Use this instead of user_data whenever the value is not a valid UTF-8 string. For example, gzip-encoded user data must be base64-encoded and passed via this argument to avoid corruption. Updates to this field will trigger a stop/start of the EC2 instance by default. If the user_data_replace_on_change is set then updates to this field will trigger a destroy and recreate."
  value       = aws_instance.aws_instance.user_data_base64
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance."
  value       = aws_instance.aws_instance.capacity_reservation_specification
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Device name, e.g., /dev/sdh or xvdh.TimeoutsConfiguration options:"
  value       = aws_instance.aws_instance.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_state" {
  description = "State of the instance. One of: pending, running, shutting-down, terminated, stopping, stopped. See Instance Lifecycle for more information."
  value       = aws_instance.aws_instance.instance_state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.private_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_id" {
  description = "ID of the volume. For example, the ID can be accessed like this, aws_instance.web.root_block_device.0.volume_id."
  value       = aws_instance.aws_instance.volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the instance."
  value       = aws_instance.aws_instance.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_instance.aws_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Useful for getting the administrator password for instances running Microsoft Windows. This attribute is only exported if get_password_data is true. Note that this encrypted value will be stored in the state file, as with all exported attributes. See GetPasswordData for more information."
  value       = aws_instance.aws_instance.password_data
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable. strongNOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use public_ip as this field will change after the EIP is attached."
  value       = aws_instance.aws_instance.public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_instance.aws_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 20m)"
  value       = aws_instance.aws_instance.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outpost_arn" {
  description = "ARN of the Outpost the instance is assigned to."
  value       = aws_instance.aws_instance.outpost_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "primary_network_interface_id" {
  description = "ID of the instance's primary network interface."
  value       = aws_instance.aws_instance.primary_network_interface_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_instance.aws_instance.public_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.For ebs_block_device, in addition to the arguments above, the following attribute is exported:"
  value       = aws_instance.aws_instance.tags_all
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
      "kind/name"                   = "aws_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
