resource "aws_imagebuilder_component" "aws_imagebuilder_component" {
  uri                   = var.uri
  version               = var.version
  arn                   = var.arn
  name                  = var.name
  supported_os_versions = var.supported_os_versions
  tags                  = var.tags
  description           = var.description
  data                  = var.data
  date_created          = var.date_created
  encrypted             = var.encrypted
  kms_key_id            = var.kms_key_id
  owner                 = var.owner
  platform              = var.platform
  tags_all              = var.tags_all
  change_description    = var.change_description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "platform" {
  description = "(Required) Platform of the component."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "change_description" {
  description = "(Optional) Change description of the component."
  type        = string
  default     = ""
}
variable "data" {
  description = "(Optional) Inline YAML string with data of the component. Exactly one of data and uri can be specified. Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
  default     = ""
}
variable "date_created" {
  description = "Date the component was created."
  type        = string
}
variable "encrypted" {
  description = "Encryption status of the component."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component."
  type        = string
  default     = ""
}
variable "owner" {
  description = "Owner of the component."
  type        = string
}
variable "uri" {
  description = "(Optional) S3 URI with data of the component. Exactly one of data and uri can be specified.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the component."
  type        = string
}
variable "version" {
  description = "(Required) Version of the component.The following attributes are optional:"
  type        = string
}
variable "description" {
  description = "(Optional) Description of the component."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the component."
  type        = string
}
variable "supported_os_versions" {
  description = "(Optional) Set of Operating Systems (OS) supported by the component."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags for the component. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "uri" {
  description = "(Optional) S3 URI with data of the component. Exactly one of data and uri can be specified.In addition to all arguments above, the following attributes are exported:"
  value       = aws_imagebuilder_component.aws_imagebuilder_component.uri
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.arn
}
output "version" {
  description = "(Required) Version of the component.The following attributes are optional:"
  value       = aws_imagebuilder_component.aws_imagebuilder_component.version
}
output "description" {
  description = "(Optional) Description of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.description
}
output "name" {
  description = "(Required) Name of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.name
}
output "supported_os_versions" {
  description = "(Optional) Set of Operating Systems (OS) supported by the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.supported_os_versions
}
output "tags" {
  description = "(Optional) Key-value map of resource tags for the component. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.tags
}
output "kms_key_id" {
  description = "(Optional) Amazon Resource Name (ARN) of the Key Management Service (KMS) Key used to encrypt the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.kms_key_id
}
output "owner" {
  description = "Owner of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.owner
}
output "platform" {
  description = "(Required) Platform of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.platform
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.tags_all
}
output "change_description" {
  description = "(Optional) Change description of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.change_description
}
output "data" {
  description = "(Optional) Inline YAML string with data of the component. Exactly one of data and uri can be specified. Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.data
}
output "date_created" {
  description = "Date the component was created."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.date_created
}
output "encrypted" {
  description = "Encryption status of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.encrypted
}
output "arn" {
  description = "(Required) Amazon Resource Name (ARN) of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.arn
}
output "date_created" {
  description = "Date the component was created."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.date_created
}
output "encrypted" {
  description = "Encryption status of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.encrypted
}
output "owner" {
  description = "Owner of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.owner
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.tags_all
}
output "type" {
  description = "Type of the component."
  value       = aws_imagebuilder_component.aws_imagebuilder_component.type
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
      "kind/name"                   = "aws_imagebuilder_component"
      "kind/version"                = "v0.1.0"
    }
  }
}
