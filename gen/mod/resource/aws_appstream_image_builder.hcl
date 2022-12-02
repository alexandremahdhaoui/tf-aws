resource "aws_appstream_image_builder" "aws_appstream_image_builder" {
  access_endpoint                        = var.access_endpoint
  arn                                    = var.arn
  enable_default_internet_access         = var.enable_default_internet_access
  vpc_config                             = var.vpc_config
  domain_join_info                       = var.domain_join_info
  endpoint_type                          = var.endpoint_type
  id                                     = var.id
  name                                   = var.name
  security_group_ids                     = var.security_group_ids
  state                                  = var.state
  subnet_ids                             = var.subnet_ids
  tags_all                               = var.tags_all
  directory_name                         = var.directory_name
  display_name                           = var.display_name
  iam_role_arn                           = var.iam_role_arn
  image_arn                              = var.image_arn
  instance_type                          = var.instance_type
  organizational_unit_distinguished_name = var.organizational_unit_distinguished_name
  tags                                   = var.tags
  vpce_id                                = var.vpce_id
  appstream_agent_version                = var.appstream_agent_version
  created_time                           = var.created_time
  description                            = var.description
  image_name                             = var.image_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "image_name" {
  description = "(Optional, Required if image_arn not provided) Name of the image used to create the image builder."
  type        = string
  default     = ""
}
variable "appstream_agent_version" {
  description = "(Optional) Version of the AppStream 2.0 agent to use for this image builder."
  type        = string
  default     = ""
}
variable "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the image builder was created."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description to display."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) Configuration block for the VPC configuration for the image builder. See below."
  type        = string
  default     = ""
}
variable "access_endpoint" {
  description = "(Optional) Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the appstream image builder."
  type        = string
  default     = ""
}
variable "enable_default_internet_access" {
  description = "(Optional) Enables or disables default internet access for the image builder."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Unique name for the image builder."
  type        = string
}
variable "security_group_ids" {
  description = "(Optional) Identifiers of the security groups for the image builder or image builder."
  type        = string
  default     = ""
}
variable "state" {
  description = "State of the image builder. Can be: PENDING, UPDATING_AGENT, RUNNING, STOPPING, STOPPED, REBOOTING, SNAPSHOTTING, DELETING, FAILED, UPDATING, PENDING_QUALIFICATION"
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Optional) Identifiers of the subnets to which a network interface is attached from the image builder instance or image builder instance.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "domain_join_info" {
  description = "(Optional) Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below."
  type        = string
  default     = ""
}
variable "endpoint_type" {
  description = "(Required) Type of interface endpoint."
  type        = string
}
variable "id" {
  description = "Name of the image builder."
  type        = string
  default     = ""
}
variable "image_arn" {
  description = "(Optional, Required if image_name not provided) ARN of the public, private, or shared image to use."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Required) Instance type to use when launching the image builder."
  type        = string
}
variable "organizational_unit_distinguished_name" {
  description = "(Optional) Distinguished name of the organizational unit for computer accounts.vpc_configThe vpc_config block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.access_endpointThe access_endpoint block supports the following arguments:"
  type        = string
  default     = ""
}
variable "vpce_id" {
  description = "(Optional) Identifier (ID) of the VPC in which the interface endpoint is used.domain_join_infoThe domain_join_info block supports the following arguments:"
  type        = string
  default     = ""
}
variable "directory_name" {
  description = "(Optional) Fully qualified name of the directory (for example, corp.example.com)."
  type        = string
  default     = ""
}
variable "display_name" {
  description = "(Optional) Human-readable friendly name for the AppStream image builder."
  type        = string
  default     = ""
}
variable "iam_role_arn" {
  description = "(Optional) ARN of the IAM role to apply to the image builder."
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
output "access_endpoint" {
  description = "(Optional) Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.access_endpoint
}
output "arn" {
  description = "ARN of the appstream image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.arn
}
output "enable_default_internet_access" {
  description = "(Optional) Enables or disables default internet access for the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.enable_default_internet_access
}
output "vpc_config" {
  description = "(Optional) Configuration block for the VPC configuration for the image builder. See below."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.vpc_config
}
output "state" {
  description = "State of the image builder. Can be: PENDING, UPDATING_AGENT, RUNNING, STOPPING, STOPPED, REBOOTING, SNAPSHOTTING, DELETING, FAILED, UPDATING, PENDING_QUALIFICATION"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.state
}
output "subnet_ids" {
  description = "(Optional) Identifiers of the subnets to which a network interface is attached from the image builder instance or image builder instance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.subnet_ids
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.tags_all
}
output "domain_join_info" {
  description = "(Optional) Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.domain_join_info
}
output "endpoint_type" {
  description = "(Required) Type of interface endpoint."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.endpoint_type
}
output "id" {
  description = "Name of the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.id
}
output "name" {
  description = "(Required) Unique name for the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.name
}
output "security_group_ids" {
  description = "(Optional) Identifiers of the security groups for the image builder or image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.security_group_ids
}
output "organizational_unit_distinguished_name" {
  description = "(Optional) Distinguished name of the organizational unit for computer accounts.vpc_configThe vpc_config block supports the following arguments:"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.organizational_unit_distinguished_name
}
output "tags" {
  description = "(Optional) Map of tags to assign to the instance. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.access_endpointThe access_endpoint block supports the following arguments:"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.tags
}
output "vpce_id" {
  description = "(Optional) Identifier (ID) of the VPC in which the interface endpoint is used.domain_join_infoThe domain_join_info block supports the following arguments:"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.vpce_id
}
output "directory_name" {
  description = "(Optional) Fully qualified name of the directory (for example, corp.example.com)."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.directory_name
}
output "display_name" {
  description = "(Optional) Human-readable friendly name for the AppStream image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.display_name
}
output "iam_role_arn" {
  description = "(Optional) ARN of the IAM role to apply to the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.iam_role_arn
}
output "image_arn" {
  description = "(Optional, Required if image_name not provided) ARN of the public, private, or shared image to use."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.image_arn
}
output "instance_type" {
  description = "(Required) Instance type to use when launching the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.instance_type
}
output "appstream_agent_version" {
  description = "(Optional) Version of the AppStream 2.0 agent to use for this image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.appstream_agent_version
}
output "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the image builder was created."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.created_time
}
output "description" {
  description = "(Optional) Description to display."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.description
}
output "image_name" {
  description = "(Optional, Required if image_arn not provided) Name of the image used to create the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.image_name
}
output "created_time" {
  description = " Date and time, in UTC and extended RFC 3339 format, when the image builder was created."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.created_time
}
output "id" {
  description = "Name of the image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.id
}
output "state" {
  description = "State of the image builder. Can be: PENDING, UPDATING_AGENT, RUNNING, STOPPING, STOPPED, REBOOTING, SNAPSHOTTING, DELETING, FAILED, UPDATING, PENDING_QUALIFICATION"
  value       = aws_appstream_image_builder.aws_appstream_image_builder.state
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.tags_all
}
output "arn" {
  description = "ARN of the appstream image builder."
  value       = aws_appstream_image_builder.aws_appstream_image_builder.arn
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
      "kind/name"                   = "aws_appstream_image_builder"
      "kind/version"                = "v0.1.0"
    }
  }
}
