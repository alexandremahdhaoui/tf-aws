resource "aws_servicecatalog_product" "aws_servicecatalog_product" {
  arn                              = var.arn
  create                           = var.create
  id                               = var.id
  read                             = var.read
  support_description              = var.support_description
  support_url                      = var.support_url
  created_time                     = var.created_time
  description                      = var.description
  distributor                      = var.distributor
  has_default_path                 = var.has_default_path
  provisioning_artifact_parameters = var.provisioning_artifact_parameters
  tags                             = var.tags
  template_physical_id             = var.template_physical_id
  type                             = var.type
  accept_language                  = var.accept_language
  delete                           = var.delete
  disable_template_validation      = var.disable_template_validation
  name                             = var.name
  owner                            = var.owner
  status                           = var.status
  tags_all                         = var.tags_all
  template_url                     = var.template_url
  update                           = var.update
  support_email                    = var.support_email
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "support_email" {
  description = "(Optional) Contact email for product support."
  type        = string
  default     = ""
}
variable "support_url" {
  description = "(Optional) Contact URL for product support."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the product."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "support_description" {
  description = "(Optional) Support information about the product."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Tags to apply to the product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_artifact_parameters"
  type        = string
  default     = ""
}
variable "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "created_time" {
  description = "Time when the product was created."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  type        = string
  default     = ""
}
variable "distributor" {
  description = "(Optional) Distributor (i.e., vendor) of the product."
  type        = string
  default     = ""
}
variable "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  type        = string
  default     = ""
}
variable "provisioning_artifact_parameters" {
  description = "(Required) Configuration block for provisioning artifact (i.e., version) parameters. Detailed below."
  type        = string
}
variable "status" {
  description = "Status of the product."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 5m)"
  type        = string
  default     = ""
}
variable "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  type        = string
  default     = ""
}
variable "owner" {
  description = "(Required) Owner of the product."
  type        = string
}
variable "update" {
  description = "(Default 5m)"
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
output "provisioning_artifact_parameters" {
  description = "(Required) Configuration block for provisioning artifact (i.e., version) parameters. Detailed below."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.provisioning_artifact_parameters
}
output "tags" {
  description = "(Optional) Tags to apply to the product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_artifact_parameters"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags
}
output "template_physical_id" {
  description = "(Required if template_url is not provided) Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.template_physical_id
}
output "type" {
  description = "(Optional) Type of provisioning artifact. Valid values: CLOUD_FORMATION_TEMPLATE, MARKETPLACE_AMI, MARKETPLACE_CAR (Marketplace Clusters and AWS Resources).In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.type
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "description" {
  description = "(Optional) Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.description
}
output "distributor" {
  description = "(Optional) Distributor (i.e., vendor) of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.distributor
}
output "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "owner" {
  description = "(Required) Owner of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.owner
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags_all
}
output "template_url" {
  description = "(Required if template_physical_id is not provided) Template source as URL of the CloudFormation template in Amazon S3."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.template_url
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.accept_language
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.delete
}
output "disable_template_validation" {
  description = "(Optional) Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.disable_template_validation
}
output "name" {
  description = "(Optional) Name of the provisioning artifact (for example, v1, v2beta). No spaces are allowed."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.name
}
output "update" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.update
}
output "support_email" {
  description = "(Optional) Contact email for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_email
}
output "support_description" {
  description = "(Optional) Support information about the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_description
}
output "support_url" {
  description = "(Optional) Contact URL for product support."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.support_url
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
}
output "create" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.create
}
output "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.read
}
output "id" {
  description = "Product ID. For example, prod-dnigbtea24ste."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.id
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.read
}
output "status" {
  description = "Status of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.tags_all
}
output "update" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.update
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.delete
}
output "create" {
  description = "(Default 5m)"
  value       = aws_servicecatalog_product.aws_servicecatalog_product.create
}
output "created_time" {
  description = "Time when the product was created."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.created_time
}
output "has_default_path" {
  description = "Whether the product has a default path. If the product does not have a default path, call ListLaunchPaths to disambiguate between paths.  Otherwise, ListLaunchPaths is not required, and the output of ProductViewSummary can be used directly with DescribeProvisioningParameters."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.has_default_path
}
output "arn" {
  description = "ARN of the product."
  value       = aws_servicecatalog_product.aws_servicecatalog_product.arn
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
      "kind/name"                   = "aws_servicecatalog_product"
      "kind/version"                = "v0.1.0"
    }
  }
}
