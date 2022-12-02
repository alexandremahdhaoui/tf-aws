resource "aws_security_group" "aws_security_group" {
  revoke_rules_on_delete = var.revoke_rules_on_delete
  tags                   = var.tags
  create                 = var.create
  description            = var.description
  id                     = var.id
  owner_id               = var.owner_id
  vpc_id                 = var.vpc_id
  delete                 = var.delete
  from_port              = var.from_port
  self                   = var.self
  tags_all               = var.tags_all
  prefix_list_ids        = var.prefix_list_ids
  protocol               = var.protocol
  arn                    = var.arn
  egress                 = var.egress
  ipv6_cidr_blocks       = var.ipv6_cidr_blocks
  name                   = var.name
  to_port                = var.to_port
  cidr_blocks            = var.cidr_blocks
  ingress                = var.ingress
  name_prefix            = var.name_prefix
  security_groups        = var.security_groups
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of this egress rule."
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
variable "revoke_rules_on_delete" {
  description = "(Optional) Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default false."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 15m)"
  type        = string
  default     = ""
}
variable "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is icmp)"
  type        = string
}
variable "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this egress rule.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional, Forces new resource) VPC ID.\nDefaults to the region's default VPC.ingressThis argument is processed in attribute-as-blocks mode."
  type        = string
}
variable "protocol" {
  description = "(Required) Protocol. If you select a protocol of -1 (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0.  The supported values are defined in the IpProtocol argument in the IpPermission API reference. This argument is normalized to a lowercase value to match the AWS API requirement when using Terraform 0.12.x and above. Please make sure that the value of the protocol is specified as lowercase when used with older version of Terraform to avoid issues during upgrade."
  type        = string
}
variable "arn" {
  description = "ARN of the security group."
  type        = string
  default     = ""
}
variable "egress" {
  description = "(Optional, VPC only) Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode."
  type        = string
}
variable "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional, Forces new resource) Name of the security group. If omitted, Terraform will assign a random, unique name."
  type        = string
}
variable "prefix_list_ids" {
  description = "(Optional) List of Prefix List IDs."
  type        = string
  default     = ""
}
variable "cidr_blocks" {
  description = "(Optional) List of CIDR blocks."
  type        = string
  default     = ""
}
variable "ingress" {
  description = "(Optional) Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode."
  type        = string
  default     = ""
}
variable "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}
variable "security_groups" {
  description = "(Optional) List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID."
  type        = string
  default     = ""
}
variable "to_port" {
  description = "(Required) End range port (or ICMP code if protocol is icmp)."
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
output "security_groups" {
  description = "(Optional) List of security groups. A group name can be used relative to the default VPC. Otherwise, group ID."
  value       = aws_security_group.aws_security_group.security_groups
}
output "to_port" {
  description = "(Required) End range port (or ICMP code if protocol is icmp)."
  value       = aws_security_group.aws_security_group.to_port
}
output "cidr_blocks" {
  description = "(Optional) List of CIDR blocks."
  value       = aws_security_group.aws_security_group.cidr_blocks
}
output "ingress" {
  description = "(Optional) Configuration block for ingress rules. Can be specified multiple times for each ingress rule. Each ingress block supports fields documented below. This argument is processed in attribute-as-blocks mode."
  value       = aws_security_group.aws_security_group.ingress
}
output "name_prefix" {
  description = "(Optional, Forces new resource) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_security_group.aws_security_group.name_prefix
}
output "owner_id" {
  description = "Owner ID."
  value       = aws_security_group.aws_security_group.owner_id
}
output "revoke_rules_on_delete" {
  description = "(Optional) Instruct Terraform to revoke all of the Security Groups attached ingress and egress rules before deleting the rule itself. This is normally not needed, however certain AWS services such as Elastic Map Reduce may automatically add required rules to security groups used with the service, and those rules may contain a cyclic dependency that prevent the security groups from being destroyed without removing the dependency first. Default false."
  value       = aws_security_group.aws_security_group.revoke_rules_on_delete
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_security_group.aws_security_group.tags
}
output "create" {
  description = "(Default 10m)"
  value       = aws_security_group.aws_security_group.create
}
output "description" {
  description = "(Optional) Description of this egress rule."
  value       = aws_security_group.aws_security_group.description
}
output "id" {
  description = "ID of the security group."
  value       = aws_security_group.aws_security_group.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_security_group.aws_security_group.tags_all
}
output "vpc_id" {
  description = "(Optional, Forces new resource) VPC ID.\nDefaults to the region's default VPC.ingressThis argument is processed in attribute-as-blocks mode."
  value       = aws_security_group.aws_security_group.vpc_id
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_security_group.aws_security_group.delete
}
output "from_port" {
  description = "(Required) Start port (or ICMP type number if protocol is icmp)"
  value       = aws_security_group.aws_security_group.from_port
}
output "self" {
  description = "(Optional) Whether the security group itself will be added as a source to this egress rule.In addition to all arguments above, the following attributes are exported:"
  value       = aws_security_group.aws_security_group.self
}
output "name" {
  description = "(Optional, Forces new resource) Name of the security group. If omitted, Terraform will assign a random, unique name."
  value       = aws_security_group.aws_security_group.name
}
output "prefix_list_ids" {
  description = "(Optional) List of Prefix List IDs."
  value       = aws_security_group.aws_security_group.prefix_list_ids
}
output "protocol" {
  description = "(Required) Protocol. If you select a protocol of -1 (semantically equivalent to all, which is not a valid value here), you must specify a from_port and to_port equal to 0.  The supported values are defined in the IpProtocol argument in the IpPermission API reference. This argument is normalized to a lowercase value to match the AWS API requirement when using Terraform 0.12.x and above. Please make sure that the value of the protocol is specified as lowercase when used with older version of Terraform to avoid issues during upgrade."
  value       = aws_security_group.aws_security_group.protocol
}
output "arn" {
  description = "ARN of the security group."
  value       = aws_security_group.aws_security_group.arn
}
output "egress" {
  description = "(Optional, VPC only) Configuration block for egress rules. Can be specified multiple times for each egress rule. Each egress block supports fields documented below. This argument is processed in attribute-as-blocks mode."
  value       = aws_security_group.aws_security_group.egress
}
output "ipv6_cidr_blocks" {
  description = "(Optional) List of IPv6 CIDR blocks."
  value       = aws_security_group.aws_security_group.ipv6_cidr_blocks
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_security_group.aws_security_group.tags_all
}
output "arn" {
  description = "ARN of the security group."
  value       = aws_security_group.aws_security_group.arn
}
output "create" {
  description = "(Default 10m)"
  value       = aws_security_group.aws_security_group.create
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_security_group.aws_security_group.delete
}
output "id" {
  description = "ID of the security group."
  value       = aws_security_group.aws_security_group.id
}
output "owner_id" {
  description = "Owner ID."
  value       = aws_security_group.aws_security_group.owner_id
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
      "kind/name"                   = "aws_security_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
