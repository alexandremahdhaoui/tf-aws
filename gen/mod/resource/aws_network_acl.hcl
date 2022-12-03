resource "aws_network_acl" "aws_network_acl" {
  action          = var.action
  from_port       = var.from_port
  id              = var.id
  ingress         = var.ingress
  protocol        = var.protocol
  egress          = var.egress
  icmp_type       = var.icmp_type
  rule_no         = var.rule_no
  vpc_id          = var.vpc_id
  to_port         = var.to_port
  icmp_code       = var.icmp_code
  ipv6_cidr_block = var.ipv6_cidr_block
  owner_id        = var.owner_id
  subnet_ids      = var.subnet_ids
  tags            = var.tags
  arn             = var.arn
  cidr_block      = var.cidr_block
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "action" {
  description = "(Required) The action to take."
  type        = string
}
variable "from_port" {
  description = "(Required) The from port to match."
  type        = string
}
variable "id" {
  description = "The ID of the network ACL"
  type        = string
}
variable "ingress" {
  description = "(Optional) Specifies an ingress rule. Parameters defined below.\nThis argument is processed in attribute-as-blocks mode."
  type        = string
  default     = ""
}
variable "protocol" {
  description = ""
  type        = string
}
variable "egress" {
  description = "(Optional) Specifies an egress rule. Parameters defined below.\nThis argument is processed in attribute-as-blocks mode."
  type        = string
  default     = ""
}
variable "icmp_type" {
  description = "(Optional) The ICMP type to be used. Default 0."
  type        = string
  default     = ""
}
variable "rule_no" {
  description = "(Required) The rule number. Used for ordering."
  type        = string
}
variable "vpc_id" {
  description = "(Required) The ID of the associated VPC."
  type        = string
}
variable "icmp_code" {
  description = "(Optional) The ICMP type code to be used. Default 0.~> Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtmlIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block."
  type        = string
  default     = ""
}
variable "owner_id" {
  description = "The ID of the AWS account that owns the network ACL."
  type        = string
}
variable "subnet_ids" {
  description = "(Optional) A list of Subnet IDs to apply the ACL to"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.egress and ingressBoth arguments are processed in attribute-as-blocks mode.Both egress and ingress support the following keys:"
  type        = string
  default     = ""
}
variable "to_port" {
  description = "(Required) The to port to match."
  type        = string
}
variable "arn" {
  description = "The ARN of the network ACL"
  type        = string
}
variable "cidr_block" {
  description = ""
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
output "arn" {
  description = "The ARN of the network ACL"
  value       = aws_network_acl.aws_network_acl.arn
}
output "cidr_block" {
  description = ""
  value       = aws_network_acl.aws_network_acl.cidr_block
}
output "action" {
  description = "(Required) The action to take."
  value       = aws_network_acl.aws_network_acl.action
}
output "from_port" {
  description = "(Required) The from port to match."
  value       = aws_network_acl.aws_network_acl.from_port
}
output "id" {
  description = "The ID of the network ACL"
  value       = aws_network_acl.aws_network_acl.id
}
output "ingress" {
  description = "(Optional) Specifies an ingress rule. Parameters defined below.\nThis argument is processed in attribute-as-blocks mode."
  value       = aws_network_acl.aws_network_acl.ingress
}
output "protocol" {
  description = ""
  value       = aws_network_acl.aws_network_acl.protocol
}
output "egress" {
  description = "(Optional) Specifies an egress rule. Parameters defined below.\nThis argument is processed in attribute-as-blocks mode."
  value       = aws_network_acl.aws_network_acl.egress
}
output "icmp_type" {
  description = "(Optional) The ICMP type to be used. Default 0."
  value       = aws_network_acl.aws_network_acl.icmp_type
}
output "rule_no" {
  description = "(Required) The rule number. Used for ordering."
  value       = aws_network_acl.aws_network_acl.rule_no
}
output "vpc_id" {
  description = "(Required) The ID of the associated VPC."
  value       = aws_network_acl.aws_network_acl.vpc_id
}
output "icmp_code" {
  description = "(Optional) The ICMP type code to be used. Default 0.~> Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtmlIn addition to all arguments above, the following attributes are exported:"
  value       = aws_network_acl.aws_network_acl.icmp_code
}
output "ipv6_cidr_block" {
  description = "(Optional) The IPv6 CIDR block."
  value       = aws_network_acl.aws_network_acl.ipv6_cidr_block
}
output "owner_id" {
  description = "The ID of the AWS account that owns the network ACL."
  value       = aws_network_acl.aws_network_acl.owner_id
}
output "subnet_ids" {
  description = "(Optional) A list of Subnet IDs to apply the ACL to"
  value       = aws_network_acl.aws_network_acl.subnet_ids
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.egress and ingressBoth arguments are processed in attribute-as-blocks mode.Both egress and ingress support the following keys:"
  value       = aws_network_acl.aws_network_acl.tags
}
output "to_port" {
  description = "(Required) The to port to match."
  value       = aws_network_acl.aws_network_acl.to_port
}
output "arn" {
  description = "The ARN of the network ACL"
  value       = aws_network_acl.aws_network_acl.arn
}
output "id" {
  description = "The ID of the network ACL"
  value       = aws_network_acl.aws_network_acl.id
}
output "owner_id" {
  description = "The ID of the AWS account that owns the network ACL."
  value       = aws_network_acl.aws_network_acl.owner_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_network_acl.aws_network_acl.tags_all
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
      "kind/name"                   = "aws_network_acl"
      "kind/version"                = "v0.1.0"
    }
  }
}
