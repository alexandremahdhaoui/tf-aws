resource "aws_directory_service_shared_directory" "aws_directory_service_shared_directory" {
  method              = var.method
  notes               = var.notes
  shared_directory_id = var.shared_directory_id
  target              = var.target
  type                = var.type
  delete              = var.delete
  directory_id        = var.directory_id
  id                  = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "shared_directory_id" {
  description = "Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.Timeoutsaws_directory_service_shared_directory provides the following Timeouts configuration options:"
  type        = string
  default     = ""
}
variable "target" {
  description = "(Required) Identifier for the directory consumer account with whom the directory is to be shared. See below."
  type        = string
}
variable "type" {
  description = "(Optional) Type of identifier to be used in the id field. Valid value is ACCOUNT. Default is ACCOUNT.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 60 minutes) Used for shared directory deletion"
  type        = string
  default     = ""
}
variable "directory_id" {
  description = "(Required) Identifier of the Managed Microsoft AD directory that you want to share with other accounts."
  type        = string
}
variable "id" {
  description = "Identifier of the shared directory."
  type        = string
  default     = ""
}
variable "method" {
  description = "(Optional) Method used when sharing a directory. Valid values are ORGANIZATIONS and HANDSHAKE. Default is HANDSHAKE."
  type        = string
  default     = ""
}
variable "notes" {
  description = "(Optional, Sensitive) Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.target"
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
output "notes" {
  description = "(Optional, Sensitive) Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.target"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.notes
}
output "shared_directory_id" {
  description = "Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.Timeoutsaws_directory_service_shared_directory provides the following Timeouts configuration options:"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.shared_directory_id
}
output "target" {
  description = "(Required) Identifier for the directory consumer account with whom the directory is to be shared. See below."
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.target
}
output "type" {
  description = "(Optional) Type of identifier to be used in the id field. Valid value is ACCOUNT. Default is ACCOUNT.In addition to all arguments above, the following attributes are exported:"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.type
}
output "delete" {
  description = "(Default 60 minutes) Used for shared directory deletion"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.delete
}
output "directory_id" {
  description = "(Required) Identifier of the Managed Microsoft AD directory that you want to share with other accounts."
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.directory_id
}
output "id" {
  description = "Identifier of the shared directory."
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.id
}
output "method" {
  description = "(Optional) Method used when sharing a directory. Valid values are ORGANIZATIONS and HANDSHAKE. Default is HANDSHAKE."
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.method
}
output "id" {
  description = "Identifier of the shared directory."
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.id
}
output "shared_directory_id" {
  description = "Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.Timeoutsaws_directory_service_shared_directory provides the following Timeouts configuration options:"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.shared_directory_id
}
output "delete" {
  description = "(Default 60 minutes) Used for shared directory deletion"
  value       = aws_directory_service_shared_directory.aws_directory_service_shared_directory.delete
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
      "kind/name"                   = "aws_directory_service_shared_directory"
      "kind/version"                = "v0.1.0"
    }
  }
}
