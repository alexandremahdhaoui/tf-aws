resource "aws_connect_contact_flow" "aws_connect_contact_flow" {
  filename        = var.filename
  content         = var.content
  content_hash    = var.content_hash
  description     = var.description
  id              = var.id
  instance_id     = var.instance_id
  name            = var.name
  arn             = var.arn
  contact_flow_id = var.contact_flow_id
  tags            = var.tags
  type            = var.type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "content_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with filename. The usual way to set this is filebase64sha256(\"mycontact_flow.json\") (Terraform 0.11.12 and later) or base64sha256(file(\"mycontact_flow.json\")) (Terraform 0.11.11 and earlier), where \"mycontact_flow.json\" is the local filename of the Contact Flow source."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Specifies the description of the Contact Flow."
  type        = string
  default     = ""
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Contact Flow separated by a colon (:)."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "name" {
  description = "(Required) Specifies the name of the Contact Flow."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Contact Flow."
  type        = string
}
variable "contact_flow_id" {
  description = "The identifier of the Contact Flow."
  type        = string
}
variable "content" {
  description = "(Optional) Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the filename argument cannot be used."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Tags to apply to the Contact Flow. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional, Forces new resource) Specifies the type of the Contact Flow. Defaults to CONTACT_FLOW. Allowed Values are: CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "filename" {
  description = "(Optional) The path to the Contact Flow source within the local filesystem. Conflicts with content."
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
output "content_hash" {
  description = "(Optional) Used to trigger updates. Must be set to a base64-encoded SHA256 hash of the Contact Flow source specified with filename. The usual way to set this is filebase64sha256(\"mycontact_flow.json\") (Terraform 0.11.12 and later) or base64sha256(file(\"mycontact_flow.json\")) (Terraform 0.11.11 and earlier), where \"mycontact_flow.json\" is the local filename of the Contact Flow source."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.content_hash
}
output "description" {
  description = "(Optional) Specifies the description of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.description
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Contact Flow separated by a colon (:)."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.id
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.instance_id
}
output "name" {
  description = "(Required) Specifies the name of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.name
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.arn
}
output "contact_flow_id" {
  description = "The identifier of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.contact_flow_id
}
output "content" {
  description = "(Optional) Specifies the content of the Contact Flow, provided as a JSON string, written in Amazon Connect Contact Flow Language. If defined, the filename argument cannot be used."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.content
}
output "tags" {
  description = "(Optional) Tags to apply to the Contact Flow. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.tags
}
output "type" {
  description = "(Optional, Forces new resource) Specifies the type of the Contact Flow. Defaults to CONTACT_FLOW. Allowed Values are: CONTACT_FLOW, CUSTOMER_QUEUE, CUSTOMER_HOLD, CUSTOMER_WHISPER, AGENT_HOLD, AGENT_WHISPER, OUTBOUND_WHISPER, AGENT_TRANSFER, QUEUE_TRANSFER.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_contact_flow.aws_connect_contact_flow.type
}
output "filename" {
  description = "(Optional) The path to the Contact Flow source within the local filesystem. Conflicts with content."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.filename
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.arn
}
output "contact_flow_id" {
  description = "The identifier of the Contact Flow."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.contact_flow_id
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Contact Flow separated by a colon (:)."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_contact_flow.aws_connect_contact_flow.tags_all
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
      "kind/name"                   = "aws_connect_contact_flow"
      "kind/version"                = "v0.1.0"
    }
  }
}
