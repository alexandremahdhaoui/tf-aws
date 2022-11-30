resource "aws_fsx_openzfs_file_system" "aws_fsx_openzfs_file_system" {
  deployment_type                   = var.deployment_type
  root_volume_id                    = var.root_volume_id
  backup_id                         = var.backup_id
  copy_tags_to_backups              = var.copy_tags_to_backups
  copy_tags_to_snapshots            = var.copy_tags_to_snapshots
  disk_iops_configuration           = var.disk_iops_configuration
  iops                              = var.iops
  kms_key_id                        = var.kms_key_id
  mode                              = var.mode
  nfs_exports                       = var.nfs_exports
  arn                               = var.arn
  type                              = var.type
  vpc_id                            = var.vpc_id
  weekly_maintenance_start_time     = var.weekly_maintenance_start_time
  tags                              = var.tags
  dns_name                          = var.dns_name
  storage_capacity_quota_gib        = var.storage_capacity_quota_gib
  storage_type                      = var.storage_type
  subnet_ids                        = var.subnet_ids
  create                            = var.create
  read_only                         = var.read_only
  client_configurations             = var.client_configurations
  options                           = var.options
  root_volume_configuration         = var.root_volume_configuration
  storage_capacity                  = var.storage_capacity
  tags_all                          = var.tags_all
  throughput_capacity               = var.throughput_capacity
  user_and_group_quotas             = var.user_and_group_quotas
  automatic_backup_retention_days   = var.automatic_backup_retention_days
  clients                           = var.clients
  network_interface_ids             = var.network_interface_ids
  owner_id                          = var.owner_id
  record_size_kib                   = var.record_size_kib
  security_group_ids                = var.security_group_ids
  copy_tags_to_volumes              = var.copy_tags_to_volumes
  data_compression_type             = var.data_compression_type
  id                                = var.id
  update                            = var.update
  daily_automatic_backup_start_time = var.daily_automatic_backup_start_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "disk_iops_configuration" {
  description = "(Optional) The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See Disk Iops Configuration Below."
  type        = string
}
variable "iops" {
  description = "(Optional) - The total number of SSD IOPS provisioned for the file system."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key."
  type        = string
}
variable "mode" {
  description = "(Optional) - Specifies whether the number of IOPS for the file system is using the system. Valid values are AUTOMATIC and USER_PROVISIONED. Default value is AUTOMATIC.Root Volume Configuration"
  type        = string
}
variable "nfs_exports" {
  description = "(Optional) - NFS export configuration for the root volume. Exactly 1 item. See NFS Exports Below."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false."
  type        = string
}
variable "copy_tags_to_snapshots" {
  description = "(Optional) - A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  type        = string
}
variable "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone.Disk Iops Configuration"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "type" {
  description = "(Required) - A value that specifies whether the quota applies to a user or group. Valid values are USER or GROUP.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  type        = string
}
variable "storage_type" {
  description = "(Optional) The filesystem storage type. Only SSD is supported."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. Exactly 1 subnet need to be provided."
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  type        = string
}
variable "storage_capacity_quota_gib" {
  description = "(Required) - The amount of storage that the user or group can use in gibibytes (GiB). Valid values between 0 and 2147483647"
  type        = string
}
variable "client_configurations" {
  description = "(Required) - A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See [Client Configurations](#client configurations) Below.Client Configurations"
  type        = string
}
variable "read_only" {
  description = "(Optional) - specifies whether the volume is read-only. Default is false."
  type        = string
}
variable "storage_capacity" {
  description = "(Required) The storage capacity (GiB) of the file system. Valid values between 64 and 524288."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "throughput_capacity" {
  description = "(Required) Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of 64 and maximum of 4096."
  type        = string
}
variable "user_and_group_quotas" {
  description = "(Optional) - Specify how much storage users or groups can use on the volume. Maximum of 100 items. See User and Group Quotas Below.NFS Exports"
  type        = string
}
variable "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days."
  type        = string
}
variable "options" {
  description = "(Required) -  The options to use when mounting the file system. Maximum of 20 items. See the Linix NFS exports man page for more information. crossmount and sync are used by default.User and Group Quotas"
  type        = string
}
variable "root_volume_configuration" {
  description = "(Optional) The configuration for the root volume of the file system. All other volumes are children or the root volume. See Root Volume Configuration Below."
  type        = string
}
variable "clients" {
  description = "(Required) - A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client."
  type        = string
}
variable "record_size_kib" {
  description = "(Optional) - Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are 4, 8, 16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  type        = string
}
variable "copy_tags_to_volumes" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  type        = string
}
variable "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  type        = string
}
variable "owner_id" {
  description = "AWS account identifier that created the file system."
  type        = string
}
variable "update" {
  description = "(Default 60m)"
  type        = string
}
variable "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires automatic_backup_retention_days to be set."
  type        = string
}
variable "data_compression_type" {
  description = "(Optional) - Method used to compress the data on the volume. Valid values are LZ4, NONE or ZSTD. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume."
  type        = string
}
variable "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  type        = string
}
variable "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  type        = string
}
variable "deployment_type" {
  description = "(Required) - The filesystem deployment type. Only SINGLE_AZ_1 is supported."
  type        = string
}
variable "root_volume_id" {
  description = "Identifier of the root volume, e.g., fsvol-12345678"
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
output "clients" {
  description = "(Required) - A value that specifies who can mount the file system. You can provide a wildcard character (*), an IP address (0.0.0.0), or a CIDR address (192.0.2.0/24. By default, Amazon FSx uses the wildcard character when specifying the client."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.clients
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "record_size_kib" {
  description = "(Optional) - Specifies the record size of an OpenZFS root volume, in kibibytes (KiB). Valid values are 4, 8, 16, 32, 64, 128, 256, 512, or 1024 KiB. The default is 128 KiB."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.record_size_kib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags_to_volumes" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.copy_tags_to_volumes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. Requires automatic_backup_retention_days to be set."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.daily_automatic_backup_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_compression_type" {
  description = "(Optional) - Method used to compress the data on the volume. Valid values are LZ4, NONE or ZSTD. Child volumes that don't specify compression option will inherit from parent volume. This option on file system applies to the root volume."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.data_compression_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_id" {
  description = "Identifier of the root volume, e.g., fsvol-12345678"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.root_volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.backup_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_type" {
  description = "(Required) - The filesystem deployment type. Only SINGLE_AZ_1 is supported."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.deployment_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags_to_snapshots" {
  description = "(Optional) - A boolean flag indicating whether tags for the file system should be copied to snapshots. The default value is false."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.copy_tags_to_snapshots
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "disk_iops_configuration" {
  description = "(Optional) The SSD IOPS configuration for the Amazon FSx for OpenZFS file system. See Disk Iops Configuration Below."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.disk_iops_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iops" {
  description = "(Optional) - The total number of SSD IOPS provisioned for the file system."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.iops
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, Defaults to an AWS managed KMS Key."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode" {
  description = "(Optional) - Specifies whether the number of IOPS for the file system is using the system. Valid values are AUTOMATIC and USER_PROVISIONED. Default value is AUTOMATIC.Root Volume Configuration"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs_exports" {
  description = "(Optional) - NFS export configuration for the root volume. Exactly 1 item. See NFS Exports Below."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.nfs_exports
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to backups. The default value is false."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.copy_tags_to_backups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone.Disk Iops Configuration"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.weekly_maintenance_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) - A value that specifies whether the quota applies to a user or group. Valid values are USER or GROUP.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_capacity_quota_gib" {
  description = "(Required) - The amount of storage that the user or group can use in gibibytes (GiB). Valid values between 0 and 2147483647"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.storage_capacity_quota_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "(Optional) The filesystem storage type. Only SSD is supported."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. Exactly 1 subnet need to be provided."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_configurations" {
  description = "(Required) - A list of configuration objects that contain the client and options for mounting the OpenZFS file system. Maximum of 25 items. See [Client Configurations](#client configurations) Below.Client Configurations"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.client_configurations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read_only" {
  description = "(Optional) - specifies whether the volume is read-only. Default is false."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.read_only
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_configuration" {
  description = "(Optional) The configuration for the root volume of the file system. All other volumes are children or the root volume. See Root Volume Configuration Below."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.root_volume_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_capacity" {
  description = "(Required) The storage capacity (GiB) of the file system. Valid values between 64 and 524288."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.storage_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput_capacity" {
  description = "(Required) Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of 64 and maximum of 4096."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.throughput_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_and_group_quotas" {
  description = "(Optional) - Specify how much storage users or groups can use on the volume. Maximum of 100 items. See User and Group Quotas Below.NFS Exports"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.user_and_group_quotas
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.automatic_backup_retention_days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "options" {
  description = "(Required) -  The options to use when mounting the file system. Maximum of 20 items. See the Linix NFS exports man page for more information. crossmount and sync are used by default.User and Group Quotas"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible The first network interface returned is the primary network interface."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_volume_id" {
  description = "Identifier of the root volume, e.g., fsvol-12345678"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.root_volume_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 60m)"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_openzfs_file_system.aws_fsx_openzfs_file_system.vpc_id
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
      "kind/name"                   = "aws_fsx_openzfs_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
