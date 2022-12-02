resource "aws_kendra_faq" "aws_kendra_faq" {
  description   = var.description
  id            = var.id
  key           = var.key
  language_code = var.language_code
  s3_path       = var.s3_path
  tags          = var.tags
  bucket        = var.bucket
  create        = var.create
  updated_at    = var.updated_at
  error_message = var.error_message
  name          = var.name
  role_arn      = var.role_arn
  status        = var.status
  arn           = var.arn
  created_at    = var.created_at
  index_id      = var.index_id
  tags_all      = var.tags_all
  file_format   = var.file_format
  delete        = var.delete
  faq_id        = var.faq_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "The unique identifiers of the FAQ and index separated by a slash (/)"
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required, Forces new resource) The name of the file."
  type        = string
}
variable "language_code" {
  description = "(Optional, Forces new resource) The code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  type        = string
  default     = ""
}
variable "s3_path" {
  description = "(Required, Forces new resource) The S3 location of the FAQ input data. Detailed below.The s3_path configuration block supports the following arguments:"
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Required, Forces new resource) The name of the S3 bucket that contains the file."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional, Forces new resource) The description for a FAQ."
  type        = string
  default     = ""
}
variable "updated_at" {
  description = "The date and time that the FAQ was last updated."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required, Forces new resource) The name that should be associated with the FAQ."
  type        = string
}
variable "role_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  type        = string
}
variable "status" {
  description = "The status of the FAQ. It is ready to use when the status is ACTIVE."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the FAQ."
  type        = string
  default     = ""
}
variable "created_at" {
  description = "The Unix datetime that the FAQ was created."
  type        = string
  default     = ""
}
variable "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  type        = string
  default     = ""
}
variable "index_id" {
  description = "- (Required, Forces new resource) The identifier of the index for a FAQ."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "faq_id" {
  description = "The identifier of the FAQ."
  type        = string
  default     = ""
}
variable "file_format" {
  description = "(Optional, Forces new resource) The file format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
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
output "s3_path" {
  description = "(Required, Forces new resource) The S3 location of the FAQ input data. Detailed below.The s3_path configuration block supports the following arguments:"
  value       = aws_kendra_faq.aws_kendra_faq.s3_path
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_kendra_faq.aws_kendra_faq.tags
}
output "bucket" {
  description = "(Required, Forces new resource) The name of the S3 bucket that contains the file."
  value       = aws_kendra_faq.aws_kendra_faq.bucket
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_faq.aws_kendra_faq.create
}
output "description" {
  description = "(Optional, Forces new resource) The description for a FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.description
}
output "id" {
  description = "The unique identifiers of the FAQ and index separated by a slash (/)"
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "key" {
  description = "(Required, Forces new resource) The name of the file."
  value       = aws_kendra_faq.aws_kendra_faq.key
}
output "language_code" {
  description = "(Optional, Forces new resource) The code for a language. This shows a supported language for the FAQ document. English is supported by default. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_faq.aws_kendra_faq.language_code
}
output "updated_at" {
  description = "The date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "created_at" {
  description = "The Unix datetime that the FAQ was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "name" {
  description = "(Required, Forces new resource) The name that should be associated with the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.name
}
output "role_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of a role with permission to access the S3 bucket that contains the FAQs. For more information, see IAM Roles for Amazon Kendra."
  value       = aws_kendra_faq.aws_kendra_faq.role_arn
}
output "status" {
  description = "The status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "index_id" {
  description = "- (Required, Forces new resource) The identifier of the index for a FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.index_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_faq.aws_kendra_faq.tags_all
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_faq.aws_kendra_faq.delete
}
output "faq_id" {
  description = "The identifier of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.faq_id
}
output "file_format" {
  description = "(Optional, Forces new resource) The file format used by the input files for the FAQ. Valid Values are CSV, CSV_WITH_HEADER, JSON."
  value       = aws_kendra_faq.aws_kendra_faq.file_format
}
output "arn" {
  description = "ARN of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.arn
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_faq.aws_kendra_faq.error_message
}
output "faq_id" {
  description = "The identifier of the FAQ."
  value       = aws_kendra_faq.aws_kendra_faq.faq_id
}
output "id" {
  description = "The unique identifiers of the FAQ and index separated by a slash (/)"
  value       = aws_kendra_faq.aws_kendra_faq.id
}
output "updated_at" {
  description = "The date and time that the FAQ was last updated."
  value       = aws_kendra_faq.aws_kendra_faq.updated_at
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_faq.aws_kendra_faq.create
}
output "created_at" {
  description = "The Unix datetime that the FAQ was created."
  value       = aws_kendra_faq.aws_kendra_faq.created_at
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_faq.aws_kendra_faq.delete
}
output "status" {
  description = "The status of the FAQ. It is ready to use when the status is ACTIVE."
  value       = aws_kendra_faq.aws_kendra_faq.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_faq.aws_kendra_faq.tags_all
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
      "kind/name"                   = "aws_kendra_faq"
      "kind/version"                = "v0.1.0"
    }
  }
}
