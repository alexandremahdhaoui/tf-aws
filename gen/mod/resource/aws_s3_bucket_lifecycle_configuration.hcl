resource "aws_s3_bucket_lifecycle_configuration" "aws_s3_bucket_lifecycle_configuration" {
  storage_class                     = var.storage_class
  tags                              = var.tags
  transition                        = var.transition
  and                               = var.and
  days_after_initiation             = var.days_after_initiation
  status                            = var.status
  id                                = var.id
  newer_noncurrent_versions         = var.newer_noncurrent_versions
  object_size_greater_than          = var.object_size_greater_than
  tag                               = var.tag
  abort_incomplete_multipart_upload = var.abort_incomplete_multipart_upload
  bucket                            = var.bucket
  date                              = var.date
  object_size_less_than             = var.object_size_less_than
  prefix                            = var.prefix
  rule                              = var.rule
  value                             = var.value
  days                              = var.days
  expired_object_delete_marker      = var.expired_object_delete_marker
  noncurrent_version_expiration     = var.noncurrent_version_expiration
  key                               = var.key
  noncurrent_days                   = var.noncurrent_days
  noncurrent_version_transition     = var.noncurrent_version_transition
  expected_bucket_owner             = var.expected_bucket_owner
  expiration                        = var.expiration
  filter                            = var.filter
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "prefix" {
  description = "(Optional) Prefix identifying one or more objects to which the rule applies."
  type        = string
  default     = ""
}
variable "rule" {
  description = "(Required) List of configuration blocks describing the rules managing the replication documented below.rule~> strongNOTE: The filter argument, while Optional, is required if the rule configuration block does not contain a prefix strongand you intend to override the default behavior of setting the rule to filter objects with the empty string prefix (\"\"prefix is deprecated by Amazon S3 and will be removed in the next major version of the Terraform AWS Provider, we recommend users either specify filter or leave both filter and prefix unspecified.~> strongNOTE: A rule cannot be updated from having a filter (via either the rule.filter parameter or when neither rule.filter and rule.prefix are specified) to only having a prefix via the rule.prefix parameter.~> strongNOTE Terraform cannot distinguish a difference between configurations that use rule.filter {} and configurations that neither use rule.filter nor rule.prefix, so a rule cannot be updated from applying to all objects in the bucket via rule.filter {} to applying to a subset of objects based on the key prefix \"\" and vice versa.The rule configuration block supports the following arguments:"
  type        = string
}
variable "value" {
  description = "(Required) Value of the tag.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "days" {
  description = "(Optional, Conflicts with date) The number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer. If both days and date are not specified, defaults to 0. Valid values depend on storage_class, see Transition objects using Amazon S3 Lifecycle for more details."
  type        = string
}
variable "expired_object_delete_marker" {
  description = "(Optional, Conflicts with date and days) Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action.filter~> strongNOTE: The filter configuration block must either be specified as the empty configuration block (filter {}) or with exactly one of prefix, tag, and, object_size_greater_than or object_size_less_than specified.The filter configuration block supports the following arguments:"
  type        = string
}
variable "noncurrent_version_expiration" {
  description = "(Optional) Configuration block that specifies when noncurrent object versions expire documented below."
  type        = string
  default     = ""
}
variable "object_size_less_than" {
  description = "(Optional) Maximum object size to which the rule applies. Value must be at least 1 if specified."
  type        = string
  default     = ""
}
variable "noncurrent_days" {
  description = "(Optional) The number of days an object is noncurrent before Amazon S3 can perform the associated action."
  type        = string
  default     = ""
}
variable "noncurrent_version_transition" {
  description = "(Optional) Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class documented below."
  type        = string
  default     = ""
}
variable "expected_bucket_owner" {
  description = "(Optional) The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  type        = string
  default     = ""
}
variable "expiration" {
  description = "(Optional) Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker documented below."
  type        = string
  default     = ""
}
variable "filter" {
  description = "(Optional) Configuration block used to identify objects that a Lifecycle Rule applies to documented below. If not specified, the rule will default to using prefix."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Name of the object key."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.tagThe tag configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "transition" {
  description = "(Optional) Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class documented below.abort_incomplete_multipart_uploadThe abort_incomplete_multipart_upload configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "and" {
  description = "- (Optional) Configuration block used to apply a logical AND to two or more predicates documented below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the and block."
  type        = string
  default     = ""
}
variable "days_after_initiation" {
  description = "The number of days after which Amazon S3 aborts an incomplete multipart upload.expirationThe expiration configuration block supports the following arguments:"
  type        = string
}
variable "status" {
  description = "(Required) Whether the rule is currently being applied. Valid values: Enabled or Disabled."
  type        = string
}
variable "storage_class" {
  description = "The class of storage used to store the object. Valid Values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR.andThe and configuration block supports the following arguments:"
  type        = string
}
variable "newer_noncurrent_versions" {
  description = "(Optional) The number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer."
  type        = string
  default     = ""
}
variable "object_size_greater_than" {
  description = "(Optional) Minimum object size to which the rule applies. Value must be at least 0 if specified."
  type        = string
  default     = ""
}
variable "tag" {
  description = "(Optional) A configuration block for specifying a tag key and value documented below.noncurrent_version_expirationThe noncurrent_version_expiration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "abort_incomplete_multipart_upload" {
  description = "(Optional) Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload documented below."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) The name of the source S3 bucket you want Amazon S3 to monitor."
  type        = string
}
variable "date" {
  description = "(Optional, Conflicts with days) The date objects are transitioned to the specified storage class. The date value must be in RFC3339 format and set to midnight UTC e.g. 2023-01-13T00:00:00Z."
  type        = string
}
variable "id" {
  description = "(Required) Unique identifier for the rule. The value cannot be longer than 255 characters."
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
output "and" {
  description = "- (Optional) Configuration block used to apply a logical AND to two or more predicates documented below. The Lifecycle Rule will apply to any object matching all the predicates configured inside the and block."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.and
}
output "days_after_initiation" {
  description = "The number of days after which Amazon S3 aborts an incomplete multipart upload.expirationThe expiration configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.days_after_initiation
}
output "status" {
  description = "(Required) Whether the rule is currently being applied. Valid values: Enabled or Disabled."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.status
}
output "storage_class" {
  description = "The class of storage used to store the object. Valid Values: GLACIER, STANDARD_IA, ONEZONE_IA, INTELLIGENT_TIERING, DEEP_ARCHIVE, GLACIER_IR.andThe and configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.storage_class
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. All of these tags must exist in the object's tag set in order for the rule to apply.tagThe tag configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.tags
}
output "transition" {
  description = "(Optional) Set of configuration blocks that specify when an Amazon S3 object transitions to a specified storage class documented below.abort_incomplete_multipart_uploadThe abort_incomplete_multipart_upload configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.transition
}
output "abort_incomplete_multipart_upload" {
  description = "(Optional) Configuration block that specifies the days since the initiation of an incomplete multipart upload that Amazon S3 will wait before permanently removing all parts of the upload documented below."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.abort_incomplete_multipart_upload
}
output "bucket" {
  description = "(Required) The name of the source S3 bucket you want Amazon S3 to monitor."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.bucket
}
output "date" {
  description = "(Optional, Conflicts with days) The date objects are transitioned to the specified storage class. The date value must be in RFC3339 format and set to midnight UTC e.g. 2023-01-13T00:00:00Z."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.date
}
output "id" {
  description = "(Required) Unique identifier for the rule. The value cannot be longer than 255 characters."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.id
}
output "newer_noncurrent_versions" {
  description = "(Optional) The number of noncurrent versions Amazon S3 will retain. Must be a non-zero positive integer."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.newer_noncurrent_versions
}
output "object_size_greater_than" {
  description = "(Optional) Minimum object size to which the rule applies. Value must be at least 0 if specified."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.object_size_greater_than
}
output "tag" {
  description = "(Optional) A configuration block for specifying a tag key and value documented below.noncurrent_version_expirationThe noncurrent_version_expiration configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.tag
}
output "days" {
  description = "(Optional, Conflicts with date) The number of days after creation when objects are transitioned to the specified storage class. The value must be a positive integer. If both days and date are not specified, defaults to 0. Valid values depend on storage_class, see Transition objects using Amazon S3 Lifecycle for more details."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.days
}
output "expired_object_delete_marker" {
  description = "(Optional, Conflicts with date and days) Indicates whether Amazon S3 will remove a delete marker with no noncurrent versions. If set to true, the delete marker will be expired; if set to false the policy takes no action.filter~> strongNOTE: The filter configuration block must either be specified as the empty configuration block (filter {}) or with exactly one of prefix, tag, and, object_size_greater_than or object_size_less_than specified.The filter configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.expired_object_delete_marker
}
output "noncurrent_version_expiration" {
  description = "(Optional) Configuration block that specifies when noncurrent object versions expire documented below."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.noncurrent_version_expiration
}
output "object_size_less_than" {
  description = "(Optional) Maximum object size to which the rule applies. Value must be at least 1 if specified."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.object_size_less_than
}
output "prefix" {
  description = "(Optional) Prefix identifying one or more objects to which the rule applies."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.prefix
}
output "rule" {
  description = "(Required) List of configuration blocks describing the rules managing the replication documented below.rule~> strongNOTE: The filter argument, while Optional, is required if the rule configuration block does not contain a prefix strongand you intend to override the default behavior of setting the rule to filter objects with the empty string prefix (\"\"prefix is deprecated by Amazon S3 and will be removed in the next major version of the Terraform AWS Provider, we recommend users either specify filter or leave both filter and prefix unspecified.~> strongNOTE: A rule cannot be updated from having a filter (via either the rule.filter parameter or when neither rule.filter and rule.prefix are specified) to only having a prefix via the rule.prefix parameter.~> strongNOTE Terraform cannot distinguish a difference between configurations that use rule.filter {} and configurations that neither use rule.filter nor rule.prefix, so a rule cannot be updated from applying to all objects in the bucket via rule.filter {} to applying to a subset of objects based on the key prefix \"\" and vice versa.The rule configuration block supports the following arguments:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.rule
}
output "value" {
  description = "(Required) Value of the tag.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.value
}
output "expected_bucket_owner" {
  description = "(Optional) The account ID of the expected bucket owner. If the bucket is owned by a different account, the request will fail with an HTTP 403 (Access Denied) error."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.expected_bucket_owner
}
output "expiration" {
  description = "(Optional) Configuration block that specifies the expiration for the lifecycle of the object in the form of date, days and, whether the object has a delete marker documented below."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.expiration
}
output "filter" {
  description = "(Optional) Configuration block used to identify objects that a Lifecycle Rule applies to documented below. If not specified, the rule will default to using prefix."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.filter
}
output "key" {
  description = "(Required) Name of the object key."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.key
}
output "noncurrent_days" {
  description = "(Optional) The number of days an object is noncurrent before Amazon S3 can perform the associated action."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.noncurrent_days
}
output "noncurrent_version_transition" {
  description = "(Optional) Set of configuration blocks that specify the transition rule for the lifecycle rule that describes when noncurrent objects transition to a specific storage class documented below."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.noncurrent_version_transition
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_lifecycle_configuration.aws_s3_bucket_lifecycle_configuration.id
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
      "kind/name"                   = "aws_s3_bucket_lifecycle_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
