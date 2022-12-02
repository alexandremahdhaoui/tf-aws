resource "aws_fsx_lustre_file_system" "aws_fsx_lustre_file_system" {
  security_group_ids                = var.security_group_ids
  storage_type                      = var.storage_type
  weekly_maintenance_start_time     = var.weekly_maintenance_start_time
  mount_name                        = var.mount_name
  daily_automatic_backup_start_time = var.daily_automatic_backup_start_time
  destination                       = var.destination
  automatic_backup_retention_days   = var.automatic_backup_retention_days
  backup_id                         = var.backup_id
  drive_cache_type                  = var.drive_cache_type
  export_path                       = var.export_path
  owner_id                          = var.owner_id
  subnet_ids                        = var.subnet_ids
  tags                              = var.tags
  auto_import_policy                = var.auto_import_policy
  create                            = var.create
  dns_name                          = var.dns_name
  import_path                       = var.import_path
  kms_key_id                        = var.kms_key_id
  level                             = var.level
  tags_all                          = var.tags_all
  vpc_id                            = var.vpc_id
  copy_tags_to_backups              = var.copy_tags_to_backups
  imported_file_chunk_size          = var.imported_file_chunk_size
  log_configuration                 = var.log_configuration
  network_interface_ids             = var.network_interface_ids
  storage_capacity                  = var.storage_capacity
  data_compression_type             = var.data_compression_type
  file_system_type_version          = var.file_system_type_version
  update                            = var.update
  deployment_type                   = var.deployment_type
  per_unit_storage_throughput       = var.per_unit_storage_throughput
  id                                = var.id
  arn                               = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name of the file system."
  type        = string
}
variable "storage_type" {
  description = "(Optional) - The filesystem storage type. Either SSD or HDD, defaults to SSD. HDD is only supported on PERSISTENT_1 deployment types."
  type        = string
  default     = ""
}
variable "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  type        = string
  default     = ""
}
variable "mount_name" {
  description = "The value to be used when mounting the filesystem."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  type        = string
  default     = ""
}
variable "destination" {
  description = "(Optional) The Amazon Resource Name (ARN) that specifies the destination of the logs. The name of the Amazon CloudWatch Logs log group must begin with the /aws/fsx prefix. If you do not provide a destination, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/lustre log group."
  type        = string
  default     = ""
}
variable "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for PERSISTENT_1 and PERSISTENT_2 deployment_type."
  type        = string
  default     = ""
}
variable "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for PERSISTENT_1 and PERSISTENT_2 deployment_type. Requires automatic_backup_retention_days to be set."
  type        = string
  default     = ""
}
variable "drive_cache_type" {
  description = "(Optional) - The type of drive cache used by PERSISTENT_1 filesystems that are provisioned with HDD storage_type. Required for HDD storage_type, set to either READ or NONE."
  type        = string
  default     = ""
}
variable "export_path" {
  description = "(Optional) S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with import_path argument and the path must use the same Amazon S3 bucket as specified in import_path. Set equal to import_path to overwrite files on export. Defaults to s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}. Only supported on PERSISTENT_1 deployment types."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "AWS account identifier that created the file system."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "auto_import_policy" {
  description = "(Optional) How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see Auto Import Data Repo for more details. Only supported on PERSISTENT_1 deployment types."
  type        = string
  default     = ""
}
variable "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  type        = string
  default     = ""
}
variable "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  type        = string
}
variable "import_path" {
  description = "(Optional) S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, s3://example-bucket/optional-prefix/. Only supported on PERSISTENT_1 deployment types."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, applicable for PERSISTENT_1 and PERSISTENT_2 deployment_type. Defaults to an AWS managed KMS Key."
  type        = string
  default     = ""
}
variable "level" {
  description = "(Optional) Sets which data repository events are logged by Amazon FSx. Valid values are WARN_ONLY, FAILURE_ONLY, ERROR_ONLY, WARN_ERROR and DISABLED. Default value is DISABLED.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  type        = string
}
variable "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for PERSISTENT_1 and PERSISTENT_2 deployment_type. The default value is false."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "log_configuration" {
  description = "(Optional) The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs.log_configuration"
  type        = string
  default     = ""
}
variable "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the documentation, the first network interface returned is the primary network interface."
  type        = string
}
variable "storage_capacity" {
  description = "(Optional) The storage capacity (GiB) of the file system. Minimum of 1200. See more details at Allowed values for Fsx storage capacity. Update is allowed only for SCRATCH_2, PERSISTENT_1 and PERSISTENT_2 deployment types, See more details at Fsx Storage Capacity Update. Required when not creating filesystem for a backup."
  type        = string
  default     = ""
}
variable "data_compression_type" {
  description = "(Optional) Sets the data compression configuration for the file system. Valid values are LZ4 and NONE. Default value is NONE. Unsetting this value reverts the compression type back to NONE."
  type        = string
  default     = ""
}
variable "imported_file_chunk_size" {
  description = "(Optional) For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with import_path argument. Defaults to 1024. Minimum of 1 and maximum of 512000. Only supported on PERSISTENT_1 deployment types."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "deployment_type" {
  description = "(Optional) - The filesystem deployment type. One of: SCRATCH_1, SCRATCH_2, PERSISTENT_1, PERSISTENT_2."
  type        = string
  default     = ""
}
variable "file_system_type_version" {
  description = "(Optional) Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for SCRATCH_1, SCRATCH_2 and PERSISTENT_1 deployment types. Valid values for 2.12 include all deployment types."
  type        = string
  default     = ""
}
variable "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  type        = string
}
variable "per_unit_storage_throughput" {
  description = "(Optional) - Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the PERSISTENT_1 and PERSISTENT_2 deployment_type. Valid values for PERSISTENT_1 deployment_type and SSD storage_type are 50, 100, 200. Valid values for PERSISTENT_1 deployment_type and HDD storage_type are 12, 40. Valid values for PERSISTENT_2 deployment_type and  SSD storage_type are 125, 250, 500, 1000."
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
output "deployment_type" {
  description = "(Optional) - The filesystem deployment type. One of: SCRATCH_1, SCRATCH_2, PERSISTENT_1, PERSISTENT_2."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.deployment_type
}
output "file_system_type_version" {
  description = "(Optional) Sets the Lustre version for the file system that you're creating. Valid values are 2.10 for SCRATCH_1, SCRATCH_2 and PERSISTENT_1 deployment types. Valid values for 2.12 include all deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.file_system_type_version
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.update
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.id
}
output "per_unit_storage_throughput" {
  description = "(Optional) - Describes the amount of read and write throughput for each 1 tebibyte of storage, in MB/s/TiB, required for the PERSISTENT_1 and PERSISTENT_2 deployment_type. Valid values for PERSISTENT_1 deployment_type and SSD storage_type are 50, 100, 200. Valid values for PERSISTENT_1 deployment_type and HDD storage_type are 12, 40. Valid values for PERSISTENT_2 deployment_type and  SSD storage_type are 125, 250, 500, 1000."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.per_unit_storage_throughput
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.arn
}
output "mount_name" {
  description = "The value to be used when mounting the filesystem."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.mount_name
}
output "security_group_ids" {
  description = "(Optional) A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.security_group_ids
}
output "storage_type" {
  description = "(Optional) - The filesystem storage type. Either SSD or HDD, defaults to SSD. HDD is only supported on PERSISTENT_1 deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.storage_type
}
output "weekly_maintenance_start_time" {
  description = "(Optional) The preferred start time (in d:HH:MM format) to perform weekly maintenance, in the UTC time zone."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.weekly_maintenance_start_time
}
output "automatic_backup_retention_days" {
  description = "(Optional) The number of days to retain automatic backups. Setting this to 0 disables automatic backups. You can retain automatic backups for a maximum of 90 days. only valid for PERSISTENT_1 and PERSISTENT_2 deployment_type."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.automatic_backup_retention_days
}
output "daily_automatic_backup_start_time" {
  description = "(Optional) A recurring daily time, in the format HH:MM. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 05:00 specifies 5 AM daily. only valid for PERSISTENT_1 and PERSISTENT_2 deployment_type. Requires automatic_backup_retention_days to be set."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.daily_automatic_backup_start_time
}
output "destination" {
  description = "(Optional) The Amazon Resource Name (ARN) that specifies the destination of the logs. The name of the Amazon CloudWatch Logs log group must begin with the /aws/fsx prefix. If you do not provide a destination, Amazon FSx will create and use a log stream in the CloudWatch Logs /aws/fsx/lustre log group."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.destination
}
output "auto_import_policy" {
  description = "(Optional) How Amazon FSx keeps your file and directory listings up to date as you add or modify objects in your linked S3 bucket. see Auto Import Data Repo for more details. Only supported on PERSISTENT_1 deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.auto_import_policy
}
output "backup_id" {
  description = "(Optional) The ID of the source backup to create the filesystem from."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.backup_id
}
output "drive_cache_type" {
  description = "(Optional) - The type of drive cache used by PERSISTENT_1 filesystems that are provisioned with HDD storage_type. Required for HDD storage_type, set to either READ or NONE."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.drive_cache_type
}
output "export_path" {
  description = "(Optional) S3 URI (with optional prefix) where the root of your Amazon FSx file system is exported. Can only be specified with import_path argument and the path must use the same Amazon S3 bucket as specified in import_path. Set equal to import_path to overwrite files on export. Defaults to s3://{IMPORT BUCKET}/FSxLustre{CREATION TIMESTAMP}. Only supported on PERSISTENT_1 deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.export_path
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.owner_id
}
output "subnet_ids" {
  description = "(Required) A list of IDs for the subnets that the file system will be accessible from. File systems currently support only one subnet. The file server is also launched in that subnet's Availability Zone."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.subnet_ids
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.tags
}
output "copy_tags_to_backups" {
  description = "(Optional) A boolean flag indicating whether tags for the file system should be copied to backups. Applicable for PERSISTENT_1 and PERSISTENT_2 deployment_type. The default value is false."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.copy_tags_to_backups
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.create
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.dns_name
}
output "import_path" {
  description = "(Optional) S3 URI (with optional prefix) that you're using as the data repository for your FSx for Lustre file system. For example, s3://example-bucket/optional-prefix/. Only supported on PERSISTENT_1 deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.import_path
}
output "kms_key_id" {
  description = "(Optional) ARN for the KMS Key to encrypt the file system at rest, applicable for PERSISTENT_1 and PERSISTENT_2 deployment_type. Defaults to an AWS managed KMS Key."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.kms_key_id
}
output "level" {
  description = "(Optional) Sets which data repository events are logged by Amazon FSx. Valid values are WARN_ONLY, FAILURE_ONLY, ERROR_ONLY, WARN_ERROR and DISABLED. Default value is DISABLED.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.level
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.tags_all
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.vpc_id
}
output "data_compression_type" {
  description = "(Optional) Sets the data compression configuration for the file system. Valid values are LZ4 and NONE. Default value is NONE. Unsetting this value reverts the compression type back to NONE."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.data_compression_type
}
output "imported_file_chunk_size" {
  description = "(Optional) For files imported from a data repository, this value determines the stripe count and maximum amount of data per file (in MiB) stored on a single physical disk. Can only be specified with import_path argument. Defaults to 1024. Minimum of 1 and maximum of 512000. Only supported on PERSISTENT_1 deployment types."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.imported_file_chunk_size
}
output "log_configuration" {
  description = "(Optional) The Lustre logging configuration used when creating an Amazon FSx for Lustre file system. When logging is enabled, Lustre logs error and warning events for data repositories associated with your file system to Amazon CloudWatch Logs.log_configuration"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.log_configuration
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the documentation, the first network interface returned is the primary network interface."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.network_interface_ids
}
output "storage_capacity" {
  description = "(Optional) The storage capacity (GiB) of the file system. Minimum of 1200. See more details at Allowed values for Fsx storage capacity. Update is allowed only for SCRATCH_2, PERSISTENT_1 and PERSISTENT_2 deployment types, See more details at Fsx Storage Capacity Update. Required when not creating filesystem for a backup."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.storage_capacity
}
output "id" {
  description = "Identifier of the file system, e.g., fs-12345678"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.tags_all
}
output "vpc_id" {
  description = "Identifier of the Virtual Private Cloud for the file system.TimeoutsConfiguration options:"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.vpc_id
}
output "arn" {
  description = "Amazon Resource Name of the file system."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.arn
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.delete
}
output "dns_name" {
  description = "DNS name for the file system, e.g., fs-12345678.fsx.us-west-2.amazonaws.com"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.dns_name
}
output "owner_id" {
  description = "AWS account identifier that created the file system."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.owner_id
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.update
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.create
}
output "mount_name" {
  description = "The value to be used when mounting the filesystem."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.mount_name
}
output "network_interface_ids" {
  description = "Set of Elastic Network Interface identifiers from which the file system is accessible. As explained in the documentation, the first network interface returned is the primary network interface."
  value       = aws_fsx_lustre_file_system.aws_fsx_lustre_file_system.network_interface_ids
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
      "kind/name"                   = "aws_fsx_lustre_file_system"
      "kind/version"                = "v0.1.0"
    }
  }
}
