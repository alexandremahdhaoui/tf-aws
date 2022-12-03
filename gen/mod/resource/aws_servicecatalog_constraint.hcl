resource "aws_servicecatalog_constraint" "aws_servicecatalog_constraint" {
  RESOURCE_UPDATE = var.RESOURCE_UPDATE
  read            = var.read
  STACKSET        = var.STACKSET
  TEMPLATE        = var.TEMPLATE
  create          = var.create
  id              = var.id
  NOTIFICATION    = var.NOTIFICATION
  description     = var.description
  owner           = var.owner
  type            = var.type
  LAUNCH          = var.LAUNCH
  accept_language = var.accept_language
  delete          = var.delete
  parameters      = var.parameters
  portfolio_id    = var.portfolio_id
  product_id      = var.product_id
  update          = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "RESOURCE_UPDATE" {
  description = ": Specify the TagUpdatesOnProvisionedProduct property as follows. The TagUpdatesOnProvisionedProduct property accepts a string value of ALLOWED or NOT_ALLOWED."
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "Constraint identifier."
  type        = string
  default     = ""
}
variable "STACKSET" {
  description = ": Specify the Parameters property as follows. You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one STACKSET constraint on on an aws_servicecatalog_product and aws_servicecatalog_portfolio. Products with a STACKSET constraint will launch an AWS CloudFormation stack set."
  type        = string
  default     = ""
}
variable "TEMPLATE" {
  description = ": Specify the Rules property. For more information, see Template Constraint Rules.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "owner" {
  description = "Owner of the constraint.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of constraint. Valid values are LAUNCH, NOTIFICATION, RESOURCE_UPDATE, STACKSET, and TEMPLATE."
  type        = string
}
variable "NOTIFICATION" {
  description = ": Specify the NotificationArns property as follows:"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the constraint.parametersThe type you specify determines what must be included in the parameters JSON:"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "parameters" {
  description = "(Required) Constraint parameters in JSON format. The syntax depends on the constraint type. See details below."
  type        = string
}
variable "portfolio_id" {
  description = "(Required) Portfolio identifier."
  type        = string
}
variable "product_id" {
  description = "(Required) Product identifier."
  type        = string
}
variable "update" {
  description = "(Default 3m)"
  type        = string
  default     = ""
}
variable "LAUNCH" {
  description = ": You are required to specify either the RoleArn or the LocalRoleName but can't use both. If you specify the LocalRoleName property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account. The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint. You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one LAUNCH constraint on an aws_servicecatalog_product and aws_servicecatalog_portfolio. Specify the RoleArn and LocalRoleName properties as follows:"
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
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
output "TEMPLATE" {
  description = ": Specify the Rules property. For more information, see Template Constraint Rules.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.TEMPLATE
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.create
}
output "id" {
  description = "Constraint identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.id
}
output "STACKSET" {
  description = ": Specify the Parameters property as follows. You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one STACKSET constraint on on an aws_servicecatalog_product and aws_servicecatalog_portfolio. Products with a STACKSET constraint will launch an AWS CloudFormation stack set."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.STACKSET
}
output "description" {
  description = "(Optional) Description of the constraint.parametersThe type you specify determines what must be included in the parameters JSON:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.description
}
output "owner" {
  description = "Owner of the constraint.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.owner
}
output "type" {
  description = "(Required) Type of constraint. Valid values are LAUNCH, NOTIFICATION, RESOURCE_UPDATE, STACKSET, and TEMPLATE."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.type
}
output "NOTIFICATION" {
  description = ": Specify the NotificationArns property as follows:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.NOTIFICATION
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.accept_language
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.delete
}
output "parameters" {
  description = "(Required) Constraint parameters in JSON format. The syntax depends on the constraint type. See details below."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.parameters
}
output "portfolio_id" {
  description = "(Required) Portfolio identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.portfolio_id
}
output "product_id" {
  description = "(Required) Product identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.product_id
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.update
}
output "LAUNCH" {
  description = ": You are required to specify either the RoleArn or the LocalRoleName but can't use both. If you specify the LocalRoleName property, when an account uses the launch constraint, the IAM role with that name in the account will be used. This allows launch-role constraints to be account-agnostic so the administrator can create fewer resources per shared account. The given role name must exist in the account used to create the launch constraint and the account of the user who launches a product with this launch constraint. You cannot have both a LAUNCH and a STACKSET constraint. You also cannot have more than one LAUNCH constraint on an aws_servicecatalog_product and aws_servicecatalog_portfolio. Specify the RoleArn and LocalRoleName properties as follows:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.LAUNCH
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.read
}
output "RESOURCE_UPDATE" {
  description = ": Specify the TagUpdatesOnProvisionedProduct property as follows. The TagUpdatesOnProvisionedProduct property accepts a string value of ALLOWED or NOT_ALLOWED."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.RESOURCE_UPDATE
}
output "create" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.create
}
output "delete" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.delete
}
output "id" {
  description = "Constraint identifier."
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.id
}
output "owner" {
  description = "Owner of the constraint.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.owner
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.read
}
output "update" {
  description = "(Default 3m)"
  value       = aws_servicecatalog_constraint.aws_servicecatalog_constraint.update
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
      "kind/name"                   = "aws_servicecatalog_constraint"
      "kind/version"                = "v0.1.0"
    }
  }
}
