resource "aws_imagebuilder_image" "aws_imagebuilder_image" {
  region                           = var.region
  tags_all                         = var.tags_all
  arn                              = var.arn
  distribution_configuration_arn   = var.distribution_configuration_arn
  enhanced_image_metadata_enabled  = var.enhanced_image_metadata_enabled
  image                            = var.image
  image_recipe_arn                 = var.image_recipe_arn
  name                             = var.name
  image_tests_configuration        = var.image_tests_configuration
  image_tests_enabled              = var.image_tests_enabled
  os_version                       = var.os_version
  description                      = var.description
  tags                             = var.tags
  timeout_minutes                  = var.timeout_minutes
  output_resources                 = var.output_resources
  platform                         = var.platform
  account_id                       = var.account_id
  amis                             = var.amis
  container_recipe_arn             = var.container_recipe_arn
  create                           = var.create
  date_created                     = var.date_created
  infrastructure_configuration_arn = var.infrastructure_configuration_arn
  version                          = var.version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = "Description of the AMI."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the Image Builder Image. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  type        = string
  default     = ""
}
variable "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "date_created" {
  description = "Date the image was created."
  type        = string
  default     = ""
}
variable "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  type        = string
}
variable "output_resources" {
  description = ""
  type        = string
  default     = ""
}
variable "platform" {
  description = "Platform of the image."
  type        = string
  default     = ""
}
variable "account_id" {
  description = "Account identifier of the AMI."
  type        = string
  default     = ""
}
variable "amis" {
  description = ""
  type        = string
  default     = ""
}
variable "container_recipe_arn" {
  description = "(Optional) - Amazon Resource Name (ARN) of the container recipe."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 60m)"
  type        = string
  default     = ""
}
variable "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the AMI."
  type        = string
  default     = ""
}
variable "region" {
  description = "Region of the AMI."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  type        = string
  default     = ""
}
variable "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  type        = string
  default     = ""
}
variable "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  type        = string
  default     = ""
}
variable "image" {
  description = "Identifier of the AMI."
  type        = string
  default     = ""
}
variable "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  type        = string
  default     = ""
}
variable "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  type        = string
  default     = ""
}
variable "os_version" {
  description = "Operating System version of the image."
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
output "tags" {
  description = "(Optional) Key-value map of resource tags for the Image Builder Image. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.image_tests_configuration"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags
}
output "timeout_minutes" {
  description = "(Optional) Number of minutes before image tests time out. Valid values are between 60 and 1440. Defaults to 720.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.timeout_minutes
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "amis" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "container_recipe_arn" {
  description = "(Optional) - Amazon Resource Name (ARN) of the container recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.container_recipe_arn
}
output "create" {
  description = "(Default 60m)"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.create
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "infrastructure_configuration_arn" {
  description = "(Required) Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.infrastructure_configuration_arn
}
output "output_resources" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.version
}
output "distribution_configuration_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the Image Builder Distribution Configuration."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.distribution_configuration_arn
}
output "enhanced_image_metadata_enabled" {
  description = "(Optional) Whether additional information about the image being created is collected. Defaults to true."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.enhanced_image_metadata_enabled
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
}
output "image_recipe_arn" {
  description = "(Optional) Amazon Resource Name (ARN) of the image recipe."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_recipe_arn
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.arn
}
output "image_tests_enabled" {
  description = "(Optional) Whether image tests are enabled. Defaults to true."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_enabled
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "image_tests_configuration" {
  description = "(Optional) Configuration block with image tests configuration. Detailed below."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image_tests_configuration
}
output "date_created" {
  description = "Date the image was created."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.date_created
}
output "region" {
  description = "Region of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.region
}
output "account_id" {
  description = "Account identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.account_id
}
output "create" {
  description = "(Default 60m)"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.create
}
output "output_resources" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.output_resources
}
output "amis" {
  description = ""
  value       = aws_imagebuilder_image.aws_imagebuilder_image.amis
}
output "description" {
  description = "Description of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.description
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.tags_all
}
output "name" {
  description = "Name of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.name
}
output "os_version" {
  description = "Operating System version of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.os_version
}
output "platform" {
  description = "Platform of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.platform
}
output "version" {
  description = "Version of the image.TimeoutsConfiguration options:"
  value       = aws_imagebuilder_image.aws_imagebuilder_image.version
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the image."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.arn
}
output "image" {
  description = "Identifier of the AMI."
  value       = aws_imagebuilder_image.aws_imagebuilder_image.image
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
      "kind/name"                   = "aws_imagebuilder_image"
      "kind/version"                = "v0.1.0"
    }
  }
}
