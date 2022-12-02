resource "aws_s3_bucket_logging" "aws_s3_bucket_logging" {
  target_grant          = var.target_grant
  target_prefix         = var.target_prefix
  grantee               = var.grantee
  email_address         = var.email_address
  expected_bucket_owner = var.expected_bucket_owner
  id                    = var.id
  permission            = var.permission
  target_bucket         = var.target_bucket
  type                  = var.type
  uri                   = var.uri
  bucket                = var.bucket
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "grantee" {
  description = "(Required) A configuration block for the person being granted permissions documented below."
  type        = string
}
variable "target_grant" {
  description = "(Optional) Set of configuration blocks with information for granting permissions documented below.target_grantThe target_grant configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "target_prefix" {
  description = "(Required) A prefix for all log object keys."
  type        = string
}
variable "id" {
  description = "(Optional) The canonical user ID of the grantee."
  type        = string
  default     = ""
}
variable "permission" {
  description = "(Required) Logging permissions assigned to the grantee for the bucket. Valid values: FULL_CONTROL, READ, WRITE.granteeThe grantee configuration block supports the following arguments:"
  type        = string
}
variable "target_bucket" {
  description = "(Required) The name of the bucket where you want Amazon S3 to store server access logs."
  type        = string
}
variable "type" {
  description = "(Required) Type of grantee. Valid values: CanonicalUser, AmazonCustomerByEmail, Group."
  type        = string
}
variable "uri" {
  description = "(Optional) URI of the grantee group.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  type        = string
}
variable "email_address" {
  description = "(Optional) Email address of the grantee. See Regions and Endpoints for supported AWS regions where this argument can be specified."
  type        = string
  default     = ""
}
variable "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
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
output "grantee" {
  description = "(Required) A configuration block for the person being granted permissions documented below."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.grantee
}
output "target_grant" {
  description = "(Optional) Set of configuration blocks with information for granting permissions documented below.target_grantThe target_grant configuration block supports the following arguments:"
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.target_grant
}
output "target_prefix" {
  description = "(Required) A prefix for all log object keys."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.target_prefix
}
output "bucket" {
  description = "(Required, Forces new resource) The name of the bucket."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.bucket
}
output "email_address" {
  description = "(Optional) Email address of the grantee. See Regions and Endpoints for supported AWS regions where this argument can be specified."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.email_address
}
output "expected_bucket_owner" {
  description = "(Optional, Forces new resource) The account ID of the expected bucket owner."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.expected_bucket_owner
}
output "id" {
  description = "(Optional) The canonical user ID of the grantee."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.id
}
output "permission" {
  description = "(Required) Logging permissions assigned to the grantee for the bucket. Valid values: FULL_CONTROL, READ, WRITE.granteeThe grantee configuration block supports the following arguments:"
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.permission
}
output "target_bucket" {
  description = "(Required) The name of the bucket where you want Amazon S3 to store server access logs."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.target_bucket
}
output "type" {
  description = "(Required) Type of grantee. Valid values: CanonicalUser, AmazonCustomerByEmail, Group."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.type
}
output "uri" {
  description = "(Optional) URI of the grantee group.In addition to all arguments above, the following attributes are exported:"
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.uri
}
output "id" {
  description = "The bucket or bucket and expected_bucket_owner separated by a comma (,) if the latter is provided."
  value       = aws_s3_bucket_logging.aws_s3_bucket_logging.id
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
      "kind/name"                   = "aws_s3_bucket_logging"
      "kind/version"                = "v0.1.0"
    }
  }
}
