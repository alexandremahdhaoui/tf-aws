resource "aws_db_proxy_endpoint" "aws_db_proxy_endpoint" {
  arn                    = var.arn
  endpoint               = var.endpoint
  id                     = var.id
  target_role            = var.target_role
  vpc_security_group_ids = var.vpc_security_group_ids
  vpc_subnet_ids         = var.vpc_subnet_ids
  create                 = var.create
  db_proxy_endpoint_name = var.db_proxy_endpoint_name
  db_proxy_name          = var.db_proxy_name
  is_default             = var.is_default
  tags                   = var.tags
  update                 = var.update
  vpc_id                 = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "target_role" {
  description = "(Optional) Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is READ_WRITE. Valid values are READ_WRITE and READ_ONLY."
  type        = string
}
variable "vpc_security_group_ids" {
  description = "(Optional) One or more VPC security group IDs to associate with the new proxy."
  type        = string
}
variable "vpc_subnet_ids" {
  description = "(Required) One or more VPC subnet IDs to associate with the new proxy."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy endpoint."
  type        = string
}
variable "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  type        = string
}
variable "id" {
  description = "The name of the proxy and proxy endpoint separated by /, DB-PROXY-NAME/DB-PROXY-ENDPOINT-NAME."
  type        = string
}
variable "is_default" {
  description = "Indicates whether this endpoint is the default endpoint for the associated DB proxy."
  type        = string
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID of the DB proxy endpoint.TimeoutsConfiguration options:"
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "db_proxy_endpoint_name" {
  description = "(Required) The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens."
  type        = string
}
variable "db_proxy_name" {
  description = "(Required) The name of the DB proxy associated with the DB proxy endpoint that you create."
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
output "db_proxy_name" {
  description = "(Required) The name of the DB proxy associated with the DB proxy endpoint that you create."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.db_proxy_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_default" {
  description = "Indicates whether this endpoint is the default endpoint for the associated DB proxy."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.is_default
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A mapping of tags to assign to the resource.In addition to all arguments above, the following attributes are exported:"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The VPC ID of the DB proxy endpoint.TimeoutsConfiguration options:"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "db_proxy_endpoint_name" {
  description = "(Required) The identifier for the proxy endpoint. An identifier must begin with a letter and must contain only ASCII letters, digits, and hyphens; it can't end with a hyphen or contain two consecutive hyphens."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.db_proxy_endpoint_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the proxy and proxy endpoint separated by /, DB-PROXY-NAME/DB-PROXY-ENDPOINT-NAME."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_role" {
  description = "(Optional) Indicates whether the DB proxy endpoint can be used for read/write or read-only operations. The default is READ_WRITE. Valid values are READ_WRITE and READ_ONLY."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.target_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_security_group_ids" {
  description = "(Optional) One or more VPC security group IDs to associate with the new proxy."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.vpc_security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_subnet_ids" {
  description = "(Required) One or more VPC subnet IDs to associate with the new proxy."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.vpc_subnet_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy endpoint."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "The endpoint that you can use to connect to the proxy. You include the endpoint value in the connection string for a database client application."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the proxy and proxy endpoint separated by /, DB-PROXY-NAME/DB-PROXY-ENDPOINT-NAME."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_default" {
  description = "Indicates whether this endpoint is the default endpoint for the associated DB proxy."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.is_default
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "The VPC ID of the DB proxy endpoint.TimeoutsConfiguration options:"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) for the proxy endpoint."
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_db_proxy_endpoint.aws_db_proxy_endpoint.delete
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
      "kind/name"                   = "aws_db_proxy_endpoint"
      "kind/version"                = "v0.1.0"
    }
  }
}
