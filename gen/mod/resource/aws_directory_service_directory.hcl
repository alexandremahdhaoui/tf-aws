resource "aws_directory_service_directory" "aws_directory_service_directory" {
  edition                              = var.edition
  password                             = var.password
  security_group_id                    = var.security_group_id
  short_name                           = var.short_name
  alias                                = var.alias
  connect_ips                          = var.connect_ips
  create                               = var.create
  description                          = var.description
  tags                                 = var.tags
  type                                 = var.type
  dns_ip_addresses                     = var.dns_ip_addresses
  enable_sso                           = var.enable_sso
  name                                 = var.name
  size                                 = var.size
  subnet_ids                           = var.subnet_ids
  tags_all                             = var.tags_all
  customer_dns_ips                     = var.customer_dns_ips
  customer_username                    = var.customer_username
  desired_number_of_domain_controllers = var.desired_number_of_domain_controllers
  id                                   = var.id
  vpc_settings                         = var.vpc_settings
  access_url                           = var.access_url
  connect_settings                     = var.connect_settings
  update                               = var.update
  vpc_id                               = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dns_ip_addresses" {
  description = "A list of IP addresses of the DNS servers for the directory or connector."
  type        = string
}
variable "enable_sso" {
  description = "(Optional) Whether to enable single-sign on for the directory. Requires alias. Defaults to false."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The fully qualified name for the directory, such as corp.example.com"
  type        = string
}
variable "size" {
  description = "(Optional) (For SimpleAD and ADConnector types) The size of the directory (Small or Large are accepted values). Large by default."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongvpc_settings supports the following:"
  type        = string
  default     = ""
}
variable "type" {
  description = " (Optional) - The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values). Defaults to SimpleAD."
  type        = string
  default     = ""
}
variable "customer_dns_ips" {
  description = "(Required) The DNS IP addresses of the domain to connect to."
  type        = string
}
variable "customer_username" {
  description = "(Required) The username corresponding to the password provided."
  type        = string
}
variable "desired_number_of_domain_controllers" {
  description = "(Optional) The number of domain controllers desired in the directory. Minimum value of 2. Scaling of domain controllers is only supported for MicrosoftAD directories."
  type        = string
  default     = ""
}
variable "id" {
  description = "The directory identifier."
  type        = string
}
variable "subnet_ids" {
  description = "(Required) The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.connect_settings (for ADConnector) is also exported with the following attributes:"
  type        = string
}
variable "access_url" {
  description = "The access URL for the directory, such as http://alias.awsapps.com."
  type        = string
}
variable "connect_settings" {
  description = "(Required for ADConnector) Connector related information about the directory. Fields documented below."
  type        = string
}
variable "update" {
  description = "(Default 60 minutes) Used for directory update"
  type        = string
}
variable "vpc_id" {
  description = "(Required) The identifier of the VPC that the directory is in.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "vpc_settings" {
  description = "(Required for SimpleAD and MicrosoftAD) VPC related information about the directory. Fields documented below."
  type        = string
}
variable "short_name" {
  description = "(Optional) The short name of the directory, such as CORP."
  type        = string
  default     = ""
}
variable "alias" {
  description = "(Optional) The alias for the directory (must be unique amongst all aliases in AWS). Required for enable_sso."
  type        = string
  default     = ""
}
variable "connect_ips" {
  description = "The IP addresses of the AD Connector servers.Timeoutsaws_directory_service_directory provides the following Timeouts configuration options:"
  type        = string
}
variable "create" {
  description = "(Default 60 minutes) Used for directory creation"
  type        = string
}
variable "description" {
  description = "(Optional) A textual description for the directory."
  type        = string
  default     = ""
}
variable "edition" {
  description = "(Optional, for type MicrosoftAD only) The MicrosoftAD edition (Standard or Enterprise). Defaults to Enterprise."
  type        = string
}
variable "password" {
  description = "(Required) The password for the directory administrator or connector user."
  type        = string
}
variable "security_group_id" {
  description = "The ID of the security group created by the directory."
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
output "access_url" {
  description = "The access URL for the directory, such as http://alias.awsapps.com."
  value       = aws_directory_service_directory.aws_directory_service_directory.access_url
}
output "connect_settings" {
  description = "(Required for ADConnector) Connector related information about the directory. Fields documented below."
  value       = aws_directory_service_directory.aws_directory_service_directory.connect_settings
}
output "update" {
  description = "(Default 60 minutes) Used for directory update"
  value       = aws_directory_service_directory.aws_directory_service_directory.update
}
output "vpc_id" {
  description = "(Required) The identifier of the VPC that the directory is in.In addition to all arguments above, the following attributes are exported:"
  value       = aws_directory_service_directory.aws_directory_service_directory.vpc_id
}
output "vpc_settings" {
  description = "(Required for SimpleAD and MicrosoftAD) VPC related information about the directory. Fields documented below."
  value       = aws_directory_service_directory.aws_directory_service_directory.vpc_settings
}
output "short_name" {
  description = "(Optional) The short name of the directory, such as CORP."
  value       = aws_directory_service_directory.aws_directory_service_directory.short_name
}
output "alias" {
  description = "(Optional) The alias for the directory (must be unique amongst all aliases in AWS). Required for enable_sso."
  value       = aws_directory_service_directory.aws_directory_service_directory.alias
}
output "connect_ips" {
  description = "The IP addresses of the AD Connector servers.Timeoutsaws_directory_service_directory provides the following Timeouts configuration options:"
  value       = aws_directory_service_directory.aws_directory_service_directory.connect_ips
}
output "create" {
  description = "(Default 60 minutes) Used for directory creation"
  value       = aws_directory_service_directory.aws_directory_service_directory.create
}
output "description" {
  description = "(Optional) A textual description for the directory."
  value       = aws_directory_service_directory.aws_directory_service_directory.description
}
output "edition" {
  description = "(Optional, for type MicrosoftAD only) The MicrosoftAD edition (Standard or Enterprise). Defaults to Enterprise."
  value       = aws_directory_service_directory.aws_directory_service_directory.edition
}
output "password" {
  description = "(Required) The password for the directory administrator or connector user."
  value       = aws_directory_service_directory.aws_directory_service_directory.password
}
output "security_group_id" {
  description = "The ID of the security group created by the directory."
  value       = aws_directory_service_directory.aws_directory_service_directory.security_group_id
}
output "dns_ip_addresses" {
  description = "A list of IP addresses of the DNS servers for the directory or connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.dns_ip_addresses
}
output "enable_sso" {
  description = "(Optional) Whether to enable single-sign on for the directory. Requires alias. Defaults to false."
  value       = aws_directory_service_directory.aws_directory_service_directory.enable_sso
}
output "name" {
  description = "(Required) The fully qualified name for the directory, such as corp.example.com"
  value       = aws_directory_service_directory.aws_directory_service_directory.name
}
output "size" {
  description = "(Optional) (For SimpleAD and ADConnector types) The size of the directory (Small or Large are accepted values). Large by default."
  value       = aws_directory_service_directory.aws_directory_service_directory.size
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.strongvpc_settings supports the following:"
  value       = aws_directory_service_directory.aws_directory_service_directory.tags
}
output "type" {
  description = " (Optional) - The directory type (SimpleAD, ADConnector or MicrosoftAD are accepted values). Defaults to SimpleAD."
  value       = aws_directory_service_directory.aws_directory_service_directory.type
}
output "customer_dns_ips" {
  description = "(Required) The DNS IP addresses of the domain to connect to."
  value       = aws_directory_service_directory.aws_directory_service_directory.customer_dns_ips
}
output "customer_username" {
  description = "(Required) The username corresponding to the password provided."
  value       = aws_directory_service_directory.aws_directory_service_directory.customer_username
}
output "desired_number_of_domain_controllers" {
  description = "(Optional) The number of domain controllers desired in the directory. Minimum value of 2. Scaling of domain controllers is only supported for MicrosoftAD directories."
  value       = aws_directory_service_directory.aws_directory_service_directory.desired_number_of_domain_controllers
}
output "id" {
  description = "The directory identifier."
  value       = aws_directory_service_directory.aws_directory_service_directory.id
}
output "subnet_ids" {
  description = "(Required) The identifiers of the subnets for the directory servers (2 subnets in 2 different AZs)."
  value       = aws_directory_service_directory.aws_directory_service_directory.subnet_ids
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.connect_settings (for ADConnector) is also exported with the following attributes:"
  value       = aws_directory_service_directory.aws_directory_service_directory.tags_all
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.connect_settings (for ADConnector) is also exported with the following attributes:"
  value       = aws_directory_service_directory.aws_directory_service_directory.tags_all
}
output "update" {
  description = "(Default 60 minutes) Used for directory update"
  value       = aws_directory_service_directory.aws_directory_service_directory.update
}
output "access_url" {
  description = "The access URL for the directory, such as http://alias.awsapps.com."
  value       = aws_directory_service_directory.aws_directory_service_directory.access_url
}
output "connect_ips" {
  description = "The IP addresses of the AD Connector servers.Timeoutsaws_directory_service_directory provides the following Timeouts configuration options:"
  value       = aws_directory_service_directory.aws_directory_service_directory.connect_ips
}
output "id" {
  description = "The directory identifier."
  value       = aws_directory_service_directory.aws_directory_service_directory.id
}
output "security_group_id" {
  description = "The ID of the security group created by the directory."
  value       = aws_directory_service_directory.aws_directory_service_directory.security_group_id
}
output "create" {
  description = "(Default 60 minutes) Used for directory creation"
  value       = aws_directory_service_directory.aws_directory_service_directory.create
}
output "delete" {
  description = "(Default 60 minutes) Used for directory deletion"
  value       = aws_directory_service_directory.aws_directory_service_directory.delete
}
output "dns_ip_addresses" {
  description = "A list of IP addresses of the DNS servers for the directory or connector."
  value       = aws_directory_service_directory.aws_directory_service_directory.dns_ip_addresses
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
      "kind/name"                   = "aws_directory_service_directory"
      "kind/version"                = "v0.1.0"
    }
  }
}
