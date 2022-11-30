resource "aws_globalaccelerator_listener" "aws_globalaccelerator_listener" {
  id              = var.id
  to_port         = var.to_port
  accelerator_arn = var.accelerator_arn
  client_affinity = var.client_affinity
  create          = var.create
  update          = var.update
  from_port       = var.from_port
  port_range      = var.port_range
  protocol        = var.protocol
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "from_port" {
  description = "(Optional) The first port in the range of ports, inclusive."
  type        = string
}
variable "port_range" {
  description = "(Optional) The list of port ranges for the connections from clients to the accelerator. Fields documented below.strongport_range supports the following attributes:"
  type        = string
}
variable "protocol" {
  description = "(Optional) The protocol for the connections from clients to the accelerator. Valid values are TCP, UDP."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "accelerator_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of your accelerator."
  type        = string
}
variable "client_affinity" {
  description = "(Optional) Direct all requests from a user to the same endpoint. Valid values are NONE, SOURCE_IP. Default: NONE. If NONE, Global Accelerator uses the \"five-tuple\" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If SOURCE_IP, Global Accelerator uses the \"two-tuple\" properties of source (client) IP address and destination IP address to select the hash value."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "id" {
  description = "The Amazon Resource Name (ARN) of the listener.TimeoutsConfiguration options:"
  type        = string
}
variable "to_port" {
  description = "(Optional) The last port in the range of ports, inclusive.In addition to all arguments above, the following attributes are exported:"
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
output "accelerator_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of your accelerator."
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.accelerator_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_affinity" {
  description = "(Optional) Direct all requests from a user to the same endpoint. Valid values are NONE, SOURCE_IP. Default: NONE. If NONE, Global Accelerator uses the \"five-tuple\" properties of source IP address, source port, destination IP address, destination port, and protocol to select the hash value. If SOURCE_IP, Global Accelerator uses the \"two-tuple\" properties of source (client) IP address and destination IP address to select the hash value."
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.client_affinity
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the listener.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "to_port" {
  description = "(Optional) The last port in the range of ports, inclusive.In addition to all arguments above, the following attributes are exported:"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.to_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "from_port" {
  description = "(Optional) The first port in the range of ports, inclusive."
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.from_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port_range" {
  description = "(Optional) The list of port ranges for the connections from clients to the accelerator. Fields documented below.strongport_range supports the following attributes:"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.port_range
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Optional) The protocol for the connections from clients to the accelerator. Valid values are TCP, UDP."
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the listener.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_listener.aws_globalaccelerator_listener.id
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
      "kind/name"                   = "aws_globalaccelerator_listener"
      "kind/version"                = "v0.1.0"
    }
  }
}
