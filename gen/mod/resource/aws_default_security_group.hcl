resource "aws_default_security_group" "aws_default_security_group" {
  security_groups  = var.security_groups
  tags_all         = var.tags_all
  arn              = var.arn
  description      = var.description
  id               = var.id
  owner_id         = var.owner_id
  vpc_id           = var.vpc_id
  cidr_blocks      = var.cidr_blocks
  ipv6_cidr_blocks = var.ipv6_cidr_blocks
  prefix_list_ids  = var.prefix_list_ids
  protocol         = var.protocol
  from_port        = var.from_port
  to_port          = var.to_port
  tags             = var.tags
  egress           = var.egress
  ingress          = var.ingress
  name             = var.name
  self             = var.self
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is icmp)"
  type        = string
}
variable "to_port" {
  description = "(Required) End range port (or ICMP code if protocol is icmp).In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "egress" {
  description = "(Optional, VPC only) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "ingress" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the security group."
  type        = string
  default     = ""
}
variable "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this egress rule."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the security group."
  type        = string
  default     = ""
}
variable "description" {
  description = "Description of the security group."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the security group."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "Owner ID."
  type        = string
  default     = ""
}
variable "security_groups" {
  description = "(Optional) List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID."
  type        = string
  default     = ""
}
variable "cidr_blocks" {
  description = "(Optional) List of CIDR blocks."
  type        = string
  default     = ""
}
variable "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks."
  type        = string
  default     = ""
}
variable "prefix_list_ids" {
  description = "(Optional) List of prefix list IDs (for allowing access to VPC endpoints)"
  type        = string
  default     = ""
}
variable "protocol" {
  description = "(Required) Protocol. If you select a protocol of \"-1\" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number."
  type        = string
}
variable "vpc_id" {
  description = "(Optional, Forces new resource) VPC ID. strongNote that changing the vpc_id will emnot restore any default security group rules that were modified, added, or removed. It will be left in its current state.egress and ingressBoth arguments are processed in attribute-as-blocks mode.Both egress and ingress objects have the same arguments."
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
output "to_port" {
  description = "(Required) End range port (or ICMP code if protocol is icmp).In addition to all arguments above, the following attributes are exported:"
  value       = aws_default_security_group.aws_default_security_group.to_port
}
output "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is icmp)"
  value       = aws_default_security_group.aws_default_security_group.from_port
}
output "ingress" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_default_security_group.aws_default_security_group.ingress
}
output "name" {
  description = "Name of the security group."
  value       = aws_default_security_group.aws_default_security_group.name
}
output "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this egress rule."
  value       = aws_default_security_group.aws_default_security_group.self
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_default_security_group.aws_default_security_group.tags
}
output "egress" {
  description = "(Optional, VPC only) Configuration block. Detailed below."
  value       = aws_default_security_group.aws_default_security_group.egress
}
output "description" {
  description = "Description of the security group."
  value       = aws_default_security_group.aws_default_security_group.description
}
output "id" {
  description = "ID of the security group."
  value       = aws_default_security_group.aws_default_security_group.id
}
output "owner_id" {
  description = "Owner ID."
  value       = aws_default_security_group.aws_default_security_group.owner_id
}
output "security_groups" {
  description = "(Optional) List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID."
  value       = aws_default_security_group.aws_default_security_group.security_groups
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_default_security_group.aws_default_security_group.tags_all
}
output "arn" {
  description = "ARN of the security group."
  value       = aws_default_security_group.aws_default_security_group.arn
}
output "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks."
  value       = aws_default_security_group.aws_default_security_group.ipv6_cidr_blocks
}
output "prefix_list_ids" {
  description = "(Optional) List of prefix list IDs (for allowing access to VPC endpoints)"
  value       = aws_default_security_group.aws_default_security_group.prefix_list_ids
}
output "protocol" {
  description = "(Required) Protocol. If you select a protocol of \"-1\" (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0. If not icmp, tcp, udp, or -1 use the protocol number."
  value       = aws_default_security_group.aws_default_security_group.protocol
}
output "vpc_id" {
  description = "(Optional, Forces new resource) VPC ID. strongNote that changing the vpc_id will emnot restore any default security group rules that were modified, added, or removed. It will be left in its current state.egress and ingressBoth arguments are processed in attribute-as-blocks mode.Both egress and ingress objects have the same arguments."
  value       = aws_default_security_group.aws_default_security_group.vpc_id
}
output "cidr_blocks" {
  description = "(Optional) List of CIDR blocks."
  value       = aws_default_security_group.aws_default_security_group.cidr_blocks
}
output "arn" {
  description = "ARN of the security group."
  value       = aws_default_security_group.aws_default_security_group.arn
}
output "description" {
  description = "Description of the security group."
  value       = aws_default_security_group.aws_default_security_group.description
}
output "id" {
  description = "ID of the security group."
  value       = aws_default_security_group.aws_default_security_group.id
}
output "name" {
  description = "Name of the security group."
  value       = aws_default_security_group.aws_default_security_group.name
}
output "owner_id" {
  description = "Owner ID."
  value       = aws_default_security_group.aws_default_security_group.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_default_security_group.aws_default_security_group.tags_all
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
      "kind/name"                   = "aws_default_security_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
