resource "aws_fsx_file_cache" "aws_fsx_file_cache" {
  copy_tags_to_data_repository_associations = var.copy_tags_to_data_repository_associations
  metadata_configuration                    = var.metadata_configuration
  nfs                                       = var.nfs
  deployment_type                           = var.deployment_type
  storage_capacity                          = var.storage_capacity
  update                                    = var.update
  weekly_maintenance_start_time             = var.weekly_maintenance_start_time
  data_repository_subdirectories            = var.data_repository_subdirectories
  id                                        = var.id
  security_group_ids                        = var.security_group_ids
  create                                    = var.create
  data_repository_association_ids           = var.data_repository_association_ids
  dns_ips                                   = var.dns_ips
  file_cache_type_version                   = var.file_cache_type_version
  per_unit_storage_throughput               = var.per_unit_storage_throughput
  arn                                       = var.arn
  data_repository_association               = var.data_repository_association
  subnet_ids                                = var.subnet_ids
  file_cache_id                             = var.file_cache_id
  file_cache_path                           = var.file_cache_path
  kms_key_id                                = var.kms_key_id
  vpc_id                                    = var.vpc_id
  delete                                    = var.delete
  dns_name                                  = var.dns_name
  file_cache_type                           = var.file_cache_type
  network_interface_ids                     = var.network_interface_ids
  version                                   = var.version
  data_repository_path                      = var.data_repository_path
  lustre_configuration                      = var.lustre_configuration
  tags                                      = var.tags
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "file_cache_type" {
  description = "The type of cache that you're creating. The only supported value is LUSTRE."
  type        = string
}
variable "network_interface_ids" {
  description = "A list of network interface IDs."
  type        = string
}
variable "version" {
  description = "(Required) - The version of the NFS (Network File System) protocol of the NFS data repository. The only supported value is NFS3, which indicates that the data repository must support the NFSv3 protocol. The only supported value is NFS3."
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "dns_name" {
  description = "The Domain Name System (DNS) name for the cache."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file cache. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Data Repository Association argumentsdata_repository_association configuration block:"
  type        = string
}
variable "data_repository_path" {
  description = "(Optional) The path to the S3 or NFS data repository that links to the cache."
  type        = string
}
variable "lustre_configuration" {
  description = "See the lustre_configuration block. Required when file_cache_type is LUSTRE."
  type        = string
}
variable "nfs" {
  description = "(Optional) - (Optional) See the nfs configuration block.NFS argumentsnfs configuration block:"
  type        = string
}
variable "copy_tags_to_data_repository_associations" {
  description = "A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false."
  type        = string
}
variable "metadata_configuration" {
  description = "(Required) The configuration for a Lustre MDT (Metadata Target) storage volume. See the metadata_configuration block."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "weekly_maintenance_start_time" {
  description = "(Optional) A recurring weekly time, in the format D:HH:MM. D is the day of the week, for which 1 represents Monday and 7 represents Sunday. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 1:05:00 specifies maintenance at 5 AM Monday. See the ISO week date for more information.Metadata Configuration argumentsmetadata_configuration configuration block:"
  type        = string
}
variable "deployment_type" {
  description = "(Required) Specifies the cache deployment type. The only supported value is CACHE_1."
  type        = string
}
variable "storage_capacity" {
  description = "(Required) The storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is 2400 GiB.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "security_group_ids" {
  description = "A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access."
  type        = string
}
variable "data_repository_subdirectories" {
  description = "(Optional) A list of NFS Exports that will be linked with this data repository association. The Export paths are in the format /exportpath1. To use this parameter, you must configure DataRepositoryPath as the domain name of the NFS file system. The NFS file system domain name in effect is the root of the subdirectories. Note that DataRepositorySubdirectories is not supported for S3 data repositories. Max of 500."
  type        = string
}
variable "id" {
  description = "The system-generated, unique ID of the cache."
  type        = string
}
variable "dns_ips" {
  description = "(Optional) - A list of up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name. The provided IP addresses can either be the IP addresses of a DNS forwarder or resolver that the customer manages and runs inside the customer VPC, or the IP addresses of the on-premises DNS servers.Lustre Configuration argumentslustre_configuration configuration block:"
  type        = string
}
variable "file_cache_type_version" {
  description = "The version for the type of cache that you're creating. The only supported value is 2.12."
  type        = string
}
variable "per_unit_storage_throughput" {
  description = "(Required) Provisions the amount of read and write throughput for each 1 tebibyte (TiB) of cache storage capacity, in MB/s/TiB. The only supported value is 1000."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "data_repository_association_ids" {
  description = "A list of IDs of data repository associations that are associated with this cache."
  type        = string
}
variable "subnet_ids" {
  description = "A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) for the resource."
  type        = string
}
variable "data_repository_association" {
  description = "See the data_repository_association configuration"
  type        = string
}
variable "kms_key_id" {
  description = "Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used."
  type        = string
}
variable "vpc_id" {
  description = "The ID of your virtual private cloud (VPC).TimeoutsConfiguration options:"
  type        = string
}
variable "file_cache_id" {
  description = "The system-generated, unique ID of the cache."
  type        = string
}
variable "file_cache_path" {
  description = "(Required) A path on the cache that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping cache paths. For example, if a data repository is associated with cache path /ns1/, then you cannot link another data repository with cache path /ns1/ns2. This path specifies where in your cache files will be exported from. This cache directory can be linked to only one data repository, and no data repository other can be linked to the directory. Note: The cache path can only be set to root (/) on an NFS DRA when DataRepositorySubdirectories is specified. If you specify root (/) as the cache path, you can create only one DRA on the cache. The cache path cannot be set to root (/) for an S3 DRA."
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
output "version" {
  description = "(Required) - The version of the NFS (Network File System) protocol of the NFS data repository. The only supported value is NFS3, which indicates that the data repository must support the NFSv3 protocol. The only supported value is NFS3."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The Domain Name System (DNS) name for the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_cache_type" {
  description = "The type of cache that you're creating. The only supported value is LUSTRE."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.file_cache_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "A list of network interface IDs."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_path" {
  description = "(Optional) The path to the S3 or NFS data repository that links to the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.data_repository_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lustre_configuration" {
  description = "See the lustre_configuration block. Required when file_cache_type is LUSTRE."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.lustre_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file cache. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Data Repository Association argumentsdata_repository_association configuration block:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "copy_tags_to_data_repository_associations" {
  description = "A boolean flag indicating whether tags for the cache should be copied to data repository associations. This value defaults to false."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.copy_tags_to_data_repository_associations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metadata_configuration" {
  description = "(Required) The configuration for a Lustre MDT (Metadata Target) storage volume. See the metadata_configuration block."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.metadata_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs" {
  description = "(Optional) - (Optional) See the nfs configuration block.NFS argumentsnfs configuration block:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.nfs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "deployment_type" {
  description = "(Required) Specifies the cache deployment type. The only supported value is CACHE_1."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.deployment_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_capacity" {
  description = "(Required) The storage capacity of the Lustre MDT (Metadata Target) storage volume in gibibytes (GiB). The only supported value is 2400 GiB.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.storage_capacity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weekly_maintenance_start_time" {
  description = "(Optional) A recurring weekly time, in the format D:HH:MM. D is the day of the week, for which 1 represents Monday and 7 represents Sunday. HH is the zero-padded hour of the day (0-23), and MM is the zero-padded minute of the hour. For example, 1:05:00 specifies maintenance at 5 AM Monday. See the ISO week date for more information.Metadata Configuration argumentsmetadata_configuration configuration block:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.weekly_maintenance_start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_subdirectories" {
  description = "(Optional) A list of NFS Exports that will be linked with this data repository association. The Export paths are in the format /exportpath1. To use this parameter, you must configure DataRepositoryPath as the domain name of the NFS file system. The NFS file system domain name in effect is the root of the subdirectories. Note that DataRepositorySubdirectories is not supported for S3 data repositories. Max of 500."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.data_repository_subdirectories
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The system-generated, unique ID of the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "A list of IDs specifying the security groups to apply to all network interfaces created for Amazon File Cache access."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "per_unit_storage_throughput" {
  description = "(Required) Provisions the amount of read and write throughput for each 1 tebibyte (TiB) of cache storage capacity, in MB/s/TiB. The only supported value is 1000."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.per_unit_storage_throughput
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_association_ids" {
  description = "A list of IDs of data repository associations that are associated with this cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.data_repository_association_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_ips" {
  description = "(Optional) - A list of up to 2 IP addresses of DNS servers used to resolve the NFS file system domain name. The provided IP addresses can either be the IP addresses of a DNS forwarder or resolver that the customer manages and runs inside the customer VPC, or the IP addresses of the on-premises DNS servers.Lustre Configuration argumentslustre_configuration configuration block:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.dns_ips
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_cache_type_version" {
  description = "The version for the type of cache that you're creating. The only supported value is 2.12."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.file_cache_type_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) for the resource."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_association" {
  description = "See the data_repository_association configuration"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.data_repository_association
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnet_ids" {
  description = "A list of subnet IDs that the cache will be accessible from. You can specify only one subnet ID."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_cache_id" {
  description = "The system-generated, unique ID of the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.file_cache_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_cache_path" {
  description = "(Required) A path on the cache that points to a high-level directory (such as /ns1/) or subdirectory (such as /ns1/subdir/) that will be mapped 1-1 with DataRepositoryPath. The leading forward slash in the name is required. Two data repository associations cannot have overlapping cache paths. For example, if a data repository is associated with cache path /ns1/, then you cannot link another data repository with cache path /ns1/ns2. This path specifies where in your cache files will be exported from. This cache directory can be linked to only one data repository, and no data repository other can be linked to the directory. Note: The cache path can only be set to root (/) on an NFS DRA when DataRepositorySubdirectories is specified. If you specify root (/) as the cache path, you can create only one DRA on the cache. The cache path cannot be set to root (/) for an S3 DRA."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.file_cache_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "Specifies the ID of the AWS Key Management Service (AWS KMS) key to use for encrypting data on an Amazon File Cache. If a KmsKeyId isn't specified, the Amazon FSx-managed AWS KMS key for your account is used."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The ID of your virtual private cloud (VPC).TimeoutsConfiguration options:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) for the resource."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "data_repository_association_ids" {
  description = "A list of IDs of data repository associations that are associated with this cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.data_repository_association_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The system-generated, unique ID of the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The ID of your virtual private cloud (VPC).TimeoutsConfiguration options:"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns_name" {
  description = "The Domain Name System (DNS) name for the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_cache_id" {
  description = "The system-generated, unique ID of the cache."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.file_cache_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_interface_ids" {
  description = "A list of network interface IDs."
  value       = aws_fsx_file_cache.aws_fsx_file_cache.network_interface_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_fsx_file_cache.aws_fsx_file_cache.update
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
      "kind/name"                   = "aws_fsx_file_cache"
      "kind/version"                = "v0.1.0"
    }
  }
}
