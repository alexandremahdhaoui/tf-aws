resource "aws_storagegateway_nfs_file_share" "aws_storagegateway_nfs_file_share" {
  vpc_endpoint_dns_name          = var.vpc_endpoint_dns_name
  bucket_region                  = var.bucket_region
  fileshare_id                   = var.fileshare_id
  nfs_file_share_defaults        = var.nfs_file_share_defaults
  read_only                      = var.read_only
  file_mode                      = var.file_mode
  file_share_name                = var.file_share_name
  id                             = var.id
  requester_pays                 = var.requester_pays
  tags_all                       = var.tags_all
  kms_key_arn                    = var.kms_key_arn
  notification_policy            = var.notification_policy
  object_acl                     = var.object_acl
  owner_id                       = var.owner_id
  role_arn                       = var.role_arn
  audit_destination_arn          = var.audit_destination_arn
  cache_attributes               = var.cache_attributes
  create                         = var.create
  kms_encrypted                  = var.kms_encrypted
  cache_stale_timeout_in_seconds = var.cache_stale_timeout_in_seconds
  default_storage_class          = var.default_storage_class
  gateway_arn                    = var.gateway_arn
  update                         = var.update
  tags                           = var.tags
  group_id                       = var.group_id
  path                           = var.path
  location_arn                   = var.location_arn
  squash                         = var.squash
  arn                            = var.arn
  client_list                    = var.client_list
  directory_mode                 = var.directory_mode
  guess_mime_type_enabled        = var.guess_mime_type_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "file_share_name" {
  description = "(Optional) The name of the file share. Must be set if an S3 prefix name is set in location_arn."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  type        = string
}
variable "file_mode" {
  description = "(Optional) The Unix file mode in the string form \"nnnn\". Defaults to \"0666\"."
  type        = string
}
variable "notification_policy" {
  description = "(Optional) The notification policy of the file share. For more information see the AWS Documentation. Default value is {}."
  type        = string
}
variable "object_acl" {
  description = "(Optional) Access Control List permission for S3 objects. Defaults to private."
  type        = string
}
variable "owner_id" {
  description = "(Optional) The default owner ID for the file share (unless the files have another owner ID specified). Defaults to 65534 (nfsnobody). Valid values: 0 through 4294967294.cache_attributes"
  type        = string
}
variable "requester_pays" {
  description = "(Optional) Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to true if you want the requester to pay instead of the bucket owner. Defaults to false."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  type        = string
}
variable "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "kms_encrypted" {
  description = "(Optional) Boolean value if true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Defaults to false."
  type        = string
}
variable "role_arn" {
  description = "(Required) The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage."
  type        = string
}
variable "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the storage used for audit logs."
  type        = string
}
variable "default_storage_class" {
  description = "(Optional) The default storage class for objects put into an Amazon S3 bucket by the file gateway. Defaults to S3_STANDARD."
  type        = string
}
variable "gateway_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the file gateway."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.nfs_file_share_defaultsFiles and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions."
  type        = string
}
variable "path" {
  description = "File share path used by the NFS client to identify the mount point."
  type        = string
}
variable "group_id" {
  description = "(Optional) The default group ID for the file share (unless the files have another group ID specified). Defaults to 65534 (nfsnobody). Valid values: 0 through 4294967294."
  type        = string
}
variable "client_list" {
  description = "(Required) The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to [\"0.0.0.0/0\"] to not limit access. Minimum 1 item. Maximum 100 items."
  type        = string
}
variable "directory_mode" {
  description = "(Optional) The Unix directory mode in the string form \"nnnn\". Defaults to \"0777\"."
  type        = string
}
variable "guess_mime_type_enabled" {
  description = "(Optional) Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to true."
  type        = string
}
variable "location_arn" {
  description = "(Required) The ARN of the backed storage used for storing file data."
  type        = string
}
variable "squash" {
  description = "(Optional) Maps a user to anonymous user. Defaults to RootSquash. Valid values: RootSquash (only root is mapped to anonymous user), NoSquash (no one is mapped to anonymous user), AllSquash (everyone is mapped to anonymous user)"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  type        = string
}
variable "fileshare_id" {
  description = "ID of the NFS File Share."
  type        = string
}
variable "nfs_file_share_defaults" {
  description = "(Optional) Nested argument with file share default values. More information below. see NFS File Share Defaults for more details."
  type        = string
}
variable "read_only" {
  description = "(Optional) Boolean to indicate write status of file share. File share does not accept writes if true. Defaults to false."
  type        = string
}
variable "vpc_endpoint_dns_name" {
  description = "(Optional) The DNS name of the VPC endpoint for S3 PrivateLink."
  type        = string
}
variable "bucket_region" {
  description = "(Optional) The region of the S3 bucket used by the file share. Required when specifying vpc_endpoint_dns_name."
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
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_list" {
  description = "(Required) The list of clients that are allowed to access the file gateway. The list must contain either valid IP addresses or valid CIDR blocks. Set to [\"0.0.0.0/0\"] to not limit access. Minimum 1 item. Maximum 100 items."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.client_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "directory_mode" {
  description = "(Optional) The Unix directory mode in the string form \"nnnn\". Defaults to \"0777\"."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.directory_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "guess_mime_type_enabled" {
  description = "(Optional) Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to true."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.guess_mime_type_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_arn" {
  description = "(Required) The ARN of the backed storage used for storing file data."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.location_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "squash" {
  description = "(Optional) Maps a user to anonymous user. Defaults to RootSquash. Valid values: RootSquash (only root is mapped to anonymous user), NoSquash (no one is mapped to anonymous user), AllSquash (everyone is mapped to anonymous user)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.squash
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_region" {
  description = "(Optional) The region of the S3 bucket used by the file share. Required when specifying vpc_endpoint_dns_name."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.bucket_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fileshare_id" {
  description = "ID of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.fileshare_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nfs_file_share_defaults" {
  description = "(Optional) Nested argument with file share default values. More information below. see NFS File Share Defaults for more details."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.nfs_file_share_defaults
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read_only" {
  description = "(Optional) Boolean to indicate write status of file share. File share does not accept writes if true. Defaults to false."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.read_only
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_dns_name" {
  description = "(Optional) The DNS name of the VPC endpoint for S3 PrivateLink."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.vpc_endpoint_dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_mode" {
  description = "(Optional) The Unix file mode in the string form \"nnnn\". Defaults to \"0666\"."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.file_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_share_name" {
  description = "(Optional) The name of the file share. Must be set if an S3 prefix name is set in location_arn."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.file_share_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_policy" {
  description = "(Optional) The notification policy of the file share. For more information see the AWS Documentation. Default value is {}."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.notification_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_acl" {
  description = "(Optional) Access Control List permission for S3 objects. Defaults to private."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.object_acl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "(Optional) The default owner ID for the file share (unless the files have another owner ID specified). Defaults to 65534 (nfsnobody). Valid values: 0 through 4294967294.cache_attributes"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester_pays" {
  description = "(Optional) Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to true if you want the requester to pay instead of the bucket owner. Defaults to false."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.requester_pays
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the storage used for audit logs."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.audit_destination_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.cache_attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_encrypted" {
  description = "(Optional) Boolean value if true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Defaults to false."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.kms_encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.cache_stale_timeout_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_storage_class" {
  description = "(Optional) The default storage class for objects put into an Amazon S3 bucket by the file gateway. Defaults to S3_STANDARD."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.default_storage_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the file gateway."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.gateway_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.nfs_file_share_defaultsFiles and folders stored as Amazon S3 objects in S3 buckets don't, by default, have Unix file permissions assigned to them. Upon discovery in an S3 bucket by Storage Gateway, the S3 objects that represent files and folders are assigned these default Unix permissions."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_id" {
  description = "(Optional) The default group ID for the file share (unless the files have another group ID specified). Defaults to 65534 (nfsnobody). Valid values: 0 through 4294967294."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "File share path used by the NFS client to identify the mount point."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "File share path used by the NFS client to identify the mount point."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 10m)"
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fileshare_id" {
  description = "ID of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.fileshare_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the NFS File Share."
  value       = aws_storagegateway_nfs_file_share.aws_storagegateway_nfs_file_share.id
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
      "kind/name"                   = "aws_storagegateway_nfs_file_share"
      "kind/version"                = "v0.1.0"
    }
  }
}
