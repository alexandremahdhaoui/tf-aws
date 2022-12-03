resource "aws_lightsail_container_service" "aws_lightsail_container_service" {
  resource_type           = var.resource_type
  state                   = var.state
  is_active               = var.is_active
  is_disabled             = var.is_disabled
  power                   = var.power
  power_id                = var.power_id
  tags                    = var.tags
  update                  = var.update
  availability_zone       = var.availability_zone
  create                  = var.create
  public_domain_names     = var.public_domain_names
  scale                   = var.scale
  tags_all                = var.tags_all
  arn                     = var.arn
  private_domain_name     = var.private_domain_name
  name                    = var.name
  principal_arn           = var.principal_arn
  private_registry_access = var.private_registry_access
  region_name             = var.region_name
  url                     = var.url
  ecr_image_puller_role   = var.ecr_image_puller_role
  id                      = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "principal_arn" {
  description = ""
  type        = string
}
variable "private_registry_access" {
  description = "(Optional) An object to describe the configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See Private Registry Access below for more details."
  type        = string
  default     = ""
}
variable "region_name" {
  description = "The AWS Region name."
  type        = string
}
variable "url" {
  description = "The publicly accessible URL of the container service. If no public endpoint is specified in the\ncurrentDeployment, this URL returns a 404 response.TimeoutsConfiguration options:"
  type        = string
}
variable "ecr_image_puller_role" {
  description = "(Optional) Describes a request to configure an Amazon Lightsail container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See ECR Image Puller Role below for more details.ECR Image Puller RoleThe ecr_image_puller_role blocks supports the following arguments:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Same as name."
  type        = string
}
variable "name" {
  description = "(Required) The name for the container service. Names must be of length 1 to 63, and be\nunique within each AWS Region in your Lightsail account."
  type        = string
}
variable "resource_type" {
  description = "The Lightsail resource type of the container service (i.e., ContainerService)."
  type        = string
}
variable "state" {
  description = "The current state of the container service."
  type        = string
}
variable "is_disabled" {
  description = "(Optional) A Boolean value indicating whether the container service is disabled. Defaults to false."
  type        = string
  default     = ""
}
variable "power" {
  description = "(Required) The power specification for the container service. The power specifies the amount of memory,\nthe number of vCPUs, and the monthly price of each node of the container service.\nPossible values: nano, micro, small, medium, large, xlarge."
  type        = string
}
variable "power_id" {
  description = "The ID of the power of the container service."
  type        = string
}
variable "tags" {
  description = "default_tags configuration blockPrivate Registry AccessThe private_registry_access block supports the following arguments:"
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "availability_zone" {
  description = "The Availability Zone. Follows the format us-east-2a (case-sensitive)."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "is_active" {
  description = "(Optional) A Boolean value that indicates whether to activate the role. The default is false.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "scale" {
  description = ""
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider\ndefault_tags configuration block."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the container service."
  type        = string
}
variable "private_domain_name" {
  description = "The private domain name of the container service. The private domain name is accessible only\nby other resources within the default virtual private cloud (VPC) of your Lightsail account."
  type        = string
}
variable "public_domain_names" {
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
  description = "The Amazon Resource Name (ARN) of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.arn
}
output "private_domain_name" {
  description = "The private domain name of the container service. The private domain name is accessible only\nby other resources within the default virtual private cloud (VPC) of your Lightsail account."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.private_domain_name
}
output "public_domain_names" {
  description = ""
  value       = aws_lightsail_container_service.aws_lightsail_container_service.public_domain_names
}
output "scale" {
  description = ""
  value       = aws_lightsail_container_service.aws_lightsail_container_service.scale
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider\ndefault_tags configuration block."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.tags_all
}
output "region_name" {
  description = "The AWS Region name."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.region_name
}
output "url" {
  description = "The publicly accessible URL of the container service. If no public endpoint is specified in the\ncurrentDeployment, this URL returns a 404 response.TimeoutsConfiguration options:"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.url
}
output "ecr_image_puller_role" {
  description = "(Optional) Describes a request to configure an Amazon Lightsail container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See ECR Image Puller Role below for more details.ECR Image Puller RoleThe ecr_image_puller_role blocks supports the following arguments:"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.ecr_image_puller_role
}
output "id" {
  description = "Same as name."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.id
}
output "name" {
  description = "(Required) The name for the container service. Names must be of length 1 to 63, and be\nunique within each AWS Region in your Lightsail account."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.name
}
output "principal_arn" {
  description = ""
  value       = aws_lightsail_container_service.aws_lightsail_container_service.principal_arn
}
output "private_registry_access" {
  description = "(Optional) An object to describe the configuration for the container service to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See Private Registry Access below for more details."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.private_registry_access
}
output "resource_type" {
  description = "The Lightsail resource type of the container service (i.e., ContainerService)."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.resource_type
}
output "state" {
  description = "The current state of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.state
}
output "power_id" {
  description = "The ID of the power of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.power_id
}
output "tags" {
  description = "default_tags configuration blockPrivate Registry AccessThe private_registry_access block supports the following arguments:"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.tags
}
output "update" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.update
}
output "availability_zone" {
  description = "The Availability Zone. Follows the format us-east-2a (case-sensitive)."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.availability_zone
}
output "create" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.create
}
output "is_active" {
  description = "(Optional) A Boolean value that indicates whether to activate the role. The default is false.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.is_active
}
output "is_disabled" {
  description = "(Optional) A Boolean value indicating whether the container service is disabled. Defaults to false."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.is_disabled
}
output "power" {
  description = "(Required) The power specification for the container service. The power specifies the amount of memory,\nthe number of vCPUs, and the monthly price of each node of the container service.\nPossible values: nano, micro, small, medium, large, xlarge."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.power
}
output "state" {
  description = "The current state of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.state
}
output "url" {
  description = "The publicly accessible URL of the container service. If no public endpoint is specified in the\ncurrentDeployment, this URL returns a 404 response.TimeoutsConfiguration options:"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.url
}
output "availability_zone" {
  description = "The Availability Zone. Follows the format us-east-2a (case-sensitive)."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.availability_zone
}
output "id" {
  description = "Same as name."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.id
}
output "region_name" {
  description = "The AWS Region name."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.region_name
}
output "create" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.create
}
output "power_id" {
  description = "The ID of the power of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.power_id
}
output "principal_arn" {
  description = ""
  value       = aws_lightsail_container_service.aws_lightsail_container_service.principal_arn
}
output "update" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.update
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the container service."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.arn
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_lightsail_container_service.aws_lightsail_container_service.delete
}
output "private_domain_name" {
  description = "The private domain name of the container service. The private domain name is accessible only\nby other resources within the default virtual private cloud (VPC) of your Lightsail account."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.private_domain_name
}
output "resource_type" {
  description = "The Lightsail resource type of the container service (i.e., ContainerService)."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.resource_type
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider\ndefault_tags configuration block."
  value       = aws_lightsail_container_service.aws_lightsail_container_service.tags_all
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
      "kind/name"                   = "aws_lightsail_container_service"
      "kind/version"                = "v0.1.0"
    }
  }
}
