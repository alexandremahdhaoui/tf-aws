resource "aws_cognito_user_pool_ui_customization" "aws_cognito_user_pool_ui_customization" {
  image_file    = var.image_file
  image_url     = var.image_url
  user_pool_id  = var.user_pool_id
  client_id     = var.client_id
  creation_date = var.creation_date
  css           = var.css
  css_version   = var.css_version
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "image_url" {
  description = "The logo image URL for the UI customization."
  type        = string
}
variable "user_pool_id" {
  description = " (Required) - The user pool ID for the user pool.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "client_id" {
  description = " (Optional) The client ID for the client app. Defaults to ALL. If ALL is specified, the css and/or image_file settings will be used for every client that has no UI customization set previously."
  type        = string
  default     = ""
}
variable "creation_date" {
  description = "The creation date in RFC3339 format for the UI customization."
  type        = string
}
variable "css" {
  description = " (Optional) - The CSS values in the UI customization, provided as a String. At least one of css or image_file is required."
  type        = string
  default     = ""
}
variable "css_version" {
  description = "The CSS version number."
  type        = string
}
variable "image_file" {
  description = " (Optional) - The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of css or image_file is required."
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
output "client_id" {
  description = " (Optional) The client ID for the client app. Defaults to ALL. If ALL is specified, the css and/or image_file settings will be used for every client that has no UI customization set previously."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.client_id
}
output "creation_date" {
  description = "The creation date in RFC3339 format for the UI customization."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.creation_date
}
output "css" {
  description = " (Optional) - The CSS values in the UI customization, provided as a String. At least one of css or image_file is required."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.css
}
output "css_version" {
  description = "The CSS version number."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.css_version
}
output "image_file" {
  description = " (Optional) - The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of css or image_file is required."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.image_file
}
output "image_url" {
  description = "The logo image URL for the UI customization."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.image_url
}
output "user_pool_id" {
  description = " (Required) - The user pool ID for the user pool.In addition to all arguments above, the following attributes are exported:"
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.user_pool_id
}
output "image_url" {
  description = "The logo image URL for the UI customization."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.image_url
}
output "last_modified_date" {
  description = "The last-modified date in RFC3339 format for the UI customization."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.last_modified_date
}
output "creation_date" {
  description = "The creation date in RFC3339 format for the UI customization."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.creation_date
}
output "css_version" {
  description = "The CSS version number."
  value       = aws_cognito_user_pool_ui_customization.aws_cognito_user_pool_ui_customization.css_version
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
      "kind/name"                   = "aws_cognito_user_pool_ui_customization"
      "kind/version"                = "v0.1.0"
    }
  }
}
