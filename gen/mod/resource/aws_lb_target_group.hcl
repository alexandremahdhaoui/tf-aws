resource "aws_lb_target_group" "aws_lb_target_group" {
  slow_start                         = var.slow_start
  unhealthy_threshold                = var.unhealthy_threshold
  protocol_version                   = var.protocol_version
  connection_termination             = var.connection_termination
  ip_address_type                    = var.ip_address_type
  matcher                            = var.matcher
  arn                                = var.arn
  on_deregistration                  = var.on_deregistration
  path                               = var.path
  target_type                        = var.target_type
  type                               = var.type
  deregistration_delay               = var.deregistration_delay
  enabled                            = var.enabled
  health_check                       = var.health_check
  name                               = var.name
  proxy_protocol_v2                  = var.proxy_protocol_v2
  tags                               = var.tags
  arn_suffix                         = var.arn_suffix
  healthy_threshold                  = var.healthy_threshold
  vpc_id                             = var.vpc_id
  cookie_duration                    = var.cookie_duration
  on_unhealthy                       = var.on_unhealthy
  target_failover                    = var.target_failover
  timeout                            = var.timeout
  interval                           = var.interval
  id                                 = var.id
  lambda_multi_value_headers_enabled = var.lambda_multi_value_headers_enabled
  name_prefix                        = var.name_prefix
  port                               = var.port
  stickiness                         = var.stickiness
  cookie_name                        = var.cookie_name
  preserve_client_ip                 = var.preserve_client_ip
  protocol                           = var.protocol
  load_balancing_algorithm_type      = var.load_balancing_algorithm_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "Name of the Target Group."
  type        = string
}
variable "proxy_protocol_v2" {
  description = "(Optional) Whether to enable support for proxy protocol v2 on Network Load Balancers. See doc for more information. Default is false."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn_suffix" {
  description = "ARN suffix for use with CloudWatch Metrics."
  type        = string
}
variable "enabled" {
  description = "(Optional) Boolean to enable / disable stickiness. Default is true."
  type        = string
  default     = ""
}
variable "health_check" {
  description = "(Optional, Maximum of 1) Health Check configuration block. Detailed below."
  type        = string
}
variable "cookie_duration" {
  description = "(Optional) Only used when the type is lb_cookie. The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds)."
  type        = string
  default     = ""
}
variable "healthy_threshold" {
  description = "(Optional) Number of consecutive health checks successes required before considering an unhealthy target healthy. Defaults to 3."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional, Forces new resource) Identifier of the VPC in which to create the target group. Required when target_type is instance, ip or alb. Does not apply when target_type is lambda.health_check~> strongNote: The Health Check parameters you can set vary by the protocol of the Target Group. Many parameters cannot be set to custom values for network load balancers at this time. See http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html for a complete reference. Keep in mind, that health checks produce actual requests to the backend. The underlying function is invoked when target_type is set to lambda."
  type        = string
}
variable "timeout" {
  description = "(Optional) Amount of time, in seconds, during which no response means a failed health check. For Application Load Balancers, the range is 2 to 120 seconds, and the default is 5 seconds for the instance target type and 30 seconds for the lambda target type. For Network Load Balancers, you cannot set a custom value, and the default is 10 seconds for TCP and HTTPS health checks and 5 seconds for HTTP health checks."
  type        = string
  default     = ""
}
variable "interval" {
  description = "(Optional) Approximate amount of time, in seconds, between health checks of an individual target. Minimum value 5 seconds, Maximum value 300 seconds. For lambda target groups, it needs to be greater as the timeout of the underlying lambda. Default 30 seconds."
  type        = string
  default     = ""
}
variable "on_unhealthy" {
  description = "Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are rebalance and no_rebalance. Must match the attribute value set for on_deregistration. Default: no_rebalance.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "target_failover" {
  description = "(Optional) Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name. Cannot be longer than 6 characters."
  type        = string
}
variable "port" {
  description = "(Optional) Port to use to connect with the target. Valid values are either ports 1-65535, or traffic-port. Defaults to traffic-port."
  type        = string
  default     = ""
}
variable "stickiness" {
  description = "(Optional, Maximum of 1) Stickiness configuration block. Detailed below."
  type        = string
}
variable "cookie_name" {
  description = "(Optional) Name of the application based cookie. AWSALB, AWSALBAPP, and AWSALBTG prefixes are reserved and cannot be used. Only needed when type is app_cookie."
  type        = string
  default     = ""
}
variable "id" {
  description = "ARN of the Target Group (matches arn)."
  type        = string
}
variable "lambda_multi_value_headers_enabled" {
  description = "(Optional) Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when target_type is lambda. Default is false."
  type        = string
  default     = ""
}
variable "load_balancing_algorithm_type" {
  description = "(Optional) Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is round_robin or least_outstanding_requests. The default is round_robin."
  type        = string
  default     = ""
}
variable "preserve_client_ip" {
  description = "(Optional) Whether client IP preservation is enabled. See doc for more information."
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Optional) Protocol to use to connect with the target. Defaults to HTTP. Not applicable when target_type is lambda."
  type        = string
  default     = ""
}
variable "protocol_version" {
  description = "(Optional, Forces new resource) Only applicable when protocol is HTTP or HTTPS. The protocol version. Specify GRPC to send requests to targets using gRPC. Specify HTTP2 to send requests to targets using HTTP/2. The default is HTTP1, which sends requests to targets using HTTP/1.1"
  type        = string
}
variable "slow_start" {
  description = "(Optional) Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds."
  type        = string
  default     = ""
}
variable "unhealthy_threshold" {
  description = "(Optional) Number of consecutive health check failures required before considering the target unhealthy. For Network Load Balancers, this value must be the same as the healthy_threshold. Defaults to 3.stickiness~> strongNOTE: Currently, an NLB (i.e., protocol of HTTP or HTTPS) can have an invalid stickiness block with type set to lb_cookie as long as enabled is set to false. However, please update your configurations to avoid errors in a future version of the provider: either remove the invalid stickiness block or set the type to source_ip."
  type        = string
  default     = ""
}
variable "matcher" {
  description = " (May be required) Response codes to use when checking for a healthy responses from a target. You can specify multiple values (for example, \"200,202\" for HTTP(s) or \"0,12\" for GRPC) or a range of values (for example, \"200-299\" or \"0-99\"). Required for HTTP/HTTPS/GRPC ALB. Only applies to Application Load Balancers (i.e., HTTP/HTTPS/GRPC) not Network Load Balancers (i.e., TCP)."
  type        = string
}
variable "arn" {
  description = "ARN of the Target Group (matches id)."
  type        = string
}
variable "connection_termination" {
  description = "(Optional) Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See doc for more information. Default is false."
  type        = string
  default     = ""
}
variable "ip_address_type" {
  description = " (Optional, forces new resource) The type of IP addresses used by the target group, only supported when target type is set to ip. Possible values are ipv4 or ipv6."
  type        = string
}
variable "target_type" {
  description = "(May be required, Forces new resource) Type of target that you must specify when registering targets with this target group. See doc for supported values. The default is instance.Note that you can't specify targets for a target group using both instance IDs and IP addresses.If the target type is ip, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.Network Load Balancers do not support the lambda target type.Application Load Balancers do not support the alb target type."
  type        = string
}
variable "type" {
  description = "(Required) The type of sticky sessions. The only current possible values are lb_cookie, app_cookie for ALBs, source_ip for NLBs, and source_ip_dest_ip, source_ip_dest_ip_proto for GWLBs.target_failover~> strongNOTE: This block is only applicable for a Gateway Load Balancer (GWLB). The two attributes on_deregistration and on_unhealthy cannot be set independently. The value you set for both attributes must be the same."
  type        = string
}
variable "deregistration_delay" {
  description = "(Optional) Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds."
  type        = string
  default     = ""
}
variable "on_deregistration" {
  description = "(Optional) Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are rebalance and no_rebalance. Must match the attribute value set for on_unhealthy. Default: no_rebalance."
  type        = string
  default     = ""
}
variable "path" {
  description = "(May be required) Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS."
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
output "slow_start" {
  description = "(Optional) Amount time for targets to warm up before the load balancer sends them a full share of requests. The range is 30-900 seconds or 0 to disable. The default value is 0 seconds."
  value       = aws_lb_target_group.aws_lb_target_group.slow_start
}
output "unhealthy_threshold" {
  description = "(Optional) Number of consecutive health check failures required before considering the target unhealthy. For Network Load Balancers, this value must be the same as the healthy_threshold. Defaults to 3.stickiness~> strongNOTE: Currently, an NLB (i.e., protocol of HTTP or HTTPS) can have an invalid stickiness block with type set to lb_cookie as long as enabled is set to false. However, please update your configurations to avoid errors in a future version of the provider: either remove the invalid stickiness block or set the type to source_ip."
  value       = aws_lb_target_group.aws_lb_target_group.unhealthy_threshold
}
output "protocol_version" {
  description = "(Optional, Forces new resource) Only applicable when protocol is HTTP or HTTPS. The protocol version. Specify GRPC to send requests to targets using gRPC. Specify HTTP2 to send requests to targets using HTTP/2. The default is HTTP1, which sends requests to targets using HTTP/1.1"
  value       = aws_lb_target_group.aws_lb_target_group.protocol_version
}
output "connection_termination" {
  description = "(Optional) Whether to terminate connections at the end of the deregistration timeout on Network Load Balancers. See doc for more information. Default is false."
  value       = aws_lb_target_group.aws_lb_target_group.connection_termination
}
output "ip_address_type" {
  description = " (Optional, forces new resource) The type of IP addresses used by the target group, only supported when target type is set to ip. Possible values are ipv4 or ipv6."
  value       = aws_lb_target_group.aws_lb_target_group.ip_address_type
}
output "matcher" {
  description = " (May be required) Response codes to use when checking for a healthy responses from a target. You can specify multiple values (for example, \"200,202\" for HTTP(s) or \"0,12\" for GRPC) or a range of values (for example, \"200-299\" or \"0-99\"). Required for HTTP/HTTPS/GRPC ALB. Only applies to Application Load Balancers (i.e., HTTP/HTTPS/GRPC) not Network Load Balancers (i.e., TCP)."
  value       = aws_lb_target_group.aws_lb_target_group.matcher
}
output "arn" {
  description = "ARN of the Target Group (matches id)."
  value       = aws_lb_target_group.aws_lb_target_group.arn
}
output "on_deregistration" {
  description = "(Optional) Indicates how the GWLB handles existing flows when a target is deregistered. Possible values are rebalance and no_rebalance. Must match the attribute value set for on_unhealthy. Default: no_rebalance."
  value       = aws_lb_target_group.aws_lb_target_group.on_deregistration
}
output "path" {
  description = "(May be required) Destination for the health check request. Required for HTTP/HTTPS ALB and HTTP NLB. Only applies to HTTP/HTTPS."
  value       = aws_lb_target_group.aws_lb_target_group.path
}
output "target_type" {
  description = "(May be required, Forces new resource) Type of target that you must specify when registering targets with this target group. See doc for supported values. The default is instance.Note that you can't specify targets for a target group using both instance IDs and IP addresses.If the target type is ip, specify IP addresses from the subnets of the virtual private cloud (VPC) for the target group, the RFC 1918 range (10.0.0.0/8, 172.16.0.0/12, and 192.168.0.0/16), and the RFC 6598 range (100.64.0.0/10). You can't specify publicly routable IP addresses.Network Load Balancers do not support the lambda target type.Application Load Balancers do not support the alb target type."
  value       = aws_lb_target_group.aws_lb_target_group.target_type
}
output "type" {
  description = "(Required) The type of sticky sessions. The only current possible values are lb_cookie, app_cookie for ALBs, source_ip for NLBs, and source_ip_dest_ip, source_ip_dest_ip_proto for GWLBs.target_failover~> strongNOTE: This block is only applicable for a Gateway Load Balancer (GWLB). The two attributes on_deregistration and on_unhealthy cannot be set independently. The value you set for both attributes must be the same."
  value       = aws_lb_target_group.aws_lb_target_group.type
}
output "deregistration_delay" {
  description = "(Optional) Amount time for Elastic Load Balancing to wait before changing the state of a deregistering target from draining to unused. The range is 0-3600 seconds. The default value is 300 seconds."
  value       = aws_lb_target_group.aws_lb_target_group.deregistration_delay
}
output "enabled" {
  description = "(Optional) Boolean to enable / disable stickiness. Default is true."
  value       = aws_lb_target_group.aws_lb_target_group.enabled
}
output "health_check" {
  description = "(Optional, Maximum of 1) Health Check configuration block. Detailed below."
  value       = aws_lb_target_group.aws_lb_target_group.health_check
}
output "name" {
  description = "Name of the Target Group."
  value       = aws_lb_target_group.aws_lb_target_group.name
}
output "proxy_protocol_v2" {
  description = "(Optional) Whether to enable support for proxy protocol v2 on Network Load Balancers. See doc for more information. Default is false."
  value       = aws_lb_target_group.aws_lb_target_group.proxy_protocol_v2
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_lb_target_group.aws_lb_target_group.tags
}
output "arn_suffix" {
  description = "ARN suffix for use with CloudWatch Metrics."
  value       = aws_lb_target_group.aws_lb_target_group.arn_suffix
}
output "healthy_threshold" {
  description = "(Optional) Number of consecutive health checks successes required before considering an unhealthy target healthy. Defaults to 3."
  value       = aws_lb_target_group.aws_lb_target_group.healthy_threshold
}
output "vpc_id" {
  description = "(Optional, Forces new resource) Identifier of the VPC in which to create the target group. Required when target_type is instance, ip or alb. Does not apply when target_type is lambda.health_check~> strongNote: The Health Check parameters you can set vary by the protocol of the Target Group. Many parameters cannot be set to custom values for network load balancers at this time. See http://docs.aws.amazon.com/elasticloadbalancing/latest/APIReference/API_CreateTargetGroup.html for a complete reference. Keep in mind, that health checks produce actual requests to the backend. The underlying function is invoked when target_type is set to lambda."
  value       = aws_lb_target_group.aws_lb_target_group.vpc_id
}
output "cookie_duration" {
  description = "(Optional) Only used when the type is lb_cookie. The time period, in seconds, during which requests from a client should be routed to the same target. After this time period expires, the load balancer-generated cookie is considered stale. The range is 1 second to 1 week (604800 seconds). The default value is 1 day (86400 seconds)."
  value       = aws_lb_target_group.aws_lb_target_group.cookie_duration
}
output "on_unhealthy" {
  description = "Indicates how the GWLB handles existing flows when a target is unhealthy. Possible values are rebalance and no_rebalance. Must match the attribute value set for on_deregistration. Default: no_rebalance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lb_target_group.aws_lb_target_group.on_unhealthy
}
output "target_failover" {
  description = "(Optional) Target failover block. Only applicable for Gateway Load Balancer target groups. See target_failover for more information."
  value       = aws_lb_target_group.aws_lb_target_group.target_failover
}
output "timeout" {
  description = "(Optional) Amount of time, in seconds, during which no response means a failed health check. For Application Load Balancers, the range is 2 to 120 seconds, and the default is 5 seconds for the instance target type and 30 seconds for the lambda target type. For Network Load Balancers, you cannot set a custom value, and the default is 10 seconds for TCP and HTTPS health checks and 5 seconds for HTTP health checks."
  value       = aws_lb_target_group.aws_lb_target_group.timeout
}
output "interval" {
  description = "(Optional) Approximate amount of time, in seconds, between health checks of an individual target. Minimum value 5 seconds, Maximum value 300 seconds. For lambda target groups, it needs to be greater as the timeout of the underlying lambda. Default 30 seconds."
  value       = aws_lb_target_group.aws_lb_target_group.interval
}
output "id" {
  description = "ARN of the Target Group (matches arn)."
  value       = aws_lb_target_group.aws_lb_target_group.id
}
output "lambda_multi_value_headers_enabled" {
  description = "(Optional) Whether the request and response headers exchanged between the load balancer and the Lambda function include arrays of values or strings. Only applies when target_type is lambda. Default is false."
  value       = aws_lb_target_group.aws_lb_target_group.lambda_multi_value_headers_enabled
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name. Cannot be longer than 6 characters."
  value       = aws_lb_target_group.aws_lb_target_group.name_prefix
}
output "port" {
  description = "(Optional) Port to use to connect with the target. Valid values are either ports 1-65535, or traffic-port. Defaults to traffic-port."
  value       = aws_lb_target_group.aws_lb_target_group.port
}
output "stickiness" {
  description = "(Optional, Maximum of 1) Stickiness configuration block. Detailed below."
  value       = aws_lb_target_group.aws_lb_target_group.stickiness
}
output "cookie_name" {
  description = "(Optional) Name of the application based cookie. AWSALB, AWSALBAPP, and AWSALBTG prefixes are reserved and cannot be used. Only needed when type is app_cookie."
  value       = aws_lb_target_group.aws_lb_target_group.cookie_name
}
output "preserve_client_ip" {
  description = "(Optional) Whether client IP preservation is enabled. See doc for more information."
  value       = aws_lb_target_group.aws_lb_target_group.preserve_client_ip
}
output "protocol" {
  description = "(Optional) Protocol to use to connect with the target. Defaults to HTTP. Not applicable when target_type is lambda."
  value       = aws_lb_target_group.aws_lb_target_group.protocol
}
output "load_balancing_algorithm_type" {
  description = "(Optional) Determines how the load balancer selects targets when routing requests. Only applicable for Application Load Balancer Target Groups. The value is round_robin or least_outstanding_requests. The default is round_robin."
  value       = aws_lb_target_group.aws_lb_target_group.load_balancing_algorithm_type
}
output "arn" {
  description = "ARN of the Target Group (matches id)."
  value       = aws_lb_target_group.aws_lb_target_group.arn
}
output "arn_suffix" {
  description = "ARN suffix for use with CloudWatch Metrics."
  value       = aws_lb_target_group.aws_lb_target_group.arn_suffix
}
output "id" {
  description = "ARN of the Target Group (matches arn)."
  value       = aws_lb_target_group.aws_lb_target_group.id
}
output "name" {
  description = "Name of the Target Group."
  value       = aws_lb_target_group.aws_lb_target_group.name
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lb_target_group.aws_lb_target_group.tags_all
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
      "kind/name"                   = "aws_lb_target_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
