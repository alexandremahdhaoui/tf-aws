resource "aws_appmesh_gateway_route" "aws_appmesh_gateway_route" {
  default_prefix          = var.default_prefix
  id                      = var.id
  mesh_name               = var.mesh_name
  name                    = var.name
  value                   = var.value
  action                  = var.action
  arn                     = var.arn
  created_date            = var.created_date
  http_route              = var.http_route
  virtual_service         = var.virtual_service
  virtual_service_name    = var.virtual_service_name
  hostname                = var.hostname
  prefix                  = var.prefix
  service_name            = var.service_name
  spec                    = var.spec
  suffix                  = var.suffix
  tags                    = var.tags
  grpc_route              = var.grpc_route
  http2_route             = var.http2_route
  match                   = var.match
  mesh_owner              = var.mesh_owner
  virtual_gateway_name    = var.virtual_gateway_name
  default_target_hostname = var.default_target_hostname
  exact                   = var.exact
  last_updated_date       = var.last_updated_date
  resource_owner          = var.resource_owner
  rewrite                 = var.rewrite
  target                  = var.target
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  type        = string
  default     = ""
}
variable "virtual_gateway_name" {
  description = "(Required) Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length."
  type        = string
}
variable "grpc_route" {
  description = "(Optional) Specification of a gRPC gateway route."
  type        = string
  default     = ""
}
variable "http2_route" {
  description = "(Optional) Specification of an HTTP/2 gateway route.The grpc_route, http_route and http2_route objects supports the following:"
  type        = string
  default     = ""
}
variable "match" {
  description = "(Required) Criteria for determining a request match.The grpc_route, http_route and http2_route's action object supports the following:"
  type        = string
}
variable "default_target_hostname" {
  description = "(Required) Default target host name to write to. Valid values: ENABLED, DISABLED.The prefix object supports the following:"
  type        = string
}
variable "exact" {
  description = "(Optional) Exact host name to match on."
  type        = string
  default     = ""
}
variable "last_updated_date" {
  description = "Last update date of the gateway route."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "rewrite" {
  description = "(Optional) Gateway route action to rewrite.The rewrite object supports the following:"
  type        = string
  default     = ""
}
variable "target" {
  description = "(Required) Target that traffic is routed to when a request matches the gateway route.The target object supports the following:"
  type        = string
}
variable "default_prefix" {
  description = "(Optional) Default prefix used to replace the incoming route prefix when rewritten. Valid values: ENABLED, DISABLED."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the gateway route."
  type        = string
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the gateway route. Must be between 1 and 255 characters in length."
  type        = string
}
variable "value" {
  description = "(Optional) Value used to replace the incoming route prefix when rewritten.The grpc_route's match object supports the following:"
  type        = string
  default     = ""
}
variable "http_route" {
  description = "(Optional) Specification of an HTTP gateway route."
  type        = string
  default     = ""
}
variable "virtual_service" {
  description = "(Required) Virtual service gateway route target.The virtual_service object supports the following:"
  type        = string
}
variable "action" {
  description = "(Required) Action to take if a match is determined."
  type        = string
}
variable "arn" {
  description = "ARN of the gateway route."
  type        = string
}
variable "created_date" {
  description = "Creation date of the gateway route."
  type        = string
}
variable "spec" {
  description = "(Required) Gateway route specification to apply."
  type        = string
}
variable "suffix" {
  description = "(Optional) Specified ending characters of the host name to match on.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
  default     = ""
}
variable "virtual_service_name" {
  description = "(Required) Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.The http_route and http2_route's action object additionally supports the following:"
  type        = string
}
variable "hostname" {
  description = "(Optional) Host name to match on."
  type        = string
  default     = ""
}
variable "prefix" {
  description = "(Required) Path to match requests with. This parameter must always start with /, which by itself matches all requests to the virtual service name.The hostname object supports the following:"
  type        = string
}
variable "service_name" {
  description = "(Required) Fully qualified domain name for the service to match from the request.The http_route and http2_route's match object supports the following:"
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
output "id" {
  description = "ID of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.id
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the gateway route. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.mesh_name
}
output "name" {
  description = "(Required) Name to use for the gateway route. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.name
}
output "value" {
  description = "(Optional) Value used to replace the incoming route prefix when rewritten.The grpc_route's match object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.value
}
output "action" {
  description = "(Required) Action to take if a match is determined."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.action
}
output "arn" {
  description = "ARN of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.arn
}
output "created_date" {
  description = "Creation date of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.created_date
}
output "http_route" {
  description = "(Optional) Specification of an HTTP gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.http_route
}
output "virtual_service" {
  description = "(Required) Virtual service gateway route target.The virtual_service object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.virtual_service
}
output "virtual_service_name" {
  description = "(Required) Name of the virtual service that traffic is routed to. Must be between 1 and 255 characters in length.The http_route and http2_route's action object additionally supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.virtual_service_name
}
output "hostname" {
  description = "(Optional) Host name to match on."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.hostname
}
output "prefix" {
  description = "(Required) Path to match requests with. This parameter must always start with /, which by itself matches all requests to the virtual service name.The hostname object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.prefix
}
output "service_name" {
  description = "(Required) Fully qualified domain name for the service to match from the request.The http_route and http2_route's match object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.service_name
}
output "spec" {
  description = "(Required) Gateway route specification to apply."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.spec
}
output "suffix" {
  description = "(Optional) Specified ending characters of the host name to match on.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.suffix
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.tags
}
output "grpc_route" {
  description = "(Optional) Specification of a gRPC gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.grpc_route
}
output "http2_route" {
  description = "(Optional) Specification of an HTTP/2 gateway route.The grpc_route, http_route and http2_route objects supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.http2_route
}
output "match" {
  description = "(Required) Criteria for determining a request match.The grpc_route, http_route and http2_route's action object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.match
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.mesh_owner
}
output "virtual_gateway_name" {
  description = "(Required) Name of the virtual gateway to associate the gateway route with. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.virtual_gateway_name
}
output "default_target_hostname" {
  description = "(Required) Default target host name to write to. Valid values: ENABLED, DISABLED.The prefix object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.default_target_hostname
}
output "exact" {
  description = "(Optional) Exact host name to match on."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.exact
}
output "last_updated_date" {
  description = "Last update date of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.resource_owner
}
output "rewrite" {
  description = "(Optional) Gateway route action to rewrite.The rewrite object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.rewrite
}
output "target" {
  description = "(Required) Target that traffic is routed to when a request matches the gateway route.The target object supports the following:"
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.target
}
output "default_prefix" {
  description = "(Optional) Default prefix used to replace the incoming route prefix when rewritten. Valid values: ENABLED, DISABLED."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.default_prefix
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.tags_all
}
output "arn" {
  description = "ARN of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.arn
}
output "created_date" {
  description = "Creation date of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.created_date
}
output "id" {
  description = "ID of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.id
}
output "last_updated_date" {
  description = "Last update date of the gateway route."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_gateway_route.aws_appmesh_gateway_route.resource_owner
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
      "kind/name"                   = "aws_appmesh_gateway_route"
      "kind/version"                = "v0.1.0"
    }
  }
}
