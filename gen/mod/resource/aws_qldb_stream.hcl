resource "aws_qldb_stream" "aws_qldb_stream" {
  arn                   = var.arn
  exclusive_end_time    = var.exclusive_end_time
  id                    = var.id
  ledger_name           = var.ledger_name
  role_arn              = var.role_arn
  stream_arn            = var.stream_arn
  tags                  = var.tags
  aggregation_enabled   = var.aggregation_enabled
  inclusive_start_time  = var.inclusive_start_time
  kinesis_configuration = var.kinesis_configuration
  stream_name           = var.stream_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "stream_name" {
  description = "(Required) The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the Amazon QLDB Developer Guide."
  type        = string
}
variable "aggregation_enabled" {
  description = "(Optional) Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call. Default: true."
  type        = string
  default     = ""
}
variable "inclusive_start_time" {
  description = "(Required) The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: \"2019-06-13T21:36:34Z\".  This cannot be in the future and must be before exclusive_end_time.  If you provide a value that is before the ledger's CreationDateTime, QLDB effectively defaults it to the ledger's CreationDateTime."
  type        = string
}
variable "kinesis_configuration" {
  description = "(Required) The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below."
  type        = string
}
variable "ledger_name" {
  description = "(Required) The name of the QLDB ledger."
  type        = string
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource."
  type        = string
}
variable "stream_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.kinesis_configurationThe kinesis_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the QLDB Stream."
  type        = string
}
variable "exclusive_end_time" {
  description = "(Optional) The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: \"2019-06-13T21:36:34Z\"."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the QLDB Stream."
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
output "aggregation_enabled" {
  description = "(Optional) Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the number of records sent per API call. Default: true."
  value       = aws_qldb_stream.aws_qldb_stream.aggregation_enabled
}
output "inclusive_start_time" {
  description = "(Required) The inclusive start date and time from which to start streaming journal data. This parameter must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: \"2019-06-13T21:36:34Z\".  This cannot be in the future and must be before exclusive_end_time.  If you provide a value that is before the ledger's CreationDateTime, QLDB effectively defaults it to the ledger's CreationDateTime."
  value       = aws_qldb_stream.aws_qldb_stream.inclusive_start_time
}
output "kinesis_configuration" {
  description = "(Required) The configuration settings of the Kinesis Data Streams destination for your stream request. Documented below."
  value       = aws_qldb_stream.aws_qldb_stream.kinesis_configuration
}
output "stream_name" {
  description = "(Required) The name that you want to assign to the QLDB journal stream. User-defined names can help identify and indicate the purpose of a stream.  Your stream name must be unique among other active streams for a given ledger. Stream names have the same naming constraints as ledger names, as defined in the Amazon QLDB Developer Guide."
  value       = aws_qldb_stream.aws_qldb_stream.stream_name
}
output "stream_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_qldb_stream.aws_qldb_stream.stream_arn
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.kinesis_configurationThe kinesis_configuration block supports the following arguments:"
  value       = aws_qldb_stream.aws_qldb_stream.tags
}
output "arn" {
  description = "The ARN of the QLDB Stream."
  value       = aws_qldb_stream.aws_qldb_stream.arn
}
output "exclusive_end_time" {
  description = "(Optional) The exclusive date and time that specifies when the stream ends. If you don't define this parameter, the stream runs indefinitely until you cancel it. It must be in ISO 8601 date and time format and in Universal Coordinated Time (UTC). For example: \"2019-06-13T21:36:34Z\"."
  value       = aws_qldb_stream.aws_qldb_stream.exclusive_end_time
}
output "id" {
  description = "The ID of the QLDB Stream."
  value       = aws_qldb_stream.aws_qldb_stream.id
}
output "ledger_name" {
  description = "(Required) The name of the QLDB ledger."
  value       = aws_qldb_stream.aws_qldb_stream.ledger_name
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a journal stream to write data records to a Kinesis Data Streams resource."
  value       = aws_qldb_stream.aws_qldb_stream.role_arn
}
output "arn" {
  description = "The ARN of the QLDB Stream."
  value       = aws_qldb_stream.aws_qldb_stream.arn
}
output "id" {
  description = "The ID of the QLDB Stream."
  value       = aws_qldb_stream.aws_qldb_stream.id
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
      "kind/name"                   = "aws_qldb_stream"
      "kind/version"                = "v0.1.0"
    }
  }
}
