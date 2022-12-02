resource "aws_transfer_workflow" "aws_transfer_workflow" {
  arn                       = var.arn
  copy_step_details         = var.copy_step_details
  description               = var.description
  efs_file_location         = var.efs_file_location
  file_system_id            = var.file_system_id
  id                        = var.id
  name                      = var.name
  on_exception_steps        = var.on_exception_steps
  tag_step_details          = var.tag_step_details
  value                     = var.value
  path                      = var.path
  s3_file_location          = var.s3_file_location
  tags                      = var.tags
  bucket                    = var.bucket
  custom_step_details       = var.custom_step_details
  delete_step_details       = var.delete_step_details
  key                       = var.key
  overwrite_existing        = var.overwrite_existing
  source_file_location      = var.source_file_location
  steps                     = var.steps
  target                    = var.target
  timeout_seconds           = var.timeout_seconds
  destination_file_location = var.destination_file_location
  type                      = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "custom_step_details" {
  description = "(Optional) Details for a step that invokes a lambda function."
  type        = string
  default     = ""
}
variable "delete_step_details" {
  description = "(Optional) Details for a step that deletes the file."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) The name assigned to the tag that you create."
  type        = string
}
variable "overwrite_existing" {
  description = "(Optional) A flag that indicates whether or not to overwrite an existing file of the same name. The default is FALSE. Valid values are TRUE and FALSE."
  type        = string
  default     = ""
}
variable "source_file_location" {
  description = "(Optional) Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter $${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter $${original.file} to use the originally-uploaded file location as input for this step."
  type        = string
  default     = ""
}
variable "steps" {
  description = "(Required) Specifies the details for the steps that are in the specified workflow. See Workflow Steps below."
  type        = string
}
variable "target" {
  description = "(Optional) The ARN for the lambda function that is being called."
  type        = string
  default     = ""
}
variable "bucket" {
  description = "(Optional) Specifies the S3 bucket for the customer input file."
  type        = string
  default     = ""
}
variable "timeout_seconds" {
  description = "(Optional) Timeout, in seconds, for the step.Delete Step Details"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) One of the following step types are supported. COPY, CUSTOM, DELETE, and TAG.Copy Step Details"
  type        = string
}
variable "destination_file_location" {
  description = "(Optional) Specifies the location for the file being copied. Use $${Transfer:username} in this field to parametrize the destination prefix by username."
  type        = string
  default     = ""
}
variable "copy_step_details" {
  description = "(Optional) Details for a step that performs a file copy. See Copy Step Details below."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A textual description for the workflow."
  type        = string
  default     = ""
}
variable "efs_file_location" {
  description = "(Optional) Specifies the details for the EFS file being copied."
  type        = string
  default     = ""
}
variable "file_system_id" {
  description = "(Optional) The ID of the file system, assigned by Amazon EFS."
  type        = string
  default     = ""
}
variable "id" {
  description = "The Workflow id."
  type        = string
}
variable "name" {
  description = "(Optional) The name of the step, used as an identifier."
  type        = string
  default     = ""
}
variable "on_exception_steps" {
  description = "(Optional) Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Workflow ARN."
  type        = string
}
variable "value" {
  description = "(Required) The value that corresponds to the key.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tag_step_details" {
  description = "(Optional) Details for a step that creates one or more tags."
  type        = string
  default     = ""
}
variable "s3_file_location" {
  description = "(Optional) Specifies the details for the S3 file being copied.EFS File Location"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Array that contains from 1 to 10 key/value pairs. See S3 Tags below.Destination File Location"
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) The pathname for the folder being used by a workflow.S3 File Location"
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
output "destination_file_location" {
  description = "(Optional) Specifies the location for the file being copied. Use $${Transfer:username} in this field to parametrize the destination prefix by username."
  value       = aws_transfer_workflow.aws_transfer_workflow.destination_file_location
}
output "type" {
  description = "(Required) One of the following step types are supported. COPY, CUSTOM, DELETE, and TAG.Copy Step Details"
  value       = aws_transfer_workflow.aws_transfer_workflow.type
}
output "on_exception_steps" {
  description = "(Optional) Specifies the steps (actions) to take if errors are encountered during execution of the workflow. See Workflow Steps below."
  value       = aws_transfer_workflow.aws_transfer_workflow.on_exception_steps
}
output "arn" {
  description = "The Workflow ARN."
  value       = aws_transfer_workflow.aws_transfer_workflow.arn
}
output "copy_step_details" {
  description = "(Optional) Details for a step that performs a file copy. See Copy Step Details below."
  value       = aws_transfer_workflow.aws_transfer_workflow.copy_step_details
}
output "description" {
  description = "(Optional) A textual description for the workflow."
  value       = aws_transfer_workflow.aws_transfer_workflow.description
}
output "efs_file_location" {
  description = "(Optional) Specifies the details for the EFS file being copied."
  value       = aws_transfer_workflow.aws_transfer_workflow.efs_file_location
}
output "file_system_id" {
  description = "(Optional) The ID of the file system, assigned by Amazon EFS."
  value       = aws_transfer_workflow.aws_transfer_workflow.file_system_id
}
output "id" {
  description = "The Workflow id."
  value       = aws_transfer_workflow.aws_transfer_workflow.id
}
output "name" {
  description = "(Optional) The name of the step, used as an identifier."
  value       = aws_transfer_workflow.aws_transfer_workflow.name
}
output "tag_step_details" {
  description = "(Optional) Details for a step that creates one or more tags."
  value       = aws_transfer_workflow.aws_transfer_workflow.tag_step_details
}
output "value" {
  description = "(Required) The value that corresponds to the key.In addition to all arguments above, the following attributes are exported:"
  value       = aws_transfer_workflow.aws_transfer_workflow.value
}
output "path" {
  description = "(Optional) The pathname for the folder being used by a workflow.S3 File Location"
  value       = aws_transfer_workflow.aws_transfer_workflow.path
}
output "s3_file_location" {
  description = "(Optional) Specifies the details for the S3 file being copied.EFS File Location"
  value       = aws_transfer_workflow.aws_transfer_workflow.s3_file_location
}
output "tags" {
  description = "(Optional) Array that contains from 1 to 10 key/value pairs. See S3 Tags below.Destination File Location"
  value       = aws_transfer_workflow.aws_transfer_workflow.tags
}
output "target" {
  description = "(Optional) The ARN for the lambda function that is being called."
  value       = aws_transfer_workflow.aws_transfer_workflow.target
}
output "bucket" {
  description = "(Optional) Specifies the S3 bucket for the customer input file."
  value       = aws_transfer_workflow.aws_transfer_workflow.bucket
}
output "custom_step_details" {
  description = "(Optional) Details for a step that invokes a lambda function."
  value       = aws_transfer_workflow.aws_transfer_workflow.custom_step_details
}
output "delete_step_details" {
  description = "(Optional) Details for a step that deletes the file."
  value       = aws_transfer_workflow.aws_transfer_workflow.delete_step_details
}
output "key" {
  description = "(Required) The name assigned to the tag that you create."
  value       = aws_transfer_workflow.aws_transfer_workflow.key
}
output "overwrite_existing" {
  description = "(Optional) A flag that indicates whether or not to overwrite an existing file of the same name. The default is FALSE. Valid values are TRUE and FALSE."
  value       = aws_transfer_workflow.aws_transfer_workflow.overwrite_existing
}
output "source_file_location" {
  description = "(Optional) Specifies which file to use as input to the workflow step: either the output from the previous step, or the originally uploaded file for the workflow. Enter $${previous.file} to use the previous file as the input. In this case, this workflow step uses the output file from the previous workflow step as input. This is the default value. Enter $${original.file} to use the originally-uploaded file location as input for this step."
  value       = aws_transfer_workflow.aws_transfer_workflow.source_file_location
}
output "steps" {
  description = "(Required) Specifies the details for the steps that are in the specified workflow. See Workflow Steps below."
  value       = aws_transfer_workflow.aws_transfer_workflow.steps
}
output "timeout_seconds" {
  description = "(Optional) Timeout, in seconds, for the step.Delete Step Details"
  value       = aws_transfer_workflow.aws_transfer_workflow.timeout_seconds
}
output "arn" {
  description = "The Workflow ARN."
  value       = aws_transfer_workflow.aws_transfer_workflow.arn
}
output "id" {
  description = "The Workflow id."
  value       = aws_transfer_workflow.aws_transfer_workflow.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_transfer_workflow.aws_transfer_workflow.tags_all
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
      "kind/name"                   = "aws_transfer_workflow"
      "kind/version"                = "v0.1.0"
    }
  }
}
