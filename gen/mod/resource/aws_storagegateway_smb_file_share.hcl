resource "aws_storagegateway_smb_file_share" "aws_storagegateway_smb_file_share" {
  oplocks_enabled                = var.oplocks_enabled
  smb_acl_enabled                = var.smb_acl_enabled
  invalid_user_list              = var.invalid_user_list
  role_arn                       = var.role_arn
  update                         = var.update
  admin_user_list                = var.admin_user_list
  arn                            = var.arn
  cache_stale_timeout_in_seconds = var.cache_stale_timeout_in_seconds
  fileshare_id                   = var.fileshare_id
  kms_encrypted                  = var.kms_encrypted
  read_only                      = var.read_only
  tags_all                       = var.tags_all
  audit_destination_arn          = var.audit_destination_arn
  bucket_region                  = var.bucket_region
  create                         = var.create
  authentication                 = var.authentication
  case_sensitivity               = var.case_sensitivity
  default_storage_class          = var.default_storage_class
  guess_mime_type_enabled        = var.guess_mime_type_enabled
  kms_key_arn                    = var.kms_key_arn
  location_arn                   = var.location_arn
  tags                           = var.tags
  vpc_endpoint_dns_name          = var.vpc_endpoint_dns_name
  id                             = var.id
  path                           = var.path
  requester_pays                 = var.requester_pays
  cache_attributes               = var.cache_attributes
  gateway_arn                    = var.gateway_arn
  notification_policy            = var.notification_policy
  object_acl                     = var.object_acl
  valid_user_list                = var.valid_user_list
  access_based_enumeration       = var.access_based_enumeration
  file_share_name                = var.file_share_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "invalid_user_list" {
  description = "(Optional) A list of users in the Active Directory that are not allowed to access the file share. Only valid if authentication is set to ActiveDirectory."
  type        = string
}
variable "role_arn" {
  description = "(Required) The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage."
  type        = string
}
variable "update" {
  description = "(Default 10m)"
  type        = string
}
variable "fileshare_id" {
  description = "ID of the SMB File Share."
  type        = string
}
variable "kms_encrypted" {
  description = "(Optional) Boolean value if true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Defaults to false."
  type        = string
}
variable "read_only" {
  description = "(Optional) Boolean to indicate write status of file share. File share does not accept writes if true. Defaults to false."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "admin_user_list" {
  description = "(Optional) A list of users in the Active Directory that have admin access to the file share. Only valid if authentication is set to ActiveDirectory."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  type        = string
}
variable "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs."
  type        = string
}
variable "bucket_region" {
  description = "(Optional) The region of the S3 buck used by the file share. Required when specifying a vpc_endpoint_dns_name."
  type        = string
}
variable "create" {
  description = "(Default 10m)"
  type        = string
}
variable "guess_mime_type_enabled" {
  description = "(Optional) Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to true."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  type        = string
}
variable "location_arn" {
  description = "(Required) The ARN of the backed storage used for storing file data."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.cache_attributes"
  type        = string
}
variable "vpc_endpoint_dns_name" {
  description = "(Optional) The DNS name of the VPC endpoint for S3 private link."
  type        = string
}
variable "authentication" {
  description = "(Optional) The authentication method that users use to access the file share. Defaults to ActiveDirectory. Valid values: ActiveDirectory, GuestAccess."
  type        = string
}
variable "case_sensitivity" {
  description = "(Optional) The case of an object name in an Amazon S3 bucket. For ClientSpecified, the client determines the case sensitivity. For CaseSensitive, the gateway determines the case sensitivity. The default value is ClientSpecified."
  type        = string
}
variable "default_storage_class" {
  description = "(Optional) The default storage class for objects put into an Amazon S3 bucket by the file gateway. Defaults to S3_STANDARD."
  type        = string
}
variable "id" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  type        = string
}
variable "path" {
  description = "File share path used by the NFS client to identify the mount point."
  type        = string
}
variable "requester_pays" {
  description = "(Optional) Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to true if you want the requester to pay instead of the bucket owner. Defaults to false."
  type        = string
}
variable "object_acl" {
  description = "(Optional) Access Control List permission for S3 objects. Defaults to private."
  type        = string
}
variable "valid_user_list" {
  description = "(Optional) A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if authentication is set to ActiveDirectory."
  type        = string
}
variable "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
  type        = string
}
variable "gateway_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the file gateway."
  type        = string
}
variable "notification_policy" {
  description = "(Optional) The notification policy of the file share. For more information see the AWS Documentation. Default value is {}."
  type        = string
}
variable "access_based_enumeration" {
  description = "(Optional) The files and folders on this share will only be visible to users with read access. Default value is false."
  type        = string
}
variable "file_share_name" {
  description = "(Optional) The name of the file share. Must be set if an S3 prefix name is set in location_arn."
  type        = string
}
variable "oplocks_enabled" {
  description = "(Optional) Boolean to indicate Opportunistic lock (oplock) status. Defaults to true."
  type        = string
}
variable "smb_acl_enabled" {
  description = "(Optional) Set this value to true to enable ACL (access control list) on the SMB fileshare. Set it to false to map file and directory permissions to the POSIX permissions. This setting applies only to ActiveDirectory authentication type."
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
output "id" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "File share path used by the NFS client to identify the mount point."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requester_pays" {
  description = "(Optional) Boolean who pays the cost of the request and the data download from the Amazon S3 bucket. Set this value to true if you want the requester to pay instead of the bucket owner. Defaults to false."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.requester_pays
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "valid_user_list" {
  description = "(Optional) A list of users in the Active Directory that are allowed to access the file share. If you need to specify an Active directory group, add '@' before the name of the group. It will be set on Allowed group in AWS console. Only valid if authentication is set to ActiveDirectory."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.valid_user_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_attributes" {
  description = "(Optional) Refresh cache information. see Cache Attributes for more details."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.cache_attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gateway_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the file gateway."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.gateway_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_policy" {
  description = "(Optional) The notification policy of the file share. For more information see the AWS Documentation. Default value is {}."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.notification_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_acl" {
  description = "(Optional) Access Control List permission for S3 objects. Defaults to private."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.object_acl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_based_enumeration" {
  description = "(Optional) The files and folders on this share will only be visible to users with read access. Default value is false."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.access_based_enumeration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_share_name" {
  description = "(Optional) The name of the file share. Must be set if an S3 prefix name is set in location_arn."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.file_share_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "oplocks_enabled" {
  description = "(Optional) Boolean to indicate Opportunistic lock (oplock) status. Defaults to true."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.oplocks_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "smb_acl_enabled" {
  description = "(Optional) Set this value to true to enable ACL (access control list) on the SMB fileshare. Set it to false to map file and directory permissions to the POSIX permissions. This setting applies only to ActiveDirectory authentication type."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.smb_acl_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invalid_user_list" {
  description = "(Optional) A list of users in the Active Directory that are not allowed to access the file share. Only valid if authentication is set to ActiveDirectory."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.invalid_user_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The ARN of the AWS Identity and Access Management (IAM) role that a file gateway assumes when it accesses the underlying storage."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_encrypted" {
  description = "(Optional) Boolean value if true to use Amazon S3 server side encryption with your own AWS KMS key, or false to use a key managed by Amazon S3. Defaults to false."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.kms_encrypted
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read_only" {
  description = "(Optional) Boolean to indicate write status of file share. File share does not accept writes if true. Defaults to false."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.read_only
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "admin_user_list" {
  description = "(Optional) A list of users in the Active Directory that have admin access to the file share. Only valid if authentication is set to ActiveDirectory."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.admin_user_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache_stale_timeout_in_seconds" {
  description = "(Optional) Refreshes a file share's cache by using Time To Live (TTL).\nTTL is the length of time since the last refresh after which access to the directory would cause the file gateway\nto first refresh that directory's contents from the Amazon S3 bucket. Valid Values: 300 to 2,592,000 seconds (5 minutes to 30 days)In addition to all arguments above, the following attributes are exported:"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.cache_stale_timeout_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fileshare_id" {
  description = "ID of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.fileshare_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "audit_destination_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the CloudWatch Log Group used for the audit logs."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.audit_destination_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_region" {
  description = "(Optional) The region of the S3 buck used by the file share. Required when specifying a vpc_endpoint_dns_name."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.bucket_region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) Amazon Resource Name (ARN) for KMS key used for Amazon S3 server side encryption. This value can only be set when kms_encrypted is true."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location_arn" {
  description = "(Required) The ARN of the backed storage used for storing file data."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.location_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.cache_attributes"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_endpoint_dns_name" {
  description = "(Optional) The DNS name of the VPC endpoint for S3 private link."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.vpc_endpoint_dns_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication" {
  description = "(Optional) The authentication method that users use to access the file share. Defaults to ActiveDirectory. Valid values: ActiveDirectory, GuestAccess."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.authentication
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "case_sensitivity" {
  description = "(Optional) The case of an object name in an Amazon S3 bucket. For ClientSpecified, the client determines the case sensitivity. For CaseSensitive, the gateway determines the case sensitivity. The default value is ClientSpecified."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.case_sensitivity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_storage_class" {
  description = "(Optional) The default storage class for objects put into an Amazon S3 bucket by the file gateway. Defaults to S3_STANDARD."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.default_storage_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "guess_mime_type_enabled" {
  description = "(Optional) Boolean value that enables guessing of the MIME type for uploaded objects based on file extensions. Defaults to true."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.guess_mime_type_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "File share path used by the NFS client to identify the mount point."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 10m)"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 10m)"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fileshare_id" {
  description = "ID of the SMB File Share."
  value       = aws_storagegateway_smb_file_share.aws_storagegateway_smb_file_share.fileshare_id
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
      "kind/name"                   = "aws_storagegateway_smb_file_share"
      "kind/version"                = "v0.1.0"
    }
  }
}
