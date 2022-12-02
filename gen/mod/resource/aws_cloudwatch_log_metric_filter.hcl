resource "aws_cloudwatch_log_metric_filter" "aws_cloudwatch_log_metric_filter" {
  default_value         = var.default_value
  namespace             = var.namespace
  dimensions            = var.dimensions
  log_group_name        = var.log_group_name
  metric_transformation = var.metric_transformation
  name                  = var.name
  pattern               = var.pattern
  unit                  = var.unit
  value                 = var.value
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "default_value" {
  description = "(Optional) The value to emit when a filter pattern does not match a log event. Conflicts with dimensions."
  type        = string
  default     = ""
}
variable "namespace" {
  description = "(Required) The destination namespace of the CloudWatch metric."
  type        = string
}
variable "dimensions" {
  description = "(Optional) Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with default_value."
  type        = string
  default     = ""
}
variable "log_group_name" {
  description = "(Required) The name of the log group to associate the metric filter with."
  type        = string
}
variable "metric_transformation" {
  description = "(Required) A block defining collection of information needed to define how metric data gets emitted. See below.The metric_transformation block supports the following arguments:"
  type        = string
}
variable "name" {
  description = "(Required) The name of the CloudWatch metric to which the monitored log information should be published (e.g., ErrorCount)"
  type        = string
}
variable "pattern" {
  description = "(Required) A valid CloudWatch Logs filter pattern"
  type        = string
}
variable "unit" {
  description = "(Optional) The unit to assign to the metric. If you omit this, the unit is set as None.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) What to publish to the metric. For example, if you're counting the occurrences of a particular term like \"Error\", the value will be \"1\" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event."
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
output "name" {
  description = "(Required) The name of the CloudWatch metric to which the monitored log information should be published (e.g., ErrorCount)"
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.name
}
output "pattern" {
  description = "(Required) A valid CloudWatch Logs filter pattern"
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.pattern
}
output "unit" {
  description = "(Optional) The unit to assign to the metric. If you omit this, the unit is set as None.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.unit
}
output "value" {
  description = "(Required) What to publish to the metric. For example, if you're counting the occurrences of a particular term like \"Error\", the value will be \"1\" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.value
}
output "dimensions" {
  description = "(Optional) Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with default_value."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.dimensions
}
output "log_group_name" {
  description = "(Required) The name of the log group to associate the metric filter with."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.log_group_name
}
output "metric_transformation" {
  description = "(Required) A block defining collection of information needed to define how metric data gets emitted. See below.The metric_transformation block supports the following arguments:"
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.metric_transformation
}
output "default_value" {
  description = "(Optional) The value to emit when a filter pattern does not match a log event. Conflicts with dimensions."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.default_value
}
output "namespace" {
  description = "(Required) The destination namespace of the CloudWatch metric."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.namespace
}
output "id" {
  description = "The name of the metric filter."
  value       = aws_cloudwatch_log_metric_filter.aws_cloudwatch_log_metric_filter.id
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
      "kind/name"                   = "aws_cloudwatch_log_metric_filter"
      "kind/version"                = "v0.1.0"
    }
  }
}
