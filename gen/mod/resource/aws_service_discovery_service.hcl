resource "aws_service_discovery_service" "aws_service_discovery_service" {
  name                       = var.name
  routing_policy             = var.routing_policy
  type                       = var.type
  description                = var.description
  dns_config                 = var.dns_config
  failure_threshold          = var.failure_threshold
  resource_path              = var.resource_path
  tags                       = var.tags
  dns_records                = var.dns_records
  id                         = var.id
  arn                        = var.arn
  force_destroy              = var.force_destroy
  health_check_config        = var.health_check_config
  health_check_custom_config = var.health_check_custom_config
  namespace_id               = var.namespace_id
  ttl                        = var.ttl
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "health_check_config" {
  description = "(Optional) A complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  type        = string
  default     = ""
}
variable "health_check_custom_config" {
  description = "(Optional, ForceNew) A complex type that contains settings for ECS managed health checks."
  type        = string
}
variable "namespace_id" {
  description = "(Required, ForceNew) The ID of the namespace to use for DNS configuration."
  type        = string
}
variable "ttl" {
  description = "(Required) The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  type        = string
}
variable "arn" {
  description = "The ARN of the service."
  type        = string
}
variable "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable."
  type        = string
}
variable "type" {
  description = "(Optional, ForceNew) The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  type        = string
}
variable "name" {
  description = "(Required, ForceNew) The name of the service."
  type        = string
}
variable "routing_policy" {
  description = "(Optional) The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  type        = string
  default     = ""
}
variable "failure_threshold" {
  description = "(Optional, ForceNew) The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "resource_path" {
  description = "(Optional) The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.dns_config"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) The description of the service."
  type        = string
  default     = ""
}
variable "dns_config" {
  description = "(Optional) A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  type        = string
  default     = ""
}
variable "dns_records" {
  description = "(Required) An array that contains one DnsRecord object for each resource record set."
  type        = string
}
variable "id" {
  description = "The ID of the service."
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
output "ttl" {
  description = "(Required) The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.ttl
}
output "arn" {
  description = "The ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "force_destroy" {
  description = "(Optional, Default:false ) A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable."
  value       = aws_service_discovery_service.aws_service_discovery_service.force_destroy
}
output "health_check_config" {
  description = "(Optional) A complex type that contains settings for an optional health check. Only for Public DNS namespaces."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_config
}
output "health_check_custom_config" {
  description = "(Optional, ForceNew) A complex type that contains settings for ECS managed health checks."
  value       = aws_service_discovery_service.aws_service_discovery_service.health_check_custom_config
}
output "namespace_id" {
  description = "(Required, ForceNew) The ID of the namespace to use for DNS configuration."
  value       = aws_service_discovery_service.aws_service_discovery_service.namespace_id
}
output "name" {
  description = "(Required, ForceNew) The name of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.name
}
output "routing_policy" {
  description = "(Optional) The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTEDdns_records"
  value       = aws_service_discovery_service.aws_service_discovery_service.routing_policy
}
output "type" {
  description = "(Optional, ForceNew) The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCPhealth_check_custom_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.type
}
output "description" {
  description = "(Optional) The description of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.description
}
output "dns_config" {
  description = "(Optional) A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_config
}
output "failure_threshold" {
  description = "(Optional, ForceNew) The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.In addition to all arguments above, the following attributes are exported:"
  value       = aws_service_discovery_service.aws_service_discovery_service.failure_threshold
}
output "resource_path" {
  description = "(Optional) The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /."
  value       = aws_service_discovery_service.aws_service_discovery_service.resource_path
}
output "tags" {
  description = "(Optional) A map of tags to assign to the service. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.dns_config"
  value       = aws_service_discovery_service.aws_service_discovery_service.tags
}
output "dns_records" {
  description = "(Required) An array that contains one DnsRecord object for each resource record set."
  value       = aws_service_discovery_service.aws_service_discovery_service.dns_records
}
output "id" {
  description = "The ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "arn" {
  description = "The ARN of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.arn
}
output "id" {
  description = "The ID of the service."
  value       = aws_service_discovery_service.aws_service_discovery_service.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_service_discovery_service.aws_service_discovery_service.tags_all
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
      "kind/name"                   = "aws_service_discovery_service"
      "kind/version"                = "v0.1.0"
    }
  }
}
