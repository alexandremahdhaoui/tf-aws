resource "aws_nat_gateway" "aws_nat_gateway" {
  public_ip            = var.public_ip
  subnet_id            = var.subnet_id
  tags                 = var.tags
  allocation_id        = var.allocation_id
  connectivity_type    = var.connectivity_type
  id                   = var.id
  network_interface_id = var.network_interface_id
  private_ip           = var.private_ip
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "connectivity_type" {
  description = "(Optional) Connectivity type for the gateway. Valid values are private and public. Defaults to public."
  type        = string
  default     = ""
}
variable "id" {
  description = "The ID of the NAT Gateway."
  type        = string
}
variable "network_interface_id" {
  description = "The ENI ID of the network interface created by the NAT gateway."
  type        = string
}
variable "private_ip" {
  description = "The private IP address of the NAT Gateway."
  type        = string
}
variable "public_ip" {
  description = "The public IP address of the NAT Gateway."
  type        = string
}
variable "subnet_id" {
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allocation_id" {
  description = "The Allocation ID of the Elastic IP address for the gateway."
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
output "subnet_id" {
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
  value       = aws_nat_gateway.aws_nat_gateway.subnet_id
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_nat_gateway.aws_nat_gateway.tags
}
output "allocation_id" {
  description = "The Allocation ID of the Elastic IP address for the gateway."
  value       = aws_nat_gateway.aws_nat_gateway.allocation_id
}
output "connectivity_type" {
  description = "(Optional) Connectivity type for the gateway. Valid values are private and public. Defaults to public."
  value       = aws_nat_gateway.aws_nat_gateway.connectivity_type
}
output "id" {
  description = "The ID of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.id
}
output "network_interface_id" {
  description = "The ENI ID of the network interface created by the NAT gateway."
  value       = aws_nat_gateway.aws_nat_gateway.network_interface_id
}
output "private_ip" {
  description = "The private IP address of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.private_ip
}
output "public_ip" {
  description = "The public IP address of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.public_ip
}
output "id" {
  description = "The ID of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.id
}
output "network_interface_id" {
  description = "The ENI ID of the network interface created by the NAT gateway."
  value       = aws_nat_gateway.aws_nat_gateway.network_interface_id
}
output "private_ip" {
  description = "The private IP address of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.private_ip
}
output "public_ip" {
  description = "The public IP address of the NAT Gateway."
  value       = aws_nat_gateway.aws_nat_gateway.public_ip
}
output "subnet_id" {
  description = "The Subnet ID of the subnet in which the NAT gateway is placed."
  value       = aws_nat_gateway.aws_nat_gateway.subnet_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_nat_gateway.aws_nat_gateway.tags_all
}
output "allocation_id" {
  description = "The Allocation ID of the Elastic IP address for the gateway."
  value       = aws_nat_gateway.aws_nat_gateway.allocation_id
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
      "kind/name"                   = "aws_nat_gateway"
      "kind/version"                = "v0.1.0"
    }
  }
}
