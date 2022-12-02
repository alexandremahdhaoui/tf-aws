resource "aws_appmesh_route" "aws_appmesh_route" {
  mesh_owner          = var.mesh_owner
  tcp_route           = var.tcp_route
  weighted_target     = var.weighted_target
  last_updated_date   = var.last_updated_date
  name                = var.name
  service_name        = var.service_name
  tcp_retry_events    = var.tcp_retry_events
  invert              = var.invert
  match               = var.match
  metadata            = var.metadata
  timeout             = var.timeout
  unit                = var.unit
  id                  = var.id
  http_route          = var.http_route
  mesh_name           = var.mesh_name
  method              = var.method
  per_request         = var.per_request
  scheme              = var.scheme
  tags                = var.tags
  http_retry_events   = var.http_retry_events
  end                 = var.end
  grpc_retry_events   = var.grpc_retry_events
  method_name         = var.method_name
  per_retry_timeout   = var.per_retry_timeout
  prefix              = var.prefix
  regex               = var.regex
  spec                = var.spec
  arn                 = var.arn
  virtual_router_name = var.virtual_router_name
  suffix              = var.suffix
  max_retries         = var.max_retries
  resource_owner      = var.resource_owner
  retry_policy        = var.retry_policy
  start               = var.start
  grpc_route          = var.grpc_route
  header              = var.header
  idle                = var.idle
  priority            = var.priority
  range               = var.range
  value               = var.value
  weight              = var.weight
  created_date        = var.created_date
  exact               = var.exact
  http2_route         = var.http2_route
  virtual_node        = var.virtual_node
  action              = var.action
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "http_route" {
  description = "(Optional) HTTP routing information for the route."
  type        = string
  default     = ""
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length."
  type        = string
}
variable "method" {
  description = "(Optional) Client request header method to match on. Valid values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH."
  type        = string
  default     = ""
}
variable "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  type        = string
  default     = ""
}
variable "scheme" {
  description = "(Optional) Client request header scheme to match on. Valid values: http, https.The http2_route and http_route's retry_policy object supports the following:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
  default     = ""
}
variable "http_retry_events" {
  description = "(Optional) List of HTTP retry events.\nValid values: client-error (HTTP status code 409), gateway-error (HTTP status codes 502, 503, and 504), server-error (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), stream-error (retry on refused stream)."
  type        = string
  default     = ""
}
variable "end" {
  description = "(Required) End of the range."
  type        = string
}
variable "grpc_retry_events" {
  description = "(Optional) List of gRPC retry events.\nValid values: cancelled, deadline-exceeded, internal, resource-exhausted, unavailable."
  type        = string
  default     = ""
}
variable "method_name" {
  description = "(Optional) Method name to match from the request. If you specify a name, you must also specify a service_name."
  type        = string
  default     = ""
}
variable "per_retry_timeout" {
  description = "(Required) Per-retry timeout."
  type        = string
}
variable "prefix" {
  description = "(Optional) Header value sent by the client must begin with the specified characters."
  type        = string
  default     = ""
}
variable "regex" {
  description = "(Optional) Header value sent by the client must include the specified characters."
  type        = string
  default     = ""
}
variable "spec" {
  description = "(Required) Route specification to apply."
  type        = string
}
variable "arn" {
  description = "ARN of the route."
  type        = string
}
variable "virtual_router_name" {
  description = "(Required) Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length."
  type        = string
}
variable "suffix" {
  description = "(Optional) Header value sent by the client must end with the specified characters.The range object supports the following:"
  type        = string
  default     = ""
}
variable "max_retries" {
  description = "(Required) Maximum number of retries."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "retry_policy" {
  description = "(Optional) Retry policy."
  type        = string
  default     = ""
}
variable "start" {
  description = "(Requited) Start of the range.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "grpc_route" {
  description = "(Optional) GRPC routing information for the route."
  type        = string
  default     = ""
}
variable "header" {
  description = "(Optional) Client request headers to match on."
  type        = string
  default     = ""
}
variable "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle."
  type        = string
  default     = ""
}
variable "priority" {
  description = "(Optional) Priority for the route, between 0 and 10000 is the highest priority."
  type        = string
  default     = ""
}
variable "range" {
  description = "- (Optional) Object that specifies the range of numbers that the header value sent by the client must be included in."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Retry value.The weighted_target object supports the following:"
  type        = string
}
variable "weight" {
  description = "(Required) Relative weight of the weighted target. An integer between 0 and 100.The header object supports the following:"
  type        = string
}
variable "created_date" {
  description = "Creation date of the route."
  type        = string
}
variable "exact" {
  description = "(Optional) Header value sent by the client must match the specified value exactly."
  type        = string
  default     = ""
}
variable "http2_route" {
  description = "(Optional) HTTP/2 routing information for the route."
  type        = string
  default     = ""
}
variable "virtual_node" {
  description = "(Required) Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length."
  type        = string
}
variable "action" {
  description = "(Required) Action to take if a match is determined."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  type        = string
  default     = ""
}
variable "tcp_route" {
  description = "(Optional) TCP routing information for the route.The grpc_route object supports the following:"
  type        = string
  default     = ""
}
variable "weighted_target" {
  description = "The timeout object supports the following:"
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the route."
  type        = string
}
variable "name" {
  description = "(Required) Name for the HTTP header in the client request that will be matched on."
  type        = string
}
variable "service_name" {
  description = "(Optional) Fully qualified domain name for the service to match from the request.The metadata object supports the following:"
  type        = string
  default     = ""
}
variable "tcp_retry_events" {
  description = "(Optional) List of TCP retry events. The only valid value is connection-error.You must specify at least one value for http_retry_events, or at least one value for tcp_retry_events.The http2_route and http_route's timeout object supports the following:"
  type        = string
  default     = ""
}
variable "invert" {
  description = "(Optional) If true, the match is on the opposite of the match method and value. Default is false."
  type        = string
  default     = ""
}
variable "match" {
  description = "(Optional) Method and value to match the header value sent with a request. Specify one match method.The header's match object supports the following:"
  type        = string
  default     = ""
}
variable "metadata" {
  description = "(Optional) Data to match from the gRPC request."
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Optional) Types of timeouts.The action object supports the following:"
  type        = string
  default     = ""
}
variable "unit" {
  description = "(Required) Retry unit. Valid values: ms, s."
  type        = string
}
variable "id" {
  description = "ID of the route."
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
output "last_updated_date" {
  description = "Last update date of the route."
  value       = aws_appmesh_route.aws_appmesh_route.last_updated_date
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_route.aws_appmesh_route.mesh_owner
}
output "tcp_route" {
  description = "(Optional) TCP routing information for the route.The grpc_route object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.tcp_route
}
output "weighted_target" {
  description = "The timeout object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.weighted_target
}
output "invert" {
  description = "(Optional) If true, the match is on the opposite of the match method and value. Default is false."
  value       = aws_appmesh_route.aws_appmesh_route.invert
}
output "name" {
  description = "(Required) Name for the HTTP header in the client request that will be matched on."
  value       = aws_appmesh_route.aws_appmesh_route.name
}
output "service_name" {
  description = "(Optional) Fully qualified domain name for the service to match from the request.The metadata object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.service_name
}
output "tcp_retry_events" {
  description = "(Optional) List of TCP retry events. The only valid value is connection-error.You must specify at least one value for http_retry_events, or at least one value for tcp_retry_events.The http2_route and http_route's timeout object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.tcp_retry_events
}
output "id" {
  description = "ID of the route."
  value       = aws_appmesh_route.aws_appmesh_route.id
}
output "match" {
  description = "(Optional) Method and value to match the header value sent with a request. Specify one match method.The header's match object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.match
}
output "metadata" {
  description = "(Optional) Data to match from the gRPC request."
  value       = aws_appmesh_route.aws_appmesh_route.metadata
}
output "timeout" {
  description = "(Optional) Types of timeouts.The action object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.timeout
}
output "unit" {
  description = "(Required) Retry unit. Valid values: ms, s."
  value       = aws_appmesh_route.aws_appmesh_route.unit
}
output "scheme" {
  description = "(Optional) Client request header scheme to match on. Valid values: http, https.The http2_route and http_route's retry_policy object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.scheme
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.tags
}
output "http_retry_events" {
  description = "(Optional) List of HTTP retry events.\nValid values: client-error (HTTP status code 409), gateway-error (HTTP status codes 502, 503, and 504), server-error (HTTP status codes 500, 501, 502, 503, 504, 505, 506, 507, 508, 510, and 511), stream-error (retry on refused stream)."
  value       = aws_appmesh_route.aws_appmesh_route.http_retry_events
}
output "http_route" {
  description = "(Optional) HTTP routing information for the route."
  value       = aws_appmesh_route.aws_appmesh_route.http_route
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the route. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_route.aws_appmesh_route.mesh_name
}
output "method" {
  description = "(Optional) Client request header method to match on. Valid values: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE, PATCH."
  value       = aws_appmesh_route.aws_appmesh_route.method
}
output "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  value       = aws_appmesh_route.aws_appmesh_route.per_request
}
output "prefix" {
  description = "(Optional) Header value sent by the client must begin with the specified characters."
  value       = aws_appmesh_route.aws_appmesh_route.prefix
}
output "regex" {
  description = "(Optional) Header value sent by the client must include the specified characters."
  value       = aws_appmesh_route.aws_appmesh_route.regex
}
output "spec" {
  description = "(Required) Route specification to apply."
  value       = aws_appmesh_route.aws_appmesh_route.spec
}
output "arn" {
  description = "ARN of the route."
  value       = aws_appmesh_route.aws_appmesh_route.arn
}
output "end" {
  description = "(Required) End of the range."
  value       = aws_appmesh_route.aws_appmesh_route.end
}
output "grpc_retry_events" {
  description = "(Optional) List of gRPC retry events.\nValid values: cancelled, deadline-exceeded, internal, resource-exhausted, unavailable."
  value       = aws_appmesh_route.aws_appmesh_route.grpc_retry_events
}
output "method_name" {
  description = "(Optional) Method name to match from the request. If you specify a name, you must also specify a service_name."
  value       = aws_appmesh_route.aws_appmesh_route.method_name
}
output "per_retry_timeout" {
  description = "(Required) Per-retry timeout."
  value       = aws_appmesh_route.aws_appmesh_route.per_retry_timeout
}
output "suffix" {
  description = "(Optional) Header value sent by the client must end with the specified characters.The range object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.suffix
}
output "virtual_router_name" {
  description = "(Required) Name of the virtual router in which to create the route. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_route.aws_appmesh_route.virtual_router_name
}
output "grpc_route" {
  description = "(Optional) GRPC routing information for the route."
  value       = aws_appmesh_route.aws_appmesh_route.grpc_route
}
output "max_retries" {
  description = "(Required) Maximum number of retries."
  value       = aws_appmesh_route.aws_appmesh_route.max_retries
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_route.aws_appmesh_route.resource_owner
}
output "retry_policy" {
  description = "(Optional) Retry policy."
  value       = aws_appmesh_route.aws_appmesh_route.retry_policy
}
output "start" {
  description = "(Requited) Start of the range.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_route.aws_appmesh_route.start
}
output "value" {
  description = "(Required) Retry value.The weighted_target object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.value
}
output "weight" {
  description = "(Required) Relative weight of the weighted target. An integer between 0 and 100.The header object supports the following:"
  value       = aws_appmesh_route.aws_appmesh_route.weight
}
output "created_date" {
  description = "Creation date of the route."
  value       = aws_appmesh_route.aws_appmesh_route.created_date
}
output "header" {
  description = "(Optional) Client request headers to match on."
  value       = aws_appmesh_route.aws_appmesh_route.header
}
output "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle."
  value       = aws_appmesh_route.aws_appmesh_route.idle
}
output "priority" {
  description = "(Optional) Priority for the route, between 0 and 10000 is the highest priority."
  value       = aws_appmesh_route.aws_appmesh_route.priority
}
output "range" {
  description = "- (Optional) Object that specifies the range of numbers that the header value sent by the client must be included in."
  value       = aws_appmesh_route.aws_appmesh_route.range
}
output "action" {
  description = "(Required) Action to take if a match is determined."
  value       = aws_appmesh_route.aws_appmesh_route.action
}
output "exact" {
  description = "(Optional) Header value sent by the client must match the specified value exactly."
  value       = aws_appmesh_route.aws_appmesh_route.exact
}
output "http2_route" {
  description = "(Optional) HTTP/2 routing information for the route."
  value       = aws_appmesh_route.aws_appmesh_route.http2_route
}
output "virtual_node" {
  description = "(Required) Virtual node to associate with the weighted target. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_route.aws_appmesh_route.virtual_node
}
output "arn" {
  description = "ARN of the route."
  value       = aws_appmesh_route.aws_appmesh_route.arn
}
output "created_date" {
  description = "Creation date of the route."
  value       = aws_appmesh_route.aws_appmesh_route.created_date
}
output "id" {
  description = "ID of the route."
  value       = aws_appmesh_route.aws_appmesh_route.id
}
output "last_updated_date" {
  description = "Last update date of the route."
  value       = aws_appmesh_route.aws_appmesh_route.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_route.aws_appmesh_route.resource_owner
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_route.aws_appmesh_route.tags_all
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
      "kind/name"                   = "aws_appmesh_route"
      "kind/version"                = "v0.1.0"
    }
  }
}
