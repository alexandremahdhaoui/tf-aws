resource "aws_opsworks_instance" "aws_opsworks_instance" {
  delete_ebs                   = var.delete_ebs
  ecs_cluster_arn              = var.ecs_cluster_arn
  install_updates_on_boot      = var.install_updates_on_boot
  private_dns                  = var.private_dns
  ebs_optimized                = var.ebs_optimized
  infrastructure_class         = var.infrastructure_class
  instance_profile_arn         = var.instance_profile_arn
  reported_os_version          = var.reported_os_version
  id                           = var.id
  security_group_ids           = var.security_group_ids
  ssh_host_rsa_key_fingerprint = var.ssh_host_rsa_key_fingerprint
  volume_size                  = var.volume_size
  status                       = var.status
  public_ip                    = var.public_ip
  subnet_id                    = var.subnet_id
  virtual_name                 = var.virtual_name
  availability_zone            = var.availability_zone
  ebs_block_device             = var.ebs_block_device
  last_service_error_id        = var.last_service_error_id
  layer_ids                    = var.layer_ids
  platform                     = var.platform
  created_at                   = var.created_at
  instance_type                = var.instance_type
  reported_os_name             = var.reported_os_name
  snapshot_id                  = var.snapshot_id
  volume_type                  = var.volume_type
  ec2_instance_id              = var.ec2_instance_id
  reported_os_family           = var.reported_os_family
  root_device_type             = var.root_device_type
  agent_version                = var.agent_version
  elastic_ip                   = var.elastic_ip
  root_block_device            = var.root_block_device
  state                        = var.state
  root_device_volume_id        = var.root_device_volume_id
  ssh_key_name                 = var.ssh_key_name
  virtualization_type          = var.virtualization_type
  device_name                  = var.device_name
  registered_by                = var.registered_by
  iops                         = var.iops
  reported_agent_version       = var.reported_agent_version
  ephemeral_block_device       = var.ephemeral_block_device
  ssh_host_dsa_key_fingerprint = var.ssh_host_dsa_key_fingerprint
  update                       = var.update
  ami_id                       = var.ami_id
  architecture                 = var.architecture
  auto_scaling_type            = var.auto_scaling_type
  delete                       = var.delete
  delete_on_termination        = var.delete_on_termination
  create                       = var.create
  hostname                     = var.hostname
  public_dns                   = var.public_dns
  stack_id                     = var.stack_id
  delete_eip                   = var.delete_eip
  os                           = var.os
  private_ip                   = var.private_ip
  tenancy                      = var.tenancy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "delete_eip" {
  description = "(Optional) Whether to delete the Elastic IP on deletion."
  type        = string
}
variable "os" {
  description = "(Optional) Name of operating system that will be installed."
  type        = string
}
variable "private_ip" {
  description = "Private IP address assigned to the instance."
  type        = string
}
variable "tenancy" {
  description = "(Optional) Instance tenancy to use. Valid values are default, dedicated or host."
  type        = string
}
variable "delete_ebs" {
  description = "(Optional) Whether to delete EBS volume on deletion. Default is true."
  type        = string
}
variable "ecs_cluster_arn" {
  description = "(Optional) ECS cluster's ARN for container instances."
  type        = string
}
variable "install_updates_on_boot" {
  description = "(Optional) Controls where to install OS and package updates when the instance boots.  Default is true."
  type        = string
}
variable "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  type        = string
}
variable "ebs_optimized" {
  description = "(Optional) Whether the launched EC2 instance will be EBS-optimized."
  type        = string
}
variable "infrastructure_class" {
  description = "(Optional) For registered instances, infrastructure class: ec2 or on-premises."
  type        = string
}
variable "instance_profile_arn" {
  description = "(Optional) ARN of the instance's IAM profile."
  type        = string
}
variable "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  type        = string
}
variable "id" {
  description = "ID of the OpsWorks instance."
  type        = string
}
variable "security_group_ids" {
  description = "Associated security groups."
  type        = string
}
variable "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  type        = string
}
variable "volume_size" {
  description = "(Optional) Size of the volume in gigabytes."
  type        = string
}
variable "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  type        = string
}
variable "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) Subnet ID to attach to."
  type        = string
}
variable "virtual_name" {
  description = "The Instance Store Device Name (e.g., ephemeral0).virtual_name in the format ephemeral{0..N}.root_block_device"
  type        = string
}
variable "availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default."
  type        = string
}
variable "ebs_block_device" {
  description = "(Optional) Configuration block for additional EBS block devices to attach to the instance. See Block Devices below."
  type        = string
}
variable "last_service_error_id" {
  description = "ID of the last service error."
  type        = string
}
variable "layer_ids" {
  description = "(Required) List of the layers the instance will belong to."
  type        = string
}
variable "platform" {
  description = "Instance's platform."
  type        = string
}
variable "created_at" {
  description = "Time that the instance was created."
  type        = string
}
variable "instance_type" {
  description = "(Optional) Type of instance to start."
  type        = string
}
variable "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  type        = string
}
variable "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  type        = string
}
variable "volume_type" {
  description = "(Optional) Type of volume. Valid values are standard, gp2, or io1. Default is standard.Modifying any of the root_block_device~> strongNOTE: Currently, changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ec2_instance_id" {
  description = "EC2 instance ID."
  type        = string
}
variable "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  type        = string
}
variable "root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default. Valid values are ebs or instance-store."
  type        = string
}
variable "agent_version" {
  description = "(Optional) OpsWorks agent to install. Default is INHERIT."
  type        = string
}
variable "elastic_ip" {
  description = "(Optional) Instance Elastic IP address."
  type        = string
}
variable "root_block_device" {
  description = "(Optional) Configuration block for the root block device of the instance. See Block Devices below."
  type        = string
}
variable "state" {
  description = "(Optional) Desired state of the instance. Valid values are running or stopped."
  type        = string
}
variable "root_device_volume_id" {
  description = "Root device volume ID."
  type        = string
}
variable "ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  type        = string
}
variable "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances will use. Valid values are paravirtual or hvm.Block devicesEach of the *_block_deviceebs_block_device"
  type        = string
}
variable "device_name" {
  description = "Name of the block device to mount on the instance."
  type        = string
}
variable "registered_by" {
  description = "For registered instances, who performed the registration."
  type        = string
}
variable "iops" {
  description = "(Optional) Amount of provisioned IOPS. This must be set with a volume_type of io1."
  type        = string
}
variable "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  type        = string
}
variable "ephemeral_block_device" {
  description = "(Optional) Configuration block for ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below."
  type        = string
}
variable "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "ami_id" {
  description = "(Optional) AMI to use for the instance.  If an AMI is specified, os must be Custom."
  type        = string
}
variable "architecture" {
  description = "(Optional) Machine architecture for created instances.  Valid values are x86_64 or i386. The default is x86_64."
  type        = string
}
variable "auto_scaling_type" {
  description = "(Optional) Creates load-based or time-based instances.  Valid values are load, timer."
  type        = string
}
variable "delete" {
  description = "(Default 10m)"
  type        = string
}
variable "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination. Default is true."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "hostname" {
  description = "(Optional) Instance's host name."
  type        = string
}
variable "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  type        = string
}
variable "stack_id" {
  description = "(Required) Identifier of the stack the instance will belong to."
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
output "agent_version" {
  description = "(Optional) OpsWorks agent to install. Default is INHERIT."
  value       = aws_opsworks_instance.aws_opsworks_instance.agent_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "elastic_ip" {
  description = "(Optional) Instance Elastic IP address."
  value       = aws_opsworks_instance.aws_opsworks_instance.elastic_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_block_device" {
  description = "(Optional) Configuration block for the root block device of the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "state" {
  description = "(Optional) Desired state of the instance. Valid values are running or stopped."
  value       = aws_opsworks_instance.aws_opsworks_instance.state
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_device_volume_id" {
  description = "Root device volume ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_key_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances will use. Valid values are paravirtual or hvm.Block devicesEach of the *_block_deviceebs_block_device"
  value       = aws_opsworks_instance.aws_opsworks_instance.virtualization_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "Name of the block device to mount on the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registered_by" {
  description = "For registered instances, who performed the registration."
  value       = aws_opsworks_instance.aws_opsworks_instance.registered_by
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) Amount of provisioned IOPS. This must be set with a volume_type of io1."
  value       = aws_opsworks_instance.aws_opsworks_instance.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_agent_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ami_id" {
  description = "(Optional) AMI to use for the instance.  If an AMI is specified, os must be Custom."
  value       = aws_opsworks_instance.aws_opsworks_instance.ami_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "architecture" {
  description = "(Optional) Machine architecture for created instances.  Valid values are x86_64 or i386. The default is x86_64."
  value       = aws_opsworks_instance.aws_opsworks_instance.architecture
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_type" {
  description = "(Optional) Creates load-based or time-based instances.  Valid values are load, timer."
  value       = aws_opsworks_instance.aws_opsworks_instance.auto_scaling_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination. Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_on_termination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_block_device" {
  description = "(Optional) Configuration block for ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.ephemeral_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_dsa_key_fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hostname" {
  description = "(Optional) Instance's host name."
  value       = aws_opsworks_instance.aws_opsworks_instance.hostname
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stack_id" {
  description = "(Required) Identifier of the stack the instance will belong to."
  value       = aws_opsworks_instance.aws_opsworks_instance.stack_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_eip" {
  description = "(Optional) Whether to delete the Elastic IP on deletion."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_eip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "os" {
  description = "(Optional) Name of operating system that will be installed."
  value       = aws_opsworks_instance.aws_opsworks_instance.os
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip" {
  description = "Private IP address assigned to the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tenancy" {
  description = "(Optional) Instance tenancy to use. Valid values are default, dedicated or host."
  value       = aws_opsworks_instance.aws_opsworks_instance.tenancy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_ebs" {
  description = "(Optional) Whether to delete EBS volume on deletion. Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_ebs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ecs_cluster_arn" {
  description = "(Optional) ECS cluster's ARN for container instances."
  value       = aws_opsworks_instance.aws_opsworks_instance.ecs_cluster_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "install_updates_on_boot" {
  description = "(Optional) Controls where to install OS and package updates when the instance boots.  Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.install_updates_on_boot
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_optimized" {
  description = "(Optional) Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_opsworks_instance.aws_opsworks_instance.ebs_optimized
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "infrastructure_class" {
  description = "(Optional) For registered instances, infrastructure class: ec2 or on-premises."
  value       = aws_opsworks_instance.aws_opsworks_instance.infrastructure_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_profile_arn" {
  description = "(Optional) ARN of the instance's IAM profile."
  value       = aws_opsworks_instance.aws_opsworks_instance.instance_profile_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the OpsWorks instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Associated security groups."
  value       = aws_opsworks_instance.aws_opsworks_instance.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_rsa_key_fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_size" {
  description = "(Optional) Size of the volume in gigabytes."
  value       = aws_opsworks_instance.aws_opsworks_instance.volume_size
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  value       = aws_opsworks_instance.aws_opsworks_instance.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_name" {
  description = "The Instance Store Device Name (e.g., ephemeral0).virtual_name in the format ephemeral{0..N}.root_block_device"
  value       = aws_opsworks_instance.aws_opsworks_instance.virtual_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default."
  value       = aws_opsworks_instance.aws_opsworks_instance.availability_zone
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ebs_block_device" {
  description = "(Optional) Configuration block for additional EBS block devices to attach to the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.ebs_block_device
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_service_error_id" {
  description = "ID of the last service error."
  value       = aws_opsworks_instance.aws_opsworks_instance.last_service_error_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "layer_ids" {
  description = "(Required) List of the layers the instance will belong to."
  value       = aws_opsworks_instance.aws_opsworks_instance.layer_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Instance's platform."
  value       = aws_opsworks_instance.aws_opsworks_instance.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_id" {
  description = "(Optional) Subnet ID to attach to."
  value       = aws_opsworks_instance.aws_opsworks_instance.subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Time that the instance was created."
  value       = aws_opsworks_instance.aws_opsworks_instance.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_type" {
  description = "(Optional) Type of instance to start."
  value       = aws_opsworks_instance.aws_opsworks_instance.instance_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  value       = aws_opsworks_instance.aws_opsworks_instance.snapshot_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume_type" {
  description = "(Optional) Type of volume. Valid values are standard, gp2, or io1. Default is standard.Modifying any of the root_block_device~> strongNOTE: Currently, changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_instance.aws_opsworks_instance.volume_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ec2_instance_id" {
  description = "EC2 instance ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.ec2_instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default. Valid values are ebs or instance-store."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the OpsWorks instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Instance's platform."
  value       = aws_opsworks_instance.aws_opsworks_instance.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_rsa_key_fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  value       = aws_opsworks_instance.aws_opsworks_instance.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_at" {
  description = "Time that the instance was created."
  value       = aws_opsworks_instance.aws_opsworks_instance.created_at
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "Associated security groups."
  value       = aws_opsworks_instance.aws_opsworks_instance.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_ip" {
  description = "Private IP address assigned to the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_device_volume_id" {
  description = "Root device volume ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_service_error_id" {
  description = "ID of the last service error."
  value       = aws_opsworks_instance.aws_opsworks_instance.last_service_error_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registered_by" {
  description = "For registered instances, who performed the registration."
  value       = aws_opsworks_instance.aws_opsworks_instance.registered_by
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_agent_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_dsa_key_fingerprint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ec2_instance_id" {
  description = "EC2 instance ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.ec2_instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_dns
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
      "kind/name"                   = "aws_opsworks_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
