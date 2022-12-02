resource "aws_api_gateway_deployment" "aws_api_gateway_deployment" {
  description       = var.description
  execution_arn     = var.execution_arn
  stage_name        = var.stage_name
  variables         = var.variables
  triggers          = var.triggers
  id                = var.id
  invoke_url        = var.invoke_url
  rest_api_id       = var.rest_api_id
  stage_description = var.stage_description
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "triggers" {
  description = "(Optional) Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the terraform taint command."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the deployment"
  type        = string
}
variable "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  type        = string
}
variable "rest_api_id" {
  description = "(Required) REST API identifier."
  type        = string
}
variable "stage_description" {
  description = "(Optional) Description to set on the stage managed by the stage_name argument."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the deployment"
  type        = string
  default     = ""
}
variable "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
  type        = string
}
variable "stage_name" {
  description = "(Optional) Name of the stage to create with this deployment. If the specified stage already exists, it will be updated to point to the new deployment. We recommend using the aws_api_gateway_stage resource instead to manage stages."
  type        = string
  default     = ""
}
variable "variables" {
  description = "(Optional) Map to set on the stage managed by the stage_name argument.In addition to all arguments above, the following attributes are exported:"
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
output "stage_description" {
  description = "(Optional) Description to set on the stage managed by the stage_name argument."
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.stage_description
}
output "triggers" {
  description = "(Optional) Map of arbitrary keys and values that, when changed, will trigger a redeployment. To force a redeployment without changing these keys/values, use the terraform taint command."
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.triggers
}
output "id" {
  description = "ID of the deployment"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.id
}
output "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.invoke_url
}
output "rest_api_id" {
  description = "(Required) REST API identifier."
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.rest_api_id
}
output "variables" {
  description = "(Optional) Map to set on the stage managed by the stage_name argument.In addition to all arguments above, the following attributes are exported:"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.variables
}
output "description" {
  description = "(Optional) Description of the deployment"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.description
}
output "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.execution_arn
}
output "stage_name" {
  description = "(Optional) Name of the stage to create with this deployment. If the specified stage already exists, it will be updated to point to the new deployment. We recommend using the aws_api_gateway_stage resource instead to manage stages."
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.stage_name
}
output "execution_arn" {
  description = "Execution ARN to be used in lambda_permission's source_arnarn:aws:execute-api:eu-west-2:123456789012:z4675bid1j/prod"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.execution_arn
}
output "id" {
  description = "ID of the deployment"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.id
}
output "invoke_url" {
  description = "URL to invoke the API pointing to the stage,\ne.g., https://z4675bid1j.execute-api.eu-west-2.amazonaws.com/prod"
  value       = aws_api_gateway_deployment.aws_api_gateway_deployment.invoke_url
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
      "kind/name"                   = "aws_api_gateway_deployment"
      "kind/version"                = "v0.1.0"
    }
  }
}
