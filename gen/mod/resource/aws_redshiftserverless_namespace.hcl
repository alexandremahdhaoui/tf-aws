resource "aws_redshiftserverless_namespace" "aws_redshiftserverless_namespace" {
  tags                 = var.tags
  arn                  = var.arn
  db_name              = var.db_name
  default_iam_role_arn = var.default_iam_role_arn
  iam_roles            = var.iam_roles
  id                   = var.id
  kms_key_id           = var.kms_key_id
  log_exports          = var.log_exports
  namespace_id         = var.namespace_id
  admin_user_password  = var.admin_user_password
  admin_username       = var.admin_username
  namespace_name       = var.namespace_name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "iam_roles" {
  description = "(Optional) A list of IAM roles to associate with the namespace."
  type        = string
  default     = ""
}
variable "id" {
  description = "The Redshift Namespace Name."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The ARN of the Amazon Web Services Key Management Service key used to encrypt your data."
  type        = string
  default     = ""
}
variable "log_exports" {
  description = "(Optional) The types of logs the namespace can export. Available export types are userlog, connectionlog, and useractivitylog."
  type        = string
  default     = ""
}
variable "namespace_id" {
  description = "The Redshift Namespace ID."
  type        = string
}
variable "admin_user_password" {
  description = "(Optional) The password of the administrator for the first database created in the namespace."
  type        = string
  default     = ""
}
variable "admin_username" {
  description = "(Optional) The username of the administrator for the first database created in the namespace."
  type        = string
  default     = ""
}
variable "default_iam_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace."
  type        = string
  default     = ""
}
variable "namespace_name" {
  description = "(Required) The name of the namespace."
  type        = string
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Namespace."
  type        = string
}
variable "db_name" {
  description = "(Optional) The name of the first database created in the namespace."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
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
output "default_iam_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to set as a default in the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.default_iam_role_arn
}
output "iam_roles" {
  description = "(Optional) A list of IAM roles to associate with the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.iam_roles
}
output "id" {
  description = "The Redshift Namespace Name."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.id
}
output "kms_key_id" {
  description = "(Optional) The ARN of the Amazon Web Services Key Management Service key used to encrypt your data."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.kms_key_id
}
output "log_exports" {
  description = "(Optional) The types of logs the namespace can export. Available export types are userlog, connectionlog, and useractivitylog."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.log_exports
}
output "namespace_id" {
  description = "The Redshift Namespace ID."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.namespace_id
}
output "admin_user_password" {
  description = "(Optional) The password of the administrator for the first database created in the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.admin_user_password
}
output "admin_username" {
  description = "(Optional) The username of the administrator for the first database created in the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.admin_username
}
output "namespace_name" {
  description = "(Required) The name of the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.namespace_name
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.tags
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.arn
}
output "db_name" {
  description = "(Optional) The name of the first database created in the namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.db_name
}
output "namespace_id" {
  description = "The Redshift Namespace ID."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.namespace_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Redshift Serverless Namespace."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.arn
}
output "id" {
  description = "The Redshift Namespace Name."
  value       = aws_redshiftserverless_namespace.aws_redshiftserverless_namespace.id
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
      "kind/name"                   = "aws_redshiftserverless_namespace"
      "kind/version"                = "v0.1.0"
    }
  }
}
