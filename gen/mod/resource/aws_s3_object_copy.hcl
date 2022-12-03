resource "aws_s3_object_copy" "aws_s3_object_copy" {
  last_modified                 = var.last_modified
  metadata_directive            = var.metadata_directive
  copy_if_match                 = var.copy_if_match
  grant                         = var.grant
  expires                       = var.expires
  kms_encryption_context        = var.kms_encryption_context
  request_charged               = var.request_charged
  tagging_directive             = var.tagging_directive
  content_type                  = var.content_type
  etag                          = var.etag
  source_customer_algorithm     = var.source_customer_algorithm
  source_version_id             = var.source_version_id
  type                          = var.type
  expiration                    = var.expiration
  kms_key_id                    = var.kms_key_id
  customer_key_md5              = var.customer_key_md5
  email                         = var.email
  force_destroy                 = var.force_destroy
  id                            = var.id
  object_lock_mode              = var.object_lock_mode
  storage_class                 = var.storage_class
  bucket                        = var.bucket
  content_encoding              = var.content_encoding
  tags_all                      = var.tags_all
  website_redirect              = var.website_redirect
  source                        = var.source
  source_customer_key_md5       = var.source_customer_key_md5
  tags                          = var.tags
  uri                           = var.uri
  acl                           = var.acl
  content_disposition           = var.content_disposition
  copy_if_unmodified_since      = var.copy_if_unmodified_since
  metadata                      = var.metadata
  request_payer                 = var.request_payer
  server_side_encryption        = var.server_side_encryption
  cache_control                 = var.cache_control
  copy_if_none_match            = var.copy_if_none_match
  customer_key                  = var.customer_key
  key                           = var.key
  object_lock_legal_hold_status = var.object_lock_legal_hold_status
  object_lock_retain_until_date = var.object_lock_retain_until_date
  copy_if_modified_since        = var.copy_if_modified_since
  customer_algorithm            = var.customer_algorithm
  expected_source_bucket_owner  = var.expected_source_bucket_owner
  permissions                   = var.permissions
  source_customer_key           = var.source_customer_key
  content_language              = var.content_language
  expected_bucket_owner         = var.expected_bucket_owner
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "expires" {
  description = "(Optional) Date and time at which the object is no longer cacheable, in RFC3339 format."
  type        = string
  default     = ""
}
variable "kms_encryption_context" {
  description = "(Optional) Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs."
  type        = string
  default     = ""
}
variable "request_charged" {
  description = "If present, indicates that the requester was successfully charged for the request."
  type        = string
  default     = ""
}
variable "tagging_directive" {
  description = "(Optional) Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are COPY and REPLACE."
  type        = string
  default     = ""
}
variable "content_type" {
  description = "(Optional) Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input."
  type        = string
  default     = ""
}
variable "etag" {
  description = "The ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  type        = string
  default     = ""
}
variable "source_customer_algorithm" {
  description = "(Optional) Specifies the algorithm to use when decrypting the source object (for example, AES256)."
  type        = string
  default     = ""
}
variable "source_version_id" {
  description = "Version of the copied object in the source bucket."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) - Type of grantee. Valid values are CanonicalUser, Group, and AmazonCustomerByEmail.This configuration block has the following optional arguments (one of the three is required):"
  type        = string
}
variable "expiration" {
  description = "If the object expiration is configured, this attribute will be set."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified strongARN of the KMS Key. If using aws_kms_key, use the exported arn attribute: kms_key_id = aws_kms_key.foo.arn"
  type        = string
  default     = ""
}
variable "customer_key_md5" {
  description = "(Optional) Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error."
  type        = string
  default     = ""
}
variable "email" {
  description = "(Optional) Email address of the grantee. Used only when type is AmazonCustomerByEmail."
  type        = string
  default     = ""
}
variable "force_destroy" {
  description = "(Optional) Allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  type        = string
  default     = ""
}
variable "id" {
  description = "The key of the resource supplied above."
  type        = string
  default     = ""
}
variable "object_lock_mode" {
  description = "(Optional) The object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE."
  type        = string
  default     = ""
}
variable "storage_class" {
  description = "(Optional) Specifies the desired storage class for the object. Defaults to STANDARD."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) Name of the bucket to put the file in."
  type        = string
}
variable "content_encoding" {
  description = "(Optional) Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "website_redirect" {
  description = "(Optional) Specifies a target URL for website redirect.grant-> For more information on header grants, see the Amazon Simple Storage Service (S3) API Reference: PutObjectAcl.This configuration block has the following required arguments:"
  type        = string
  default     = ""
}
variable "source" {
  description = "(Required) Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (/). For example, testbucket/test1.json. For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>. For example, arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json."
  type        = string
}
variable "source_customer_key_md5" {
  description = "(Optional) Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "uri" {
  description = "(Optional) URI of the grantee group. Used only when type is Group.-> strongNote: Terraform ignores all leading /s in the object's key and treats multiple /s in the rest of the object's key as a single /, so values of /index.html and index.html correspond to the same S3 object as do first//second///third// and first/second/third/.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "acl" {
  description = "(Optional) Canned ACL to apply. Defaults to private. Valid values are private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, and bucket-owner-full-control. Conflicts with grant."
  type        = string
  default     = ""
}
variable "content_disposition" {
  description = "(Optional) Specifies presentational information for the object. Read w3c content_disposition for further information."
  type        = string
  default     = ""
}
variable "copy_if_unmodified_since" {
  description = "(Optional) Copies the object if it hasn't been modified since the specified time, in RFC3339 format."
  type        = string
  default     = ""
}
variable "metadata" {
  description = "(Optional) A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API)."
  type        = string
  default     = ""
}
variable "request_payer" {
  description = "(Optional) Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is requester."
  type        = string
  default     = ""
}
variable "server_side_encryption" {
  description = "(Optional) Specifies server-side encryption of the object in S3. Valid values are AES256 and aws:kms."
  type        = string
  default     = ""
}
variable "cache_control" {
  description = "(Optional) Specifies caching behavior along the request/reply chain Read w3c cache_control for further details."
  type        = string
  default     = ""
}
variable "copy_if_none_match" {
  description = "(Optional) Copies the object if its entity tag (ETag) is different than the specified ETag."
  type        = string
  default     = ""
}
variable "customer_key" {
  description = "(Optional) Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Name of the object once it is in the bucket."
  type        = string
}
variable "object_lock_legal_hold_status" {
  description = "(Optional) The legal hold status that you want to apply to the specified object. Valid values are ON and OFF."
  type        = string
  default     = ""
}
variable "object_lock_retain_until_date" {
  description = "(Optional) The date and time, in RFC3339 format, when this object's object lock will expire."
  type        = string
  default     = ""
}
variable "copy_if_modified_since" {
  description = "(Optional) Copies the object if it has been modified since the specified time, in RFC3339 format."
  type        = string
  default     = ""
}
variable "customer_algorithm" {
  description = "(Optional) Specifies the algorithm to use to when encrypting the object (for example, AES256)."
  type        = string
  default     = ""
}
variable "expected_source_bucket_owner" {
  description = "(Optional) Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  type        = string
  default     = ""
}
variable "permissions" {
  description = "(Required) List of permissions to grant to grantee. Valid values are READ, READ_ACP, WRITE_ACP, FULL_CONTROL."
  type        = string
}
variable "source_customer_key" {
  description = "(Optional) Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created."
  type        = string
  default     = ""
}
variable "content_language" {
  description = "(Optional) Language the content is in e.g., en-US or en-GB."
  type        = string
  default     = ""
}
variable "expected_bucket_owner" {
  description = "(Optional) Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  type        = string
  default     = ""
}
variable "last_modified" {
  description = "Returns the date that the object was last modified, in RFC3339 format."
  type        = string
  default     = ""
}
variable "metadata_directive" {
  description = "(Optional) Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are COPY and REPLACE."
  type        = string
  default     = ""
}
variable "copy_if_match" {
  description = "(Optional) Copies the object if its entity tag (ETag) matches the specified tag."
  type        = string
  default     = ""
}
variable "grant" {
  description = "(Optional) Configuration block for header grants. Documented below. Conflicts with acl."
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
output "copy_if_match" {
  description = "(Optional) Copies the object if its entity tag (ETag) matches the specified tag."
  value       = aws_s3_object_copy.aws_s3_object_copy.copy_if_match
}
output "grant" {
  description = "(Optional) Configuration block for header grants. Documented below. Conflicts with acl."
  value       = aws_s3_object_copy.aws_s3_object_copy.grant
}
output "last_modified" {
  description = "Returns the date that the object was last modified, in RFC3339 format."
  value       = aws_s3_object_copy.aws_s3_object_copy.last_modified
}
output "metadata_directive" {
  description = "(Optional) Specifies whether the metadata is copied from the source object or replaced with metadata provided in the request. Valid values are COPY and REPLACE."
  value       = aws_s3_object_copy.aws_s3_object_copy.metadata_directive
}
output "content_type" {
  description = "(Optional) Standard MIME type describing the format of the object data, e.g., application/octet-stream. All Valid MIME Types are valid for this input."
  value       = aws_s3_object_copy.aws_s3_object_copy.content_type
}
output "etag" {
  description = "The ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  value       = aws_s3_object_copy.aws_s3_object_copy.etag
}
output "expires" {
  description = "(Optional) Date and time at which the object is no longer cacheable, in RFC3339 format."
  value       = aws_s3_object_copy.aws_s3_object_copy.expires
}
output "kms_encryption_context" {
  description = "(Optional) Specifies the AWS KMS Encryption Context to use for object encryption. The value is a base64-encoded UTF-8 string holding JSON with the encryption context key-value pairs."
  value       = aws_s3_object_copy.aws_s3_object_copy.kms_encryption_context
}
output "request_charged" {
  description = "If present, indicates that the requester was successfully charged for the request."
  value       = aws_s3_object_copy.aws_s3_object_copy.request_charged
}
output "tagging_directive" {
  description = "(Optional) Specifies whether the object tag-set are copied from the source object or replaced with tag-set provided in the request. Valid values are COPY and REPLACE."
  value       = aws_s3_object_copy.aws_s3_object_copy.tagging_directive
}
output "expiration" {
  description = "If the object expiration is configured, this attribute will be set."
  value       = aws_s3_object_copy.aws_s3_object_copy.expiration
}
output "kms_key_id" {
  description = "(Optional) Specifies the AWS KMS Key ARN to use for object encryption. This value is a fully qualified strongARN of the KMS Key. If using aws_kms_key, use the exported arn attribute: kms_key_id = aws_kms_key.foo.arn"
  value       = aws_s3_object_copy.aws_s3_object_copy.kms_key_id
}
output "source_customer_algorithm" {
  description = "(Optional) Specifies the algorithm to use when decrypting the source object (for example, AES256)."
  value       = aws_s3_object_copy.aws_s3_object_copy.source_customer_algorithm
}
output "source_version_id" {
  description = "Version of the copied object in the source bucket."
  value       = aws_s3_object_copy.aws_s3_object_copy.source_version_id
}
output "type" {
  description = "(Required) - Type of grantee. Valid values are CanonicalUser, Group, and AmazonCustomerByEmail.This configuration block has the following optional arguments (one of the three is required):"
  value       = aws_s3_object_copy.aws_s3_object_copy.type
}
output "bucket" {
  description = "(Required) Name of the bucket to put the file in."
  value       = aws_s3_object_copy.aws_s3_object_copy.bucket
}
output "content_encoding" {
  description = "(Optional) Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field. Read w3c content encoding for further information."
  value       = aws_s3_object_copy.aws_s3_object_copy.content_encoding
}
output "customer_key_md5" {
  description = "(Optional) Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error."
  value       = aws_s3_object_copy.aws_s3_object_copy.customer_key_md5
}
output "email" {
  description = "(Optional) Email address of the grantee. Used only when type is AmazonCustomerByEmail."
  value       = aws_s3_object_copy.aws_s3_object_copy.email
}
output "force_destroy" {
  description = "(Optional) Allow the object to be deleted by removing any legal hold on any object version. Default is false. This value should be set to true only if the bucket has S3 object lock enabled."
  value       = aws_s3_object_copy.aws_s3_object_copy.force_destroy
}
output "id" {
  description = "The key of the resource supplied above."
  value       = aws_s3_object_copy.aws_s3_object_copy.id
}
output "object_lock_mode" {
  description = "(Optional) The object lock retention mode that you want to apply to this object. Valid values are GOVERNANCE and COMPLIANCE."
  value       = aws_s3_object_copy.aws_s3_object_copy.object_lock_mode
}
output "storage_class" {
  description = "(Optional) Specifies the desired storage class for the object. Defaults to STANDARD."
  value       = aws_s3_object_copy.aws_s3_object_copy.storage_class
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_object_copy.aws_s3_object_copy.tags_all
}
output "website_redirect" {
  description = "(Optional) Specifies a target URL for website redirect.grant-> For more information on header grants, see the Amazon Simple Storage Service (S3) API Reference: PutObjectAcl.This configuration block has the following required arguments:"
  value       = aws_s3_object_copy.aws_s3_object_copy.website_redirect
}
output "acl" {
  description = "(Optional) Canned ACL to apply. Defaults to private. Valid values are private, public-read, public-read-write, authenticated-read, aws-exec-read, bucket-owner-read, and bucket-owner-full-control. Conflicts with grant."
  value       = aws_s3_object_copy.aws_s3_object_copy.acl
}
output "content_disposition" {
  description = "(Optional) Specifies presentational information for the object. Read w3c content_disposition for further information."
  value       = aws_s3_object_copy.aws_s3_object_copy.content_disposition
}
output "source" {
  description = "(Required) Specifies the source object for the copy operation. You specify the value in one of two formats. For objects not accessed through an access point, specify the name of the source bucket and the key of the source object, separated by a slash (/). For example, testbucket/test1.json. For objects accessed through access points, specify the Amazon Resource Name (ARN) of the object as accessed through the access point, in the format arn:aws:s3:<Region>:<account-id>:accesspoint/<access-point-name>/object/<key>. For example, arn:aws:s3:us-west-2:9999912999:accesspoint/my-access-point/object/testbucket/test1.json."
  value       = aws_s3_object_copy.aws_s3_object_copy.source
}
output "source_customer_key_md5" {
  description = "(Optional) Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure that the encryption key was transmitted without error."
  value       = aws_s3_object_copy.aws_s3_object_copy.source_customer_key_md5
}
output "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_s3_object_copy.aws_s3_object_copy.tags
}
output "uri" {
  description = "(Optional) URI of the grantee group. Used only when type is Group.-> strongNote: Terraform ignores all leading /s in the object's key and treats multiple /s in the rest of the object's key as a single /, so values of /index.html and index.html correspond to the same S3 object as do first//second///third// and first/second/third/.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_object_copy.aws_s3_object_copy.uri
}
output "cache_control" {
  description = "(Optional) Specifies caching behavior along the request/reply chain Read w3c cache_control for further details."
  value       = aws_s3_object_copy.aws_s3_object_copy.cache_control
}
output "copy_if_none_match" {
  description = "(Optional) Copies the object if its entity tag (ETag) is different than the specified ETag."
  value       = aws_s3_object_copy.aws_s3_object_copy.copy_if_none_match
}
output "copy_if_unmodified_since" {
  description = "(Optional) Copies the object if it hasn't been modified since the specified time, in RFC3339 format."
  value       = aws_s3_object_copy.aws_s3_object_copy.copy_if_unmodified_since
}
output "metadata" {
  description = "(Optional) A map of keys/values to provision metadata (will be automatically prefixed by x-amz-meta-, note that only lowercase label are currently supported by the AWS Go API)."
  value       = aws_s3_object_copy.aws_s3_object_copy.metadata
}
output "request_payer" {
  description = "(Optional) Confirms that the requester knows that they will be charged for the request. Bucket owners need not specify this parameter in their requests. For information about downloading objects from requester pays buckets, see Downloading Objects in Requestor Pays Buckets (https://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html) in the Amazon S3 Developer Guide. If included, the only valid value is requester."
  value       = aws_s3_object_copy.aws_s3_object_copy.request_payer
}
output "server_side_encryption" {
  description = "(Optional) Specifies server-side encryption of the object in S3. Valid values are AES256 and aws:kms."
  value       = aws_s3_object_copy.aws_s3_object_copy.server_side_encryption
}
output "copy_if_modified_since" {
  description = "(Optional) Copies the object if it has been modified since the specified time, in RFC3339 format."
  value       = aws_s3_object_copy.aws_s3_object_copy.copy_if_modified_since
}
output "customer_algorithm" {
  description = "(Optional) Specifies the algorithm to use to when encrypting the object (for example, AES256)."
  value       = aws_s3_object_copy.aws_s3_object_copy.customer_algorithm
}
output "customer_key" {
  description = "(Optional) Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon S3 does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side-encryption-customer-algorithm header."
  value       = aws_s3_object_copy.aws_s3_object_copy.customer_key
}
output "key" {
  description = "(Required) Name of the object once it is in the bucket."
  value       = aws_s3_object_copy.aws_s3_object_copy.key
}
output "object_lock_legal_hold_status" {
  description = "(Optional) The legal hold status that you want to apply to the specified object. Valid values are ON and OFF."
  value       = aws_s3_object_copy.aws_s3_object_copy.object_lock_legal_hold_status
}
output "object_lock_retain_until_date" {
  description = "(Optional) The date and time, in RFC3339 format, when this object's object lock will expire."
  value       = aws_s3_object_copy.aws_s3_object_copy.object_lock_retain_until_date
}
output "content_language" {
  description = "(Optional) Language the content is in e.g., en-US or en-GB."
  value       = aws_s3_object_copy.aws_s3_object_copy.content_language
}
output "expected_bucket_owner" {
  description = "(Optional) Account id of the expected destination bucket owner. If the destination bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  value       = aws_s3_object_copy.aws_s3_object_copy.expected_bucket_owner
}
output "expected_source_bucket_owner" {
  description = "(Optional) Account id of the expected source bucket owner. If the source bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  value       = aws_s3_object_copy.aws_s3_object_copy.expected_source_bucket_owner
}
output "permissions" {
  description = "(Required) List of permissions to grant to grantee. Valid values are READ, READ_ACP, WRITE_ACP, FULL_CONTROL."
  value       = aws_s3_object_copy.aws_s3_object_copy.permissions
}
output "source_customer_key" {
  description = "(Optional) Specifies the customer-provided encryption key for Amazon S3 to use to decrypt the source object. The encryption key provided in this header must be one that was used when the source object was created."
  value       = aws_s3_object_copy.aws_s3_object_copy.source_customer_key
}
output "etag" {
  description = "The ETag generated for the object (an MD5 sum of the object content). For plaintext objects or objects encrypted with an AWS-managed key, the hash is an MD5 digest of the object data. For objects encrypted with a KMS key or objects created by either the Multipart Upload or Part Copy operation, the hash is not an MD5 digest, regardless of the method of encryption. More information on possible values can be found on Common Response Headers."
  value       = aws_s3_object_copy.aws_s3_object_copy.etag
}
output "expiration" {
  description = "If the object expiration is configured, this attribute will be set."
  value       = aws_s3_object_copy.aws_s3_object_copy.expiration
}
output "id" {
  description = "The key of the resource supplied above."
  value       = aws_s3_object_copy.aws_s3_object_copy.id
}
output "last_modified" {
  description = "Returns the date that the object was last modified, in RFC3339 format."
  value       = aws_s3_object_copy.aws_s3_object_copy.last_modified
}
output "request_charged" {
  description = "If present, indicates that the requester was successfully charged for the request."
  value       = aws_s3_object_copy.aws_s3_object_copy.request_charged
}
output "source_version_id" {
  description = "Version of the copied object in the source bucket."
  value       = aws_s3_object_copy.aws_s3_object_copy.source_version_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_object_copy.aws_s3_object_copy.tags_all
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
      "kind/name"                   = "aws_s3_object_copy"
      "kind/version"                = "v0.1.0"
    }
  }
}
