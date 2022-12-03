resource "aws_cloudwatch_metric_stream" "aws_cloudwatch_metric_stream" {
  creation_date            = var.creation_date
  exclude_filter           = var.exclude_filter
  firehose_arn             = var.firehose_arn
  name                     = var.name
  state                    = var.state
  tags_all                 = var.tags_all
  additional_statistics    = var.additional_statistics
  last_update_date         = var.last_update_date
  name_prefix              = var.name_prefix
  output_format            = var.output_format
  statistics_configuration = var.statistics_configuration
  tags                     = var.tags
  include_metric           = var.include_metric
  include_filter           = var.include_filter
  namespace                = var.namespace
  arn                      = var.arn
  role_arn                 = var.role_arn
  metric_name              = var.metric_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "output_format" {
  description = "(Required) Output format for the stream. Possible values are json and opentelemetry0.7. For more information about output formats, see Metric streams output formats."
  type        = string
}
variable "statistics_configuration" {
  description = "(Optional) For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's output_format. If the OutputFormat is json, you can stream any additional statistic that is supported by CloudWatch, listed in CloudWatch statistics definitions. If the OutputFormat is opentelemetry0.7, you can stream percentile statistics (p99 etc.). See details below.Nested Fieldsexclude_filter"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "include_metric" {
  description = "(Required) An array that defines the metrics that are to have additional statistics streamed. See details below.include_metrics"
  type        = string
}
variable "last_update_date" {
  description = "Date and time in RFC3339 format that the metric stream was last updated."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the metric stream."
  type        = string
  default     = ""
}
variable "include_filter" {
  description = "(Optional) List of inclusive metric filters. If you specify this parameter, the stream sends only the metrics from the metric namespaces that you specify here. Conflicts with exclude_filter."
  type        = string
  default     = ""
}
variable "namespace" {
  description = "(Required) The namespace of the metric.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "metric_name" {
  description = "(Required) The name of the metric."
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see Trust between CloudWatch and Kinesis Data Firehose."
  type        = string
}
variable "firehose_arn" {
  description = "(Required) ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream."
  type        = string
}
variable "name" {
  description = "(Optional, Forces new resource) Friendly name of the metric stream. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  type        = string
  default     = ""
}
variable "state" {
  description = "State of the metric stream. Possible values are running and stopped."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "additional_statistics" {
  description = "(Required) The additional statistics to stream for the metrics listed in include_metrics."
  type        = string
}
variable "creation_date" {
  description = "Date and time in RFC3339 format that the metric stream was created."
  type        = string
  default     = ""
}
variable "exclude_filter" {
  description = "(Optional) List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces that you specify here. Conflicts with include_filter."
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
output "additional_statistics" {
  description = "(Required) The additional statistics to stream for the metrics listed in include_metrics."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.additional_statistics
}
output "creation_date" {
  description = "Date and time in RFC3339 format that the metric stream was created."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.creation_date
}
output "exclude_filter" {
  description = "(Optional) List of exclusive metric filters. If you specify this parameter, the stream sends metrics from all metric namespaces except for the namespaces that you specify here. Conflicts with include_filter."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.exclude_filter
}
output "firehose_arn" {
  description = "(Required) ARN of the Amazon Kinesis Firehose delivery stream to use for this metric stream."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.firehose_arn
}
output "name" {
  description = "(Optional, Forces new resource) Friendly name of the metric stream. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.name
}
output "state" {
  description = "State of the metric stream. Possible values are running and stopped."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.tags_all
}
output "include_metric" {
  description = "(Required) An array that defines the metrics that are to have additional statistics streamed. See details below.include_metrics"
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.include_metric
}
output "last_update_date" {
  description = "Date and time in RFC3339 format that the metric stream was last updated."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.last_update_date
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique friendly name beginning with the specified prefix. Conflicts with name."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.name_prefix
}
output "output_format" {
  description = "(Required) Output format for the stream. Possible values are json and opentelemetry0.7. For more information about output formats, see Metric streams output formats."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.output_format
}
output "statistics_configuration" {
  description = "(Optional) For each entry in this array, you specify one or more metrics and the list of additional statistics to stream for those metrics. The additional statistics that you can stream depend on the stream's output_format. If the OutputFormat is json, you can stream any additional statistic that is supported by CloudWatch, listed in CloudWatch statistics definitions. If the OutputFormat is opentelemetry0.7, you can stream percentile statistics (p99 etc.). See details below.Nested Fieldsexclude_filter"
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.statistics_configuration
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.tags
}
output "arn" {
  description = "ARN of the metric stream."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.arn
}
output "include_filter" {
  description = "(Optional) List of inclusive metric filters. If you specify this parameter, the stream sends only the metrics from the metric namespaces that you specify here. Conflicts with exclude_filter."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.include_filter
}
output "namespace" {
  description = "(Required) The namespace of the metric.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.namespace
}
output "metric_name" {
  description = "(Required) The name of the metric."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.metric_name
}
output "role_arn" {
  description = "(Required) ARN of the IAM role that this metric stream will use to access Amazon Kinesis Firehose resources. For more information about role permissions, see Trust between CloudWatch and Kinesis Data Firehose."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.role_arn
}
output "last_update_date" {
  description = "Date and time in RFC3339 format that the metric stream was last updated."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.last_update_date
}
output "state" {
  description = "State of the metric stream. Possible values are running and stopped."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.state
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.tags_all
}
output "arn" {
  description = "ARN of the metric stream."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.arn
}
output "creation_date" {
  description = "Date and time in RFC3339 format that the metric stream was created."
  value       = aws_cloudwatch_metric_stream.aws_cloudwatch_metric_stream.creation_date
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
      "kind/name"                   = "aws_cloudwatch_metric_stream"
      "kind/version"                = "v0.1.0"
    }
  }
}
