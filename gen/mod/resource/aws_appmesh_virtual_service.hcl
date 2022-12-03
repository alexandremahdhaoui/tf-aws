resource "aws_appmesh_virtual_service" "aws_appmesh_virtual_service" {
  last_updated_date   = var.last_updated_date
  resource_owner      = var.resource_owner
  tags                = var.tags
  virtual_node_name   = var.virtual_node_name
  virtual_router      = var.virtual_router
  created_date        = var.created_date
  spec                = var.spec
  virtual_router_name = var.virtual_router_name
  id                  = var.id
  name                = var.name
  provider            = var.provider
  virtual_node        = var.virtual_node
  mesh_name           = var.mesh_name
  mesh_owner          = var.mesh_owner
  arn                 = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
  default     = ""
}
variable "virtual_node_name" {
  description = "(Required) Name of the virtual node that is acting as a service provider. Must be between 1 and 255 characters in length.The virtual_router object supports the following:"
  type        = string
}
variable "virtual_router" {
  description = "(Optional) Virtual router associated with a virtual service.The virtual_node object supports the following:"
  type        = string
  default     = ""
}
variable "created_date" {
  description = "Creation date of the virtual service."
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the virtual service."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
  type        = string
}
variable "id" {
  description = "ID of the virtual service."
  type        = string
}
variable "spec" {
  description = "(Required) Virtual service specification to apply."
  type        = string
}
variable "virtual_router_name" {
  description = "(Required) Name of the virtual router that is acting as a service provider. Must be between 1 and 255 characters in length.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "virtual_node" {
  description = "(Optional) Virtual node associated with a virtual service."
  type        = string
  default     = ""
}
variable "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual service. Must be between 1 and 255 characters in length."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the virtual service. Must be between 1 and 255 characters in length."
  type        = string
}
variable "provider" {
  description = "- (Optional) App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.The provider object supports the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the virtual service."
  type        = string
}
variable "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
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
output "mesh_name" {
  description = "(Required) Name of the service mesh in which to create the virtual service. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.mesh_name
}
output "name" {
  description = "(Required) Name to use for the virtual service. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.name
}
output "provider" {
  description = "- (Optional) App Mesh object that is acting as the provider for a virtual service. You can specify a single virtual node or virtual router.The provider object supports the following:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.provider
}
output "virtual_node" {
  description = "(Optional) Virtual node associated with a virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node
}
output "arn" {
  description = "ARN of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.arn
}
output "mesh_owner" {
  description = "(Optional) AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.mesh_owner
}
output "virtual_node_name" {
  description = "(Required) Name of the virtual node that is acting as a service provider. Must be between 1 and 255 characters in length.The virtual_router object supports the following:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_node_name
}
output "virtual_router" {
  description = "(Optional) Virtual router associated with a virtual service.The virtual_node object supports the following:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_router
}
output "created_date" {
  description = "Creation date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.created_date
}
output "last_updated_date" {
  description = "Last update date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.resource_owner
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.tags
}
output "id" {
  description = "ID of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.id
}
output "spec" {
  description = "(Required) Virtual service specification to apply."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.spec
}
output "virtual_router_name" {
  description = "(Required) Name of the virtual router that is acting as a service provider. Must be between 1 and 255 characters in length.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.virtual_router_name
}
output "id" {
  description = "ID of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.id
}
output "last_updated_date" {
  description = "Last update date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.last_updated_date
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.resource_owner
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.tags_all
}
output "arn" {
  description = "ARN of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.arn
}
output "created_date" {
  description = "Creation date of the virtual service."
  value       = aws_appmesh_virtual_service.aws_appmesh_virtual_service.created_date
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
      "kind/name"                   = "aws_appmesh_virtual_service"
      "kind/version"                = "v0.1.0"
    }
  }
}
