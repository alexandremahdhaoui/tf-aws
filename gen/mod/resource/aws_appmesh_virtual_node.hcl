resource "aws_appmesh_virtual_node" "aws_appmesh_virtual_node" {
  healthy_threshold          = var.healthy_threshold
  mesh_owner                 = var.mesh_owner
  port_mapping               = var.port_mapping
  resource_owner             = var.resource_owner
  unhealthy_threshold        = var.unhealthy_threshold
  idle                       = var.idle
  private_key                = var.private_key
  logging                    = var.logging
  per_request                = var.per_request
  ports                      = var.ports
  protocol                   = var.protocol
  virtual_service            = var.virtual_service
  service_discovery          = var.service_discovery
  tcp                        = var.tcp
  certificate_arn            = var.certificate_arn
  enforce                    = var.enforce
  match                      = var.match
  max_connections            = var.max_connections
  timeout                    = var.timeout
  arn                        = var.arn
  aws_cloud_map              = var.aws_cloud_map
  backend_defaults           = var.backend_defaults
  connection_pool            = var.connection_pool
  hostname                   = var.hostname
  namespace_name             = var.namespace_name
  exact                      = var.exact
  max_ejection_percent       = var.max_ejection_percent
  max_pending_requests       = var.max_pending_requests
  spec                       = var.spec
  tags                       = var.tags
  certificate_authority_arns = var.certificate_authority_arns
  grpc                       = var.grpc
  outlier_detection          = var.outlier_detection
  port                       = var.port
  sds                        = var.sds
  subject_alternative_names  = var.subject_alternative_names
  access_log                 = var.access_log
  client_policy              = var.client_policy
  last_updated_date          = var.last_updated_date
  mesh_name                  = var.mesh_name
  certificate_chain          = var.certificate_chain
  http                       = var.http
  max_server_errors          = var.max_server_errors
  path                       = var.path
  service_name               = var.service_name
  tls                        = var.tls
  mode                       = var.mode
  unit                       = var.unit
  attributes                 = var.attributes
  backend                    = var.backend
  base_ejection_duration     = var.base_ejection_duration
  created_date               = var.created_date
  file                       = var.file
  max_requests               = var.max_requests
  http2                      = var.http2
  interval_millis            = var.interval_millis
  listener                   = var.listener
  value                      = var.value
  acm                        = var.acm
  secret_name                = var.secret_name
  certificate                = var.certificate
  dns                        = var.dns
  interval                   = var.interval
  health_check               = var.health_check
  trust                      = var.trust
  virtual_service_name       = var.virtual_service_name
  id                         = var.id
  name                       = var.name
  timeout_millis             = var.timeout_millis
  validation                 = var.validation
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "spec" {
  description = "(Required) Virtual node specification to apply."
  type        = string
}
variable "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  type        = string
}
variable "max_ejection_percent" {
  description = "0. Maximum value of 100."
  type        = string
}
variable "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  type        = string
}
variable "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The outlier_detection object supports the following:"
  type        = string
}
variable "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  type        = string
}
variable "subject_alternative_names" {
  description = "(Optional) SANs for a TLS validation context."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
}
variable "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  type        = string
}
variable "grpc" {
  description = "(Optional) Timeouts for gRPC listeners."
  type        = string
}
variable "outlier_detection" {
  description = "(Optional) Outlier detection information for the listener."
  type        = string
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length."
  type        = string
}
variable "access_log" {
  description = "(Optional) Access log configuration for a virtual node.The access_log object supports the following:"
  type        = string
}
variable "client_policy" {
  description = "(Optional) Default client policy for virtual service backends. See above for details.The listener object supports the following:"
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the virtual node."
  type        = string
}
variable "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  type        = string
}
variable "service_name" {
  description = "(Required) Name of the AWS Cloud Map service to use. Use the aws_service_discovery_service resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.The dns object supports the following:"
  type        = string
}
variable "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
  type        = string
}
variable "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "http" {
  description = "(Optional) Timeouts for HTTP listeners."
  type        = string
}
variable "max_server_errors" {
  description = "(Required) Number of consecutive 5xx errors required for ejection. Minimum value of 1.The base_ejection_duration and interval objects support the following:"
  type        = string
}
variable "created_date" {
  description = "Creation date of the virtual node."
  type        = string
}
variable "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  type        = string
}
variable "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The tcp connection pool object supports the following:"
  type        = string
}
variable "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  type        = string
}
variable "unit" {
  description = "(Required) Unit of time. Valid values: ms, s."
  type        = string
}
variable "attributes" {
  description = "(Optional) String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned."
  type        = string
}
variable "backend" {
  description = "(Optional) Backends to which the virtual node is expected to send outbound traffic."
  type        = string
}
variable "base_ejection_duration" {
  description = "(Required) Base amount of time for which a host is ejected."
  type        = string
}
variable "value" {
  description = "(Required) Number of time units. Minimum value of 0.The tls object supports the following:"
  type        = string
}
variable "http2" {
  description = "(Optional) Timeouts for HTTP2 listeners."
  type        = string
}
variable "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  type        = string
}
variable "listener" {
  description = "(Optional) Listeners from which the virtual node is expected to receive inbound traffic."
  type        = string
}
variable "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  type        = string
}
variable "secret_name" {
  description = "(Required) Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "certificate" {
  description = "(Required) Listener's TLS certificate."
  type        = string
}
variable "dns" {
  description = "(Optional) DNS service name for the virtual node.The aws_cloud_map object supports the following:"
  type        = string
}
variable "interval" {
  description = "(Required) Time interval between ejection sweep analysis."
  type        = string
}
variable "health_check" {
  description = "(Optional) Health check information for the listener."
  type        = string
}
variable "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  type        = string
}
variable "virtual_service_name" {
  description = "(Required) Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.The client_policy object supports the following:"
  type        = string
}
variable "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  type        = string
}
variable "id" {
  description = "ID of the virtual node."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the virtual node. Must be between 1 and 255 characters in length."
  type        = string
}
variable "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy."
  type        = string
}
variable "healthy_threshold" {
  description = "(Required) Number of consecutive successful health checks that must occur before declaring listener healthy."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  type        = string
}
variable "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  type        = string
}
variable "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.The idle object supports the following:"
  type        = string
}
variable "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  type        = string
}
variable "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, tcp and grpc."
  type        = string
}
variable "virtual_service" {
  description = "(Required) Virtual service to use as a backend for a virtual node.The virtual_service object supports the following:"
  type        = string
}
variable "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual node."
  type        = string
}
variable "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  type        = string
}
variable "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  type        = string
}
variable "service_discovery" {
  description = "(Optional) Service discovery information for the virtual node.The backend object supports the following:"
  type        = string
}
variable "tcp" {
  description = "(Optional) Timeouts for TCP listeners.The grpc timeout object supports the following:"
  type        = string
}
variable "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  type        = string
}
variable "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  type        = string
}
variable "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  type        = string
}
variable "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  type        = string
}
variable "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  type        = string
}
variable "hostname" {
  description = "(Required) DNS host name for your virtual node.The port_mapping object supports the following:"
  type        = string
}
variable "namespace_name" {
  description = "(Required) Name of the AWS Cloud Map namespace to use.\nUse the aws_service_discovery_http_namespace resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length."
  type        = string
}
variable "timeout" {
  description = "(Optional) Timeouts for different protocols."
  type        = string
}
variable "arn" {
  description = "ARN of the virtual node."
  type        = string
}
variable "aws_cloud_map" {
  description = "(Optional) Any AWS Cloud Map information for the virtual node."
  type        = string
}
variable "backend_defaults" {
  description = "(Optional) Defaults for backends."
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
output "spec" {
  description = "(Required) Virtual node specification to apply."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.spec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "exact" {
  description = "(Required) Values sent must match the specified values exactly.The trust object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.exact
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_ejection_percent" {
  description = "0. Maximum value of 100."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_ejection_percent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_pending_requests" {
  description = "(Optional) Number of overflowing requests after max_connections Envoy will queue to upstream cluster. Minimum value of 1.The http2 connection pool object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_pending_requests
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "(Optional) Destination port for the health check request. This port must match the port defined in the port_mapping for the listener.The outlier_detection object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sds" {
  description = "(Optional) TLS validation context trust for a Secret Discovery Service certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.sds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subject_alternative_names" {
  description = "(Optional) SANs for a TLS validation context."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.subject_alternative_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_authority_arns" {
  description = "(Required) One or more ACM ARNs.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_authority_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grpc" {
  description = "(Optional) Timeouts for gRPC listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.grpc
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outlier_detection" {
  description = "(Optional) Outlier detection information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.outlier_detection
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mesh_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_log" {
  description = "(Optional) Access log configuration for a virtual node.The access_log object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.access_log
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_policy" {
  description = "(Optional) Default client policy for virtual service backends. See above for details.The listener object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.client_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Optional) Destination path for the health check request. This is only required if the specified protocol is http or http2."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "(Required) Name of the AWS Cloud Map service to use. Use the aws_service_discovery_service resource to configure a Cloud Map service. Must be between 1 and 1024 characters in length.The dns object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tls" {
  description = "(Optional) Transport Layer Security (TLS) properties for the listenerThe logging object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tls
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_chain" {
  description = "(Required) Certificate trust chain for a certificate stored on the file system of the mesh endpoint that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_chain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http" {
  description = "(Optional) Timeouts for HTTP listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.http
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_server_errors" {
  description = "(Required) Number of consecutive 5xx errors required for ejection. Minimum value of 1.The base_ejection_duration and interval objects support the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_server_errors
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file" {
  description = "(Optional) TLS validation context trust for a local file certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.file
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_requests" {
  description = "(Required) Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of 1.The tcp connection pool object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_requests
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mode" {
  description = "- (Required) Listener's TLS mode. Valid values: DISABLED, PERMISSIVE, STRICT."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unit" {
  description = "(Required) Unit of time. Valid values: ms, s."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "attributes" {
  description = "(Optional) String map that contains attributes with values that you can use to filter instances by any custom attribute that you specified when you registered the instance. Only instances that match all of the specified key/value pairs will be returned."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.attributes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "backend" {
  description = "(Optional) Backends to which the virtual node is expected to send outbound traffic."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.backend
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base_ejection_duration" {
  description = "(Required) Base amount of time for which a host is ejected."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.base_ejection_duration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) Number of time units. Minimum value of 0.The tls object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http2" {
  description = "(Optional) Timeouts for HTTP2 listeners."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.http2
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval_millis" {
  description = "- (Required) Time period in milliseconds between each health check execution."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.interval_millis
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "listener" {
  description = "(Optional) Listeners from which the virtual node is expected to receive inbound traffic."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.listener
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acm" {
  description = "(Optional) An AWS Certificate Manager (ACM) certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.acm
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secret_name" {
  description = "(Required) Name of the secret for a virtual node's Transport Layer Security (TLS) Secret Discovery Service validation context trust.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.secret_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate" {
  description = "(Required) Listener's TLS certificate."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dns" {
  description = "(Optional) DNS service name for the virtual node.The aws_cloud_map object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.dns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval" {
  description = "(Required) Time interval between ejection sweep analysis."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.interval
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check" {
  description = "(Optional) Health check information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.health_check
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "trust" {
  description = "(Required) TLS validation context trust.The subject_alternative_names object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.trust
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_service_name" {
  description = "(Required) Name of the virtual service that is acting as a virtual node backend. Must be between 1 and 255 characters in length.The client_policy object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.virtual_service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "validation" {
  description = "- (Optional) Listener's Transport Layer Security (TLS) validation context.The certificate object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.validation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name to use for the virtual node. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout_millis" {
  description = "(Required) Amount of time to wait when receiving a response from the health check, in milliseconds."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.timeout_millis
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unhealthy_threshold" {
  description = "(Required) Number of consecutive failed health checks that must occur before declaring a virtual node unhealthy."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.unhealthy_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "healthy_threshold" {
  description = "(Required) Number of consecutive successful health checks that must occur before declaring listener healthy."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.healthy_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.mesh_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port_mapping" {
  description = "(Required) Port mapping information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.port_mapping
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idle" {
  description = "(Optional) Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.The idle object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.idle
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "private_key" {
  description = "(Required) Private key for a certificate stored on the file system of the virtual node that the proxy is running on. Must be between 1 and 255 characters in length.The sds object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.private_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Required) Protocol for the health check request. Valid values are http, http2, tcp and grpc."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "virtual_service" {
  description = "(Required) Virtual service to use as a backend for a virtual node.The virtual_service object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.virtual_service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logging" {
  description = "(Optional) Inbound and outbound access logging information for the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.logging
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "per_request" {
  description = "(Optional) Per request timeout.The idle and per_request objects support the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.per_request
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ports" {
  description = "(Optional) One or more ports that the policy is enforced for."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.ports
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_discovery" {
  description = "(Optional) Service discovery information for the virtual node.The backend object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.service_discovery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tcp" {
  description = "(Optional) Timeouts for TCP listeners.The grpc timeout object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tcp
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_connections" {
  description = "(Required) Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of 1.The health_check object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.max_connections
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate_arn" {
  description = "(Required) ARN for the certificate.The file object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.certificate_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enforce" {
  description = "(Optional) Whether the policy is enforced. Default is true."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.enforce
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "match" {
  description = "(Required) Criteria for determining a SAN's match.The match object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.match
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "connection_pool" {
  description = "(Optional) Connection pool information for the listener."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.connection_pool
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hostname" {
  description = "(Required) DNS host name for your virtual node.The port_mapping object supports the following:"
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.hostname
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "namespace_name" {
  description = "(Required) Name of the AWS Cloud Map namespace to use.\nUse the aws_service_discovery_http_namespace resource to configure a Cloud Map namespace. Must be between 1 and 1024 characters in length."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.namespace_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout" {
  description = "(Optional) Timeouts for different protocols."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "aws_cloud_map" {
  description = "(Optional) Any AWS Cloud Map information for the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.aws_cloud_map
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "backend_defaults" {
  description = "(Optional) Defaults for backends."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.backend_defaults
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the virtual node."
  value       = aws_appmesh_virtual_node.aws_appmesh_virtual_node.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
