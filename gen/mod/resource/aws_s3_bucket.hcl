resource "aws_s3_bucket" "aws_s3_bucket" {
  bucket_regional_domain_name             = var.bucket_regional_domain_name
  expose_headers                          = var.expose_headers
  replication_time                        = var.replication_time
  server_side_encryption_configuration    = var.server_side_encryption_configuration
  cors_rule                               = var.cors_rule
  replication_configuration               = var.replication_configuration
  transition                              = var.transition
  lifecycle_rule                          = var.lifecycle_rule
  tags                                    = var.tags
  tags_all                                = var.tags_all
  type                                    = var.type
  years                                   = var.years
  account_id                              = var.account_id
  allowed_methods                         = var.allowed_methods
  noncurrent_version_expiration           = var.noncurrent_version_expiration
  prefix                                  = var.prefix
  rules                                   = var.rules
  max_age_seconds                         = var.max_age_seconds
  permissions                             = var.permissions
  request_payer                           = var.request_payer
  access_control_translation              = var.access_control_translation
  bucket_prefix                           = var.bucket_prefix
  create                                  = var.create
  error_document                          = var.error_document
  force_destroy                           = var.force_destroy
  website_domain                          = var.website_domain
  logging                                 = var.logging
  minutes                                 = var.minutes
  noncurrent_version_transition           = var.noncurrent_version_transition
  target_bucket                           = var.target_bucket
  status                                  = var.status
  update                                  = var.update
  versioning                              = var.versioning
  bucket                                  = var.bucket
  date                                    = var.date
  mode                                    = var.mode
  object_lock_enabled                     = var.object_lock_enabled
  source_selection_criteria               = var.source_selection_criteria
  website_endpoint                        = var.website_endpoint
  expired_object_delete_marker            = var.expired_object_delete_marker
  read                                    = var.read
  redirect_all_requests_to                = var.redirect_all_requests_to
  role                                    = var.role
  acceleration_status                     = var.acceleration_status
  region                                  = var.region
  sse_algorithm                           = var.sse_algorithm
  filter                                  = var.filter
  uri                                     = var.uri
  website                                 = var.website
  abort_incomplete_multipart_upload_days  = var.abort_incomplete_multipart_upload_days
  acl                                     = var.acl
  allowed_headers                         = var.allowed_headers
  bucket_key_enabled                      = var.bucket_key_enabled
  delete_marker_replication_status        = var.delete_marker_replication_status
  grant                                   = var.grant
  metrics                                 = var.metrics
  object_lock_configuration               = var.object_lock_configuration
  policy                                  = var.policy
  storage_class                           = var.storage_class
  allowed_origins                         = var.allowed_origins
  destination                             = var.destination
  hosted_zone_id                          = var.hosted_zone_id
  index_document                          = var.index_document
  mfa_delete                              = var.mfa_delete
  routing_rules                           = var.routing_rules
  apply_server_side_encryption_by_default = var.apply_server_side_encryption_by_default
  arn                                     = var.arn
  bucket_domain_name                      = var.bucket_domain_name
  id                                      = var.id
  priority                                = var.priority
  target_prefix                           = var.target_prefix
  days                                    = var.days
  default_retention                       = var.default_retention
  enabled                                 = var.enabled
  expiration                              = var.expiration
  kms_master_key_id                       = var.kms_master_key_id
  replica_kms_key_id                      = var.replica_kms_key_id
  rule                                    = var.rule
  sse_kms_encrypted_objects               = var.sse_kms_encrypted_objects
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "mode" {
  description = "(Required) The default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are GOVERNANCE and COMPLIANCE."
  type        = string
}
variable "object_lock_enabled" {
  description = "(Optional, strongDeprecated) Indicates whether this bucket has an Object Lock configuration enabled. Valid value is Enabled. Use the top-level argument object_lock_enabled instead."
  type        = string
}
variable "source_selection_criteria" {
  description = "(Optional) Specifies special object selection criteria (documented below)."
  type        = string
}
variable "status" {
  description = "(Optional) The status of replication metrics. Either Enabled or Disabled."
  type        = string
}
variable "update" {
  description = "(Default 20m)"
  type        = string
}
variable "versioning" {
  description = "(Optional, strongDeprecated) A configuration of the S3 bucket versioning state. See Versioning below for details. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_versioning instead."
  type        = string
}
variable "bucket" {
  description = "(Required) The ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule."
  type        = string
}
variable "date" {
  description = "(Optional) Specifies the date after which you want the corresponding action to take effect."
  type        = string
}
variable "website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  type        = string
}
variable "redirect_all_requests_to" {
  description = "(Optional) A hostname to redirect all website requests for this bucket to. Hostname can optionally be prefixed with a protocol (http:// or https://) to use when redirecting requests. The default is the protocol that is used in the original request."
  type        = string
}
variable "role" {
  description = "(Required) The ARN of the IAM role for Amazon S3 to assume when replicating the objects."
  type        = string
}
variable "expired_object_delete_marker" {
  description = "(Optional) On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct Amazon S3 to delete expired object delete markers. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.TransitionThe transition configuration block supports the following arguments:"
  type        = string
}
variable "read" {
  description = "(Default 20m)"
  type        = string
}
variable "acceleration_status" {
  description = "(Optional, strongDeprecated) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended. Cannot be used in cn-north-1 or us-gov-west-1aws_s3_bucket_accelerate_configuration instead."
  type        = string
}
variable "region" {
  description = "The AWS region this bucket resides in."
  type        = string
}
variable "sse_algorithm" {
  description = "(Required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  type        = string
}
variable "allowed_headers" {
  description = "(Optional) List of headers allowed."
  type        = string
}
variable "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.The apply_server_side_encryption_by_default configuration block supports the following arguments:"
  type        = string
}
variable "delete_marker_replication_status" {
  description = "(Optional) Whether delete markers are replicated. The only valid value is Enabled. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when filter is used)."
  type        = string
}
variable "filter" {
  description = "(Optional, Conflicts with prefix) Filter that identifies subset of objects to which the replication rule applies (documented below)."
  type        = string
}
variable "uri" {
  description = "(Optional) Uri address to grant for. Used only when type is Group.Lifecycle Rule~> strongNOTE: Currently, changes to the lifecycle_rule configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of Lifecycle rules to an S3 bucket, use the aws_s3_bucket_lifecycle_configuration resource instead. If you use lifecycle_rule on an aws_s3_bucket, Terraform will assume management over the full set of Lifecycle rules for the S3 bucket, treating additional Lifecycle rules as drift. For this reason, lifecycle_rule cannot be mixed with the external aws_s3_bucket_lifecycle_configuration resource for a given S3 bucket.~> strongNOTE: At least one of abort_incomplete_multipart_upload_days, expiration, transition, noncurrent_version_expiration, noncurrent_version_transition must be specified.The lifecycle_rule configuration block supports the following arguments:"
  type        = string
}
variable "website" {
  description = "(Optional, strongDeprecated) A configuration of the S3 bucket website. See Websiteaws_s3_bucket_website_configuration instead."
  type        = string
}
variable "abort_incomplete_multipart_upload_days" {
  description = " (Optional) Specifies the number of days after initiating a multipart upload when the multipart upload must be completed."
  type        = string
}
variable "acl" {
  description = "(Optional, strongDeprecated) The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private.  Conflicts with grant. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_acl instead."
  type        = string
}
variable "object_lock_configuration" {
  description = "(Optional, strongDeprecated) A configuration of S3 object locking. See Object Lock Configurationobject_lock_enabled parameter and the resource aws_s3_bucket_object_lock_configuration instead."
  type        = string
}
variable "policy" {
  description = "(Optional, strongDeprecated) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guideaws_s3_bucket_policy instead."
  type        = string
}
variable "storage_class" {
  description = "(Optional) The storage class used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica."
  type        = string
}
variable "grant" {
  description = "(Optional, strongDeprecated) An ACL policy grant. See Grant below for details. Conflicts with acl. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_acl instead."
  type        = string
}
variable "metrics" {
  description = "(Optional) Enables replication metrics (required for S3 RTC) (documented below).Replication TimeThe replication_time configuration block supports the following arguments:"
  type        = string
}
variable "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  type        = string
}
variable "index_document" {
  description = "(Required, unless using redirect_all_requests_to) Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders."
  type        = string
}
variable "mfa_delete" {
  description = "(Optional) Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version. Default is false. This cannot be used to toggle this setting but is available to allow managed buckets to reflect the state in AWSWebsite~> strongNOTE: Currently, changes to the website configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes to the website configuration of an S3 bucket, use the aws_s3_bucket_website_configuration resource instead. If you use website on an aws_s3_bucket, Terraform will assume management over the configuration of the website of the S3 bucket, treating additional website configuration changes as drift. For this reason, website cannot be mixed with the external aws_s3_bucket_website_configuration resource for a given S3 bucket.The website configuration block supports the following arguments:"
  type        = string
}
variable "allowed_origins" {
  description = "(Required) One or more origins you want customers to be able to access the bucket from."
  type        = string
}
variable "destination" {
  description = "(Required) Specifies the destination for the rule (documented below)."
  type        = string
}
variable "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  type        = string
}
variable "id" {
  description = "The name of the bucket."
  type        = string
}
variable "priority" {
  description = "(Optional) The priority associated with the rule. Priority should only be set if filter is configured. If not provided, defaults to 0. Priority must be unique between multiple rules."
  type        = string
}
variable "routing_rules" {
  description = "(Optional) A json array containing routing rulesIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "apply_server_side_encryption_by_default" {
  description = "(Required) A single object for setting server-side encryption by default. (documented below)"
  type        = string
}
variable "arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  type        = string
}
variable "enabled" {
  description = "(Optional) Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket."
  type        = string
}
variable "expiration" {
  description = "(Optional) Specifies a period in the object's expire. See Expiration below for details."
  type        = string
}
variable "kms_master_key_id" {
  description = "(Optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms.Versioning~> strongNOTE: Currently, changes to the versioning configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of versioning state to an S3 bucket, use the aws_s3_bucket_versioning resource instead. If you use versioning on an aws_s3_bucket, Terraform will assume management over the versioning state of the S3 bucket, treating additional versioning state changes as drift. For this reason, versioning cannot be mixed with the external aws_s3_bucket_versioning resource for a given S3 bucket.The versioning configuration block supports the following arguments:"
  type        = string
}
variable "target_prefix" {
  description = "(Optional) To specify a key prefix for log objects.Object Lock Configuration~> strongNOTE: You can only strongenable S3 Object Lock for strongnew buckets. If you need to strongenable S3 Object Lock for an strongexisting~> strongNOTE: Currently, changes to the object_lock_configuration configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of Object Lock settings to an S3 bucket, use the aws_s3_bucket_object_lock_configuration resource instead. If you use object_lock_configuration on an aws_s3_bucket, Terraform will assume management over the full set of Object Lock configuration parameters for the S3 bucket, treating additional Object Lock configuration parameters as drift. For this reason, object_lock_configuration cannot be mixed with the external aws_s3_bucket_object_lock_configuration resource for a given S3 bucket.The object_lock_configuration configuration block supports the following arguments:"
  type        = string
}
variable "days" {
  description = "(Optional) The number of days that you want to specify for the default retention period."
  type        = string
}
variable "default_retention" {
  description = "(Required) The default retention period that you want to apply to new objects placed in this bucket (documented below).Default RetentionThe default_retention configuration block supports the following arguments:~> strongNOTE: Either days or years must be specified, but not both."
  type        = string
}
variable "sse_kms_encrypted_objects" {
  description = "(Optional) Match SSE-KMS encrypted objects (documented below). If specified, replica_kms_key_iddestination must be specified as well.SSE KMS Encrypted ObjectsThe sse_kms_encrypted_objects configuration block supports the following argument:"
  type        = string
}
variable "replica_kms_key_id" {
  description = "sse_kms_encrypted_objects source selection criteria."
  type        = string
}
variable "rule" {
  description = "(Required) A single object for server-side encryption by default configuration. (documented below)The rule configuration block supports the following arguments:"
  type        = string
}
variable "replication_time" {
  description = "(Optional) Enables S3 Replication Time Control (S3 RTC) (documented below)."
  type        = string
}
variable "server_side_encryption_configuration" {
  description = "(Optional, strongDeprecated) A configuration of server-side encryption configuration. See Server Side Encryption Configurationaws_s3_bucket_server_side_encryption_configuration instead."
  type        = string
}
variable "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  type        = string
}
variable "expose_headers" {
  description = "(Optional) One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object)."
  type        = string
}
variable "transition" {
  description = "(Optional) Specifies a period in the object's transitions. See Transition below for details."
  type        = string
}
variable "cors_rule" {
  description = "(Optional, strongDeprecated) A rule of Cross-Origin Resource Sharing. See CORS rule below for details. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_cors_configuration instead."
  type        = string
}
variable "replication_configuration" {
  description = "(Optional, strongDeprecated) A configuration of replication configuration. See Replication Configurationaws_s3_bucket_replication_configuration instead."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "type" {
  description = "(Required) Type of grantee to apply for. Valid values are CanonicalUser and Group. AmazonCustomerByEmail is not supported."
  type        = string
}
variable "years" {
  description = "(Optional) The number of years that you want to specify for the default retention period.Replication Configuration~> strongNOTE: Currently, changes to the replication_configuration configuration of emexisting resources cannot be automatically detected by Terraform. To manage replication configuration changes to an S3 bucket, use the aws_s3_bucket_replication_configuration resource instead. If you use replication_configuration on an aws_s3_bucket, Terraform will assume management over the full replication configuration for the S3 bucket, treating additional replication configuration rules as drift. For this reason, replication_configuration cannot be mixed with the external aws_s3_bucket_replication_configuration resource for a given S3 bucket.The replication_configuration configuration block supports the following arguments:"
  type        = string
}
variable "lifecycle_rule" {
  description = "(Optional, strongDeprecated) A configuration of object lifecycle management. See Lifecycle Ruleaws_s3_bucket_lifecycle_configuration instead."
  type        = string
}
variable "tags" {
  description = "(Optional)  A map of tags that identifies subset of objects to which the rule applies.\nThe rule applies only to objects having all the tags in its tagset.Destination~> strongNOTE: Replication to multiple destination buckets requires that priority is specified in the rules object. If the corresponding rule requires no filter, an empty configuration block filter {} must be specified.The destination configuration block supports the following arguments:"
  type        = string
}
variable "noncurrent_version_expiration" {
  description = "(Optional) Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details."
  type        = string
}
variable "prefix" {
  description = "(Optional) Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length."
  type        = string
}
variable "rules" {
  description = "(Required) Specifies the rules managing the replication (documented below).RulesThe rules configuration block supports the following arguments:~> strongNOTE: Amazon S3's latest version of the replication configuration is V2, which includes the filterfilterprefix attribute. For backwards compatibility, Amazon S3 continues to support the V1 configuration."
  type        = string
}
variable "account_id" {
  description = "(Optional) The Account ID to use for overriding the object owner on replication. Must be used in conjunction with access_control_translation override configuration."
  type        = string
}
variable "allowed_methods" {
  description = "(Required) One or more HTTP methods that you allow the origin to execute. Can be GET, PUT, POST, DELETE or HEAD."
  type        = string
}
variable "create" {
  description = "(Default 20m)"
  type        = string
}
variable "error_document" {
  description = "(Optional) An absolute path to the document to return in case of a 4XX error."
  type        = string
}
variable "force_destroy" {
  description = "(Optional, Default:false) A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. These objects are emnot recoverable."
  type        = string
}
variable "max_age_seconds" {
  description = "(Optional) Specifies time in seconds that browser can cache the response for a preflight request.Grant~> strongNOTE: Currently, changes to the grant configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of ACL grants to an S3 bucket, use the aws_s3_bucket_acl resource instead. If you use grant on an aws_s3_bucket, Terraform will assume management over the full set of ACL grants for the S3 bucket, treating additional ACL grants as drift. For this reason, grant cannot be mixed with the external aws_s3_bucket_acl resource for a given S3 bucket.The grant configuration block supports the following arguments:"
  type        = string
}
variable "permissions" {
  description = "(Required) List of permissions to apply for grantee. Valid values are READ, WRITE, READ_ACP, WRITE_ACP, FULL_CONTROL."
  type        = string
}
variable "request_payer" {
  description = "(Optional, strongDeprecatedBucketOwner or RequesterRequester Pays Bucketsaws_s3_bucket_request_payment_configuration instead."
  type        = string
}
variable "access_control_translation" {
  description = "(Optional) Specifies the overrides to use for object owners on replication. Must be used in conjunction with account_id owner override configuration."
  type        = string
}
variable "bucket_prefix" {
  description = "(Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules may be found here."
  type        = string
}
variable "website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.TimeoutsConfiguration options:"
  type        = string
}
variable "noncurrent_version_transition" {
  description = "(Optional) Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.ExpirationThe expiration configuration block supports the following arguments:"
  type        = string
}
variable "target_bucket" {
  description = "(Required) The name of the bucket that will receive the log objects."
  type        = string
}
variable "logging" {
  description = "(Optional, strongDeprecated) A configuration of S3 bucket logging parameters. See Loggingaws_s3_bucket_logging instead."
  type        = string
}
variable "minutes" {
  description = "(Optional) Threshold within which objects are to be replicated. The only valid value is 15.Source Selection CriteriaThe source_selection_criteria configuration block supports the following argument:"
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
output "allowed_origins" {
  description = "(Required) One or more origins you want customers to be able to access the bucket from."
  value       = aws_s3_bucket.aws_s3_bucket.allowed_origins
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "destination" {
  description = "(Required) Specifies the destination for the rule (documented below)."
  value       = aws_s3_bucket.aws_s3_bucket.destination
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.aws_s3_bucket.hosted_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "index_document" {
  description = "(Required, unless using redirect_all_requests_to) Amazon S3 returns this index document when requests are made to the root domain or any of the subfolders."
  value       = aws_s3_bucket.aws_s3_bucket.index_document
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mfa_delete" {
  description = "(Optional) Enable MFA delete for either Change the versioning state of your bucket or Permanently delete an object version. Default is false. This cannot be used to toggle this setting but is available to allow managed buckets to reflect the state in AWSWebsite~> strongNOTE: Currently, changes to the website configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes to the website configuration of an S3 bucket, use the aws_s3_bucket_website_configuration resource instead. If you use website on an aws_s3_bucket, Terraform will assume management over the configuration of the website of the S3 bucket, treating additional website configuration changes as drift. For this reason, website cannot be mixed with the external aws_s3_bucket_website_configuration resource for a given S3 bucket.The website configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.mfa_delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "apply_server_side_encryption_by_default" {
  description = "(Required) A single object for setting server-side encryption by default. (documented below)"
  value       = aws_s3_bucket.aws_s3_bucket.apply_server_side_encryption_by_default
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.aws_s3_bucket.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.aws_s3_bucket.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "priority" {
  description = "(Optional) The priority associated with the rule. Priority should only be set if filter is configured. If not provided, defaults to 0. Priority must be unique between multiple rules."
  value       = aws_s3_bucket.aws_s3_bucket.priority
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "routing_rules" {
  description = "(Optional) A json array containing routing rulesIn addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket.aws_s3_bucket.routing_rules
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "days" {
  description = "(Optional) The number of days that you want to specify for the default retention period."
  value       = aws_s3_bucket.aws_s3_bucket.days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "default_retention" {
  description = "(Required) The default retention period that you want to apply to new objects placed in this bucket (documented below).Default RetentionThe default_retention configuration block supports the following arguments:~> strongNOTE: Either days or years must be specified, but not both."
  value       = aws_s3_bucket.aws_s3_bucket.default_retention
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enabled" {
  description = "(Optional) Enable versioning. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket."
  value       = aws_s3_bucket.aws_s3_bucket.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expiration" {
  description = "(Optional) Specifies a period in the object's expire. See Expiration below for details."
  value       = aws_s3_bucket.aws_s3_bucket.expiration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_master_key_id" {
  description = "(Optional) The AWS KMS master key ID used for the SSE-KMS encryption. This can only be used when you set the value of sse_algorithm as aws:kms. The default aws/s3 AWS KMS master key is used if this element is absent while the sse_algorithm is aws:kms.Versioning~> strongNOTE: Currently, changes to the versioning configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of versioning state to an S3 bucket, use the aws_s3_bucket_versioning resource instead. If you use versioning on an aws_s3_bucket, Terraform will assume management over the versioning state of the S3 bucket, treating additional versioning state changes as drift. For this reason, versioning cannot be mixed with the external aws_s3_bucket_versioning resource for a given S3 bucket.The versioning configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.kms_master_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_prefix" {
  description = "(Optional) To specify a key prefix for log objects.Object Lock Configuration~> strongNOTE: You can only strongenable S3 Object Lock for strongnew buckets. If you need to strongenable S3 Object Lock for an strongexisting~> strongNOTE: Currently, changes to the object_lock_configuration configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of Object Lock settings to an S3 bucket, use the aws_s3_bucket_object_lock_configuration resource instead. If you use object_lock_configuration on an aws_s3_bucket, Terraform will assume management over the full set of Object Lock configuration parameters for the S3 bucket, treating additional Object Lock configuration parameters as drift. For this reason, object_lock_configuration cannot be mixed with the external aws_s3_bucket_object_lock_configuration resource for a given S3 bucket.The object_lock_configuration configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.target_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replica_kms_key_id" {
  description = "sse_kms_encrypted_objects source selection criteria."
  value       = aws_s3_bucket.aws_s3_bucket.replica_kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule" {
  description = "(Required) A single object for server-side encryption by default configuration. (documented below)The rule configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sse_kms_encrypted_objects" {
  description = "(Optional) Match SSE-KMS encrypted objects (documented below). If specified, replica_kms_key_iddestination must be specified as well.SSE KMS Encrypted ObjectsThe sse_kms_encrypted_objects configuration block supports the following argument:"
  value       = aws_s3_bucket.aws_s3_bucket.sse_kms_encrypted_objects
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_regional_domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expose_headers" {
  description = "(Optional) One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript XMLHttpRequest object)."
  value       = aws_s3_bucket.aws_s3_bucket.expose_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replication_time" {
  description = "(Optional) Enables S3 Replication Time Control (S3 RTC) (documented below)."
  value       = aws_s3_bucket.aws_s3_bucket.replication_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_side_encryption_configuration" {
  description = "(Optional, strongDeprecated) A configuration of server-side encryption configuration. See Server Side Encryption Configurationaws_s3_bucket_server_side_encryption_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.server_side_encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cors_rule" {
  description = "(Optional, strongDeprecated) A rule of Cross-Origin Resource Sharing. See CORS rule below for details. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_cors_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.cors_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "replication_configuration" {
  description = "(Optional, strongDeprecated) A configuration of replication configuration. See Replication Configurationaws_s3_bucket_replication_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.replication_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transition" {
  description = "(Optional) Specifies a period in the object's transitions. See Transition below for details."
  value       = aws_s3_bucket.aws_s3_bucket.transition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lifecycle_rule" {
  description = "(Optional, strongDeprecated) A configuration of object lifecycle management. See Lifecycle Ruleaws_s3_bucket_lifecycle_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.lifecycle_rule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional)  A map of tags that identifies subset of objects to which the rule applies.\nThe rule applies only to objects having all the tags in its tagset.Destination~> strongNOTE: Replication to multiple destination buckets requires that priority is specified in the rules object. If the corresponding rule requires no filter, an empty configuration block filter {} must be specified.The destination configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket.aws_s3_bucket.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Type of grantee to apply for. Valid values are CanonicalUser and Group. AmazonCustomerByEmail is not supported."
  value       = aws_s3_bucket.aws_s3_bucket.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "years" {
  description = "(Optional) The number of years that you want to specify for the default retention period.Replication Configuration~> strongNOTE: Currently, changes to the replication_configuration configuration of emexisting resources cannot be automatically detected by Terraform. To manage replication configuration changes to an S3 bucket, use the aws_s3_bucket_replication_configuration resource instead. If you use replication_configuration on an aws_s3_bucket, Terraform will assume management over the full replication configuration for the S3 bucket, treating additional replication configuration rules as drift. For this reason, replication_configuration cannot be mixed with the external aws_s3_bucket_replication_configuration resource for a given S3 bucket.The replication_configuration configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.years
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "(Optional) The Account ID to use for overriding the object owner on replication. Must be used in conjunction with access_control_translation override configuration."
  value       = aws_s3_bucket.aws_s3_bucket.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_methods" {
  description = "(Required) One or more HTTP methods that you allow the origin to execute. Can be GET, PUT, POST, DELETE or HEAD."
  value       = aws_s3_bucket.aws_s3_bucket.allowed_methods
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "noncurrent_version_expiration" {
  description = "(Optional) Specifies when noncurrent object versions expire. See Noncurrent Version Expiration below for details."
  value       = aws_s3_bucket.aws_s3_bucket.noncurrent_version_expiration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "prefix" {
  description = "(Optional) Object keyname prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length."
  value       = aws_s3_bucket.aws_s3_bucket.prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rules" {
  description = "(Required) Specifies the rules managing the replication (documented below).RulesThe rules configuration block supports the following arguments:~> strongNOTE: Amazon S3's latest version of the replication configuration is V2, which includes the filterfilterprefix attribute. For backwards compatibility, Amazon S3 continues to support the V1 configuration."
  value       = aws_s3_bucket.aws_s3_bucket.rules
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "request_payer" {
  description = "(Optional, strongDeprecatedBucketOwner or RequesterRequester Pays Bucketsaws_s3_bucket_request_payment_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.request_payer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_translation" {
  description = "(Optional) Specifies the overrides to use for object owners on replication. Must be used in conjunction with account_id owner override configuration."
  value       = aws_s3_bucket.aws_s3_bucket.access_control_translation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_prefix" {
  description = "(Optional, Forces new resource) Creates a unique bucket name beginning with the specified prefix. Conflicts with bucket. Must be lowercase and less than or equal to 37 characters in length. A full list of bucket naming rules may be found here."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "error_document" {
  description = "(Optional) An absolute path to the document to return in case of a 4XX error."
  value       = aws_s3_bucket.aws_s3_bucket.error_document
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_destroy" {
  description = "(Optional, Default:false) A boolean that indicates all objects (including any locked objects) should be deleted from the bucket so that the bucket can be destroyed without error. These objects are emnot recoverable."
  value       = aws_s3_bucket.aws_s3_bucket.force_destroy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_age_seconds" {
  description = "(Optional) Specifies time in seconds that browser can cache the response for a preflight request.Grant~> strongNOTE: Currently, changes to the grant configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of ACL grants to an S3 bucket, use the aws_s3_bucket_acl resource instead. If you use grant on an aws_s3_bucket, Terraform will assume management over the full set of ACL grants for the S3 bucket, treating additional ACL grants as drift. For this reason, grant cannot be mixed with the external aws_s3_bucket_acl resource for a given S3 bucket.The grant configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.max_age_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permissions" {
  description = "(Required) List of permissions to apply for grantee. Valid values are READ, WRITE, READ_ACP, WRITE_ACP, FULL_CONTROL."
  value       = aws_s3_bucket.aws_s3_bucket.permissions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.TimeoutsConfiguration options:"
  value       = aws_s3_bucket.aws_s3_bucket.website_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging" {
  description = "(Optional, strongDeprecated) A configuration of S3 bucket logging parameters. See Loggingaws_s3_bucket_logging instead."
  value       = aws_s3_bucket.aws_s3_bucket.logging
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "minutes" {
  description = "(Optional) Threshold within which objects are to be replicated. The only valid value is 15.Source Selection CriteriaThe source_selection_criteria configuration block supports the following argument:"
  value       = aws_s3_bucket.aws_s3_bucket.minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "noncurrent_version_transition" {
  description = "(Optional) Specifies when noncurrent object versions transitions. See Noncurrent Version Transition below for details.ExpirationThe expiration configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.noncurrent_version_transition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_bucket" {
  description = "(Required) The name of the bucket that will receive the log objects."
  value       = aws_s3_bucket.aws_s3_bucket.target_bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "versioning" {
  description = "(Optional, strongDeprecated) A configuration of the S3 bucket versioning state. See Versioning below for details. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_versioning instead."
  value       = aws_s3_bucket.aws_s3_bucket.versioning
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required) The ARN of the S3 bucket where you want Amazon S3 to store replicas of the object identified by the rule."
  value       = aws_s3_bucket.aws_s3_bucket.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date" {
  description = "(Optional) Specifies the date after which you want the corresponding action to take effect."
  value       = aws_s3_bucket.aws_s3_bucket.date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode" {
  description = "(Required) The default Object Lock retention mode you want to apply to new objects placed in this bucket. Valid values are GOVERNANCE and COMPLIANCE."
  value       = aws_s3_bucket.aws_s3_bucket.mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_lock_enabled" {
  description = "(Optional, strongDeprecated) Indicates whether this bucket has an Object Lock configuration enabled. Valid value is Enabled. Use the top-level argument object_lock_enabled instead."
  value       = aws_s3_bucket.aws_s3_bucket.object_lock_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_selection_criteria" {
  description = "(Optional) Specifies special object selection criteria (documented below)."
  value       = aws_s3_bucket.aws_s3_bucket.source_selection_criteria
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) The status of replication metrics. Either Enabled or Disabled."
  value       = aws_s3_bucket.aws_s3_bucket.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.aws_s3_bucket.website_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expired_object_delete_marker" {
  description = "(Optional) On a versioned bucket (versioning-enabled or versioning-suspended bucket), you can add this element in the lifecycle configuration to direct Amazon S3 to delete expired object delete markers. This cannot be specified with Days or Date in a Lifecycle Expiration Policy.TransitionThe transition configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.expired_object_delete_marker
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redirect_all_requests_to" {
  description = "(Optional) A hostname to redirect all website requests for this bucket to. Hostname can optionally be prefixed with a protocol (http:// or https://) to use when redirecting requests. The default is the protocol that is used in the original request."
  value       = aws_s3_bucket.aws_s3_bucket.redirect_all_requests_to
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = "(Required) The ARN of the IAM role for Amazon S3 to assume when replicating the objects."
  value       = aws_s3_bucket.aws_s3_bucket.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acceleration_status" {
  description = "(Optional, strongDeprecated) Sets the accelerate configuration of an existing bucket. Can be Enabled or Suspended. Cannot be used in cn-north-1 or us-gov-west-1aws_s3_bucket_accelerate_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.acceleration_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "The AWS region this bucket resides in."
  value       = aws_s3_bucket.aws_s3_bucket.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sse_algorithm" {
  description = "(Required) The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
  value       = aws_s3_bucket.aws_s3_bucket.sse_algorithm
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website" {
  description = "(Optional, strongDeprecated) A configuration of the S3 bucket website. See Websiteaws_s3_bucket_website_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.website
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abort_incomplete_multipart_upload_days" {
  description = " (Optional) Specifies the number of days after initiating a multipart upload when the multipart upload must be completed."
  value       = aws_s3_bucket.aws_s3_bucket.abort_incomplete_multipart_upload_days
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acl" {
  description = "(Optional, strongDeprecated) The canned ACL to apply. Valid values are private, public-read, public-read-write, aws-exec-read, authenticated-read, and log-delivery-write. Defaults to private.  Conflicts with grant. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_acl instead."
  value       = aws_s3_bucket.aws_s3_bucket.acl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "allowed_headers" {
  description = "(Optional) List of headers allowed."
  value       = aws_s3_bucket.aws_s3_bucket.allowed_headers
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_key_enabled" {
  description = "(Optional) Whether or not to use Amazon S3 Bucket Keys for SSE-KMS.The apply_server_side_encryption_by_default configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.bucket_key_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete_marker_replication_status" {
  description = "(Optional) Whether delete markers are replicated. The only valid value is Enabled. To disable, omit this argument. This argument is only valid with V2 replication configurations (i.e., when filter is used)."
  value       = aws_s3_bucket.aws_s3_bucket.delete_marker_replication_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter" {
  description = "(Optional, Conflicts with prefix) Filter that identifies subset of objects to which the replication rule applies (documented below)."
  value       = aws_s3_bucket.aws_s3_bucket.filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri" {
  description = "(Optional) Uri address to grant for. Used only when type is Group.Lifecycle Rule~> strongNOTE: Currently, changes to the lifecycle_rule configuration of emexisting resources cannot be automatically detected by Terraform. To manage changes of Lifecycle rules to an S3 bucket, use the aws_s3_bucket_lifecycle_configuration resource instead. If you use lifecycle_rule on an aws_s3_bucket, Terraform will assume management over the full set of Lifecycle rules for the S3 bucket, treating additional Lifecycle rules as drift. For this reason, lifecycle_rule cannot be mixed with the external aws_s3_bucket_lifecycle_configuration resource for a given S3 bucket.~> strongNOTE: At least one of abort_incomplete_multipart_upload_days, expiration, transition, noncurrent_version_expiration, noncurrent_version_transition must be specified.The lifecycle_rule configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant" {
  description = "(Optional, strongDeprecated) An ACL policy grant. See Grant below for details. Conflicts with acl. Terraform will only perform drift detection if a configuration value is provided. Use the resource aws_s3_bucket_acl instead."
  value       = aws_s3_bucket.aws_s3_bucket.grant
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "metrics" {
  description = "(Optional) Enables replication metrics (required for S3 RTC) (documented below).Replication TimeThe replication_time configuration block supports the following arguments:"
  value       = aws_s3_bucket.aws_s3_bucket.metrics
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_lock_configuration" {
  description = "(Optional, strongDeprecated) A configuration of S3 object locking. See Object Lock Configurationobject_lock_enabled parameter and the resource aws_s3_bucket_object_lock_configuration instead."
  value       = aws_s3_bucket.aws_s3_bucket.object_lock_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional, strongDeprecated) A valid bucket policy JSON document. Note that if the policy document is not specific enough (but still valid), Terraform may view the policy as constantly changing in a terraform plan. In this case, please make sure you use the verbose/specific version of the policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guideaws_s3_bucket_policy instead."
  value       = aws_s3_bucket.aws_s3_bucket.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "storage_class" {
  description = "(Optional) The storage class used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica."
  value       = aws_s3_bucket.aws_s3_bucket.storage_class
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The ARN of the bucket. Will be of format arn:aws:s3:::bucketname."
  value       = aws_s3_bucket.aws_s3_bucket.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_regional_domain_name" {
  description = "The bucket region-specific domain name. The bucket domain name including the region name, please refer here for format. Note: The AWS CloudFront allows specifying S3 region-specific endpoint when creating S3 origin, it will prevent redirect issues from CloudFront to S3 Origin URL."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_regional_domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hosted_zone_id" {
  description = "The Route 53 Hosted Zone ID for this bucket's region."
  value       = aws_s3_bucket.aws_s3_bucket.hosted_zone_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the bucket."
  value       = aws_s3_bucket.aws_s3_bucket.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_s3_bucket.aws_s3_bucket.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_domain" {
  description = "The domain of the website endpoint, if the bucket is configured with a website. If not, this will be an empty string. This is used to create Route 53 alias records.TimeoutsConfiguration options:"
  value       = aws_s3_bucket.aws_s3_bucket.website_domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "website_endpoint" {
  description = "The website endpoint, if the bucket is configured with a website. If not, this will be an empty string."
  value       = aws_s3_bucket.aws_s3_bucket.website_endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_domain_name" {
  description = "The bucket domain name. Will be of format bucketname.s3.amazonaws.com."
  value       = aws_s3_bucket.aws_s3_bucket.bucket_domain_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_s3_bucket.aws_s3_bucket.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "The AWS region this bucket resides in."
  value       = aws_s3_bucket.aws_s3_bucket.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 20m)"
  value       = aws_s3_bucket.aws_s3_bucket.update
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
      "kind/name"                   = "aws_s3_bucket"
      "kind/version"                = "v0.1.0"
    }
  }
}
