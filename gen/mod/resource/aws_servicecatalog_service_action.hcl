resource "aws_servicecatalog_service_action" "aws_servicecatalog_service_action" {
  read            = var.read
  type            = var.type
  accept_language = var.accept_language
  create          = var.create
  definition      = var.definition
  delete          = var.delete
  id              = var.id
  parameters      = var.parameters
  update          = var.update
  version         = var.version
  assume_role     = var.assume_role
  description     = var.description
  name            = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "id" {
  description = "Identifier of the service action.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "parameters" {
  description = "(Optional) List of parameters in JSON format. For example: [{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TARGET\\\"}] or [{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TEXT_VALUE\\\"}]."
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Service action definition type. Valid value is SSM_AUTOMATION. Default is SSM_AUTOMATION."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values are en (English), jp (Japanese), and zh (Chinese). Default is en."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "definition" {
  description = "(Required) Self-service action definition configuration block. Detailed below."
  type        = string
}
variable "delete" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "version" {
  description = "(Required) SSM document version. For example, 1.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "assume_role" {
  description = "(Optional) ARN of the role that performs the self-service actions on your behalf. For example, arn:aws:iam::12345678910:role/ActionRole. To reuse the provisioned product launch role, set to LAUNCH_ROLE."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Self-service action description.definitionThe definition configuration block supports the following attributes:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the SSM document. For example, AWS-RestartEC2Instance. If you are using a shared SSM document, you must provide the ARN instead of the name."
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
output "assume_role" {
  description = "(Optional) ARN of the role that performs the self-service actions on your behalf. For example, arn:aws:iam::12345678910:role/ActionRole. To reuse the provisioned product launch role, set to LAUNCH_ROLE."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.assume_role
}
output "description" {
  description = "(Optional) Self-service action description.definitionThe definition configuration block supports the following attributes:"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.description
}
output "name" {
  description = "(Required) Name of the SSM document. For example, AWS-RestartEC2Instance. If you are using a shared SSM document, you must provide the ARN instead of the name."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.name
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.read
}
output "type" {
  description = "(Optional) Service action definition type. Valid value is SSM_AUTOMATION. Default is SSM_AUTOMATION."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.type
}
output "accept_language" {
  description = "(Optional) Language code. Valid values are en (English), jp (Japanese), and zh (Chinese). Default is en."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.accept_language
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.create
}
output "definition" {
  description = "(Required) Self-service action definition configuration block. Detailed below."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.definition
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.delete
}
output "id" {
  description = "Identifier of the service action.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.id
}
output "parameters" {
  description = "(Optional) List of parameters in JSON format. For example: [{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TARGET\\\"}] or [{\\\"Name\\\":\\\"InstanceId\\\",\\\"Type\\\":\\\"TEXT_VALUE\\\"}]."
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.parameters
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.update
}
output "version" {
  description = "(Required) SSM document version. For example, 1.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.version
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.update
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.create
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.delete
}
output "id" {
  description = "Identifier of the service action.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_service_action.aws_servicecatalog_service_action.read
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
      "kind/name"                   = "aws_servicecatalog_service_action"
      "kind/version"                = "v0.1.0"
    }
  }
}
