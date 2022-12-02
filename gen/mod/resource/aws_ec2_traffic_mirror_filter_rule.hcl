resource "aws_ec2_traffic_mirror_filter_rule" "aws_ec2_traffic_mirror_filter_rule" {
  traffic_direction        = var.traffic_direction
  description              = var.description
  destination_port_range   = var.destination_port_range
  from_port                = var.from_port
  protocol                 = var.protocol
  rule_number              = var.rule_number
  to_port                  = var.to_port
  traffic_mirror_filter_id = var.traffic_mirror_filter_id
  arn                      = var.arn
  destination_cidr_block   = var.destination_cidr_block
  rule_action              = var.rule_action
  source_cidr_block        = var.source_cidr_block
  source_port_range        = var.source_port_range
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "rule_action" {
  description = "(Required) Action to take (accept | reject) on the filtered traffic. Valid values are accept and reject"
  type        = string
}
variable "source_cidr_block" {
  description = "(Required) Source CIDR block to assign to the Traffic Mirror rule."
  type        = string
}
variable "source_port_range" {
  description = "(Optional) Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below"
  type        = string
  default     = ""
}
variable "to_port" {
  description = "(Optional) Ending port of the rangeIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "traffic_mirror_filter_id" {
  description = "  - (Required) ID of the traffic mirror filter to which this rule should be added"
  type        = string
}
variable "arn" {
  description = "ARN of the traffic mirror filter rule."
  type        = string
}
variable "destination_cidr_block" {
  description = "(Required) Destination CIDR block to assign to the Traffic Mirror rule."
  type        = string
}
variable "from_port" {
  description = "(Optional) Starting port of the range"
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Optional) Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see Protocol Numbers on the Internet Assigned Numbers Authority (IANA) website."
  type        = string
  default     = ""
}
variable "rule_number" {
  description = "(Required) Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number."
  type        = string
}
variable "traffic_direction" {
  description = "(Required) Direction of traffic to be captured. Valid values are ingress and egressTraffic mirror port range support following attributes:"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the traffic mirror filter rule."
  type        = string
  default     = ""
}
variable "destination_port_range" {
  description = "(Optional) Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below"
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
output "description" {
  description = "(Optional) Description of the traffic mirror filter rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.description
}
output "destination_port_range" {
  description = "(Optional) Destination port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.destination_port_range
}
output "from_port" {
  description = "(Optional) Starting port of the range"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.from_port
}
output "protocol" {
  description = "(Optional) Protocol number, for example 17 (UDP), to assign to the Traffic Mirror rule. For information about the protocol value, see Protocol Numbers on the Internet Assigned Numbers Authority (IANA) website."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.protocol
}
output "rule_number" {
  description = "(Required) Number of the Traffic Mirror rule. This number must be unique for each Traffic Mirror rule in a given direction. The rules are processed in ascending order by rule number."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.rule_number
}
output "traffic_direction" {
  description = "(Required) Direction of traffic to be captured. Valid values are ingress and egressTraffic mirror port range support following attributes:"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.traffic_direction
}
output "arn" {
  description = "ARN of the traffic mirror filter rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.arn
}
output "destination_cidr_block" {
  description = "(Required) Destination CIDR block to assign to the Traffic Mirror rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.destination_cidr_block
}
output "rule_action" {
  description = "(Required) Action to take (accept | reject) on the filtered traffic. Valid values are accept and reject"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.rule_action
}
output "source_cidr_block" {
  description = "(Required) Source CIDR block to assign to the Traffic Mirror rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.source_cidr_block
}
output "source_port_range" {
  description = "(Optional) Source port range. Supported only when the protocol is set to TCP(6) or UDP(17). See Traffic mirror port range documented below"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.source_port_range
}
output "to_port" {
  description = "(Optional) Ending port of the rangeIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.to_port
}
output "traffic_mirror_filter_id" {
  description = "  - (Required) ID of the traffic mirror filter to which this rule should be added"
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.traffic_mirror_filter_id
}
output "arn" {
  description = "ARN of the traffic mirror filter rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.arn
}
output "id" {
  description = "Name of the traffic mirror filter rule."
  value       = aws_ec2_traffic_mirror_filter_rule.aws_ec2_traffic_mirror_filter_rule.id
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
      "kind/name"                   = "aws_ec2_traffic_mirror_filter_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
