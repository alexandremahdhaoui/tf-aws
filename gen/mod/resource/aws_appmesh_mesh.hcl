resource "aws_appmesh_mesh" "aws_appmesh_mesh" {
  name              = var.name
  tags              = var.tags
  egress_filter     = var.egress_filter
  id                = var.id
  last_updated_date = var.last_updated_date
  mesh_owner        = var.mesh_owner
  type              = var.type
  arn               = var.arn
  created_date      = var.created_date
  resource_owner    = var.resource_owner
  spec              = var.spec
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "mesh_owner" {
  description = "AWS account ID of the service mesh's owner."
  type        = string
}
variable "name" {
  description = "(Required) Name to use for the service mesh. Must be between 1 and 255 characters in length."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  type        = string
}
variable "egress_filter" {
  description = "- (Optional) Egress filter rules for the service mesh.The egress_filter object supports the following:"
  type        = string
}
variable "id" {
  description = "ID of the service mesh."
  type        = string
}
variable "last_updated_date" {
  description = "Last update date of the service mesh."
  type        = string
}
variable "spec" {
  description = "(Optional) Service mesh specification to apply."
  type        = string
}
variable "type" {
  description = "(Optional) Egress filter type. By default, the type is DROP_ALLALLOW_ALL and DROP_ALL.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "ARN of the service mesh."
  type        = string
}
variable "created_date" {
  description = "Creation date of the service mesh."
  type        = string
}
variable "resource_owner" {
  description = "Resource owner's AWS account ID."
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
output "type" {
  description = "(Optional) Egress filter type. By default, the type is DROP_ALLALLOW_ALL and DROP_ALL.In addition to all arguments above, the following attributes are exported:"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "spec" {
  description = "(Optional) Service mesh specification to apply."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.spec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name to use for the service mesh. Must be between 1 and 255 characters in length."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The spec object supports the following:"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_filter" {
  description = "- (Optional) Egress filter rules for the service mesh.The egress_filter object supports the following:"
  value       = aws_appmesh_mesh.aws_appmesh_mesh.egress_filter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mesh_owner" {
  description = "AWS account ID of the service mesh's owner."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.mesh_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "Last update date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mesh_owner" {
  description = "AWS account ID of the service mesh's owner."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.mesh_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_owner" {
  description = "Resource owner's AWS account ID."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.resource_owner
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "Creation date of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the service mesh."
  value       = aws_appmesh_mesh.aws_appmesh_mesh.id
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
      "kind/name"                   = "aws_appmesh_mesh"
      "kind/version"                = "v0.1.0"
    }
  }
}
