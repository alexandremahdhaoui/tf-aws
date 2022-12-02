resource "aws_route53_health_check" "aws_route53_health_check" {
  child_healthchecks                                                                                                                        = var.child_healthchecks
  fqdn                                                                                                                                      = var.fqdn
  port                                                                                                                                      = var.port
  tags                                                                                                                                      = var.tags
  type                                                                                                                                      = var.type
  arn                                                                                                                                       = var.arn
  id                                                                                                                                        = var.id
  insufficient_data_health_status                                                                                                           = var.insufficient_data_health_status
  routing_control_arn                                                                                                                       = var.routing_control_arn
  request_interval                                                                                                                          = var.request_interval
  For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource. = var.For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource.
  child_health_threshold                                                                                                                    = var.child_health_threshold
  cloudwatch_alarm_name                                                                                                                     = var.cloudwatch_alarm_name
  cloudwatch_alarm_region                                                                                                                   = var.cloudwatch_alarm_region
  disabled                                                                                                                                  = var.disabled
  invert_healthcheck                                                                                                                        = var.invert_healthcheck
  ip_address                                                                                                                                = var.ip_address
  resource_path                                                                                                                             = var.resource_path
  search_string                                                                                                                             = var.search_string
  For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.                                      = var.For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
  For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.                         = var.For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
  enable_sni                                                                                                                                = var.enable_sni
  failure_threshold                                                                                                                         = var.failure_threshold
  measure_latency                                                                                                                           = var.measure_latency
  reference_name                                                                                                                            = var.reference_name
  regions                                                                                                                                   = var.regions
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "failure_threshold" {
  description = "(Optional) The number of consecutive health checks that an endpoint must pass or fail."
  type        = string
  default     = ""
}
variable "measure_latency" {
  description = "(Optional) A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console."
  type        = string
  default     = ""
}
variable "reference_name" {
  description = ""
  type        = string
}
variable "regions" {
  description = "(Optional) A list of AWS regions that you want Amazon Route 53 health checkers to check the specified endpoint from."
  type        = string
  default     = ""
}
variable "search_string" {
  description = "(Optional) String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with HTTP_STR_MATCH and HTTPS_STR_MATCH."
  type        = string
  default     = ""
}
variable "For calculated health checks, Route 53 stops aggregating the status of the referenced health checks." {
  description = ""
  type        = string
}
variable "For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics." {
  description = "~> strongNote: After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of invert_healthcheck."
  type        = string
}
variable "enable_sni" {
  description = "(Optional) A boolean value that indicates whether Route53 should send the fqdn to the endpoint when performing the health check. This defaults to AWS' defaults: when the type is \"HTTPS\" enable_sni defaults to true, when type is anything else enable_sni defaults to false."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the health check. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC and RECOVERY_CONTROL."
  type        = string
}
variable "child_healthchecks" {
  description = "(Optional) For a specified parent health check, a list of HealthCheckId values for the associated child health checks."
  type        = string
  default     = ""
}
variable "fqdn" {
  description = "(Optional) The fully qualified domain name of the endpoint to be checked."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Optional) The port of the endpoint to be checked."
  type        = string
  default     = ""
}
variable "routing_control_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is RECOVERY_CONTROL"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Health Check."
  type        = string
}
variable "id" {
  description = "The id of the health check"
  type        = string
}
variable "insufficient_data_health_status" {
  description = "(Optional) The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are Healthy , Unhealthy and LastKnownStatus."
  type        = string
  default     = ""
}
variable "cloudwatch_alarm_region" {
  description = "(Optional) The CloudWatchRegion that the CloudWatch alarm was created in."
  type        = string
  default     = ""
}
variable "disabled" {
  description = "(Optional) A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:"
  type        = string
  default     = ""
}
variable "invert_healthcheck" {
  description = "(Optional) A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy."
  type        = string
  default     = ""
}
variable "ip_address" {
  description = "(Optional) The IP address of the endpoint to be checked."
  type        = string
  default     = ""
}
variable "request_interval" {
  description = "(Required) The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request."
  type        = string
}
variable "For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource." {
  description = ""
  type        = string
}
variable "child_health_threshold" {
  description = "(Optional) The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive"
  type        = string
  default     = ""
}
variable "cloudwatch_alarm_name" {
  description = "(Optional) The name of the CloudWatch alarm."
  type        = string
  default     = ""
}
variable "resource_path" {
  description = "(Optional) The path that you want Amazon Route 53 to request when performing health checks."
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
output "child_health_threshold" {
  description = "(Optional) The minimum number of child health checks that must be healthy for Route 53 to consider the parent health check to be healthy. Valid values are integers between 0 and 256, inclusive"
  value       = aws_route53_health_check.aws_route53_health_check.child_health_threshold
}
output "cloudwatch_alarm_name" {
  description = "(Optional) The name of the CloudWatch alarm."
  value       = aws_route53_health_check.aws_route53_health_check.cloudwatch_alarm_name
}
output "cloudwatch_alarm_region" {
  description = "(Optional) The CloudWatchRegion that the CloudWatch alarm was created in."
  value       = aws_route53_health_check.aws_route53_health_check.cloudwatch_alarm_region
}
output "disabled" {
  description = "(Optional) A boolean value that stops Route 53 from performing health checks. When set to true, Route 53 will do the following depending on the type of health check:"
  value       = aws_route53_health_check.aws_route53_health_check.disabled
}
output "invert_healthcheck" {
  description = "(Optional) A boolean value that indicates whether the status of health check should be inverted. For example, if a health check is healthy but Inverted is True , then Route 53 considers the health check to be unhealthy."
  value       = aws_route53_health_check.aws_route53_health_check.invert_healthcheck
}
output "ip_address" {
  description = "(Optional) The IP address of the endpoint to be checked."
  value       = aws_route53_health_check.aws_route53_health_check.ip_address
}
output "request_interval" {
  description = "(Required) The number of seconds between the time that Amazon Route 53 gets a response from your endpoint and the time that it sends the next health-check request."
  value       = aws_route53_health_check.aws_route53_health_check.request_interval
}
output "For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource." {
  description = ""
  value       = aws_route53_health_check.aws_route53_health_check.For health checks that check the health of endpoints, Route5 53 stops submitting requests to your application, server, or other resource.
}
output "resource_path" {
  description = "(Optional) The path that you want Amazon Route 53 to request when performing health checks."
  value       = aws_route53_health_check.aws_route53_health_check.resource_path
}
output "For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics." {
  description = "~> strongNote: After you disable a health check, Route 53 considers the status of the health check to always be healthy. If you configured DNS failover, Route 53 continues to route traffic to the corresponding resources. If you want to stop routing traffic to a resource, change the value of invert_healthcheck."
  value       = aws_route53_health_check.aws_route53_health_check.For health checks that monitor CloudWatch alarms, Route 53 stops monitoring the corresponding CloudWatch metrics.
}
output "enable_sni" {
  description = "(Optional) A boolean value that indicates whether Route53 should send the fqdn to the endpoint when performing the health check. This defaults to AWS' defaults: when the type is \"HTTPS\" enable_sni defaults to true, when type is anything else enable_sni defaults to false."
  value       = aws_route53_health_check.aws_route53_health_check.enable_sni
}
output "failure_threshold" {
  description = "(Optional) The number of consecutive health checks that an endpoint must pass or fail."
  value       = aws_route53_health_check.aws_route53_health_check.failure_threshold
}
output "measure_latency" {
  description = "(Optional) A Boolean value that indicates whether you want Route 53 to measure the latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console."
  value       = aws_route53_health_check.aws_route53_health_check.measure_latency
}
output "reference_name" {
  description = ""
  value       = aws_route53_health_check.aws_route53_health_check.reference_name
}
output "regions" {
  description = "(Optional) A list of AWS regions that you want Amazon Route 53 health checkers to check the specified endpoint from."
  value       = aws_route53_health_check.aws_route53_health_check.regions
}
output "search_string" {
  description = "(Optional) String searched in the first 5120 bytes of the response body for check to be considered healthy. Only valid with HTTP_STR_MATCH and HTTPS_STR_MATCH."
  value       = aws_route53_health_check.aws_route53_health_check.search_string
}
output "For calculated health checks, Route 53 stops aggregating the status of the referenced health checks." {
  description = ""
  value       = aws_route53_health_check.aws_route53_health_check.For calculated health checks, Route 53 stops aggregating the status of the referenced health checks.
}
output "fqdn" {
  description = "(Optional) The fully qualified domain name of the endpoint to be checked."
  value       = aws_route53_health_check.aws_route53_health_check.fqdn
}
output "port" {
  description = "(Optional) The port of the endpoint to be checked."
  value       = aws_route53_health_check.aws_route53_health_check.port
}
output "tags" {
  description = "(Optional) A map of tags to assign to the health check. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_route53_health_check.aws_route53_health_check.tags
}
output "type" {
  description = "(Required) The protocol to use when performing health checks. Valid values are HTTP, HTTPS, HTTP_STR_MATCH, HTTPS_STR_MATCH, TCP, CALCULATED, CLOUDWATCH_METRIC and RECOVERY_CONTROL."
  value       = aws_route53_health_check.aws_route53_health_check.type
}
output "child_healthchecks" {
  description = "(Optional) For a specified parent health check, a list of HealthCheckId values for the associated child health checks."
  value       = aws_route53_health_check.aws_route53_health_check.child_healthchecks
}
output "id" {
  description = "The id of the health check"
  value       = aws_route53_health_check.aws_route53_health_check.id
}
output "insufficient_data_health_status" {
  description = "(Optional) The status of the health check when CloudWatch has insufficient data about the state of associated alarm. Valid values are Healthy , Unhealthy and LastKnownStatus."
  value       = aws_route53_health_check.aws_route53_health_check.insufficient_data_health_status
}
output "routing_control_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) for the Route 53 Application Recovery Controller routing control. This is used when health check type is RECOVERY_CONTROL"
  value       = aws_route53_health_check.aws_route53_health_check.routing_control_arn
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Health Check."
  value       = aws_route53_health_check.aws_route53_health_check.arn
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Health Check."
  value       = aws_route53_health_check.aws_route53_health_check.arn
}
output "id" {
  description = "The id of the health check"
  value       = aws_route53_health_check.aws_route53_health_check.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_route53_health_check.aws_route53_health_check.tags_all
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
      "kind/name"                   = "aws_route53_health_check"
      "kind/version"                = "v0.1.0"
    }
  }
}
