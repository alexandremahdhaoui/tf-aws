datasource "aws_s3_object" "aws_s3_object" {
  content_disposition           = var.content_disposition
  content_encoding              = var.content_encoding
  content_length                = var.content_length
  server_side_encryption        = var.server_side_encryption
  storage_class                 = var.storage_class
  version_id                    = var.version_id
  content_language              = var.content_language
  content_type                  = var.content_type
  expiration                    = var.expiration
  body                          = var.body
  bucket                        = var.bucket
  expires                       = var.expires
  key                           = var.key
  object_lock_legal_hold_status = var.object_lock_legal_hold_status
  object_lock_mode              = var.object_lock_mode
  sse_kms_key_id                = var.sse_kms_key_id
  website_redirect_location     = var.website_redirect_location
  bucket_key_enabled            = var.bucket_key_enabled
  cache_control                 = var.cache_control
  etag                          = var.etag
  last_modified                 = var.last_modified
  metadata                      = var.metadata
  object_lock_retain_until_date = var.object_lock_retain_until_date
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "body" {
  description = "Object data (see stronglimitations above to understand cases in which this field is actually available)"
  type        = string
}
variable "bucket" {
  description = "(Required) Name of the bucket to read the object from. Alternatively, an S3 access point ARN can be specified"
  type        = string
}
variable "expires" {
  description = "Date and time at which the object is no longer cacheable."
  type        = string
}
variable "key" {
  description = "(Required) Full path to the object inside the bucket"
  type        = string
}
variable "object_lock_legal_hold_status" {
  description = "Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status."
  type        = string
}
variable "object_lock_mode" {
  description = "Object lock retention mode currently in place for this object."
  type        = string
}
variable "sse_kms_key_id" {
  description = "If present, specifies the ID of the Key Management Service (KMS) master encryption key that was used for the object."
  type        = string
}
variable "website_redirect_location" {
  description = "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata."
  type        = string
}
variable "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS."
  type        = string
  default     = ""
}
variable "cache_control" {
  description = "Caching behavior along the request/reply chain."
  type        = string
}
variable "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content in case it's not encrypted)"
  type        = string
}
variable "last_modified" {
  description = "Last modified date of the object in RFC1123 format (e.g., Mon, 02 Jan 2006 15:04:05 MST)"
  type        = string
}
variable "metadata" {
  description = "Map of metadata stored with the object in S3"
  type        = string
}
variable "object_lock_retain_until_date" {
  description = "The date and time when this object's object lock will expire."
  type        = string
}
variable "content_disposition" {
  description = "Presentational information for the object."
  type        = string
}
variable "content_encoding" {
  description = "What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field."
  type        = string
}
variable "content_length" {
  description = "Size of the body in bytes."
  type        = string
}
variable "server_side_encryption" {
  description = "If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used."
  type        = string
}
variable "storage_class" {
  description = "Storage class information of the object. Available for all objects except for Standard storage class objects."
  type        = string
}
variable "version_id" {
  description = "Latest version ID of the object returned."
  type        = string
}
variable "content_language" {
  description = "Language the content is in."
  type        = string
}
variable "content_type" {
  description = "Standard MIME type describing the format of the object data."
  type        = string
}
variable "expiration" {
  description = "If the object expiration is configured (see object lifecycle management), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded."
  type        = string
}
output "content_language" {
  description = "Language the content is in."
  value       = aws_s3_object.aws_s3_object.content_language
}
output "content_type" {
  description = "Standard MIME type describing the format of the object data."
  value       = aws_s3_object.aws_s3_object.content_type
}
output "expiration" {
  description = "If the object expiration is configured (see object lifecycle management), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded."
  value       = aws_s3_object.aws_s3_object.expiration
}
output "key" {
  description = "(Required) Full path to the object inside the bucket"
  value       = aws_s3_object.aws_s3_object.key
}
output "object_lock_legal_hold_status" {
  description = "Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status."
  value       = aws_s3_object.aws_s3_object.object_lock_legal_hold_status
}
output "object_lock_mode" {
  description = "Object lock retention mode currently in place for this object."
  value       = aws_s3_object.aws_s3_object.object_lock_mode
}
output "body" {
  description = "Object data (see stronglimitations above to understand cases in which this field is actually available)"
  value       = aws_s3_object.aws_s3_object.body
}
output "bucket" {
  description = "(Required) Name of the bucket to read the object from. Alternatively, an S3 access point ARN can be specified"
  value       = aws_s3_object.aws_s3_object.bucket
}
output "expires" {
  description = "Date and time at which the object is no longer cacheable."
  value       = aws_s3_object.aws_s3_object.expires
}
output "last_modified" {
  description = "Last modified date of the object in RFC1123 format (e.g., Mon, 02 Jan 2006 15:04:05 MST)"
  value       = aws_s3_object.aws_s3_object.last_modified
}
output "metadata" {
  description = "Map of metadata stored with the object in S3"
  value       = aws_s3_object.aws_s3_object.metadata
}
output "object_lock_retain_until_date" {
  description = "The date and time when this object's object lock will expire."
  value       = aws_s3_object.aws_s3_object.object_lock_retain_until_date
}
output "sse_kms_key_id" {
  description = "If present, specifies the ID of the Key Management Service (KMS) master encryption key that was used for the object."
  value       = aws_s3_object.aws_s3_object.sse_kms_key_id
}
output "website_redirect_location" {
  description = "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata."
  value       = aws_s3_object.aws_s3_object.website_redirect_location
}
output "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS."
  value       = aws_s3_object.aws_s3_object.bucket_key_enabled
}
output "cache_control" {
  description = "Caching behavior along the request/reply chain."
  value       = aws_s3_object.aws_s3_object.cache_control
}
output "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content in case it's not encrypted)"
  value       = aws_s3_object.aws_s3_object.etag
}
output "server_side_encryption" {
  description = "If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used."
  value       = aws_s3_object.aws_s3_object.server_side_encryption
}
output "storage_class" {
  description = "Storage class information of the object. Available for all objects except for Standard storage class objects."
  value       = aws_s3_object.aws_s3_object.storage_class
}
output "version_id" {
  description = "Latest version ID of the object returned."
  value       = aws_s3_object.aws_s3_object.version_id
}
output "content_disposition" {
  description = "Presentational information for the object."
  value       = aws_s3_object.aws_s3_object.content_disposition
}
output "content_encoding" {
  description = "What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field."
  value       = aws_s3_object.aws_s3_object.content_encoding
}
output "content_length" {
  description = "Size of the body in bytes."
  value       = aws_s3_object.aws_s3_object.content_length
}
output "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS."
  value       = aws_s3_object.aws_s3_object.bucket_key_enabled
}
output "content_disposition" {
  description = "Presentational information for the object."
  value       = aws_s3_object.aws_s3_object.content_disposition
}
output "content_type" {
  description = "Standard MIME type describing the format of the object data."
  value       = aws_s3_object.aws_s3_object.content_type
}
output "expires" {
  description = "Date and time at which the object is no longer cacheable."
  value       = aws_s3_object.aws_s3_object.expires
}
output "object_lock_legal_hold_status" {
  description = "Indicates whether this object has an active legal hold. This field is only returned if you have permission to view an object's legal hold status."
  value       = aws_s3_object.aws_s3_object.object_lock_legal_hold_status
}
output "sse_kms_key_id" {
  description = "If present, specifies the ID of the Key Management Service (KMS) master encryption key that was used for the object."
  value       = aws_s3_object.aws_s3_object.sse_kms_key_id
}
output "cache_control" {
  description = "Caching behavior along the request/reply chain."
  value       = aws_s3_object.aws_s3_object.cache_control
}
output "last_modified" {
  description = "Last modified date of the object in RFC1123 format (e.g., Mon, 02 Jan 2006 15:04:05 MST)"
  value       = aws_s3_object.aws_s3_object.last_modified
}
output "storage_class" {
  description = "Storage class information of the object. Available for all objects except for Standard storage class objects."
  value       = aws_s3_object.aws_s3_object.storage_class
}
output "version_id" {
  description = "Latest version ID of the object returned."
  value       = aws_s3_object.aws_s3_object.version_id
}
output "body" {
  description = "Object data (see stronglimitations above to understand cases in which this field is actually available)"
  value       = aws_s3_object.aws_s3_object.body
}
output "content_language" {
  description = "Language the content is in."
  value       = aws_s3_object.aws_s3_object.content_language
}
output "expiration" {
  description = "If the object expiration is configured (see object lifecycle management), the field includes this header. It includes the expiry-date and rule-id key value pairs providing object expiration information. The value of the rule-id is URL encoded."
  value       = aws_s3_object.aws_s3_object.expiration
}
output "metadata" {
  description = "Map of metadata stored with the object in S3"
  value       = aws_s3_object.aws_s3_object.metadata
}
output "object_lock_retain_until_date" {
  description = "The date and time when this object's object lock will expire."
  value       = aws_s3_object.aws_s3_object.object_lock_retain_until_date
}
output "server_side_encryption" {
  description = "If the object is stored using server-side encryption (KMS or Amazon S3-managed encryption key), this field includes the chosen encryption and algorithm used."
  value       = aws_s3_object.aws_s3_object.server_side_encryption
}
output "content_encoding" {
  description = "What content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field."
  value       = aws_s3_object.aws_s3_object.content_encoding
}
output "content_length" {
  description = "Size of the body in bytes."
  value       = aws_s3_object.aws_s3_object.content_length
}
output "etag" {
  description = "ETag generated for the object (an MD5 sum of the object content in case it's not encrypted)"
  value       = aws_s3_object.aws_s3_object.etag
}
output "object_lock_mode" {
  description = "Object lock retention mode currently in place for this object."
  value       = aws_s3_object.aws_s3_object.object_lock_mode
}
output "website_redirect_location" {
  description = "If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata."
  value       = aws_s3_object.aws_s3_object.website_redirect_location
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
}
