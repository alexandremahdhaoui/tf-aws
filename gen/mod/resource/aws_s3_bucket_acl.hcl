resource "aws_s3_bucket_acl" "aws_s3_bucket_acl" {
  display_name          = var.display_name
  email_address         = var.email_address
  grant                 = var.grant
  owner                 = var.owner
  permission            = var.permission
  type                  = var.type
  uri                   = var.uri
  access_control_policy = var.access_control_policy
  acl                   = var.acl
  bucket                = var.bucket
  expected_bucket_owner = var.expected_bucket_owner
  grantee               = var.grantee
  id                    = var.id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "display_name" {
  description = "(Optional) The display name of the owner.granteeThe grantee configuration block supports the following arguments:"
  type        = string
}
variable "email_address" {
  description = "(Optional) Email address of the grantee. See Regions and Endpoints for supported AWS regions where this argument can be specified."
  type        = string
}
variable "grant" {
  description = "(Required) Set of grant configuration blocks documented below."
  type        = string
}
variable "owner" {
  description = "(Required) Configuration block of the bucket owner's display name and ID documented below.grantThe grant configuration block supports the following arguments:"
  type        = string
}
variable "permission" {
  description = "(Required) Logging permissions assigned to the grantee for the bucket.ownerThe owner configuration block supports the following arguments:"
  type        = string
}
variable "type" {
  description = "(Required) Type of grantee. Valid values: CanonicalUser, AmazonCustomerByEmail, Group."
  type        = string
}
variable "uri" {
  description = "(Optional) URI of the grantee group.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "access_control_policy" {
  description = "(Optional, Conflicts with acl) A configuration block that sets the ACL permissions for an object per grantee documented below."
  type        = string
}
variable "acl" {
  description = "(Optional, Conflicts with access_control_policy) The canned ACL to apply to the bucket."
  type        = string
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  type        = string
}
variable "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner.access_control_policyThe access_control_policy configuration block supports the following arguments:"
  type        = string
}
variable "grantee" {
  description = "(Required) Configuration block for the person being granted permissions documented below."
  type        = string
}
variable "id" {
  description = "(Optional) The canonical user ID of the grantee."
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
output "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner.access_control_policyThe access_control_policy configuration block supports the following arguments:"
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.expected_bucket_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grantee" {
  description = "(Required) Configuration block for the person being granted permissions documented below."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.grantee
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "(Optional) The canonical user ID of the grantee."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_control_policy" {
  description = "(Optional, Conflicts with acl) A configuration block that sets the ACL permissions for an object per grantee documented below."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.access_control_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "acl" {
  description = "(Optional, Conflicts with access_control_policy) The canned ACL to apply to the bucket."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.acl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.bucket
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner" {
  description = "(Required) Configuration block of the bucket owner's display name and ID documented below.grantThe grant configuration block supports the following arguments:"
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "permission" {
  description = "(Required) Logging permissions assigned to the grantee for the bucket.ownerThe owner configuration block supports the following arguments:"
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.permission
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Type of grantee. Valid values: CanonicalUser, AmazonCustomerByEmail, Group."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "uri" {
  description = "(Optional) URI of the grantee group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.uri
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "display_name" {
  description = "(Optional) The display name of the owner.granteeThe grantee configuration block supports the following arguments:"
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.display_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email_address" {
  description = "(Optional) Email address of the grantee. See Regions and Endpoints for supported AWS regions where this argument can be specified."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.email_address
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "grant" {
  description = "(Required) Set of grant configuration blocks documented below."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.grant
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The bucket, expected_bucket_owner (if configured), and acl (if configured) separated by commas (,)."
  value       = aws_s3_bucket_acl.aws_s3_bucket_acl.id
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
      "kind/name"                   = "aws_s3_bucket_acl"
      "kind/version"                = "v0.1.0"
    }
  }
}
