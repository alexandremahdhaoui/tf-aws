resource "aws_kinesis_video_stream" "aws_kinesis_video_stream" {
  version                 = var.version
  arn                     = var.arn
  data_retention_in_hours = var.data_retention_in_hours
  device_name             = var.device_name
  id                      = var.id
  kms_key_id              = var.kms_key_id
  media_type              = var.media_type
  update                  = var.update
  create                  = var.create
  creation_time           = var.creation_time
  name                    = var.name
  tags                    = var.tags
  tags_all                = var.tags_all
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) A name to identify the stream. This is unique to the\nAWS account and region the Stream is created in."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "creation_time" {
  description = "A time stamp that indicates when the stream was created."
  type        = string
}
variable "device_name" {
  description = "(Optional) The name of the device that is writing to the stream. strongIn the current implementation, Kinesis Video Streams does not use this name."
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique Stream id"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (aws/kinesisvideo) is used."
  type        = string
  default     = ""
}
variable "media_type" {
  description = "(Optional) The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements for guidelines."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 120m)"
  type        = string
}
variable "version" {
  description = "The version of the stream."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  type        = string
}
variable "data_retention_in_hours" {
  description = " – (Optional) The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is 0, indicating that the stream does not persist data."
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
output "create" {
  description = "(Default 5m)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.create
}
output "creation_time" {
  description = "A time stamp that indicates when the stream was created."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.creation_time
}
output "name" {
  description = "(Required) A name to identify the stream. This is unique to the\nAWS account and region the Stream is created in."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.name
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.tags
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.tags_all
}
output "version" {
  description = "The version of the stream."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.version
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.arn
}
output "data_retention_in_hours" {
  description = " – (Optional) The number of hours that you want to retain the data in the stream. Kinesis Video Streams retains the data in a data store that is associated with the stream. The default value is 0, indicating that the stream does not persist data."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.data_retention_in_hours
}
output "device_name" {
  description = "(Optional) The name of the device that is writing to the stream. strongIn the current implementation, Kinesis Video Streams does not use this name."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.device_name
}
output "id" {
  description = "The unique Stream id"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.id
}
output "kms_key_id" {
  description = "(Optional) The ID of the AWS Key Management Service (AWS KMS) key that you want Kinesis Video Streams to use to encrypt stream data. If no key ID is specified, the default, Kinesis Video-managed key (aws/kinesisvideo) is used."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.kms_key_id
}
output "media_type" {
  description = "(Optional) The media type of the stream. Consumers of the stream can use this information when processing the stream. For more information about media types, see Media Types. If you choose to specify the MediaType, see Naming Requirements for guidelines."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.media_type
}
output "update" {
  description = "(Default 120m)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.update
}
output "create" {
  description = "(Default 5m)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.create
}
output "creation_time" {
  description = "A time stamp that indicates when the stream was created."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.creation_time
}
output "delete" {
  description = "(Default 120m)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.delete
}
output "id" {
  description = "The unique Stream id"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.tags_all
}
output "update" {
  description = "(Default 120m)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.update
}
output "version" {
  description = "The version of the stream."
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.version
}
output "arn" {
  description = "The Amazon Resource Name (ARN) specifying the Stream (same as id)"
  value       = aws_kinesis_video_stream.aws_kinesis_video_stream.arn
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
      "kind/name"                   = "aws_kinesis_video_stream"
      "kind/version"                = "v0.1.0"
    }
  }
}
