resource "aws_s3_bucket_replication_configuration" "aws_s3_bucket_replication_configuration" {
  role                        = var.role
  sse_kms_encrypted_objects   = var.sse_kms_encrypted_objects
  prefix                      = var.prefix
  priority                    = var.priority
  replica_modifications       = var.replica_modifications
  encryption_configuration    = var.encryption_configuration
  id                          = var.id
  minutes                     = var.minutes
  storage_class               = var.storage_class
  access_control_translation  = var.access_control_translation
  account                     = var.account
  key                         = var.key
  time                        = var.time
  delete_marker_replication   = var.delete_marker_replication
  existing_object_replication = var.existing_object_replication
  source_selection_criteria   = var.source_selection_criteria
  metrics                     = var.metrics
  replica_kms_key_id          = var.replica_kms_key_id
  status                      = var.status
  and                         = var.and
  bucket                      = var.bucket
  destination                 = var.destination
  tags                        = var.tags
  event_threshold             = var.event_threshold
  replication_time            = var.replication_time
  tag                         = var.tag
  token                       = var.token
  value                       = var.value
  filter                      = var.filter
  owner                       = var.owner
  rule                        = var.rule
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "status" {
  description = "(Required) Whether the existing objects should be replicated. Either \"Enabled\" or \"Disabled\".In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "and" {
  description = "(Optional) A configuration block for specifying rule filters. This element is required only if you specify more than one filter. See and below for more details."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required) The name of the S3 bucket where you want Amazon S3 to store replicas of the objects identified by the rule."
  type        = string
}
variable "destination" {
  description = "(Required) Specifies the destination for the rule documented below."
  type        = string
}
variable "metrics" {
  description = "(Optional) A configuration block that specifies replication metrics-related settings enabling replication metrics and events documented below."
  type        = string
  default     = ""
}
variable "replica_kms_key_id" {
  description = "(Required) The ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.metricsThe metrics configuration block supports the following arguments:"
  type        = string
}
variable "event_threshold" {
  description = "(Optional) A configuration block that specifies the time threshold for emitting the s3:Replication:OperationMissedThreshold event documented below."
  type        = string
  default     = ""
}
variable "replication_time" {
  description = "(Optional) A configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated documented below. Replication Time Control must be used in conjunction with metrics."
  type        = string
  default     = ""
}
variable "tag" {
  description = "(Optional) A configuration block for specifying a tag key and value documented below.andThe and configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional, Required if prefix is configured) A map of tags (key and value pairs) that identifies a subset of objects to which the rule applies. The rule applies only to objects having all the tags in its tagset.tagThe tag configuration block supports the following arguments:"
  type        = string
}
variable "filter" {
  description = "(Optional, Conflicts with prefix) Filter that identifies subset of objects to which the replication rule applies documented below. If not specified, the rule will default to using prefix."
  type        = string
}
variable "owner" {
  description = "(Required) Specifies the replica ownership. For default and valid values, see PUT bucket replication in the Amazon S3 API Reference. Valid values: Destination.encryption_configurationThe encryption_configuration configuration block supports the following arguments:"
  type        = string
}
variable "rule" {
  description = "(Required) List of configuration blocks describing the rules managing the replication documented below."
  type        = string
}
variable "token" {
  description = "(Optional) A token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's \"Object Lock token\".\nFor more details, see Using S3 Object Lock with replication.rule~> strongNOTE: Replication to multiple destination buckets requires that priority is specified in the rule object. If the corresponding rule requires no filter, an empty configuration block filter {} must be specified.~> strongNOTE: Amazon S3's latest version of the replication configuration is V2, which includes the filter attribute for replication rules.~> strongNOTE: The existing_object_replication parameter is not supported by Amazon S3 at this time and should not be included in your rule configurations. Specifying this parameter will result in MalformedXMLReplicating existing objects with S3 Batch Replication documentation in the Amazon S3 User Guide.The rule configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Value of the tag.source_selection_criteriaThe source_selection_criteria configuration block supports the following arguments:"
  type        = string
}
variable "prefix" {
  description = "(Optional) An object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Optional) The priority associated with the rule. Priority should only be set if filter is configured. If not provided, defaults to 0. Priority must be unique between multiple rules."
  type        = string
  default     = ""
}
variable "replica_modifications" {
  description = "(Optional) A configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when filter is specified), you can specify this element and set the status to Enabled to replicate modifications on replicas."
  type        = string
  default     = ""
}
variable "role" {
  description = "(Required) The ARN of the IAM role for Amazon S3 to assume when replicating the objects."
  type        = string
}
variable "sse_kms_encrypted_objects" {
  description = "(Optional) A configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, replica_kms_key_id in destination encryption_configuration must be specified as well.replica_modificationsThe replica_modifications configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "encryption_configuration" {
  description = "(Optional) A configuration block that provides information about encryption documented below. If source_selection_criteria is specified, you must specify this element."
  type        = string
  default     = ""
}
variable "id" {
  description = "(Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length."
  type        = string
  default     = ""
}
variable "minutes" {
  description = "(Required) Time in minutes. Valid values: 15.existing_object_replication~> strongNOTE: Replication for existing objects requires activation by AWS Support.  See userguide/replication-what-is-isnot-replicatedThe existing_object_replication configuration block supports the following arguments:"
  type        = string
}
variable "access_control_translation" {
  description = "(Optional) A configuration block that specifies the overrides to use for object owners on replication documented below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with account owner override configuration."
  type        = string
  default     = ""
}
variable "account" {
  description = "(Optional) The Account ID to specify the replica ownership. Must be used in conjunction with access_control_translation override configuration."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Name of the object key."
  type        = string
}
variable "storage_class" {
  description = "(Optional) The storage class used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.access_control_translationThe access_control_translation configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "delete_marker_replication" {
  description = "(Optional) Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when filter is used)documented below."
  type        = string
  default     = ""
}
variable "existing_object_replication" {
  description = "(Optional) Replicate existing objects in the source bucket according to the rule configurations documented below."
  type        = string
  default     = ""
}
variable "source_selection_criteria" {
  description = "(Optional) Specifies special object selection criteria documented below."
  type        = string
  default     = ""
}
variable "time" {
  description = "(Required) A configuration block specifying the time by which replication should be complete for all objects and operations on objects documented below.timeThe time configuration block supports the following arguments:"
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
output "encryption_configuration" {
  description = "(Optional) A configuration block that provides information about encryption documented below. If source_selection_criteria is specified, you must specify this element."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.encryption_configuration
}
output "id" {
  description = "(Optional) Unique identifier for the rule. Must be less than or equal to 255 characters in length."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.id
}
output "minutes" {
  description = "(Required) Time in minutes. Valid values: 15.existing_object_replication~> strongNOTE: Replication for existing objects requires activation by AWS Support.  See userguide/replication-what-is-isnot-replicatedThe existing_object_replication configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.minutes
}
output "storage_class" {
  description = "(Optional) The storage class used to store the object. By default, Amazon S3 uses the storage class of the source object to create the object replica.access_control_translationThe access_control_translation configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.storage_class
}
output "access_control_translation" {
  description = "(Optional) A configuration block that specifies the overrides to use for object owners on replication documented below. Specify this only in a cross-account scenario (where source and destination bucket owners are not the same), and you want to change replica ownership to the AWS account that owns the destination bucket. If this is not specified in the replication configuration, the replicas are owned by same AWS account that owns the source object. Must be used in conjunction with account owner override configuration."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.access_control_translation
}
output "account" {
  description = "(Optional) The Account ID to specify the replica ownership. Must be used in conjunction with access_control_translation override configuration."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.account
}
output "key" {
  description = "(Required) Name of the object key."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.key
}
output "time" {
  description = "(Required) A configuration block specifying the time by which replication should be complete for all objects and operations on objects documented below.timeThe time configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.time
}
output "delete_marker_replication" {
  description = "(Optional) Whether delete markers are replicated. This argument is only valid with V2 replication configurations (i.e., when filter is used)documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.delete_marker_replication
}
output "existing_object_replication" {
  description = "(Optional) Replicate existing objects in the source bucket according to the rule configurations documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.existing_object_replication
}
output "source_selection_criteria" {
  description = "(Optional) Specifies special object selection criteria documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.source_selection_criteria
}
output "metrics" {
  description = "(Optional) A configuration block that specifies replication metrics-related settings enabling replication metrics and events documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.metrics
}
output "replica_kms_key_id" {
  description = "(Required) The ID (Key ARN or Alias ARN) of the customer managed AWS KMS key stored in AWS Key Management Service (KMS) for the destination bucket.metricsThe metrics configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.replica_kms_key_id
}
output "status" {
  description = "(Required) Whether the existing objects should be replicated. Either \"Enabled\" or \"Disabled\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.status
}
output "and" {
  description = "(Optional) A configuration block for specifying rule filters. This element is required only if you specify more than one filter. See and below for more details."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.and
}
output "bucket" {
  description = "(Required) The name of the S3 bucket where you want Amazon S3 to store replicas of the objects identified by the rule."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.bucket
}
output "destination" {
  description = "(Required) Specifies the destination for the rule documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.destination
}
output "tags" {
  description = "(Optional, Required if prefix is configured) A map of tags (key and value pairs) that identifies a subset of objects to which the rule applies. The rule applies only to objects having all the tags in its tagset.tagThe tag configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.tags
}
output "event_threshold" {
  description = "(Optional) A configuration block that specifies the time threshold for emitting the s3:Replication:OperationMissedThreshold event documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.event_threshold
}
output "replication_time" {
  description = "(Optional) A configuration block that specifies S3 Replication Time Control (S3 RTC), including whether S3 RTC is enabled and the time when all objects and operations on objects must be replicated documented below. Replication Time Control must be used in conjunction with metrics."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.replication_time
}
output "tag" {
  description = "(Optional) A configuration block for specifying a tag key and value documented below.andThe and configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.tag
}
output "token" {
  description = "(Optional) A token to allow replication to be enabled on an Object Lock-enabled bucket. You must contact AWS support for the bucket's \"Object Lock token\".\nFor more details, see Using S3 Object Lock with replication.rule~> strongNOTE: Replication to multiple destination buckets requires that priority is specified in the rule object. If the corresponding rule requires no filter, an empty configuration block filter {} must be specified.~> strongNOTE: Amazon S3's latest version of the replication configuration is V2, which includes the filter attribute for replication rules.~> strongNOTE: The existing_object_replication parameter is not supported by Amazon S3 at this time and should not be included in your rule configurations. Specifying this parameter will result in MalformedXMLReplicating existing objects with S3 Batch Replication documentation in the Amazon S3 User Guide.The rule configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.token
}
output "value" {
  description = "(Required) Value of the tag.source_selection_criteriaThe source_selection_criteria configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.value
}
output "filter" {
  description = "(Optional, Conflicts with prefix) Filter that identifies subset of objects to which the replication rule applies documented below. If not specified, the rule will default to using prefix."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.filter
}
output "owner" {
  description = "(Required) Specifies the replica ownership. For default and valid values, see PUT bucket replication in the Amazon S3 API Reference. Valid values: Destination.encryption_configurationThe encryption_configuration configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.owner
}
output "rule" {
  description = "(Required) List of configuration blocks describing the rules managing the replication documented below."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.rule
}
output "role" {
  description = "(Required) The ARN of the IAM role for Amazon S3 to assume when replicating the objects."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.role
}
output "sse_kms_encrypted_objects" {
  description = "(Optional) A configuration block for filter information for the selection of Amazon S3 objects encrypted with AWS KMS. If specified, replica_kms_key_id in destination encryption_configuration must be specified as well.replica_modificationsThe replica_modifications configuration block supports the following arguments:"
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.sse_kms_encrypted_objects
}
output "prefix" {
  description = "(Optional) An object key name prefix that identifies subset of objects to which the rule applies. Must be less than or equal to 1024 characters in length."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.prefix
}
output "priority" {
  description = "(Optional) The priority associated with the rule. Priority should only be set if filter is configured. If not provided, defaults to 0. Priority must be unique between multiple rules."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.priority
}
output "replica_modifications" {
  description = "(Optional) A configuration block that you can specify for selections for modifications on replicas. Amazon S3 doesn't replicate replica modifications by default. In the latest version of replication configuration (when filter is specified), you can specify this element and set the status to Enabled to replicate modifications on replicas."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.replica_modifications
}
output "id" {
  description = "The S3 source bucket name."
  value       = aws_s3_bucket_replication_configuration.aws_s3_bucket_replication_configuration.id
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
      "kind/name"                   = "aws_s3_bucket_replication_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
