resource "aws_flow_log" "aws_flow_log" {
  arn                           = var.arn
  id                            = var.id
  log_group_name                = var.log_group_name
  traffic_type                  = var.traffic_type
  transit_gateway_attachment_id = var.transit_gateway_attachment_id
  vpc_id                        = var.vpc_id
  eni_id                        = var.eni_id
  iam_role_arn                  = var.iam_role_arn
  tags                          = var.tags
  destination_options           = var.destination_options
  hive_compatible_partitions    = var.hive_compatible_partitions
  log_format                    = var.log_format
  per_hour_partition            = var.per_hour_partition
  subnet_id                     = var.subnet_id
  file_format                   = var.file_format
  log_destination               = var.log_destination
  log_destination_type          = var.log_destination_type
  max_aggregation_interval      = var.max_aggregation_interval
  transit_gateway_id            = var.transit_gateway_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "destination_options" {
  description = "(Optional) Describes the destination options for a flow log. More details below."
  type        = string
  default     = ""
}
variable "hive_compatible_partitions" {
  description = "(Optional) Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: false."
  type        = string
  default     = ""
}
variable "log_format" {
  description = "(Optional) The fields to include in the flow log record, in the order in which they should appear."
  type        = string
  default     = ""
}
variable "per_hour_partition" {
  description = "(Optional) Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Optional) Subnet ID to attach to"
  type        = string
  default     = ""
}
variable "file_format" {
  description = "(Optional) The format for the flow log. Default value: plain-text. Valid values: plain-text, parquet."
  type        = string
  default     = ""
}
variable "log_destination" {
  description = "(Optional) The ARN of the logging destination. Either log_destination or log_group_name must be set."
  type        = string
  default     = ""
}
variable "log_destination_type" {
  description = "(Optional) The type of the logging destination. Valid values: cloud-watch-logs, s3, kinesis-data-firehose. Default: cloud-watch-logs."
  type        = string
  default     = ""
}
variable "max_aggregation_interval" {
  description = "60 seconds (1 minute) or 600600. When transit_gateway_id or transit_gateway_attachment_id is specified, max_aggregation_interval emmust be 60 seconds (1 minute)."
  type        = string
}
variable "transit_gateway_id" {
  description = "(Optional) Transit Gateway ID to attach to"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the Flow Log."
  type        = string
}
variable "id" {
  description = "The Flow Log ID"
  type        = string
}
variable "log_group_name" {
  description = "(Optional) emDeprecated: Use log_destination instead. The name of the CloudWatch log group. Either log_group_name or log_destination must be set."
  type        = string
  default     = ""
}
variable "traffic_type" {
  description = "(Required) The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL."
  type        = string
}
variable "transit_gateway_attachment_id" {
  description = "(Optional) Transit Gateway Attachment ID to attach to"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional) VPC ID to attach to"
  type        = string
  default     = ""
}
variable "eni_id" {
  description = "(Optional) Elastic Network Interface ID to attach to"
  type        = string
  default     = ""
}
variable "iam_role_arn" {
  description = "(Optional) The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.destination_optionsDescribes the destination options for a flow log."
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
output "per_hour_partition" {
  description = "(Optional) Indicates whether to partition the flow log per hour. This reduces the cost and response time for queries. Default value: false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_flow_log.aws_flow_log.per_hour_partition
}
output "subnet_id" {
  description = "(Optional) Subnet ID to attach to"
  value       = aws_flow_log.aws_flow_log.subnet_id
}
output "destination_options" {
  description = "(Optional) Describes the destination options for a flow log. More details below."
  value       = aws_flow_log.aws_flow_log.destination_options
}
output "hive_compatible_partitions" {
  description = "(Optional) Indicates whether to use Hive-compatible prefixes for flow logs stored in Amazon S3. Default value: false."
  value       = aws_flow_log.aws_flow_log.hive_compatible_partitions
}
output "log_format" {
  description = "(Optional) The fields to include in the flow log record, in the order in which they should appear."
  value       = aws_flow_log.aws_flow_log.log_format
}
output "max_aggregation_interval" {
  description = "60 seconds (1 minute) or 600600. When transit_gateway_id or transit_gateway_attachment_id is specified, max_aggregation_interval emmust be 60 seconds (1 minute)."
  value       = aws_flow_log.aws_flow_log.max_aggregation_interval
}
output "transit_gateway_id" {
  description = "(Optional) Transit Gateway ID to attach to"
  value       = aws_flow_log.aws_flow_log.transit_gateway_id
}
output "file_format" {
  description = "(Optional) The format for the flow log. Default value: plain-text. Valid values: plain-text, parquet."
  value       = aws_flow_log.aws_flow_log.file_format
}
output "log_destination" {
  description = "(Optional) The ARN of the logging destination. Either log_destination or log_group_name must be set."
  value       = aws_flow_log.aws_flow_log.log_destination
}
output "log_destination_type" {
  description = "(Optional) The type of the logging destination. Valid values: cloud-watch-logs, s3, kinesis-data-firehose. Default: cloud-watch-logs."
  value       = aws_flow_log.aws_flow_log.log_destination_type
}
output "traffic_type" {
  description = "(Required) The type of traffic to capture. Valid values: ACCEPT,REJECT, ALL."
  value       = aws_flow_log.aws_flow_log.traffic_type
}
output "transit_gateway_attachment_id" {
  description = "(Optional) Transit Gateway Attachment ID to attach to"
  value       = aws_flow_log.aws_flow_log.transit_gateway_attachment_id
}
output "vpc_id" {
  description = "(Optional) VPC ID to attach to"
  value       = aws_flow_log.aws_flow_log.vpc_id
}
output "arn" {
  description = "The ARN of the Flow Log."
  value       = aws_flow_log.aws_flow_log.arn
}
output "id" {
  description = "The Flow Log ID"
  value       = aws_flow_log.aws_flow_log.id
}
output "log_group_name" {
  description = "(Optional) emDeprecated: Use log_destination instead. The name of the CloudWatch log group. Either log_group_name or log_destination must be set."
  value       = aws_flow_log.aws_flow_log.log_group_name
}
output "eni_id" {
  description = "(Optional) Elastic Network Interface ID to attach to"
  value       = aws_flow_log.aws_flow_log.eni_id
}
output "iam_role_arn" {
  description = "(Optional) The ARN for the IAM role that's used to post flow logs to a CloudWatch Logs log group"
  value       = aws_flow_log.aws_flow_log.iam_role_arn
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.destination_optionsDescribes the destination options for a flow log."
  value       = aws_flow_log.aws_flow_log.tags
}
output "id" {
  description = "The Flow Log ID"
  value       = aws_flow_log.aws_flow_log.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_flow_log.aws_flow_log.tags_all
}
output "arn" {
  description = "The ARN of the Flow Log."
  value       = aws_flow_log.aws_flow_log.arn
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
      "kind/name"                   = "aws_flow_log"
      "kind/version"                = "v0.1.0"
    }
  }
}
