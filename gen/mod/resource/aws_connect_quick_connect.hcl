resource "aws_connect_quick_connect" "aws_connect_quick_connect" {
  queue_id             = var.queue_id
  quick_connect_config = var.quick_connect_config
  quick_connect_type   = var.quick_connect_type
  arn                  = var.arn
  contact_flow_id      = var.contact_flow_id
  instance_id          = var.instance_id
  name                 = var.name
  user_config          = var.user_config
  user_id              = var.user_id
  description          = var.description
  phone_config         = var.phone_config
  quick_connect_id     = var.quick_connect_id
  tags                 = var.tags
  id                   = var.id
  phone_number         = var.phone_number
  queue_config         = var.queue_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "user_id" {
  description = "(Required) Specifies the identifier for the user.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description" {
  description = "(Optional) Specifies the description of the Quick Connect."
  type        = string
}
variable "phone_config" {
  description = "(Optional) Specifies the phone configuration of the Quick Connect. This is required only if quick_connect_type is PHONE_NUMBER. The phone_config block is documented below."
  type        = string
}
variable "quick_connect_id" {
  description = "The identifier for the Quick Connect."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Quick Connect. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A quick_connect_config block supports the following arguments:"
  type        = string
}
variable "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Quick Connect separated by a colon (:)."
  type        = string
}
variable "phone_number" {
  description = "(Required) Specifies the phone number in in E.164 format.A queue_config block supports the following arguments:"
  type        = string
}
variable "queue_config" {
  description = "(Optional) Specifies the queue configuration of the Quick Connect. This is required only if quick_connect_type is QUEUE. The queue_config block is documented below."
  type        = string
}
variable "queue_id" {
  description = "(Required) Specifies the identifier for the queue.A user_config block supports the following arguments:"
  type        = string
}
variable "quick_connect_config" {
  description = "(Required) A block that defines the configuration information for the Quick Connect: quick_connect_type and one of phone_config, queue_config, user_config . The Quick Connect Config block is documented below."
  type        = string
}
variable "quick_connect_type" {
  description = "(Required) Specifies the configuration type of the quick connect. valid values are PHONE_NUMBER, QUEUE, USER."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Quick Connect."
  type        = string
}
variable "contact_flow_id" {
  description = "(Required) Specifies the identifier of the contact flow."
  type        = string
}
variable "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  type        = string
}
variable "name" {
  description = "(Required) Specifies the name of the Quick Connect."
  type        = string
}
variable "user_config" {
  description = "(Optional) Specifies the user configuration of the Quick Connect. This is required only if quick_connect_type is USER. The user_config block is documented below.A phone_config block supports the following arguments:"
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
output "user_id" {
  description = "(Required) Specifies the identifier for the user.In addition to all arguments above, the following attributes are exported:"
  value       = aws_connect_quick_connect.aws_connect_quick_connect.user_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Specifies the description of the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phone_config" {
  description = "(Optional) Specifies the phone configuration of the Quick Connect. This is required only if quick_connect_type is PHONE_NUMBER. The phone_config block is documented below."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.phone_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quick_connect_id" {
  description = "The identifier for the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.quick_connect_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Tags to apply to the Quick Connect. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.A quick_connect_config block supports the following arguments:"
  value       = aws_connect_quick_connect.aws_connect_quick_connect.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Quick Connect separated by a colon (:)."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "phone_number" {
  description = "(Required) Specifies the phone number in in E.164 format.A queue_config block supports the following arguments:"
  value       = aws_connect_quick_connect.aws_connect_quick_connect.phone_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_config" {
  description = "(Optional) Specifies the queue configuration of the Quick Connect. This is required only if quick_connect_type is QUEUE. The queue_config block is documented below."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.queue_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queue_id" {
  description = "(Required) Specifies the identifier for the queue.A user_config block supports the following arguments:"
  value       = aws_connect_quick_connect.aws_connect_quick_connect.queue_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quick_connect_config" {
  description = "(Required) A block that defines the configuration information for the Quick Connect: quick_connect_type and one of phone_config, queue_config, user_config . The Quick Connect Config block is documented below."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.quick_connect_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quick_connect_type" {
  description = "(Required) Specifies the configuration type of the quick connect. valid values are PHONE_NUMBER, QUEUE, USER."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.quick_connect_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "contact_flow_id" {
  description = "(Required) Specifies the identifier of the contact flow."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.contact_flow_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_id" {
  description = "(Required) Specifies the identifier of the hosting Amazon Connect Instance."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.instance_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Specifies the name of the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "user_config" {
  description = "(Optional) Specifies the user configuration of the Quick Connect. This is required only if quick_connect_type is USER. The user_config block is documented below.A phone_config block supports the following arguments:"
  value       = aws_connect_quick_connect.aws_connect_quick_connect.user_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The identifier of the hosting Amazon Connect Instance and identifier of the Quick Connect separated by a colon (:)."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "quick_connect_id" {
  description = "The identifier for the Quick Connect."
  value       = aws_connect_quick_connect.aws_connect_quick_connect.quick_connect_id
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
      "kind/name"                   = "aws_connect_quick_connect"
      "kind/version"                = "v0.1.0"
    }
  }
}
