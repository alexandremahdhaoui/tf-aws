resource "aws_servicecatalog_provisioning_artifact" "aws_servicecatalog_provisioning_artifact" {
  disable_template_validation = var.disable_template_validation
  read                        = var.read
  type                        = var.type
  update                      = var.update
  description                 = var.description
  guidance                    = var.guidance
  status                      = var.status
  active                      = var.active
  template_physical_id        = var.template_physical_id
  template_url                = var.template_url
  created_time                = var.created_time
  create                      = var.create
  delete                      = var.delete
  id                          = var.id
  name                        = var.name
  product_id                  = var.product_id
  accept_language             = var.accept_language
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  type        = string
  default     = ""
}
variable "guidance" {
  description = "(Optional) Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are DEFAULT and DEPRECATED. The default is DEFAULT. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version."
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of the provisioning artifact.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "active" {
  description = "(Optional) Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is true."
  type        = string
  default     = ""
}
variable "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  type        = string
}
variable "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
  type        = string
}
variable "created_time" {
  description = "Time when the provisioning artifact was created."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "Provisioning Artifact identifier and product identifier separated by a colon."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  type        = string
  default     = ""
}
variable "product_id" {
  description = "(Required) Identifier of the product."
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). The default value is en."
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
output "active" {
  description = "(Optional) Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is true."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.active
}
output "guidance" {
  description = "(Optional) Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are DEFAULT and DEPRECATED. The default is DEFAULT. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.guidance
}
output "status" {
  description = "Status of the provisioning artifact.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.status
}
output "created_time" {
  description = "Time when the provisioning artifact was created."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.created_time
}
output "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.template_physical_id
}
output "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.template_url
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). The default value is en."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.accept_language
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.create
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.delete
}
output "id" {
  description = "Provisioning Artifact identifier and product identifier separated by a colon."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.id
}
output "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.name
}
output "product_id" {
  description = "(Required) Identifier of the product."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.product_id
}
output "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.description
}
output "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.disable_template_validation
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.read
}
output "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.type
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.update
}
output "created_time" {
  description = "Time when the provisioning artifact was created."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.created_time
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.delete
}
output "id" {
  description = "Provisioning Artifact identifier and product identifier separated by a colon."
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.read
}
output "status" {
  description = "Status of the provisioning artifact.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.status
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.update
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_provisioning_artifact.aws_servicecatalog_provisioning_artifact.create
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
      "kind/name"                   = "aws_servicecatalog_provisioning_artifact"
      "kind/version"                = "v0.1.0"
    }
  }
}
