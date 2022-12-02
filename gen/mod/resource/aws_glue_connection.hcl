resource "aws_glue_connection" "aws_glue_connection" {
  connection_type                  = var.connection_type
  description                      = var.description
  name                             = var.name
  security_group_id_list           = var.security_group_id_list
  subnet_id                        = var.subnet_id
  tags                             = var.tags
  catalog_id                       = var.catalog_id
  connection_properties            = var.connection_properties
  id                               = var.id
  match_criteria                   = var.match_criteria
  physical_connection_requirements = var.physical_connection_requirements
  arn                              = var.arn
  availability_zone                = var.availability_zone
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "catalog_id" {
  description = " – (Optional) The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default."
  type        = string
  default     = ""
}
variable "connection_properties" {
  description = " – (Optional) A map of key-value pairs used as parameters for this connection."
  type        = string
  default     = ""
}
variable "connection_type" {
  description = " – (Optional) The type of the connection. Supported are: CUSTOM, JDBC, KAFKA, MARKETPLACE, MONGODB, and NETWORK. Defaults to JBDC."
  type        = string
  default     = ""
}
variable "description" {
  description = " – (Optional) Description of the connection."
  type        = string
  default     = ""
}
variable "name" {
  description = " – (Required) The name of the connection."
  type        = string
}
variable "security_group_id_list" {
  description = "(Optional) The security group ID list used by the connection."
  type        = string
  default     = ""
}
variable "subnet_id" {
  description = "(Optional) The subnet ID used by the connection.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.physical_connection_requirements"
  type        = string
  default     = ""
}
variable "arn" {
  description = "The ARN of the Glue Connection."
  type        = string
}
variable "availability_zone" {
  description = "(Optional) The availability zone of the connection. This field is redundant and implied by subnet_id, but is currently an api requirement."
  type        = string
  default     = ""
}
variable "id" {
  description = "Catalog ID and name of the connection"
  type        = string
}
variable "match_criteria" {
  description = " – (Optional) A list of criteria that can be used in selecting this connection."
  type        = string
  default     = ""
}
variable "physical_connection_requirements" {
  description = "(Optional) A map of physical connection requirements, such as VPC and SecurityGroup. Defined below."
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
output "match_criteria" {
  description = " – (Optional) A list of criteria that can be used in selecting this connection."
  value       = aws_glue_connection.aws_glue_connection.match_criteria
}
output "physical_connection_requirements" {
  description = "(Optional) A map of physical connection requirements, such as VPC and SecurityGroup. Defined below."
  value       = aws_glue_connection.aws_glue_connection.physical_connection_requirements
}
output "arn" {
  description = "The ARN of the Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.arn
}
output "availability_zone" {
  description = "(Optional) The availability zone of the connection. This field is redundant and implied by subnet_id, but is currently an api requirement."
  value       = aws_glue_connection.aws_glue_connection.availability_zone
}
output "id" {
  description = "Catalog ID and name of the connection"
  value       = aws_glue_connection.aws_glue_connection.id
}
output "description" {
  description = " – (Optional) Description of the connection."
  value       = aws_glue_connection.aws_glue_connection.description
}
output "name" {
  description = " – (Required) The name of the connection."
  value       = aws_glue_connection.aws_glue_connection.name
}
output "security_group_id_list" {
  description = "(Optional) The security group ID list used by the connection."
  value       = aws_glue_connection.aws_glue_connection.security_group_id_list
}
output "subnet_id" {
  description = "(Optional) The subnet ID used by the connection.In addition to all arguments above, the following attributes are exported:"
  value       = aws_glue_connection.aws_glue_connection.subnet_id
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.physical_connection_requirements"
  value       = aws_glue_connection.aws_glue_connection.tags
}
output "catalog_id" {
  description = " – (Optional) The ID of the Data Catalog in which to create the connection. If none is supplied, the AWS account ID is used by default."
  value       = aws_glue_connection.aws_glue_connection.catalog_id
}
output "connection_properties" {
  description = " – (Optional) A map of key-value pairs used as parameters for this connection."
  value       = aws_glue_connection.aws_glue_connection.connection_properties
}
output "connection_type" {
  description = " – (Optional) The type of the connection. Supported are: CUSTOM, JDBC, KAFKA, MARKETPLACE, MONGODB, and NETWORK. Defaults to JBDC."
  value       = aws_glue_connection.aws_glue_connection.connection_type
}
output "arn" {
  description = "The ARN of the Glue Connection."
  value       = aws_glue_connection.aws_glue_connection.arn
}
output "id" {
  description = "Catalog ID and name of the connection"
  value       = aws_glue_connection.aws_glue_connection.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_glue_connection.aws_glue_connection.tags_all
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
      "kind/name"                   = "aws_glue_connection"
      "kind/version"                = "v0.1.0"
    }
  }
}
