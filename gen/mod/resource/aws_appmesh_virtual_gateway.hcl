resource "aws_appmesh_virtual_gateway" "aws_appmesh_virtual_gateway" {
  exact                      = var.exact
  health_check               = var.health_check
  healthy_threshold          = var.healthy_threshold
  interval_millis            = var.interval_millis
  mesh_name                  = var.mesh_name
  path                       = var.path
  access_log                 = var.access_log
  certificate_arn            = var.certificate_arn
  subject_alternative_names  = var.subject_alternative_names
  trust                      = var.trust
  ports                      = var.ports
  spec                       = var.spec
  created_date               = var.created_date
  grpc                       = var.grpc
  last_updated_date          = var.last_updated_date
  name                       = var.name
  tls                        = var.tls
  client_policy              = var.client_policy
  connection_pool            = var.connection_pool
  max_connections            = var.max_connections
  mode                       = var.mode
  private_key                = var.private_key
  tags                       = var.tags
  acm                        = var.acm
  id                         = var.id
  file                       = var.file
  logging                    = var.logging
  mesh_owner                 = var.mesh_owner
  timeout_millis             = var.timeout_millis
  backend_defaults           = var.backend_defaults
  certificate                = var.certificate
  protocol                   = var.protocol
  unhealthy_threshold        = var.unhealthy_threshold
  certificate_authority_arns = var.certificate_authority_arns
  max_requests               = var.max_requests
  port_mapping               = var.port_mapping
  secret_name                = var.secret_name
  enforce                    = var.enforce
  match                      = var.match
  listener                   = var.listener
  max_pending_requests       = var.max_pending_requests
  http                       = var.http
  http2                      = var.http2
  port                       = var.port
  resource_owner             = var.resource_owner
  sds                        = var.sds
  validation                 = var.validation
  arn                        = var.arn
  certificate_chain          = var.certificate_chain
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "ID of the virtual gateway."
  type        = string
}
variable "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1."
  type        = string
}
variable "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  type        = string
}
variable "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
  default     = ""
}
variable "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  type        = string
  default     = ""
}
variable "certificate" {
  description = "(Required) Listener's TLS certificate."
  type        = string
}
variable "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  type        = string
  default     = ""
}
variable "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual gateway.The backend_defaults object supports the following:"
  type        = string
  default     = ""
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  type        = string
  default     = ""
}
variable "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  type        = string
}
variable "backend_defaults" {
  description = "(Optional) Defaults for backends."
  type        = string
  default     = ""
}
variable "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  type        = string
}
variable "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, and grpc."
  type        = string
}
variable "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual gateway unhealthy."
  type        = string
}
variable "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  type        = string
}
variable "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  type        = string
}
variable "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  type        = string
}
variable "secret_name" {
  description = "(Required) Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  type        = string
  default     = ""
}
variable "http2" {
  description = "(Optional) Connection pool information for HTTP2 listeners.The grpc connection pool object supports the following:"
  type        = string
  default     = ""
}
variable "listener" {
  description = "(Required) Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener."
  type        = string
}
variable "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  type        = string
  default     = ""
}
variable "http" {
  description = "(Optional) Connection pool information for HTTP listeners."
  type        = string
  default     = ""
}
variable "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The tls object supports the following:"
  type        = string
  default     = ""
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  type        = string
  default     = ""
}
variable "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the virtual gateway."
  type        = string
}
variable "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  type        = string
}
variable "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  type        = string
}
variable "health_check" {
  description = "(Optional) Health check information for the listener."
  type        = string
  default     = ""
}
variable "healthy_threshold" {
  description = "(Required) Number of consecutive successful health checks that must occur before declaring listener healthy."
  type        = string
}
variable "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  type        = string
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length."
  type        = string
}
variable "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  type        = string
  default     = ""
}
variable "access_log" {
  description = "(Optional) Access log configuration for a virtual gateway.The access_log object supports the following:"
  type        = string
  default     = ""
}
variable "spec" {
  description = "(Required) Virtual gateway specification to apply."
  type        = string
}
variable "subject_alternative_names" {
  description = "(Optional) SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context."
  type        = string
  default     = ""
}
variable "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  type        = string
}
variable "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  type        = string
  default     = ""
}
variable "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  type        = string
  default     = ""
}
variable "created_date" {
  description = "Creation date of the virtual gateway."
  type        = string
}
variable "grpc" {
  description = "(Optional) Connection pool information for gRPC listeners."
  type        = string
  default     = ""
}
variable "last_updated_date" {
  description = "Last update date of the virtual gateway."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the virtual gateway. Must be between 1 and 255 characters in length."
  type        = string
}
variable "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
  type        = string
  default     = ""
}
variable "client_policy" {
  description = "(Optional) Default client policy for virtual gateway backends.The client_policy object supports the following:"
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
output "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.acm
}
output "id" {
  description = "ID of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.id
}
output "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.max_connections
}
output "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.mode
}
output "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.private_key
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.tags
}
output "backend_defaults" {
  description = "(Optional) Defaults for backends."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.backend_defaults
}
output "certificate" {
  description = "(Required) Listener's TLS certificate."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.certificate
}
output "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.file
}
output "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual gateway.The backend_defaults object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.logging
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.mesh_owner
}
output "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.timeout_millis
}
output "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.certificate_authority_arns
}
output "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.max_requests
}
output "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, and grpc."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.protocol
}
output "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual gateway unhealthy."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.unhealthy_threshold
}
output "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.enforce
}
output "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.match
}
output "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.port_mapping
}
output "secret_name" {
  description = "(Required) Name of the secret for a virtual gateway's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.secret_name
}
output "http" {
  description = "(Optional) Connection pool information for HTTP listeners."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.http
}
output "http2" {
  description = "(Optional) Connection pool information for HTTP2 listeners.The grpc connection pool object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.http2
}
output "listener" {
  description = "(Required) Listeners that the mesh endpoint is expected to receive inbound traffic from. You can specify one listener."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.listener
}
output "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.max_pending_requests
}
output "arn" {
  description = "ARN of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.arn
}
output "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.certificate_chain
}
output "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The tls object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.port
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.resource_owner
}
output "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.sds
}
output "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.validation
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.mesh_name
}
output "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.path
}
output "access_log" {
  description = "(Optional) Access log configuration for a virtual gateway.The access_log object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.access_log
}
output "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.certificate_arn
}
output "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.exact
}
output "health_check" {
  description = "(Optional) Health check information for the listener."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.health_check
}
output "healthy_threshold" {
  description = "(Required) Number of consecutive successful health checks that must occur before declaring listener healthy."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.healthy_threshold
}
output "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.interval_millis
}
output "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.ports
}
output "spec" {
  description = "(Required) Virtual gateway specification to apply."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.spec
}
output "subject_alternative_names" {
  description = "(Optional) SANs for a virtual gateway's listener's Transport Layer Security (TLS) validation context."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.subject_alternative_names
}
output "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.trust
}
output "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.tls
}
output "client_policy" {
  description = "(Optional) Default client policy for virtual gateway backends.The client_policy object supports the following:"
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.client_policy
}
output "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.connection_pool
}
output "created_date" {
  description = "Creation date of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.created_date
}
output "grpc" {
  description = "(Optional) Connection pool information for gRPC listeners."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.grpc
}
output "last_updated_date" {
  description = "Last update date of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.last_updated_date
}
output "name" {
  description = "(Required) Name to use for the virtual gateway. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.name
}
output "arn" {
  description = "ARN of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.arn
}
output "created_date" {
  description = "Creation date of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.created_date
}
output "id" {
  description = "ID of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.id
}
output "last_updated_date" {
  description = "Last update date of the virtual gateway."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.resource_owner
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_virtual_gateway.aws_appmesh_virtual_gateway.tags_all
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
      "kind/name"                   = "aws_appmesh_virtual_gateway"
      "kind/version"                = "v0.1.0"
    }
  }
}
