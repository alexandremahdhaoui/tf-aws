resource "aws_networkmanager_device" "aws_networkmanager_device" {
  arn               = var.arn
  serial_number     = var.serial_number
  type              = var.type
  address           = var.address
  location          = var.location
  longitude         = var.longitude
  tags              = var.tags
  vendor            = var.vendor
  zone              = var.zone
  description       = var.description
  model             = var.model
  subnet_arn        = var.subnet_arn
  site_id           = var.site_id
  aws_location      = var.aws_location
  global_network_id = var.global_network_id
  latitude          = var.latitude
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the device."
  type        = string
}
variable "serial_number" {
  description = "(Optional) The serial number of the device."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The type of device."
  type        = string
  default     = ""
}
variable "address" {
  description = "(Optional) The physical address."
  type        = string
  default     = ""
}
variable "location" {
  description = "(Optional) The location of the device. Documented below."
  type        = string
  default     = ""
}
variable "longitude" {
  description = "(Optional) The longitude.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A description of the device."
  type        = string
  default     = ""
}
variable "model" {
  description = "(Optional) The model of device."
  type        = string
  default     = ""
}
variable "subnet_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the subnet that the device is located in."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value tags for the device. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "vendor" {
  description = "(Optional) The vendor of the device.The aws_location object supports the following:"
  type        = string
  default     = ""
}
variable "zone" {
  description = "(Optional) The Zone that the device is located in. Specify the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.The location object supports the following:"
  type        = string
  default     = ""
}
variable "aws_location" {
  description = "(Optional) The AWS location of the device. Documented below."
  type        = string
  default     = ""
}
variable "global_network_id" {
  description = "(Required) The ID of the global network."
  type        = string
}
variable "latitude" {
  description = "(Optional) The latitude."
  type        = string
  default     = ""
}
variable "site_id" {
  description = "(Optional) The ID of the site."
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
output "zone" {
  description = "(Optional) The Zone that the device is located in. Specify the ID of an Availability Zone, Local Zone, Wavelength Zone, or an Outpost.The location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.zone
}
output "description" {
  description = "(Optional) A description of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.description
}
output "model" {
  description = "(Optional) The model of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.model
}
output "subnet_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the subnet that the device is located in."
  value       = aws_networkmanager_device.aws_networkmanager_device.subnet_arn
}
output "tags" {
  description = "(Optional) Key-value tags for the device. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_networkmanager_device.aws_networkmanager_device.tags
}
output "vendor" {
  description = "(Optional) The vendor of the device.The aws_location object supports the following:"
  value       = aws_networkmanager_device.aws_networkmanager_device.vendor
}
output "aws_location" {
  description = "(Optional) The AWS location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.aws_location
}
output "global_network_id" {
  description = "(Required) The ID of the global network."
  value       = aws_networkmanager_device.aws_networkmanager_device.global_network_id
}
output "latitude" {
  description = "(Optional) The latitude."
  value       = aws_networkmanager_device.aws_networkmanager_device.latitude
}
output "site_id" {
  description = "(Optional) The ID of the site."
  value       = aws_networkmanager_device.aws_networkmanager_device.site_id
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.arn
}
output "serial_number" {
  description = "(Optional) The serial number of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.serial_number
}
output "type" {
  description = "(Optional) The type of device."
  value       = aws_networkmanager_device.aws_networkmanager_device.type
}
output "address" {
  description = "(Optional) The physical address."
  value       = aws_networkmanager_device.aws_networkmanager_device.address
}
output "location" {
  description = "(Optional) The location of the device. Documented below."
  value       = aws_networkmanager_device.aws_networkmanager_device.location
}
output "longitude" {
  description = "(Optional) The longitude.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkmanager_device.aws_networkmanager_device.longitude
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_networkmanager_device.aws_networkmanager_device.tags_all
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the device."
  value       = aws_networkmanager_device.aws_networkmanager_device.arn
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
      "kind/name"                   = "aws_networkmanager_device"
      "kind/version"                = "v0.1.0"
    }
  }
}
