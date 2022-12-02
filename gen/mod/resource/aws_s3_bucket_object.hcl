resource "aws_s3_bucket_object" "aws_s3_bucket_object" {
  kms_key_id                    = var.kms_key_id
  storage_class                 = var.storage_class
  tags_all                      = var.tags_all
  source                        = var.source
  website_redirect              = var.website_redirect
  bucket                        = var.bucket
  server_side_encryption        = var.server_side_encryption
  content                       = var.content
  content_disposition           = var.content_disposition
  force_destroy                 = var.force_destroy
  content_language              = var.content_language
  etag                          = var.etag
  object_lock_mode              = var.object_lock_mode
  source_hash                   = var.source_hash
  version_id                    = var.version_id
  cache_control                 = var.cache_control
  content_type                  = var.content_type
  key                           = var.key
  object_lock_retain_until_date = var.object_lock_retain_until_date
  tags                          = var.tags
  acl                           = var.acl
  id                            = var.id
  content_encoding              = var.content_encoding
  bucket_key_enabled            = var.bucket_key_enabled
  content_base64                = var.content_base64
  metadata                      = var.metadata
  object_lock_legal_hold_status = var.object_lock_legal_hold_status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "metadata" {
  description = "(Optional) Map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API)."
  type        = string
  default     = ""
}
variable "object_lock_legal_hold_status" {
  description = "(Optional) Legal hold status that you want to apply to the specified object. Valid values are ON and OFF."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = ""
}
variable "storage_class" {
  description = "(Optional) Storage Class for the object. Defaults to \"STANDARD\"."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "source" {
  description = "(Optional, conflicts with content and content_base64) Path to a file that will be read and uploaded as raw bytes for the object content."
  type        = string
  default     = ""
}
variable "website_redirect" {
  description = "(Optional) Target URL for website redirect.If no content is provided through source, content or content_base64, then the object will be empty.-> strongNote: Terraform ignores all leading /s in the object's key and treats multiple /s in the rest of the object's key as a single /, so values of /index.html and index.html correspond to the same S3 object as do first//second///third// and first/second/third/.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) Name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  type        = string
}
variable "server_side_encryption" {
  description = "(Optional) Server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  type        = string
  default     = ""
}
variable "content" {
  description = "(Optional, conflicts with source and content_base64) Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text."
  type        = string
  default     = ""
}
variable "content_disposition" {
  description = "(Optional) Presentational information for the object. Read w3c content_disposition for further information."
  type        = string
  default     = ""
}
variable "force_destroy" {
  description = "(Optional) Whether to allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  type        = string
  default     = ""
}
variable "content_language" {
  description = "(Optional) Language the content is in e.g., en-US or en-GB."
  type        = string
  default     = ""
}
variable "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  type        = string
  default     = ""
}
variable "object_lock_mode" {
  description = "(Optional) Object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE."
  type        = string
  default     = ""
}
variable "source_hash" {
  description = "(Optional) Triggers updates like etag but useful to address etag encryption limitations. Set using filemd5(\"path/to/source\") (Terraform 0.11.12 or later). (The value is only stored in state and not saved by AWS.)"
  type        = string
  default     = ""
}
variable "version_id" {
  description = "Unique version ID value for the object, if bucket versioning is enabled."
  type        = string
  default     = ""
}
variable "cache_control" {
  description = "(Optional) Caching behavior along the request/reply chain Read w3c cache_control for further details."
  type        = string
  default     = ""
}
variable "content_type" {
  description = "(Optional) Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Name of the object once it is in the bucket."
  type        = string
}
variable "object_lock_retain_until_date" {
  description = "(Optional) Date and time, in RFC3339 format, when this object's object lock will expire."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "acl" {
  description = "(Optional) Canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private."
  type        = string
  default     = ""
}
variable "id" {
  description = "key of the resource supplied above"
  type        = string
  default     = ""
}
variable "content_encoding" {
  description = "(Optional) Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information."
  type        = string
  default     = ""
}
variable "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS."
  type        = string
  default     = ""
}
variable "content_base64" {
  description = "(Optional, conflicts with source and content) Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the gzipbase64 function with small text strings. For larger objects, use source to stream the content from a disk file."
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
output "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.bucket_key_enabled
}
output "content_base64" {
  description = "(Optional, conflicts with source and content) Base64-encoded data that will be decoded and uploaded as raw bytes for the object content. This allows safely uploading non-UTF8 binary data, but is recommended only for small content such as the result of the gzipbase64 function with small text strings. For larger objects, use source to stream the content from a disk file."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content_base64
}
output "content_encoding" {
  description = "(Optional) Content encodings that have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content_encoding
}
output "metadata" {
  description = "(Optional) Map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API)."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.metadata
}
output "object_lock_legal_hold_status" {
  description = "(Optional) Legal hold status that you want to apply to the specified object. Valid values are ON and OFF."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.object_lock_legal_hold_status
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.tags_all
}
output "kms_key_id" {
  description = "(Optional) ARN of the KMS Key to use for object encryption. If the S3 Bucket has server-side encryption enabled, that value will automatically be used. If referencing the aws_kms_key resource, use the arn attribute. If referencing the aws_kms_alias data source or resource, use the target_key_arn attribute. Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.kms_key_id
}
output "storage_class" {
  description = "(Optional) Storage Class for the object. Defaults to \"STANDARD\"."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.storage_class
}
output "bucket" {
  description = "(Required) Name of the bucket to put the file in. Alternatively, an S3 access point ARN can be specified."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.bucket
}
output "server_side_encryption" {
  description = "(Optional) Server-side encryption of the object in S3. Valid values are \"AES256\" and \"aws:kms\"."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.server_side_encryption
}
output "source" {
  description = "(Optional, conflicts with content and content_base64) Path to a file that will be read and uploaded as raw bytes for the object content."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.source
}
output "website_redirect" {
  description = "(Optional) Target URL for website redirect.If no content is provided through source, content or content_base64, then the object will be empty.-> strongNote: Terraform ignores all leading /s in the object's key and treats multiple /s in the rest of the object's key as a single /, so values of /index.html and index.html correspond to the same S3 object as do first//second///third// and first/second/third/.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_object.aws_s3_bucket_object.website_redirect
}
output "content" {
  description = "(Optional, conflicts with source and content_base64) Literal string value to use as the object content, which will be uploaded as UTF-8-encoded text."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content
}
output "content_disposition" {
  description = "(Optional) Presentational information for the object. Read w3c content_disposition for further information."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content_disposition
}
output "content_language" {
  description = "(Optional) Language the content is in e.g., en-US or en-GB."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content_language
}
output "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.etag
}
output "force_destroy" {
  description = "(Optional) Whether to allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.force_destroy
}
output "version_id" {
  description = "Unique version ID value for the object, if bucket versioning is enabled."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.version_id
}
output "cache_control" {
  description = "(Optional) Caching behavior along the request/reply chain Read w3c cache_control for further details."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.cache_control
}
output "content_type" {
  description = "(Optional) Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.content_type
}
output "object_lock_mode" {
  description = "(Optional) Object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.object_lock_mode
}
output "source_hash" {
  description = "(Optional) Triggers updates like etag but useful to address etag encryption limitations. Set using filemd5(\"path/to/source\") (Terraform 0.11.12 or later). (The value is only stored in state and not saved by AWS.)"
  value       = aws_s3_bucket_object.aws_s3_bucket_object.source_hash
}
output "acl" {
  description = "(Optional) Canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, bucket-owner-read, and bucket-owner-full-control. Defaults to private."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.acl
}
output "id" {
  description = "key of the resource supplied above"
  value       = aws_s3_bucket_object.aws_s3_bucket_object.id
}
output "key" {
  description = "(Required) Name of the object once it is in the bucket."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.key
}
output "object_lock_retain_until_date" {
  description = "(Optional) Date and time, in RFC3339 format, when this object's object lock will expire."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.object_lock_retain_until_date
}
output "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.tags
}
output "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.etag
}
output "id" {
  description = "key of the resource supplied above"
  value       = aws_s3_bucket_object.aws_s3_bucket_object.id
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.tags_all
}
output "version_id" {
  description = "Unique version ID value for the object, if bucket versioning is enabled."
  value       = aws_s3_bucket_object.aws_s3_bucket_object.version_id
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
      "kind/name"                   = "aws_s3_bucket_object"
      "kind/version"                = "v0.1.0"
    }
  }
}
