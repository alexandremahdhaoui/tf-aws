resource "aws_imagebuilder_image" "aws_imagebuilder_image" {
  region                           = var.region
  account_id                       = var.account_id
  description                      = var.description
  image_tests_configuration        = var.image_tests_configuration
  image_tests_enabled              = var.image_tests_enabled
  infrastructure_configuration_arn = var.infrastructure_configuration_arn
  tags                             = var.tags
  timeout_minutes                  = var.timeout_minutes
  version                          = var.version
  arn                              = var.arn
  container_recipe_arn             = var.container_recipe_arn
  image_recipe_arn                 = var.image_recipe_arn
  os_version                       = var.os_version
  output_resources                 = var.output_resources
  platform                         = var.platform
  amis                             = var.amis
  create                           = var.create
  name                             = var.name
  image                            = var.image
  tags_all                         = var.tags_all
  date_created                     = var.date_created
  distribution_configuration_arn   = var.distribution_configuration_arn
  enhanced_image_metadata_enabled  = var.enhanced_image_metadata_enabled
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "account_id" {
  description = "Account identifier of the AMI."
  type        = string
}
variable "description" {
  description = "Description of the AMI."
  type        = string
}
variable "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  type        = string
}
variable "region" {
  description = "Region of the AMI."
  type        = string
}
variable "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  type        = string
}
variable "container_recipe_arn" {
  description = "(Optional) - Amazon Resource Name (ARN) of the container recipe."
  type        = string
}
variable "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  type        = string
}
variable "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  type        = string
}
variable "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the Image Builder Image. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  type        = string
}
variable "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "amis" {
  description = ""
  type        = string
}
variable "create" {
  description = "(Default 60m)"
  type        = string
}
variable "name" {
  description = "Name of the AMI."
  type        = string
}
variable "os_version" {
  description = "Operating System version of the image."
  type        = string
}
variable "output_resources" {
  description = ""
  type        = string
}
variable "platform" {
  description = "Platform of the image."
  type        = string
}
variable "date_created" {
  description = "Date the image was created."
  type        = string
}
variable "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  type        = string
}
variable "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  type        = string
}
variable "image" {
  description = "Identifier of the AMI."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
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
output "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.distribution_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.enhanced_image_metadata_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_recipe_arn" {
  description = "(Optional) - Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.container_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_recipe_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.infrastructure_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the Image Builder Image. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.timeout_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_resources" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amis" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 60m)"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_resources" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amis" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags_all
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
      "kind/name"                   = "aws_imagebuilder_image"
      "kind/version"                = "v0.1.0"
    }
  }
}
