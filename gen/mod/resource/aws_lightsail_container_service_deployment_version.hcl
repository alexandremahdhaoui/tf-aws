resource "aws_lightsail_container_service_deployment_version" "aws_lightsail_container_service_deployment_version" {
  container           = var.container
  container_port      = var.container_port
  created_at          = var.created_at
  environment         = var.environment
  health_check        = var.health_check
  image               = var.image
  interval_seconds    = var.interval_seconds
  service_name        = var.service_name
  state               = var.state
  command             = var.command
  container_name      = var.container_name
  id                  = var.id
  timeout_seconds     = var.timeout_seconds
  unhealthy_threshold = var.unhealthy_threshold
  path                = var.path
  ports               = var.ports
  success_codes       = var.success_codes
  version             = var.version
  healthy_threshold   = var.healthy_threshold
  public_endpoint     = var.public_endpoint
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "healthy_threshold" {
  description = "(Optional) The number of consecutive health checks successes required before moving the container to the Healthy state. Defaults to 2."
  type        = string
  default     = ""
}
variable "public_endpoint" {
  description = "(Optional) A configuration block that describes the settings of the public endpoint for the container service. Detailed below.containerThe container configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "container" {
  description = "(Required) A set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. Detailed below."
  type        = string
}
variable "container_port" {
  description = "(Required) The port of the container to which traffic is forwarded to."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the deployment was created."
  type        = string
}
variable "environment" {
  description = "(Optional) A key-value map of the environment variables of the container."
  type        = string
  default     = ""
}
variable "health_check" {
  description = "(Required) A configuration block that describes the health check configuration of the container. Detailed below.health_checkThe health_check configuration block supports the following arguments:"
  type        = string
}
variable "image" {
  description = "(Required) The name of the image used for the container. Container images sourced from your Lightsail container service, that are registered and stored on your service, start with a colon (:). For example, :container-service-1.mystaticwebsite.1. Container images sourced from a public registry like Docker Hub don't start with a colon. For example, nginx:latest or nginx."
  type        = string
}
variable "interval_seconds" {
  description = "(Optional) The approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. Defaults to 5."
  type        = string
  default     = ""
}
variable "service_name" {
  description = "(Required) The name for the container service."
  type        = string
}
variable "state" {
  description = "The current state of the container service."
  type        = string
}
variable "command" {
  description = "(Optional) The launch command for the container. A list of string."
  type        = string
  default     = ""
}
variable "container_name" {
  description = "(Required) The name of the container for the endpoint."
  type        = string
}
variable "id" {
  description = "The service_name and version separation by a slash (/)."
  type        = string
}
variable "timeout_seconds" {
  description = "(Optional) The amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. Defaults to 2."
  type        = string
  default     = ""
}
variable "unhealthy_threshold" {
  description = "(Optional) The number of consecutive health checks failures required before moving the container to the Unhealthy state. Defaults to 2."
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) The path on the container on which to perform the health check. Defaults to \"/\"."
  type        = string
  default     = ""
}
variable "ports" {
  description = "(Optional) A key-value map of the open firewall ports of the container. Valid values: HTTP, HTTPS, TCP, UDP.public_endpointThe public_endpoint configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "success_codes" {
  description = "(Optional) The HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. Defaults to \"200-499\".In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "version" {
  description = "The version number of the deployment.TimeoutsConfiguration options:"
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
output "timeout_seconds" {
  description = "(Optional) The amount of time, in seconds, during which no response means a failed health check. You can specify between 2 and 60 seconds. Defaults to 2."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.timeout_seconds
}
output "unhealthy_threshold" {
  description = "(Optional) The number of consecutive health checks failures required before moving the container to the Unhealthy state. Defaults to 2."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.unhealthy_threshold
}
output "command" {
  description = "(Optional) The launch command for the container. A list of string."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.command
}
output "container_name" {
  description = "(Required) The name of the container for the endpoint."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.container_name
}
output "id" {
  description = "The service_name and version separation by a slash (/)."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.id
}
output "version" {
  description = "The version number of the deployment.TimeoutsConfiguration options:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.version
}
output "path" {
  description = "(Optional) The path on the container on which to perform the health check. Defaults to \"/\"."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.path
}
output "ports" {
  description = "(Optional) A key-value map of the open firewall ports of the container. Valid values: HTTP, HTTPS, TCP, UDP.public_endpointThe public_endpoint configuration block supports the following arguments:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.ports
}
output "success_codes" {
  description = "(Optional) The HTTP codes to use when checking for a successful response from a container. You can specify values between 200 and 499. Defaults to \"200-499\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.success_codes
}
output "healthy_threshold" {
  description = "(Optional) The number of consecutive health checks successes required before moving the container to the Healthy state. Defaults to 2."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.healthy_threshold
}
output "public_endpoint" {
  description = "(Optional) A configuration block that describes the settings of the public endpoint for the container service. Detailed below.containerThe container configuration block supports the following arguments:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.public_endpoint
}
output "environment" {
  description = "(Optional) A key-value map of the environment variables of the container."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.environment
}
output "health_check" {
  description = "(Required) A configuration block that describes the health check configuration of the container. Detailed below.health_checkThe health_check configuration block supports the following arguments:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.health_check
}
output "image" {
  description = "(Required) The name of the image used for the container. Container images sourced from your Lightsail container service, that are registered and stored on your service, start with a colon (:). For example, :container-service-1.mystaticwebsite.1. Container images sourced from a public registry like Docker Hub don't start with a colon. For example, nginx:latest or nginx."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.image
}
output "interval_seconds" {
  description = "(Optional) The approximate interval, in seconds, between health checks of an individual container. You can specify between 5 and 300 seconds. Defaults to 5."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.interval_seconds
}
output "service_name" {
  description = "(Required) The name for the container service."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.service_name
}
output "container" {
  description = "(Required) A set of configuration blocks that describe the settings of the containers that will be launched on the container service. Maximum of 53. Detailed below."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.container
}
output "container_port" {
  description = "(Required) The port of the container to which traffic is forwarded to."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.container_port
}
output "created_at" {
  description = "The timestamp when the deployment was created."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.created_at
}
output "state" {
  description = "The current state of the container service."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.state
}
output "state" {
  description = "The current state of the container service."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.state
}
output "version" {
  description = "The version number of the deployment.TimeoutsConfiguration options:"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.version
}
output "create" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.create
}
output "created_at" {
  description = "The timestamp when the deployment was created."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.created_at
}
output "id" {
  description = "The service_name and version separation by a slash (/)."
  value       = aws_lightsail_container_service_deployment_version.aws_lightsail_container_service_deployment_version.id
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
      "kind/name"                   = "aws_lightsail_container_service_deployment_version"
      "kind/version"                = "v0.1.0"
    }
  }
}
