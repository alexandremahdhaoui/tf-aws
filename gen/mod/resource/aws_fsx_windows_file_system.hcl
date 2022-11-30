resource "aws_fsx_windows_file_system" "aws_fsx_windows_file_system" {
  arn                                    = var.arn
  preferred_subnet_id                    = var.preferred_subnet_id
  security_group_ids                     = var.security_group_ids
  dns_ips                                = var.dns_ips
  file_system_administrators_group       = var.file_system_administrators_group
  vpc_id                                 = var.vpc_id
  active_directory_id                    = var.active_directory_id
  automatic_backup_retention_days        = var.automatic_backup_retention_days
  copy_tags_to_backups                   = var.copy_tags_to_backups
  skip_final_backup                      = var.skip_final_backup
  throughput_capacity                    = var.throughput_capacity
  username                               = var.username
  delete                                 = var.delete
  id                                     = var.id
  kms_key_id                             = var.kms_key_id
  storage_capacity                       = var.storage_capacity
  tags                                   = var.tags
  backup_id                              = var.backup_id
  dns_name                               = var.dns_name
  owner_id                               = var.owner_id
  file_share_access_audit_log_level      = var.file_share_access_audit_log_level
  network_interface_ids                  = var.network_interface_ids
  preferred_file_server_ip               = var.preferred_file_server_ip
  aliases                                = var.aliases
  deployment_type                        = var.deployment_type
  file_access_audit_log_level            = var.file_access_audit_log_level
  subnet_ids                             = var.subnet_ids
  organizational_unit_distinguished_name = var.organizational_unit_distinguished_name
  remote_administration_endpoint         = var.remote_administration_endpoint
  storage_type                           = var.storage_type
  domain_name                            = var.domain_name
  password                               = var.password
  self_managed_active_directory          = var.self_managed_active_directory
  audit_log_configuration                = var.audit_log_configuration
  audit_log_destination                  = var.audit_log_destination
  create                                 = var.create
  daily_automatic_backup_start_time      = var.daily_automatic_backup_start_time
  tags_all                               = var.tags_all
  weekly_maintenance_start_time          = var.weekly_maintenance_start_time
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "preferred_file_server_ip" {
  description = "The IP address of the primary, or preferred, file server."
  type        = string
}
variable "aliases" {
  description = "(Optional) An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see Working with DNS Aliases"
  type        = string
}
variable "deployment_type" {
  description = "(Optional) Specifies the file system deployment type, valid values are MULTI_AZ_1, SINGLE_AZ_1 and SINGLE_AZ_2. Default value is SINGLE_AZ_1."
  type        = string
}
variable "file_access_audit_log_level" {
  description = "(Optional) Sets which attempt type is logged by Amazon FSx for file and folder accesses. Valid values are SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE, and DISABLED. Default value is DISABLED."
  type        = string
}
variable "file_share_access_audit_log_level" {
  description = "(Optional) Sets which attempt type is logged by Amazon FSx for file share accesses. Valid values are SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE, and DISABLED. Default value is DISABLED.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible."
  type        = string
}
variable "organizational_unit_distinguished_name" {
  description = "(Optional) The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, OU=FSx,DC=yourdomain,DC=corp,DC=com. Only accepts OU as the direct parent of the file system. If none is provided, the FSx file system is created in the default location of your self-managed AD directory. To learn more, see RFC 2253.audit_log_configuration"
  type        = string
}
variable "remote_administration_endpoint" {
  description = "For MULTI_AZ_1 deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For SINGLE_AZ_1 deployment types, this is the DNS name of the file system.TimeoutsConfiguration options:"
  type        = string
}
variable "storage_type" {
  description = "(Optional) Specifies the storage type, Valid values are SSD and HDD. HDD is supported on SINGLE_AZ_2 and MULTI_AZ_1 Windows file system deployment types. Default value is SSD.self_managed_active_directoryself_managed_active_directory configuration block:"
  type        = string
}
variable "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set deployment_type to MULTI_AZ_1."
  type        = string
}
variable "self_managed_active_directory" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with active_directory_id. Detailed below."
  type        = string
}
variable "audit_log_configuration" {
  description = "(Optional) The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See below."
  type        = string
}
variable "audit_log_destination" {
  description = "(Optional) The Amazon Resource Name (ARN) for the destination of the audit logs. The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis Data Firehose delivery stream ARN. Can be specified when file_access_audit_log_level and file_share_access_audit_log_level are not set to DISABLED. The name of the Amazon CloudWatch Logs log group must begin with the /aws/fsx prefix. The name of the Amazon Kinesis Data Firehouse delivery stream must begin with the aws-fsx prefix. If you do not provide a destination in audit_log_destionation, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/windows log group."
  type        = string
}
variable "create" {
  description = "(Default 45m)"
  type        = string
}
variable "domain_name" {
  description = "(Required) The fully qualified domain name of the self-managed AD directory. For example, corp.example.com."
  type        = string
}
variable "password" {
  description = "(Required) The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  type        = string
}
variable "daily_automatic_backup_start_time" {
  description = "(Optional) The preferred time (in HH:MM format) to take daily automatic backups, in the UTC time zone."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "preferred_subnet_id" {
  description = "(Optional) Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is MULTI_AZ_1."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  type        = string
}
variable "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system."
  type        = string
}
variable "active_directory_id" {
  description = "(Optional) The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with self_managed_active_directory."
  type        = string
}
variable "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Minimum of 0 and maximum of 90. Defaults to 7. Set to 0 to disable."
  type        = string
}
variable "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to false."
  type        = string
}
variable "dns_ips" {
  description = "(Required) A list of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory. The IP addresses need to be either in the same VPC CIDR range as the file system or in the private IP version 4 (IPv4) address ranges as specified in RFC 1918."
  type        = string
}
variable "file_system_administrators_group" {
  description = "(Optional) The name of the domain group whose members are granted administrative privileges for the file system. Administrative privileges include taking ownership of files and folders, and setting audit controls (audit ACLs) on files and folders. The group that you specify must already exist in your domain. Defaults to Domain Admins."
  type        = string
}
variable "username" {
  description = "(Required) The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key."
  type        = string
}
variable "skip_final_backup" {
  description = "(Optional) When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to false."
  type        = string
}
variable "throughput_capacity" {
  description = "(Required) Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of 8 and maximum of 2048."
  type        = string
}
variable "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  type        = string
}
variable "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.corp.example.com (domain name matching the Active Directory domain name)"
  type        = string
}
variable "owner_id" {
  description = "AWS account identifier that created the file system."
  type        = string
}
variable "storage_capacity" {
  description = "(Optional) Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to HDD the minimum value is 2000. Required when not creating filesystem for a backup."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_subnet_id" {
  description = "(Optional) Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is MULTI_AZ_1."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.preferred_subnet_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_administrators_group" {
  description = "(Optional) The name of the domain group whose members are granted administrative privileges for the file system. Administrative privileges include taking ownership of files and folders, and setting audit controls (audit ACLs) on files and folders. The group that you specify must already exist in your domain. Defaults to Domain Admins."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.file_system_administrators_group
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "active_directory_id" {
  description = "(Optional) The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with self_managed_active_directory."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.active_directory_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Minimum of 0 and maximum of 90. Defaults to 7. Set to 0 to disable."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.automatic_backup_retention_days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to false."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.copy_tags_to_backups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_ips" {
  description = "(Required) A list of up to two IP addresses of DNS servers or domain controllers in the self-managed AD directory. The IP addresses need to be either in the same VPC CIDR range as the file system or in the private IP version 4 (IPv4) address ranges as specified in RFC 1918."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.dns_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "throughput_capacity" {
  description = "(Required) Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of 8 and maximum of 2048."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.throughput_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "username" {
  description = "(Required) The user name for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.username
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skip_final_backup" {
  description = "(Optional) When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to false."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.skip_final_backup
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.backup_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.corp.example.com (domain name matching the Active Directory domain name)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_capacity" {
  description = "(Optional) Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to HDD the minimum value is 2000. Required when not creating filesystem for a backup."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.storage_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_file_server_ip" {
  description = "The IP address of the primary, or preferred, file server."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.preferred_file_server_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aliases" {
  description = "(Optional) An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see Working with DNS Aliases"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.aliases
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_type" {
  description = "(Optional) Specifies the file system deployment type, valid values are MULTI_AZ_1, SINGLE_AZ_1 and SINGLE_AZ_2. Default value is SINGLE_AZ_1."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.deployment_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_access_audit_log_level" {
  description = "(Optional) Sets which attempt type is logged by Amazon FSx for file and folder accesses. Valid values are SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE, and DISABLED. Default value is DISABLED."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.file_access_audit_log_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_share_access_audit_log_level" {
  description = "(Optional) Sets which attempt type is logged by Amazon FSx for file share accesses. Valid values are SUCCESS_ONLY, FAILURE_ONLY, SUCCESS_AND_FAILURE, and DISABLED. Default value is DISABLED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.file_share_access_audit_log_level
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organizational_unit_distinguished_name" {
  description = "(Optional) The fully qualified distinguished name of the organizational unit within your self-managed AD directory that the Windows File Server instance will join. For example, OU=FSx,DC=yourdomain,DC=corp,DC=com. Only accepts OU as the direct parent of the file system. If none is provided, the FSx file system is created in the default location of your self-managed AD directory. To learn more, see RFC 2253.audit_log_configuration"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.organizational_unit_distinguished_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "remote_administration_endpoint" {
  description = "For MULTI_AZ_1 deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For SINGLE_AZ_1 deployment types, this is the DNS name of the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.remote_administration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_type" {
  description = "(Optional) Specifies the storage type, Valid values are SSD and HDD. HDD is supported on SINGLE_AZ_2 and MULTI_AZ_1 Windows file system deployment types. Default value is SSD.self_managed_active_directoryself_managed_active_directory configuration block:"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.storage_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set deployment_type to MULTI_AZ_1."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "password" {
  description = "(Required) The password for the service account on your self-managed AD domain that Amazon FSx will use to join to your AD domain."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.password
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "self_managed_active_directory" {
  description = "(Optional) Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with active_directory_id. Detailed below."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.self_managed_active_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit_log_configuration" {
  description = "(Optional) The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See below."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.audit_log_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit_log_destination" {
  description = "(Optional) The Amazon Resource Name (ARN) for the destination of the audit logs. The destination can be any Amazon CloudWatch Logs log group ARN or Amazon Kinesis Data Firehose delivery stream ARN. Can be specified when file_access_audit_log_level and file_share_access_audit_log_level are not set to DISABLED. The name of the Amazon CloudWatch Logs log group must begin with the /aws/fsx prefix. The name of the Amazon Kinesis Data Firehouse delivery stream must begin with the aws-fsx prefix. If you do not provide a destination in audit_log_destionation, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/windows log group."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.audit_log_destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 45m)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain_name" {
  description = "(Required) The fully qualified domain name of the self-managed AD directory. For example, corp.example.com."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "daily_automatic_backup_start_time" {
  description = "(Optional) The preferred time (in HH:MM format) to take daily automatic backups, in the UTC time zone."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.daily_automatic_backup_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.weekly_maintenance_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "preferred_file_server_ip" {
  description = "The IP address of the primary, or preferred, file server."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.preferred_file_server_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "remote_administration_endpoint" {
  description = "For MULTI_AZ_1 deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For SINGLE_AZ_1 deployment types, this is the DNS name of the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.remote_administration_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 45m)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 45m)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.corp.example.com (domain name matching the Active Directory domain name)"
  value       = aws_fsx_windows_file_system.aws_fsx_windows_file_system.dns_name
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
      "kind/name"                   = "aws_fsx_windows_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
