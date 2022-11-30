resource "aws_connect_user_hierarchy_group" "aws_connect_user_hierarchy_group" {
  instance_id        = var.instance_id
  tags_all           = var.tags_all
  arn                = var.arn
  parent_group_id    = var.parent_group_id
  level_five         = var.level_five
  level_four         = var.level_four
  level_one          = var.level_one
  level_three        = var.level_three
  level_two          = var.level_two
  name               = var.name
  tags               = var.tags
  hierarchy_group_id = var.hierarchy_group_id
  hierarchy_path     = var.hierarchy_path
  id                 = var.id
  level_id           = var.level_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = " The identifier of the hierarchy group."
  type        = string
}
variable "level_id" {
  description = "The identifier of the level in the hierarchy group."
  type        = string
}
variable "level_two" {
  description = "A block that defines the details of level two. The level block is documented below."
  type        = string
}
variable "name" {
  description = "(Required) The name of the user hierarchy group. Must not be more than 100 characters."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the hierarchy group. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "hierarchy_group_id" {
  description = "The identifier for the hierarchy group."
  type        = string
}
variable "hierarchy_path" {
  description = "A block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A hierarchy_path block supports the following attributes:"
  type        = string
}
variable "arn" {
  description = " The Amazon Resource Name (ARN) of the hierarchy group."
  type        = string
}
variable "parent_group_id" {
  description = "(Optional) The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null."
  type        = string
}
variable "level_one" {
  description = "A block that defines the details of level one. The level block is documented below."
  type        = string
}
variable "level_three" {
  description = "A block that defines the details of level three. The level block is documented below."
  type        = string
}
variable "level_five" {
  description = "A block that defines the details of level five. The level block is documented below.A level block supports the following attributes:"
  type        = string
}
variable "level_four" {
  description = "A block that defines the details of level four. The level block is documented below."
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
output "level_five" {
  description = "A block that defines the details of level five. The level block is documented below.A level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_five
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_four" {
  description = "A block that defines the details of level four. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_four
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_one" {
  description = "A block that defines the details of level one. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_one
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_three" {
  description = "A block that defines the details of level three. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_three
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_group_id" {
  description = "The identifier for the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_path" {
  description = "A block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = " The identifier of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_id" {
  description = "The identifier of the level in the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_two" {
  description = "A block that defines the details of level two. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_two
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the user hierarchy group. Must not be more than 100 characters."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Tags to apply to the hierarchy group. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A hierarchy_path block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " The Amazon Resource Name (ARN) of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "parent_group_id" {
  description = "(Optional) The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.parent_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_three" {
  description = "A block that defines the details of level three. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_three
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "The name of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.A hierarchy_path block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = " The Amazon Resource Name (ARN) of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_group_id" {
  description = "The identifier for the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_group_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "hierarchy_path" {
  description = "A block that contains information about the levels in the hierarchy group. The hierarchy_path block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.hierarchy_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_five" {
  description = "A block that defines the details of level five. The level block is documented below.A level block supports the following attributes:"
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_five
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_id" {
  description = "The identifier of the level in the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = " The identifier of the hierarchy group."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_four" {
  description = "A block that defines the details of level four. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_four
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_one" {
  description = "A block that defines the details of level one. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_one
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "level_two" {
  description = "A block that defines the details of level two. The level block is documented below."
  value       = aws_connect_user_hierarchy_group.aws_connect_user_hierarchy_group.level_two
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
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
      "kind/name"                   = "aws_connect_user_hierarchy_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
