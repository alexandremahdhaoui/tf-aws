resource "aws_opsworks_instance" "aws_opsworks_instance" {
  ami_id                       = var.ami_id
  ebs_block_device             = var.ebs_block_device
  last_service_error_id        = var.last_service_error_id
  virtual_name                 = var.virtual_name
  delete                       = var.delete
  delete_ebs                   = var.delete_ebs
  device_name                  = var.device_name
  instance_profile_arn         = var.instance_profile_arn
  subnet_id                    = var.subnet_id
  architecture                 = var.architecture
  ecs_cluster_arn              = var.ecs_cluster_arn
  private_dns                  = var.private_dns
  volume_size                  = var.volume_size
  iops                         = var.iops
  registered_by                = var.registered_by
  snapshot_id                  = var.snapshot_id
  tenancy                      = var.tenancy
  os                           = var.os
  ec2_instance_id              = var.ec2_instance_id
  root_block_device            = var.root_block_device
  root_device_type             = var.root_device_type
  volume_type                  = var.volume_type
  delete_eip                   = var.delete_eip
  elastic_ip                   = var.elastic_ip
  reported_agent_version       = var.reported_agent_version
  ssh_key_name                 = var.ssh_key_name
  agent_version                = var.agent_version
  reported_os_family           = var.reported_os_family
  security_group_ids           = var.security_group_ids
  install_updates_on_boot      = var.install_updates_on_boot
  infrastructure_class         = var.infrastructure_class
  platform                     = var.platform
  stack_id                     = var.stack_id
  hostname                     = var.hostname
  status                       = var.status
  state                        = var.state
  create                       = var.create
  ebs_optimized                = var.ebs_optimized
  ephemeral_block_device       = var.ephemeral_block_device
  private_ip                   = var.private_ip
  public_dns                   = var.public_dns
  ssh_host_dsa_key_fingerprint = var.ssh_host_dsa_key_fingerprint
  availability_zone            = var.availability_zone
  id                           = var.id
  auto_scaling_type            = var.auto_scaling_type
  layer_ids                    = var.layer_ids
  ssh_host_rsa_key_fingerprint = var.ssh_host_rsa_key_fingerprint
  update                       = var.update
  instance_type                = var.instance_type
  delete_on_termination        = var.delete_on_termination
  public_ip                    = var.public_ip
  reported_os_name             = var.reported_os_name
  reported_os_version          = var.reported_os_version
  root_device_volume_id        = var.root_device_volume_id
  virtualization_type          = var.virtualization_type
  created_at                   = var.created_at
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "device_name" {
  description = "Name of the block device to mount on the instance."
  type        = string
  default     = ""
}
variable "instance_profile_arn" {
  description = "(Optional) ARN of the instance's IAM profile."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Optional) Subnet ID to attach to."
  type        = string
  default     = ""
}
variable "architecture" {
  description = "(Optional) Machine architecture for created instances.  Valid values are x86_64 or i386. The default is x86_64."
  type        = string
  default     = ""
}
variable "delete_ebs" {
  description = "(Optional) Whether to delete EBS volume on deletion. Default is true."
  type        = string
  default     = ""
}
variable "ecs_cluster_arn" {
  description = "(Optional) ECS cluster's ARN for container instances."
  type        = string
  default     = ""
}
variable "volume_size" {
  description = "(Optional) Size of the volume in gigabytes."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) Amount of provisioned IOPS. This must be set with a volume_type of io1."
  type        = string
  default     = ""
}
variable "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  type        = string
  default     = ""
}
variable "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  type        = string
  default     = ""
}
variable "tenancy" {
  description = "(Optional) Instance tenancy to use. Valid values are default, dedicated or host."
  type        = string
  default     = ""
}
variable "os" {
  description = "(Optional) Name of operating system that will be installed."
  type        = string
  default     = ""
}
variable "registered_by" {
  description = "For registered instances, who performed the registration."
  type        = string
  default     = ""
}
variable "root_block_device" {
  description = "(Optional) Configuration block for the root block device of the instance. See Block Devices below."
  type        = string
  default     = ""
}
variable "root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default. Valid values are ebs or instance-store."
  type        = string
  default     = ""
}
variable "volume_type" {
  description = "(Optional) Type of volume. Valid values are standard, gp2, or io1. Default is standard.Modifying any of the root_block_device~> strongNOTE: Currently, changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "delete_eip" {
  description = "(Optional) Whether to delete the Elastic IP on deletion."
  type        = string
  default     = ""
}
variable "ec2_instance_id" {
  description = "EC2 instance ID."
  type        = string
  default     = ""
}
variable "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  type        = string
  default     = ""
}
variable "ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  type        = string
  default     = ""
}
variable "agent_version" {
  description = "(Optional) OpsWorks agent to install. Default is INHERIT."
  type        = string
  default     = ""
}
variable "elastic_ip" {
  description = "(Optional) Instance Elastic IP address."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "Associated security groups."
  type        = string
  default     = ""
}
variable "install_updates_on_boot" {
  description = "(Optional) Controls where to install OS and package updates when the instance boots.  Default is true."
  type        = string
  default     = ""
}
variable "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  type        = string
  default     = ""
}
variable "platform" {
  description = "Instance's platform."
  type        = string
  default     = ""
}
variable "stack_id" {
  description = "(Required) Identifier of the stack the instance will belong to."
  type        = string
}
variable "hostname" {
  description = "(Optional) Instance's host name."
  type        = string
  default     = ""
}
variable "infrastructure_class" {
  description = "(Optional) For registered instances, infrastructure class: ec2 or on-premises."
  type        = string
  default     = ""
}
variable "state" {
  description = "(Optional) Desired state of the instance. Valid values are running or stopped."
  type        = string
  default     = ""
}
variable "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "ebs_optimized" {
  description = "(Optional) Whether the launched EC2 instance will be EBS-optimized."
  type        = string
  default     = ""
}
variable "ephemeral_block_device" {
  description = "(Optional) Configuration block for ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below."
  type        = string
  default     = ""
}
variable "private_ip" {
  description = "Private IP address assigned to the instance."
  type        = string
  default     = ""
}
variable "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  type        = string
  default     = ""
}
variable "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  type        = string
  default     = ""
}
variable "availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "auto_scaling_type" {
  description = "(Optional) Creates load-based or time-based instances.  Valid values are load, timer."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the OpsWorks instance."
  type        = string
  default     = ""
}
variable "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Optional) Type of instance to start."
  type        = string
  default     = ""
}
variable "layer_ids" {
  description = "(Required) List of the layers the instance will belong to."
  type        = string
}
variable "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  type        = string
  default     = ""
}
variable "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  type        = string
  default     = ""
}
variable "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  type        = string
  default     = ""
}
variable "root_device_volume_id" {
  description = "Root device volume ID."
  type        = string
  default     = ""
}
variable "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances will use. Valid values are paravirtual or hvm.Block devicesEach of the *_block_deviceebs_block_device"
  type        = string
  default     = ""
}
variable "created_at" {
  description = "Time that the instance was created."
  type        = string
  default     = ""
}
variable "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination. Default is true."
  type        = string
  default     = ""
}
variable "ami_id" {
  description = "(Optional) AMI to use for the instance.  If an AMI is specified, os must be Custom."
  type        = string
  default     = ""
}
variable "last_service_error_id" {
  description = "ID of the last service error."
  type        = string
  default     = ""
}
variable "virtual_name" {
  description = "The Instance Store Device Name (e.g., ephemeral0).virtual_name in the format ephemeral{0..N}.root_block_device"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "ebs_block_device" {
  description = "(Optional) Configuration block for additional EBS block devices to attach to the instance. See Block Devices below."
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
output "agent_version" {
  description = "(Optional) OpsWorks agent to install. Default is INHERIT."
  value       = aws_opsworks_instance.aws_opsworks_instance.agent_version
}
output "elastic_ip" {
  description = "(Optional) Instance Elastic IP address."
  value       = aws_opsworks_instance.aws_opsworks_instance.elastic_ip
}
output "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_agent_version
}
output "ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_key_name
}
output "install_updates_on_boot" {
  description = "(Optional) Controls where to install OS and package updates when the instance boots.  Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.install_updates_on_boot
}
output "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_family
}
output "security_group_ids" {
  description = "Associated security groups."
  value       = aws_opsworks_instance.aws_opsworks_instance.security_group_ids
}
output "hostname" {
  description = "(Optional) Instance's host name."
  value       = aws_opsworks_instance.aws_opsworks_instance.hostname
}
output "infrastructure_class" {
  description = "(Optional) For registered instances, infrastructure class: ec2 or on-premises."
  value       = aws_opsworks_instance.aws_opsworks_instance.infrastructure_class
}
output "platform" {
  description = "Instance's platform."
  value       = aws_opsworks_instance.aws_opsworks_instance.platform
}
output "stack_id" {
  description = "(Required) Identifier of the stack the instance will belong to."
  value       = aws_opsworks_instance.aws_opsworks_instance.stack_id
}
output "state" {
  description = "(Optional) Desired state of the instance. Valid values are running or stopped."
  value       = aws_opsworks_instance.aws_opsworks_instance.state
}
output "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  value       = aws_opsworks_instance.aws_opsworks_instance.status
}
output "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_dsa_key_fingerprint
}
output "availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default."
  value       = aws_opsworks_instance.aws_opsworks_instance.availability_zone
}
output "create" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.create
}
output "ebs_optimized" {
  description = "(Optional) Whether the launched EC2 instance will be EBS-optimized."
  value       = aws_opsworks_instance.aws_opsworks_instance.ebs_optimized
}
output "ephemeral_block_device" {
  description = "(Optional) Configuration block for ephemeral (also known as \"Instance Store\") volumes on the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.ephemeral_block_device
}
output "private_ip" {
  description = "Private IP address assigned to the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_ip
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_dns
}
output "auto_scaling_type" {
  description = "(Optional) Creates load-based or time-based instances.  Valid values are load, timer."
  value       = aws_opsworks_instance.aws_opsworks_instance.auto_scaling_type
}
output "id" {
  description = "ID of the OpsWorks instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.id
}
output "instance_type" {
  description = "(Optional) Type of instance to start."
  value       = aws_opsworks_instance.aws_opsworks_instance.instance_type
}
output "layer_ids" {
  description = "(Required) List of the layers the instance will belong to."
  value       = aws_opsworks_instance.aws_opsworks_instance.layer_ids
}
output "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_rsa_key_fingerprint
}
output "update" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.update
}
output "virtualization_type" {
  description = "(Optional) Keyword to choose what virtualization mode created instances will use. Valid values are paravirtual or hvm.Block devicesEach of the *_block_deviceebs_block_device"
  value       = aws_opsworks_instance.aws_opsworks_instance.virtualization_type
}
output "created_at" {
  description = "Time that the instance was created."
  value       = aws_opsworks_instance.aws_opsworks_instance.created_at
}
output "delete_on_termination" {
  description = "(Optional) Whether the volume should be destroyed on instance termination. Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_on_termination
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_ip
}
output "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_name
}
output "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_version
}
output "root_device_volume_id" {
  description = "Root device volume ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_volume_id
}
output "ami_id" {
  description = "(Optional) AMI to use for the instance.  If an AMI is specified, os must be Custom."
  value       = aws_opsworks_instance.aws_opsworks_instance.ami_id
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.delete
}
output "ebs_block_device" {
  description = "(Optional) Configuration block for additional EBS block devices to attach to the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.ebs_block_device
}
output "last_service_error_id" {
  description = "ID of the last service error."
  value       = aws_opsworks_instance.aws_opsworks_instance.last_service_error_id
}
output "virtual_name" {
  description = "The Instance Store Device Name (e.g., ephemeral0).virtual_name in the format ephemeral{0..N}.root_block_device"
  value       = aws_opsworks_instance.aws_opsworks_instance.virtual_name
}
output "architecture" {
  description = "(Optional) Machine architecture for created instances.  Valid values are x86_64 or i386. The default is x86_64."
  value       = aws_opsworks_instance.aws_opsworks_instance.architecture
}
output "delete_ebs" {
  description = "(Optional) Whether to delete EBS volume on deletion. Default is true."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_ebs
}
output "device_name" {
  description = "Name of the block device to mount on the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.device_name
}
output "instance_profile_arn" {
  description = "(Optional) ARN of the instance's IAM profile."
  value       = aws_opsworks_instance.aws_opsworks_instance.instance_profile_arn
}
output "subnet_id" {
  description = "(Optional) Subnet ID to attach to."
  value       = aws_opsworks_instance.aws_opsworks_instance.subnet_id
}
output "ecs_cluster_arn" {
  description = "(Optional) ECS cluster's ARN for container instances."
  value       = aws_opsworks_instance.aws_opsworks_instance.ecs_cluster_arn
}
output "iops" {
  description = "(Optional) Amount of provisioned IOPS. This must be set with a volume_type of io1."
  value       = aws_opsworks_instance.aws_opsworks_instance.iops
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_dns
}
output "volume_size" {
  description = "(Optional) Size of the volume in gigabytes."
  value       = aws_opsworks_instance.aws_opsworks_instance.volume_size
}
output "os" {
  description = "(Optional) Name of operating system that will be installed."
  value       = aws_opsworks_instance.aws_opsworks_instance.os
}
output "registered_by" {
  description = "For registered instances, who performed the registration."
  value       = aws_opsworks_instance.aws_opsworks_instance.registered_by
}
output "snapshot_id" {
  description = "(Optional) Snapshot ID to mount."
  value       = aws_opsworks_instance.aws_opsworks_instance.snapshot_id
}
output "tenancy" {
  description = "(Optional) Instance tenancy to use. Valid values are default, dedicated or host."
  value       = aws_opsworks_instance.aws_opsworks_instance.tenancy
}
output "delete_eip" {
  description = "(Optional) Whether to delete the Elastic IP on deletion."
  value       = aws_opsworks_instance.aws_opsworks_instance.delete_eip
}
output "ec2_instance_id" {
  description = "EC2 instance ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.ec2_instance_id
}
output "root_block_device" {
  description = "(Optional) Configuration block for the root block device of the instance. See Block Devices below."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_block_device
}
output "root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default. Valid values are ebs or instance-store."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_type
}
output "volume_type" {
  description = "(Optional) Type of volume. Valid values are standard, gp2, or io1. Default is standard.Modifying any of the root_block_device~> strongNOTE: Currently, changes to *_block_device configuration of emexistingtaint command.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_instance.aws_opsworks_instance.volume_type
}
output "created_at" {
  description = "Time that the instance was created."
  value       = aws_opsworks_instance.aws_opsworks_instance.created_at
}
output "ec2_instance_id" {
  description = "EC2 instance ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.ec2_instance_id
}
output "public_dns" {
  description = "Public DNS name assigned to the instance. For EC2-VPC, this is only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_dns
}
output "public_ip" {
  description = "Public IP address assigned to the instance, if applicable."
  value       = aws_opsworks_instance.aws_opsworks_instance.public_ip
}
output "reported_os_family" {
  description = "For registered instances, the reported operating system family."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_family
}
output "root_device_volume_id" {
  description = "Root device volume ID."
  value       = aws_opsworks_instance.aws_opsworks_instance.root_device_volume_id
}
output "ssh_host_dsa_key_fingerprint" {
  description = "SSH key's Deep Security Agent (DSA) fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_dsa_key_fingerprint
}
output "ssh_host_rsa_key_fingerprint" {
  description = "SSH key's RSA fingerprint."
  value       = aws_opsworks_instance.aws_opsworks_instance.ssh_host_rsa_key_fingerprint
}
output "update" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.update
}
output "id" {
  description = "ID of the OpsWorks instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.id
}
output "platform" {
  description = "Instance's platform."
  value       = aws_opsworks_instance.aws_opsworks_instance.platform
}
output "private_dns" {
  description = "Private DNS name assigned to the instance. Can only be used inside the Amazon EC2, and only available if you've enabled DNS hostnames for your VPC."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_dns
}
output "registered_by" {
  description = "For registered instances, who performed the registration."
  value       = aws_opsworks_instance.aws_opsworks_instance.registered_by
}
output "reported_agent_version" {
  description = "Instance's reported AWS OpsWorks Stacks agent version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_agent_version
}
output "reported_os_name" {
  description = "For registered instances, the reported operating system name."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_name
}
output "security_group_ids" {
  description = "Associated security groups."
  value       = aws_opsworks_instance.aws_opsworks_instance.security_group_ids
}
output "create" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.create
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_opsworks_instance.aws_opsworks_instance.delete
}
output "last_service_error_id" {
  description = "ID of the last service error."
  value       = aws_opsworks_instance.aws_opsworks_instance.last_service_error_id
}
output "reported_os_version" {
  description = "For registered instances, the reported operating system version."
  value       = aws_opsworks_instance.aws_opsworks_instance.reported_os_version
}
output "private_ip" {
  description = "Private IP address assigned to the instance."
  value       = aws_opsworks_instance.aws_opsworks_instance.private_ip
}
output "status" {
  description = "Instance status. Will be one of booting, connection_lost, online, pending, rebooting, requested, running_setup, setup_failed, shutting_down, start_failed, stop_failed, stopped, stopping, terminated, or terminating.TimeoutsConfiguration options:"
  value       = aws_opsworks_instance.aws_opsworks_instance.status
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
      "kind/name"                   = "aws_opsworks_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
