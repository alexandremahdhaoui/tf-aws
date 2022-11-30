resource "aws_transfer_access" "aws_transfer_access" {
  posix_profile           = var.posix_profile
  secondary_gids          = var.secondary_gids
  target                  = var.target
  external_id             = var.external_id
  gid                     = var.gid
  home_directory_mappings = var.home_directory_mappings
  home_directory_type     = var.home_directory_type
  server_id               = var.server_id
  uid                     = var.uid
  entry                   = var.entry
  home_directory          = var.home_directory
  policy                  = var.policy
  role                    = var.role
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "secondary_gids" {
  description = "(Optional) The secondary POSIX group IDs used for all EFS operations by this user.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "target" {
  description = "(Required) Represents the map target.Posix Profile"
  type        = string
}
variable "external_id" {
  description = "(Required) The SID of a group in the directory connected to the Transfer Server (e.g., S-1-1-12-1234567890-123456789-1234567890-1234)"
  type        = string
}
variable "gid" {
  description = "(Required) The POSIX group ID used for all EFS operations by this user."
  type        = string
}
variable "home_directory_mappings" {
  description = "(Optional) Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below."
  type        = string
}
variable "home_directory_type" {
  description = "(Optional) The type of landing directory (folder) you mapped for your users' home directory. Valid values are PATH and LOGICAL."
  type        = string
}
variable "posix_profile" {
  description = "(Optional) Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below."
  type        = string
}
variable "uid" {
  description = "(Required) The POSIX user ID used for all EFS operations by this user."
  type        = string
}
variable "entry" {
  description = "(Required) Represents an entry and a target."
  type        = string
}
variable "home_directory" {
  description = "(Optional) The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a /.  The first item in the path is the name of the home bucket (accessible as $${Transfer:HomeBucket} in the policy) and the rest is the home directory (accessible as $${Transfer:HomeDirectory} in the policy). For example, /example-bucket-1234/username would set the home bucket to example-bucket-1234 and the home directory to username."
  type        = string
}
variable "policy" {
  description = "(Optional) An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include $${Transfer:UserName}, $${Transfer:HomeDirectory}, and $${Transfer:HomeBucket}. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings ($$${Transfer:UserName}).  These are evaluated on-the-fly when navigating the bucket."
  type        = string
}
variable "role" {
  description = "(Required) Amazon Resource Name (ARN) of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.Home Directory Mappings"
  type        = string
}
variable "server_id" {
  description = "(Required) The Server ID of the Transfer Server (e.g., s-12345678)"
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
output "home_directory_type" {
  description = "(Optional) The type of landing directory (folder) you mapped for your users' home directory. Valid values are PATH and LOGICAL."
  value       = aws_transfer_access.aws_transfer_access.home_directory_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "posix_profile" {
  description = "(Optional) Specifies the full POSIX identity, including user ID (Uid), group ID (Gid), and any secondary groups IDs (SecondaryGids), that controls your users' access to your Amazon EFS file systems. See Posix Profile below."
  value       = aws_transfer_access.aws_transfer_access.posix_profile
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_gids" {
  description = "(Optional) The secondary POSIX group IDs used for all EFS operations by this user.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transfer_access.aws_transfer_access.secondary_gids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target" {
  description = "(Required) Represents the map target.Posix Profile"
  value       = aws_transfer_access.aws_transfer_access.target
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_id" {
  description = "(Required) The SID of a group in the directory connected to the Transfer Server (e.g., S-1-1-12-1234567890-123456789-1234567890-1234)"
  value       = aws_transfer_access.aws_transfer_access.external_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "gid" {
  description = "(Required) The POSIX group ID used for all EFS operations by this user."
  value       = aws_transfer_access.aws_transfer_access.gid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "home_directory_mappings" {
  description = "(Optional) Logical directory mappings that specify what S3 paths and keys should be visible to your user and how you want to make them visible. See Home Directory Mappings below."
  value       = aws_transfer_access.aws_transfer_access.home_directory_mappings
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role" {
  description = "(Required) Amazon Resource Name (ARN) of an IAM role that allows the service to controls your user’s access to your Amazon S3 bucket.Home Directory Mappings"
  value       = aws_transfer_access.aws_transfer_access.role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "server_id" {
  description = "(Required) The Server ID of the Transfer Server (e.g., s-12345678)"
  value       = aws_transfer_access.aws_transfer_access.server_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uid" {
  description = "(Required) The POSIX user ID used for all EFS operations by this user."
  value       = aws_transfer_access.aws_transfer_access.uid
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "entry" {
  description = "(Required) Represents an entry and a target."
  value       = aws_transfer_access.aws_transfer_access.entry
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "home_directory" {
  description = "(Optional) The landing directory (folder) for a user when they log in to the server using their SFTP client.  It should begin with a /.  The first item in the path is the name of the home bucket (accessible as $${Transfer:HomeBucket} in the policy) and the rest is the home directory (accessible as $${Transfer:HomeDirectory} in the policy). For example, /example-bucket-1234/username would set the home bucket to example-bucket-1234 and the home directory to username."
  value       = aws_transfer_access.aws_transfer_access.home_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "policy" {
  description = "(Optional) An IAM JSON policy document that scopes down user access to portions of their Amazon S3 bucket. IAM variables you can use inside this policy include $${Transfer:UserName}, $${Transfer:HomeDirectory}, and $${Transfer:HomeBucket}. Since the IAM variable syntax matches Terraform's interpolation syntax, they must be escaped inside Terraform configuration strings ($$${Transfer:UserName}).  These are evaluated on-the-fly when navigating the bucket."
  value       = aws_transfer_access.aws_transfer_access.policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "  - The ID of the resource"
  value       = aws_transfer_access.aws_transfer_access.id
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
      "kind/name"                   = "aws_transfer_access"
      "kind/version"                = "v0.1.0"
    }
  }
}
