resource "aws_globalaccelerator_endpoint_group" "aws_globalaccelerator_endpoint_group" {
  id                             = var.id
  listener_port                  = var.listener_port
  weight                         = var.weight
  arn                            = var.arn
  endpoint_port                  = var.endpoint_port
  health_check_port              = var.health_check_port
  health_check_interval_seconds  = var.health_check_interval_seconds
  health_check_path              = var.health_check_path
  health_check_protocol          = var.health_check_protocol
  listener_arn                   = var.listener_arn
  client_ip_preservation_enabled = var.client_ip_preservation_enabled
  create                         = var.create
  endpoint_configuration         = var.endpoint_configuration
  endpoint_id                    = var.endpoint_id
  traffic_dial_percentage        = var.traffic_dial_percentage
  update                         = var.update
  endpoint_group_region          = var.endpoint_group_region
  port_override                  = var.port_override
  threshold_count                = var.threshold_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "endpoint_id" {
  description = "(Optional) An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID."
  type        = string
  default     = ""
}
variable "health_check_interval_seconds" {
  description = "(Optional) The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30."
  type        = string
  default     = ""
}
variable "health_check_path" {
  description = "(Optional) If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (/). Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
  default     = ""
}
variable "health_check_protocol" {
  description = "(Optional) The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP."
  type        = string
  default     = ""
}
variable "listener_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the listener."
  type        = string
}
variable "client_ip_preservation_enabled" {
  description = "(Optional) Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. See the AWS documentation for more details. The default value is falsestrongNote: When client IP address preservation is enabled, the Global Accelerator service creates an EC2 Security Group in the VPC named GlobalAccelerator that must be deleted (potentially outside of Terraform) before the VPC will successfully delete. If this EC2 Security Group is not deleted, Terraform will retry the VPC deletion for a few minutes before reporting a DependencyViolation error. This cannot be resolved by re-running Terraform."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "endpoint_configuration" {
  description = "(Optional) The list of endpoint objects. Fields documented below."
  type        = string
  default     = ""
}
variable "traffic_dial_percentage" {
  description = "(Optional) The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "endpoint_group_region" {
  description = " (Optional) - The name of the AWS Region where the endpoint group is located."
  type        = string
  default     = ""
}
variable "port_override" {
  description = "(Optional) Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.strongendpoint_configuration supports the following attributes:"
  type        = string
  default     = ""
}
variable "threshold_count" {
  description = "(Optional) The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3."
  type        = string
  default     = ""
}
variable "id" {
  description = "The Amazon Resource Name (ARN) of the endpoint group."
  type        = string
}
variable "listener_port" {
  description = "(Required) The listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "weight" {
  description = "(Optional) The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify.strongport_override supports the following attributes:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the endpoint group.TimeoutsConfiguration options:"
  type        = string
}
variable "endpoint_port" {
  description = "(Required) The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance."
  type        = string
}
variable "health_check_port" {
  description = "(Optional) The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.\nTerraform will only perform drift detection of its value when present in a configuration."
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
output "arn" {
  description = "The Amazon Resource Name (ARN) of the endpoint group.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.arn
}
output "endpoint_port" {
  description = "(Required) The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint, such as the Application Load Balancer or Amazon EC2 instance."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.endpoint_port
}
output "health_check_port" {
  description = "(Optional) The port that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the first port in the list.\nTerraform will only perform drift detection of its value when present in a configuration."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.health_check_port
}
output "health_check_interval_seconds" {
  description = "(Optional) The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.health_check_interval_seconds
}
output "health_check_path" {
  description = "(Optional) If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The default value is slash (/). Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.health_check_path
}
output "health_check_protocol" {
  description = "(Optional) The protocol that AWS Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default value is TCP."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.health_check_protocol
}
output "listener_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the listener."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.listener_arn
}
output "client_ip_preservation_enabled" {
  description = "(Optional) Indicates whether client IP address preservation is enabled for an Application Load Balancer endpoint. See the AWS documentation for more details. The default value is falsestrongNote: When client IP address preservation is enabled, the Global Accelerator service creates an EC2 Security Group in the VPC named GlobalAccelerator that must be deleted (potentially outside of Terraform) before the VPC will successfully delete. If this EC2 Security Group is not deleted, Terraform will retry the VPC deletion for a few minutes before reporting a DependencyViolation error. This cannot be resolved by re-running Terraform."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.client_ip_preservation_enabled
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.create
}
output "endpoint_configuration" {
  description = "(Optional) The list of endpoint objects. Fields documented below."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.endpoint_configuration
}
output "endpoint_id" {
  description = "(Optional) An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address allocation ID."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.endpoint_id
}
output "traffic_dial_percentage" {
  description = "(Optional) The percentage of traffic to send to an AWS Region. Additional traffic is distributed to other endpoint groups for this listener. The default value is 100."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.traffic_dial_percentage
}
output "update" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.update
}
output "endpoint_group_region" {
  description = " (Optional) - The name of the AWS Region where the endpoint group is located."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.endpoint_group_region
}
output "port_override" {
  description = "(Optional) Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. Fields documented below.strongendpoint_configuration supports the following attributes:"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.port_override
}
output "threshold_count" {
  description = "(Optional) The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an unhealthy endpoint to healthy. The default value is 3."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.threshold_count
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the endpoint group."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.id
}
output "listener_port" {
  description = "(Required) The listener port that you want to map to a specific endpoint port. This is the port that user traffic arrives to the Global Accelerator on.In addition to all arguments above, the following attributes are exported:"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.listener_port
}
output "weight" {
  description = "(Optional) The weight associated with the endpoint. When you add weights to endpoints, you configure AWS Global Accelerator to route traffic based on proportions that you specify.strongport_override supports the following attributes:"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.weight
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the endpoint group.TimeoutsConfiguration options:"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.create
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.delete
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the endpoint group."
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.id
}
output "update" {
  description = "(Default 30m)"
  value       = aws_globalaccelerator_endpoint_group.aws_globalaccelerator_endpoint_group.update
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
      "kind/name"                   = "aws_globalaccelerator_endpoint_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
