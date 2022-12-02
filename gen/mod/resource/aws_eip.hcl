resource "aws_eip" "aws_eip" {
  customer_owned_ip         = var.customer_owned_ip
  instance                  = var.instance
  private_dns               = var.private_dns
  public_dns                = var.public_dns
  vpc                       = var.vpc
  allocation_id             = var.allocation_id
  associate_with_private_ip = var.associate_with_private_ip
  public_ip                 = var.public_ip
  read                      = var.read
  customer_owned_ipv4_pool  = var.customer_owned_ipv4_pool
  network_interface         = var.network_interface
  public_ipv4_pool          = var.public_ipv4_pool
  tags_all                  = var.tags_all
  association_id            = var.association_id
  private_ip                = var.private_ip
  domain                    = var.domain
  id                        = var.id
  network_border_group      = var.network_border_group
  tags                      = var.tags
  update                    = var.update
  address                   = var.address
  carrier_ip                = var.carrier_ip
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "network_border_group" {
  description = "(Optional) Location from which the IP address is advertised. Use this parameter to limit the address to this location."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "address" {
  description = "(Optional) IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs."
  type        = string
  default     = ""
}
variable "carrier_ip" {
  description = "Carrier IP address."
  type        = string
}
variable "domain" {
  description = "Indicates if this EIP is for use in VPC (vpc) or EC2-Classic (standard)."
  type        = string
}
variable "id" {
  description = "Contains the EIP allocation ID."
  type        = string
}
variable "private_dns" {
  description = "The Private DNS associated with the Elastic IP address (if in VPC)."
  type        = string
}
variable "public_dns" {
  description = "Public DNS associated with the Elastic IP address."
  type        = string
}
variable "vpc" {
  description = "(Optional) Boolean if the EIP is in a VPC or not.\nDefaults to true unless the region supports EC2-Classic.~> strongNOTE: You can specify either the instance ID or the network_interface ID, but not both. Including both will strongnot return an error from the AWS API, but will have undefined behavior. See the relevant AssociateAddress API Call for more information.~> strongNOTE: Specifying both public_ipv4_pool and address won't cause an error but addressIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "allocation_id" {
  description = "ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC."
  type        = string
}
variable "associate_with_private_ip" {
  description = "(Optional) User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address."
  type        = string
  default     = ""
}
variable "customer_owned_ip" {
  description = "Customer owned IP."
  type        = string
}
variable "instance" {
  description = "(Optional) EC2 instance ID."
  type        = string
  default     = ""
}
variable "customer_owned_ipv4_pool" {
  description = "(Optional) ID  of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide."
  type        = string
  default     = ""
}
variable "network_interface" {
  description = "(Optional) Network interface ID to associate with."
  type        = string
  default     = ""
}
variable "public_ip" {
  description = "Contains the public IP address."
  type        = string
}
variable "read" {
  description = "(Default 15m)"
  type        = string
}
variable "association_id" {
  description = "ID representing the association of the address with an instance in a VPC."
  type        = string
}
variable "private_ip" {
  description = "Contains the private IP address (if in VPC)."
  type        = string
}
variable "public_ipv4_pool" {
  description = "(Optional) EC2 IPv4 address pool identifier or amazon"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.~> strongNote: The resource computes the public_dns and private_dns attributes according to the VPC DNS Guide as they are not available with the EC2 API.TimeoutsConfiguration options:"
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
output "associate_with_private_ip" {
  description = "(Optional) User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address."
  value       = aws_eip.aws_eip.associate_with_private_ip
}
output "customer_owned_ip" {
  description = "Customer owned IP."
  value       = aws_eip.aws_eip.customer_owned_ip
}
output "instance" {
  description = "(Optional) EC2 instance ID."
  value       = aws_eip.aws_eip.instance
}
output "private_dns" {
  description = "The Private DNS associated with the Elastic IP address (if in VPC)."
  value       = aws_eip.aws_eip.private_dns
}
output "public_dns" {
  description = "Public DNS associated with the Elastic IP address."
  value       = aws_eip.aws_eip.public_dns
}
output "vpc" {
  description = "(Optional) Boolean if the EIP is in a VPC or not.\nDefaults to true unless the region supports EC2-Classic.~> strongNOTE: You can specify either the instance ID or the network_interface ID, but not both. Including both will strongnot return an error from the AWS API, but will have undefined behavior. See the relevant AssociateAddress API Call for more information.~> strongNOTE: Specifying both public_ipv4_pool and address won't cause an error but addressIn addition to all arguments above, the following attributes are exported:"
  value       = aws_eip.aws_eip.vpc
}
output "allocation_id" {
  description = "ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC."
  value       = aws_eip.aws_eip.allocation_id
}
output "network_interface" {
  description = "(Optional) Network interface ID to associate with."
  value       = aws_eip.aws_eip.network_interface
}
output "public_ip" {
  description = "Contains the public IP address."
  value       = aws_eip.aws_eip.public_ip
}
output "read" {
  description = "(Default 15m)"
  value       = aws_eip.aws_eip.read
}
output "customer_owned_ipv4_pool" {
  description = "(Optional) ID  of a customer-owned address pool. For more on customer owned IP addressed check out Customer-owned IP addresses guide."
  value       = aws_eip.aws_eip.customer_owned_ipv4_pool
}
output "private_ip" {
  description = "Contains the private IP address (if in VPC)."
  value       = aws_eip.aws_eip.private_ip
}
output "public_ipv4_pool" {
  description = "(Optional) EC2 IPv4 address pool identifier or amazon"
  value       = aws_eip.aws_eip.public_ipv4_pool
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.~> strongNote: The resource computes the public_dns and private_dns attributes according to the VPC DNS Guide as they are not available with the EC2 API.TimeoutsConfiguration options:"
  value       = aws_eip.aws_eip.tags_all
}
output "association_id" {
  description = "ID representing the association of the address with an instance in a VPC."
  value       = aws_eip.aws_eip.association_id
}
output "carrier_ip" {
  description = "Carrier IP address."
  value       = aws_eip.aws_eip.carrier_ip
}
output "domain" {
  description = "Indicates if this EIP is for use in VPC (vpc) or EC2-Classic (standard)."
  value       = aws_eip.aws_eip.domain
}
output "id" {
  description = "Contains the EIP allocation ID."
  value       = aws_eip.aws_eip.id
}
output "network_border_group" {
  description = "(Optional) Location from which the IP address is advertised. Use this parameter to limit the address to this location."
  value       = aws_eip.aws_eip.network_border_group
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_eip.aws_eip.tags
}
output "update" {
  description = "(Default 5m)"
  value       = aws_eip.aws_eip.update
}
output "address" {
  description = "(Optional) IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs."
  value       = aws_eip.aws_eip.address
}
output "association_id" {
  description = "ID representing the association of the address with an instance in a VPC."
  value       = aws_eip.aws_eip.association_id
}
output "private_dns" {
  description = "The Private DNS associated with the Elastic IP address (if in VPC)."
  value       = aws_eip.aws_eip.private_dns
}
output "private_ip" {
  description = "Contains the private IP address (if in VPC)."
  value       = aws_eip.aws_eip.private_ip
}
output "public_ip" {
  description = "Contains the public IP address."
  value       = aws_eip.aws_eip.public_ip
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.~> strongNote: The resource computes the public_dns and private_dns attributes according to the VPC DNS Guide as they are not available with the EC2 API.TimeoutsConfiguration options:"
  value       = aws_eip.aws_eip.tags_all
}
output "carrier_ip" {
  description = "Carrier IP address."
  value       = aws_eip.aws_eip.carrier_ip
}
output "customer_owned_ip" {
  description = "Customer owned IP."
  value       = aws_eip.aws_eip.customer_owned_ip
}
output "id" {
  description = "Contains the EIP allocation ID."
  value       = aws_eip.aws_eip.id
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_eip.aws_eip.delete
}
output "domain" {
  description = "Indicates if this EIP is for use in VPC (vpc) or EC2-Classic (standard)."
  value       = aws_eip.aws_eip.domain
}
output "public_dns" {
  description = "Public DNS associated with the Elastic IP address."
  value       = aws_eip.aws_eip.public_dns
}
output "read" {
  description = "(Default 15m)"
  value       = aws_eip.aws_eip.read
}
output "allocation_id" {
  description = "ID that AWS assigns to represent the allocation of the Elastic IP address for use with instances in a VPC."
  value       = aws_eip.aws_eip.allocation_id
}
output "update" {
  description = "(Default 5m)"
  value       = aws_eip.aws_eip.update
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
      "kind/name"                   = "aws_eip"
      "kind/version"                = "v0.1.0"
    }
  }
}
