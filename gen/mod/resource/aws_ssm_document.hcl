resource "aws_ssm_document" "aws_ssm_document" {
  schema_version     = var.schema_version
  document_type      = var.document_type
  document_version   = var.document_version
  hash               = var.hash
  platform_types     = var.platform_types
  type               = var.type
  values             = var.values
  version_name       = var.version_name
  content            = var.content
  created_date       = var.created_date
  parameter          = var.parameter
  tags               = var.tags
  owner              = var.owner
  permissions        = var.permissions
  tags_all           = var.tags_all
  attachments_source = var.attachments_source
  default_version    = var.default_version
  document_format    = var.document_format
  hash_type          = var.hash_type
  status             = var.status
  target_type        = var.target_type
  description        = var.description
  key                = var.key
  latest_version     = var.latest_version
  name               = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the document attachment fileIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "status" {
  description = "\"Creating\", \"Active\" or \"Deleting\". The current status of the document."
  type        = string
}
variable "target_type" {
  description = "(Optional) The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see AWS Resource Types Reference (http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)"
  type        = string
  default     = ""
}
variable "description" {
  description = "The description of the document."
  type        = string
}
variable "key" {
  description = "(Required) The key describing the location of an attachment to a document. Valid key types include: SourceUrl and S3FileUrl"
  type        = string
}
variable "latest_version" {
  description = "The latest version of the document."
  type        = string
}
variable "platform_types" {
  description = "A list of OS platforms compatible with this SSM document, either \"Windows\" or \"Linux\"."
  type        = string
}
variable "schema_version" {
  description = "The schema version of the document."
  type        = string
}
variable "document_type" {
  description = "(Required) The type of the document. Valid document types include: Automation, Command, Package, Policy, and Session"
  type        = string
}
variable "document_version" {
  description = "The document version."
  type        = string
}
variable "hash" {
  description = "The sha1 or sha256 of the document content"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "type" {
  description = "The permission type for the document. The permission type can be Share."
  type        = string
}
variable "values" {
  description = "(Required) The value describing the location of an attachment to a document"
  type        = string
}
variable "version_name" {
  description = "(Optional) A field specifying the version of the artifact you are creating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document and cannot be changed for an existing document version.attachments_sourceThe attachments_source block supports the following:"
  type        = string
  default     = ""
}
variable "content" {
  description = "(Required) The JSON or YAML content of the document."
  type        = string
}
variable "created_date" {
  description = "The date the document was created."
  type        = string
}
variable "parameter" {
  description = "The parameters that are available to this document."
  type        = string
}
variable "hash_type" {
  description = "\"Sha1\" \"Sha256\". The hashing algorithm used when hashing the content."
  type        = string
}
variable "owner" {
  description = "The AWS user account of the person who created the document."
  type        = string
}
variable "permissions" {
  description = "(Optional) Additional Permissions to attach to the document. See Permissions below for details."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.PermissionsThe permissions mapping supports the following:"
  type        = string
}
variable "attachments_source" {
  description = "(Optional) One or more configuration blocks describing attachments sources to a version of a document. Defined below."
  type        = string
  default     = ""
}
variable "default_version" {
  description = "The default version of the document."
  type        = string
}
variable "document_format" {
  description = "(Optional, defaults to JSON) The format of the document. Valid document types include: JSON and YAML"
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
output "document_type" {
  description = "(Required) The type of the document. Valid document types include: Automation, Command, Package, Policy, and Session"
  value       = aws_ssm_document.aws_ssm_document.document_type
}
output "document_version" {
  description = "The document version."
  value       = aws_ssm_document.aws_ssm_document.document_version
}
output "hash" {
  description = "The sha1 or sha256 of the document content"
  value       = aws_ssm_document.aws_ssm_document.hash
}
output "platform_types" {
  description = "A list of OS platforms compatible with this SSM document, either \"Windows\" or \"Linux\"."
  value       = aws_ssm_document.aws_ssm_document.platform_types
}
output "schema_version" {
  description = "The schema version of the document."
  value       = aws_ssm_document.aws_ssm_document.schema_version
}
output "content" {
  description = "(Required) The JSON or YAML content of the document."
  value       = aws_ssm_document.aws_ssm_document.content
}
output "created_date" {
  description = "The date the document was created."
  value       = aws_ssm_document.aws_ssm_document.created_date
}
output "parameter" {
  description = "The parameters that are available to this document."
  value       = aws_ssm_document.aws_ssm_document.parameter
}
output "tags" {
  description = "(Optional) A map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ssm_document.aws_ssm_document.tags
}
output "type" {
  description = "The permission type for the document. The permission type can be Share."
  value       = aws_ssm_document.aws_ssm_document.type
}
output "values" {
  description = "(Required) The value describing the location of an attachment to a document"
  value       = aws_ssm_document.aws_ssm_document.values
}
output "version_name" {
  description = "(Optional) A field specifying the version of the artifact you are creating with the document. For example, \"Release 12, Update 6\". This value is unique across all versions of a document and cannot be changed for an existing document version.attachments_sourceThe attachments_source block supports the following:"
  value       = aws_ssm_document.aws_ssm_document.version_name
}
output "attachments_source" {
  description = "(Optional) One or more configuration blocks describing attachments sources to a version of a document. Defined below."
  value       = aws_ssm_document.aws_ssm_document.attachments_source
}
output "default_version" {
  description = "The default version of the document."
  value       = aws_ssm_document.aws_ssm_document.default_version
}
output "document_format" {
  description = "(Optional, defaults to JSON) The format of the document. Valid document types include: JSON and YAML"
  value       = aws_ssm_document.aws_ssm_document.document_format
}
output "hash_type" {
  description = "\"Sha1\" \"Sha256\". The hashing algorithm used when hashing the content."
  value       = aws_ssm_document.aws_ssm_document.hash_type
}
output "owner" {
  description = "The AWS user account of the person who created the document."
  value       = aws_ssm_document.aws_ssm_document.owner
}
output "permissions" {
  description = "(Optional) Additional Permissions to attach to the document. See Permissions below for details."
  value       = aws_ssm_document.aws_ssm_document.permissions
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.PermissionsThe permissions mapping supports the following:"
  value       = aws_ssm_document.aws_ssm_document.tags_all
}
output "description" {
  description = "The description of the document."
  value       = aws_ssm_document.aws_ssm_document.description
}
output "key" {
  description = "(Required) The key describing the location of an attachment to a document. Valid key types include: SourceUrl and S3FileUrl"
  value       = aws_ssm_document.aws_ssm_document.key
}
output "latest_version" {
  description = "The latest version of the document."
  value       = aws_ssm_document.aws_ssm_document.latest_version
}
output "name" {
  description = "(Optional) The name of the document attachment fileIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_document.aws_ssm_document.name
}
output "status" {
  description = "\"Creating\", \"Active\" or \"Deleting\". The current status of the document."
  value       = aws_ssm_document.aws_ssm_document.status
}
output "target_type" {
  description = "(Optional) The target type which defines the kinds of resources the document can run on. For example, /AWS::EC2::Instance. For a list of valid resource types, see AWS Resource Types Reference (http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html)"
  value       = aws_ssm_document.aws_ssm_document.target_type
}
output "account_ids" {
  description = "The AWS user accounts that should have access to the document. The account IDs can either be a group of account IDs or All."
  value       = aws_ssm_document.aws_ssm_document.account_ids
}
output "parameter" {
  description = "The parameters that are available to this document."
  value       = aws_ssm_document.aws_ssm_document.parameter
}
output "default_version" {
  description = "The default version of the document."
  value       = aws_ssm_document.aws_ssm_document.default_version
}
output "platform_types" {
  description = "A list of OS platforms compatible with this SSM document, either \"Windows\" or \"Linux\"."
  value       = aws_ssm_document.aws_ssm_document.platform_types
}
output "type" {
  description = "The permission type for the document. The permission type can be Share."
  value       = aws_ssm_document.aws_ssm_document.type
}
output "created_date" {
  description = "The date the document was created."
  value       = aws_ssm_document.aws_ssm_document.created_date
}
output "description" {
  description = "The description of the document."
  value       = aws_ssm_document.aws_ssm_document.description
}
output "hash_type" {
  description = "\"Sha1\" \"Sha256\". The hashing algorithm used when hashing the content."
  value       = aws_ssm_document.aws_ssm_document.hash_type
}
output "latest_version" {
  description = "The latest version of the document."
  value       = aws_ssm_document.aws_ssm_document.latest_version
}
output "schema_version" {
  description = "The schema version of the document."
  value       = aws_ssm_document.aws_ssm_document.schema_version
}
output "document_version" {
  description = "The document version."
  value       = aws_ssm_document.aws_ssm_document.document_version
}
output "hash" {
  description = "The sha1 or sha256 of the document content"
  value       = aws_ssm_document.aws_ssm_document.hash
}
output "owner" {
  description = "The AWS user account of the person who created the document."
  value       = aws_ssm_document.aws_ssm_document.owner
}
output "status" {
  description = "\"Creating\", \"Active\" or \"Deleting\". The current status of the document."
  value       = aws_ssm_document.aws_ssm_document.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.PermissionsThe permissions mapping supports the following:"
  value       = aws_ssm_document.aws_ssm_document.tags_all
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
      "kind/name"                   = "aws_ssm_document"
      "kind/version"                = "v0.1.0"
    }
  }
}
