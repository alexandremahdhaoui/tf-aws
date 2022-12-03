resource "aws_appmesh_virtual_node" "aws_appmesh_virtual_node" {
  enforce                    = var.enforce
  sds                        = var.sds
  unit                       = var.unit
  arn                        = var.arn
  base_ejection_duration     = var.base_ejection_duration
  value                      = var.value
  certificate                = var.certificate
  resource_owner             = var.resource_owner
  tcp                        = var.tcp
  tls                        = var.tls
  connection_pool            = var.connection_pool
  http2                      = var.http2
  protocol                   = var.protocol
  virtual_service_name       = var.virtual_service_name
  name                       = var.name
  outlier_detection          = var.outlier_detection
  idle                       = var.idle
  mode                       = var.mode
  per_request                = var.per_request
  port_mapping               = var.port_mapping
  exact                      = var.exact
  http                       = var.http
  listener                   = var.listener
  access_log                 = var.access_log
  id                         = var.id
  logging                    = var.logging
  max_ejection_percent       = var.max_ejection_percent
  max_pending_requests       = var.max_pending_requests
  namespace_name             = var.namespace_name
  subject_alternative_names  = var.subject_alternative_names
  trust                      = var.trust
  aws_cloud_map              = var.aws_cloud_map
  certificate_arn            = var.certificate_arn
  interval_millis            = var.interval_millis
  service_name               = var.service_name
  created_date               = var.created_date
  file                       = var.file
  acm                        = var.acm
  tags                       = var.tags
  health_check               = var.health_check
  healthy_threshold          = var.healthy_threshold
  max_server_errors          = var.max_server_errors
  secret_name                = var.secret_name
  spec                       = var.spec
  virtual_service            = var.virtual_service
  attributes                 = var.attributes
  backend_defaults           = var.backend_defaults
  timeout_millis             = var.timeout_millis
  private_key                = var.private_key
  service_discovery          = var.service_discovery
  ports                      = var.ports
  backend                    = var.backend
  certificate_authority_arns = var.certificate_authority_arns
  max_requests               = var.max_requests
  mesh_owner                 = var.mesh_owner
  path                       = var.path
  validation                 = var.validation
  grpc                       = var.grpc
  hostname                   = var.hostname
  interval                   = var.interval
  last_updated_date          = var.last_updated_date
  match                      = var.match
  mesh_name                  = var.mesh_name
  client_policy              = var.client_policy
  dns                        = var.dns
  port                       = var.port
  timeout                    = var.timeout
  unhealthy_threshold        = var.unhealthy_threshold
  certificate_chain          = var.certificate_chain
  max_connections            = var.max_connections
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the virtual node. Must be between 1 and 255 characters in length."
  type        = string
}
variable "outlier_detection" {
  description = "(Optional) Outlier detection information for the listener."
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, tcp and grpc."
  type        = string
}
variable "virtual_service_name" {
  description = "(Required) Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.The client_policy object supports the following:"
  type        = string
}
variable "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  type        = string
}
variable "http" {
  description = "(Optional) Timeouts for HTTP listeners."
  type        = string
  default     = ""
}
variable "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.The idle object supports the following:"
  type        = string
  default     = ""
}
variable "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  type        = string
}
variable "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  type        = string
  default     = ""
}
variable "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  type        = string
}
variable "access_log" {
  description = "(Optional) Access log configuration for a virtual node.The access_log object supports the following:"
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the virtual node."
  type        = string
}
variable "listener" {
  description = "(Optional) Listeners from which the virtual node is expected to receive inbound traffic."
  type        = string
  default     = ""
}
variable "subject_alternative_names" {
  description = "(Optional) SANs for a TLS validation context."
  type        = string
  default     = ""
}
variable "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  type        = string
}
variable "aws_cloud_map" {
  description = "(Optional) Any AWS Cloud Map information for the virtual node."
  type        = string
  default     = ""
}
variable "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  type        = string
}
variable "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual node."
  type        = string
  default     = ""
}
variable "max_ejection_percent" {
  description = "(Required) Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.\nMinimum value of 0. Maximum value of 100."
  type        = string
}
variable "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  type        = string
  default     = ""
}
variable "namespace_name" {
  description = "aws_service_discovery_http_namespace resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length."
  type        = string
}
variable "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  type        = string
}
variable "service_name" {
  description = "(Required) Name of the AWS Cloud Map service to use. Use the aws_service_discovery_service resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.The dns object supports the following:"
  type        = string
}
variable "created_date" {
  description = "Creation date of the virtual node."
  type        = string
}
variable "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  type        = string
  default     = ""
}
variable "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
  default     = ""
}
variable "spec" {
  description = "(Required) Virtual node specification to apply."
  type        = string
}
variable "virtual_service" {
  description = "(Required) Virtual service to use as a backend for a virtual node.The virtual_service object supports the following:"
  type        = string
}
variable "attributes" {
  description = "(Optional) String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned."
  type        = string
  default     = ""
}
variable "backend_defaults" {
  description = "(Optional) Defaults for backends."
  type        = string
  default     = ""
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
variable "max_server_errors" {
  description = "(Required) Number of consecutive 5xx errors required for ejection. Minimum value of 1.The base_ejection_duration and interval objects support the following:"
  type        = string
}
variable "secret_name" {
  description = "(Required) Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "service_discovery" {
  description = "(Optional) Service discovery information for the virtual node.The backend object supports the following:"
  type        = string
  default     = ""
}
variable "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  type        = string
}
variable "backend" {
  description = "(Optional) Backends to which the virtual node is expected to send outbound traffic."
  type        = string
  default     = ""
}
variable "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  type        = string
}
variable "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  type        = string
  default     = ""
}
variable "grpc" {
  description = "(Optional) Timeouts for gRPC listeners."
  type        = string
  default     = ""
}
variable "hostname" {
  description = "(Required) DNS host name for your virtual node.The port_mapping object supports the following:"
  type        = string
}
variable "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The tcp connection pool object supports the following:"
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  type        = string
  default     = ""
}
variable "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  type        = string
  default     = ""
}
variable "client_policy" {
  description = "(Optional) Default client policy for virtual service backends. See above for details.The listener object supports the following:"
  type        = string
  default     = ""
}
variable "dns" {
  description = "(Optional) DNS service name for the virtual node.The aws_cloud_map object supports the following:"
  type        = string
  default     = ""
}
variable "interval" {
  description = "(Required) Time interval between ejection sweep analysis."
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the virtual node."
  type        = string
}
variable "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  type        = string
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length."
  type        = string
}
variable "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  type        = string
}
variable "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The outlier_detection object supports the following:"
  type        = string
  default     = ""
}
variable "timeout" {
  description = "(Optional) Timeouts for different protocols."
  type        = string
  default     = ""
}
variable "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy."
  type        = string
}
variable "arn" {
  description = "ARN of the virtual node."
  type        = string
}
variable "base_ejection_duration" {
  description = "(Required) Base amount of time for which a host is ejected."
  type        = string
}
variable "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  type        = string
  default     = ""
}
variable "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  type        = string
  default     = ""
}
variable "unit" {
  description = "(Required) Unit of time. Valid values: ms, s."
  type        = string
}
variable "certificate" {
  description = "(Required) Listener's TLS certificate."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "value" {
  description = "(Required) Number of time units. Minimum value of 0.The tls object supports the following:"
  type        = string
}
variable "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  type        = string
  default     = ""
}
variable "http2" {
  description = "(Optional) Timeouts for HTTP2 listeners."
  type        = string
  default     = ""
}
variable "tcp" {
  description = "(Optional) Timeouts for TCP listeners.The grpc timeout object supports the following:"
  type        = string
  default     = ""
}
variable "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
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
output "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.connection_pool
}
output "http2" {
  description = "(Optional) Timeouts for HTTP2 listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.http2
}
output "tcp" {
  description = "(Optional) Timeouts for TCP listeners.The grpc timeout object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tcp
}
output "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tls
}
output "name" {
  description = "(Required) Name to use for the virtual node. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.name
}
output "outlier_detection" {
  description = "(Optional) Outlier detection information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.outlier_detection
}
output "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, tcp and grpc."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.protocol
}
output "virtual_service_name" {
  description = "(Required) Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.The client_policy object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.virtual_service_name
}
output "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.port_mapping
}
output "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.exact
}
output "http" {
  description = "(Optional) Timeouts for HTTP listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.http
}
output "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.The idle object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.idle
}
output "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mode
}
output "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.per_request
}
output "access_log" {
  description = "(Optional) Access log configuration for a virtual node.The access_log object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.access_log
}
output "id" {
  description = "ID of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.id
}
output "listener" {
  description = "(Optional) Listeners from which the virtual node is expected to receive inbound traffic."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.listener
}
output "namespace_name" {
  description = "aws_service_discovery_http_namespace resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.namespace_name
}
output "subject_alternative_names" {
  description = "(Optional) SANs for a TLS validation context."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.subject_alternative_names
}
output "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.trust
}
output "aws_cloud_map" {
  description = "(Optional) Any AWS Cloud Map information for the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.aws_cloud_map
}
output "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_arn
}
output "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.logging
}
output "max_ejection_percent" {
  description = "(Required) Maximum percentage of hosts in load balancing pool for upstream service that can be ejected. Will eject at least one host regardless of the value.\nMinimum value of 0. Maximum value of 100."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_ejection_percent
}
output "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_pending_requests
}
output "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.interval_millis
}
output "service_name" {
  description = "(Required) Name of the AWS Cloud Map service to use. Use the aws_service_discovery_service resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.The dns object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.service_name
}
output "created_date" {
  description = "Creation date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.created_date
}
output "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.file
}
output "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.acm
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tags
}
output "secret_name" {
  description = "(Required) Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.secret_name
}
output "spec" {
  description = "(Required) Virtual node specification to apply."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.spec
}
output "virtual_service" {
  description = "(Required) Virtual service to use as a backend for a virtual node.The virtual_service object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.virtual_service
}
output "attributes" {
  description = "(Optional) String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.attributes
}
output "backend_defaults" {
  description = "(Optional) Defaults for backends."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.backend_defaults
}
output "health_check" {
  description = "(Optional) Health check information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.health_check
}
output "healthy_threshold" {
  description = "(Required) Number of consecutive successful health checks that must occur before declaring listener healthy."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.healthy_threshold
}
output "max_server_errors" {
  description = "(Required) Number of consecutive 5xx errors required for ejection. Minimum value of 1.The base_ejection_duration and interval objects support the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_server_errors
}
output "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.private_key
}
output "service_discovery" {
  description = "(Optional) Service discovery information for the virtual node.The backend object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.service_discovery
}
output "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.timeout_millis
}
output "backend" {
  description = "(Optional) Backends to which the virtual node is expected to send outbound traffic."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.backend
}
output "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_authority_arns
}
output "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.ports
}
output "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.validation
}
output "grpc" {
  description = "(Optional) Timeouts for gRPC listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.grpc
}
output "hostname" {
  description = "(Required) DNS host name for your virtual node.The port_mapping object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.hostname
}
output "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The tcp connection pool object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_requests
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mesh_owner
}
output "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.path
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mesh_name
}
output "client_policy" {
  description = "(Optional) Default client policy for virtual service backends. See above for details.The listener object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.client_policy
}
output "dns" {
  description = "(Optional) DNS service name for the virtual node.The aws_cloud_map object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.dns
}
output "interval" {
  description = "(Required) Time interval between ejection sweep analysis."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.interval
}
output "last_updated_date" {
  description = "Last update date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.last_updated_date
}
output "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.match
}
output "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_chain
}
output "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_connections
}
output "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The outlier_detection object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.port
}
output "timeout" {
  description = "(Optional) Timeouts for different protocols."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.timeout
}
output "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.unhealthy_threshold
}
output "arn" {
  description = "ARN of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.arn
}
output "base_ejection_duration" {
  description = "(Required) Base amount of time for which a host is ejected."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.base_ejection_duration
}
output "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.enforce
}
output "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.sds
}
output "unit" {
  description = "(Required) Unit of time. Valid values: ms, s."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.unit
}
output "certificate" {
  description = "(Required) Listener's TLS certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.resource_owner
}
output "value" {
  description = "(Required) Number of time units. Minimum value of 0.The tls object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.value
}
output "arn" {
  description = "ARN of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.arn
}
output "created_date" {
  description = "Creation date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.created_date
}
output "id" {
  description = "ID of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.id
}
output "last_updated_date" {
  description = "Last update date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.resource_owner
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tags_all
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
      "kind/name"                   = "aws_appmesh_virtual_node"
      "kind/version"                = "v0.1.0"
    }
  }
}
