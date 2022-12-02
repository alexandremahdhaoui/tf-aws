resource "aws_opsworks_stack" "aws_opsworks_stack" {
  custom_cookbooks_source       = var.custom_cookbooks_source
  type                          = var.type
  vpc_id                        = var.vpc_id
  default_subnet_id             = var.default_subnet_id
  hostname_theme                = var.hostname_theme
  id                            = var.id
  username                      = var.username
  configuration_manager_name    = var.configuration_manager_name
  custom_json                   = var.custom_json
  service_role_arn              = var.service_role_arn
  default_ssh_key_name          = var.default_ssh_key_name
  password                      = var.password
  agent_version                 = var.agent_version
  berkshelf_version             = var.berkshelf_version
  color                         = var.color
  default_root_device_type      = var.default_root_device_type
  region                        = var.region
  url                           = var.url
  revision                      = var.revision
  configuration_manager_version = var.configuration_manager_version
  default_availability_zone     = var.default_availability_zone
  default_instance_profile_arn  = var.default_instance_profile_arn
  manage_berkshelf              = var.manage_berkshelf
  use_custom_cookbooks          = var.use_custom_cookbooks
  default_os                    = var.default_os
  name                          = var.name
  ssh_key                       = var.ssh_key
  tags                          = var.tags
  use_opsworks_security_groups  = var.use_opsworks_security_groups
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "configuration_manager_version" {
  description = "(Optional) Version of the configuration manager to use. Defaults to \"11.4\"."
  type        = string
  default     = ""
}
variable "default_availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default.\nCannot be set when vpc_id is set."
  type        = string
  default     = ""
}
variable "default_instance_profile_arn" {
  description = "(Required) The ARN of an IAM Instance Profile that created instances will have by default."
  type        = string
}
variable "manage_berkshelf" {
  description = "(Optional) Boolean value controlling whether Opsworks will run Berkshelf for this stack."
  type        = string
  default     = ""
}
variable "revision" {
  description = "(Optional) For sources that are version-aware, the revision to use.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "default_os" {
  description = "(Optional) Name of OS that will be installed on instances by default."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The name of the stack."
  type        = string
}
variable "ssh_key" {
  description = "(Optional) SSH key to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource.\nIf configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "use_custom_cookbooks" {
  description = "(Optional) Boolean value controlling whether the custom cookbook settings are enabled."
  type        = string
  default     = ""
}
variable "use_opsworks_security_groups" {
  description = "(Optional) Boolean value controlling whether the standard OpsWorks security groups apply to created instances."
  type        = string
  default     = ""
}
variable "custom_cookbooks_source" {
  description = "(Optional) When use_custom_cookbooks is set, provide this sub-object as described below."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) The type of source to use. For example, \"archive\"."
  type        = string
}
variable "default_subnet_id" {
  description = "(Optional) ID of the subnet in which instances will be created by default.\nRequired if vpc_id is set to a VPC other than the default VPC, and forbidden if it isn't."
  type        = string
  default     = ""
}
variable "hostname_theme" {
  description = "(Optional) Keyword representing the naming scheme that will be used for instance hostnames within this stack."
  type        = string
  default     = ""
}
variable "id" {
  description = "The id of the stack."
  type        = string
}
variable "username" {
  description = "(Optional) Username to use when authenticating to the source."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Optional) ID of the VPC that this stack belongs to.\nDefaults to the region's default VPC."
  type        = string
  default     = ""
}
variable "configuration_manager_name" {
  description = "(Optional) Name of the configuration manager to use. Defaults to \"Chef\"."
  type        = string
  default     = ""
}
variable "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the entire stack.The custom_cookbooks_source block supports the following arguments:"
  type        = string
  default     = ""
}
variable "service_role_arn" {
  description = "(Required) The ARN of an IAM role that the OpsWorks service will act as."
  type        = string
}
variable "password" {
  description = "(Optional) Password to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "agent_version" {
  description = "(Optional) If set to \"LATEST\", OpsWorks will automatically install the latest version."
  type        = string
  default     = ""
}
variable "berkshelf_version" {
  description = "(Optional) If manage_berkshelf is enabled, the version of Berkshelf to use."
  type        = string
  default     = ""
}
variable "color" {
  description = "(Optional) Color to paint next to the stack's resources in the OpsWorks console."
  type        = string
  default     = ""
}
variable "default_root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default."
  type        = string
  default     = ""
}
variable "default_ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  type        = string
  default     = ""
}
variable "region" {
  description = "(Required) The name of the region where the stack will exist."
  type        = string
}
variable "url" {
  description = "(Required) The URL where the cookbooks resource can be found."
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
output "agent_version" {
  description = "(Optional) If set to \"LATEST\", OpsWorks will automatically install the latest version."
  value       = aws_opsworks_stack.aws_opsworks_stack.agent_version
}
output "berkshelf_version" {
  description = "(Optional) If manage_berkshelf is enabled, the version of Berkshelf to use."
  value       = aws_opsworks_stack.aws_opsworks_stack.berkshelf_version
}
output "color" {
  description = "(Optional) Color to paint next to the stack's resources in the OpsWorks console."
  value       = aws_opsworks_stack.aws_opsworks_stack.color
}
output "default_root_device_type" {
  description = "(Optional) Name of the type of root device instances will have by default."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_root_device_type
}
output "default_ssh_key_name" {
  description = "(Optional) Name of the SSH keypair that instances will have by default."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_ssh_key_name
}
output "password" {
  description = "(Optional) Password to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  value       = aws_opsworks_stack.aws_opsworks_stack.password
}
output "region" {
  description = "(Required) The name of the region where the stack will exist."
  value       = aws_opsworks_stack.aws_opsworks_stack.region
}
output "url" {
  description = "(Required) The URL where the cookbooks resource can be found."
  value       = aws_opsworks_stack.aws_opsworks_stack.url
}
output "configuration_manager_version" {
  description = "(Optional) Version of the configuration manager to use. Defaults to \"11.4\"."
  value       = aws_opsworks_stack.aws_opsworks_stack.configuration_manager_version
}
output "default_availability_zone" {
  description = "(Optional) Name of the availability zone where instances will be created by default.\nCannot be set when vpc_id is set."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_availability_zone
}
output "default_instance_profile_arn" {
  description = "(Required) The ARN of an IAM Instance Profile that created instances will have by default."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_instance_profile_arn
}
output "manage_berkshelf" {
  description = "(Optional) Boolean value controlling whether Opsworks will run Berkshelf for this stack."
  value       = aws_opsworks_stack.aws_opsworks_stack.manage_berkshelf
}
output "revision" {
  description = "(Optional) For sources that are version-aware, the revision to use.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_stack.aws_opsworks_stack.revision
}
output "default_os" {
  description = "(Optional) Name of OS that will be installed on instances by default."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_os
}
output "name" {
  description = "(Required) The name of the stack."
  value       = aws_opsworks_stack.aws_opsworks_stack.name
}
output "ssh_key" {
  description = "(Optional) SSH key to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  value       = aws_opsworks_stack.aws_opsworks_stack.ssh_key
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource.\nIf configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_opsworks_stack.aws_opsworks_stack.tags
}
output "use_custom_cookbooks" {
  description = "(Optional) Boolean value controlling whether the custom cookbook settings are enabled."
  value       = aws_opsworks_stack.aws_opsworks_stack.use_custom_cookbooks
}
output "use_opsworks_security_groups" {
  description = "(Optional) Boolean value controlling whether the standard OpsWorks security groups apply to created instances."
  value       = aws_opsworks_stack.aws_opsworks_stack.use_opsworks_security_groups
}
output "custom_cookbooks_source" {
  description = "(Optional) When use_custom_cookbooks is set, provide this sub-object as described below."
  value       = aws_opsworks_stack.aws_opsworks_stack.custom_cookbooks_source
}
output "type" {
  description = "(Required) The type of source to use. For example, \"archive\"."
  value       = aws_opsworks_stack.aws_opsworks_stack.type
}
output "default_subnet_id" {
  description = "(Optional) ID of the subnet in which instances will be created by default.\nRequired if vpc_id is set to a VPC other than the default VPC, and forbidden if it isn't."
  value       = aws_opsworks_stack.aws_opsworks_stack.default_subnet_id
}
output "hostname_theme" {
  description = "(Optional) Keyword representing the naming scheme that will be used for instance hostnames within this stack."
  value       = aws_opsworks_stack.aws_opsworks_stack.hostname_theme
}
output "id" {
  description = "The id of the stack."
  value       = aws_opsworks_stack.aws_opsworks_stack.id
}
output "username" {
  description = "(Optional) Username to use when authenticating to the source."
  value       = aws_opsworks_stack.aws_opsworks_stack.username
}
output "vpc_id" {
  description = "(Optional) ID of the VPC that this stack belongs to.\nDefaults to the region's default VPC."
  value       = aws_opsworks_stack.aws_opsworks_stack.vpc_id
}
output "configuration_manager_name" {
  description = "(Optional) Name of the configuration manager to use. Defaults to \"Chef\"."
  value       = aws_opsworks_stack.aws_opsworks_stack.configuration_manager_name
}
output "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the entire stack.The custom_cookbooks_source block supports the following arguments:"
  value       = aws_opsworks_stack.aws_opsworks_stack.custom_json
}
output "service_role_arn" {
  description = "(Required) The ARN of an IAM role that the OpsWorks service will act as."
  value       = aws_opsworks_stack.aws_opsworks_stack.service_role_arn
}
output "id" {
  description = "The id of the stack."
  value       = aws_opsworks_stack.aws_opsworks_stack.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_opsworks_stack.aws_opsworks_stack.tags_all
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
      "kind/name"                   = "aws_opsworks_stack"
      "kind/version"                = "v0.1.0"
    }
  }
}
