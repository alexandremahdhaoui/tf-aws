resource "aws_glue_user_defined_function" "aws_glue_user_defined_function" {
  database_name = var.database_name
  id            = var.id
  name          = var.name
  owner_name    = var.owner_name
  resource_type = var.resource_type
  arn           = var.arn
  catalog_id    = var.catalog_id
  class_name    = var.class_name
  resource_uris = var.resource_uris
  uri           = var.uri
  owner_type    = var.owner_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "owner_type" {
  description = "(Required) The owner type. can be one of USER, ROLE, and GROUP."
  type        = string
}
variable "catalog_id" {
  description = "(Optional) ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID."
  type        = string
}
variable "class_name" {
  description = "(Required) The Java class that contains the function code."
  type        = string
}
variable "database_name" {
  description = "(Required) The name of the Database to create the Function."
  type        = string
}
variable "id" {
  description = "- The id of the Glue User Defined Function."
  type        = string
}
variable "name" {
  description = "(Required) The name of the function."
  type        = string
}
variable "owner_name" {
  description = "(Required) The owner of the function."
  type        = string
}
variable "resource_type" {
  description = "(Required) The type of the resource. can be one of JAR, FILE, and ARCHIVE."
  type        = string
}
variable "arn" {
  description = "- The ARN of the Glue User Defined Function."
  type        = string
}
variable "uri" {
  description = "(Required) The URI for accessing the resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "resource_uris" {
  description = "(Optional) The configuration block for Resource URIs. See resource uris below for more details.Resource URIs"
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
output "owner_type" {
  description = "(Required) The owner type. can be one of USER, ROLE, and GROUP."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.owner_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "database_name" {
  description = "(Required) The name of the Database to create the Function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.database_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "- The id of the Glue User Defined Function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_name" {
  description = "(Required) The owner of the function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.owner_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_type" {
  description = "(Required) The type of the resource. can be one of JAR, FILE, and ARCHIVE."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.resource_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "- The ARN of the Glue User Defined Function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "catalog_id" {
  description = "(Optional) ID of the Glue Catalog to create the function in. If omitted, this defaults to the AWS Account ID."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.catalog_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "class_name" {
  description = "(Required) The Java class that contains the function code."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.class_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_uris" {
  description = "(Optional) The configuration block for Resource URIs. See resource uris below for more details.Resource URIs"
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.resource_uris
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri" {
  description = "(Required) The URI for accessing the resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "- The ARN of the Glue User Defined Function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_time" {
  description = "- The time at which the function was created."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.create_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "- The id of the Glue User Defined Function."
  value       = aws_glue_user_defined_function.aws_glue_user_defined_function.id
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
      "kind/name"                   = "aws_glue_user_defined_function"
      "kind/version"                = "v0.1.0"
    }
  }
}