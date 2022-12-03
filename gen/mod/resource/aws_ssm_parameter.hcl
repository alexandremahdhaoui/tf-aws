resource "aws_ssm_parameter" "aws_ssm_parameter" {
  value           = var.value
  name            = var.name
  description     = var.description
  insecure_value  = var.insecure_value
  tags            = var.tags
  tags_all        = var.tags_all
  type            = var.type
  allowed_pattern = var.allowed_pattern
  tier            = var.tier
  data_type       = var.data_type
  key_id          = var.key_id
  overwrite       = var.overwrite
  version         = var.version
  arn             = var.arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "insecure_value" {
  description = "(Optional, exactly one of value or insecure_value is required) Value of the parameter. strongUse caution: This value is emnever marked as sensitive in the Terraform plan output. This argument is not valid with a type of SecureString."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Type of the parameter. Valid types are String, StringList and SecureString."
  type        = string
}
variable "allowed_pattern" {
  description = "(Optional) Regular expression used to validate the parameter value."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the parameter."
  type        = string
  default     = ""
}
variable "data_type" {
  description = "(Optional) Data type of the parameter. Valid values: text, aws:ssm:integration and aws:ec2:image for AMI format, see the Native parameter support for Amazon Machine Image IDs."
  type        = string
  default     = ""
}
variable "tier" {
  description = "(Optional) Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are Standard, Advanced, and Intelligent-Tiering. Downgrading an Advanced tier parameter to Standard will recreate the resource. For more information on parameter tiers, see the AWS SSM Parameter tier comparison and guide."
  type        = string
  default     = ""
}
variable "overwrite" {
  description = "(Optional) Overwrite an existing parameter. If not specified, will default to false if the resource has not been created by terraform to avoid overwrite of existing resource and will default to true otherwise (terraform lifecycle rules should then be used to manage the update behavior)."
  type        = string
  default     = ""
}
variable "version" {
  description = "Version of the parameter."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the parameter."
  type        = string
  default     = ""
}
variable "key_id" {
  description = "(Optional) KMS key ID or ARN for encrypting a SecureString."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name of the parameter. If the name contains a path (e.g., any forward slashes (/)), it must be fully qualified with a leading forward slash (/). For additional requirements and constraints, see the AWS SSM User Guide."
  type        = string
}
variable "value" {
  description = "(Optional, exactly one of value or insecure_value is required) Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type. In Terraform CLI version 0.15 and later, this may require additional configuration handling for certain scenarios. For more information, see the Terraform v0.15 Upgrade Guide.~> strongNOTE: aws:ssm:integration data_type parameters must be of the type SecureString and the name must start with the prefix /d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/. See here for information on the usage of aws:ssm:integration parameters.In addition to all arguments above, the following attributes are exported:"
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
output "arn" {
  description = "ARN of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.arn
}
output "key_id" {
  description = "(Optional) KMS key ID or ARN for encrypting a SecureString."
  value       = aws_ssm_parameter.aws_ssm_parameter.key_id
}
output "overwrite" {
  description = "(Optional) Overwrite an existing parameter. If not specified, will default to false if the resource has not been created by terraform to avoid overwrite of existing resource and will default to true otherwise (terraform lifecycle rules should then be used to manage the update behavior)."
  value       = aws_ssm_parameter.aws_ssm_parameter.overwrite
}
output "version" {
  description = "Version of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.version
}
output "name" {
  description = "(Required) Name of the parameter. If the name contains a path (e.g., any forward slashes (/)), it must be fully qualified with a leading forward slash (/). For additional requirements and constraints, see the AWS SSM User Guide."
  value       = aws_ssm_parameter.aws_ssm_parameter.name
}
output "value" {
  description = "(Optional, exactly one of value or insecure_value is required) Value of the parameter. This value is always marked as sensitive in the Terraform plan output, regardless of type. In Terraform CLI version 0.15 and later, this may require additional configuration handling for certain scenarios. For more information, see the Terraform v0.15 Upgrade Guide.~> strongNOTE: aws:ssm:integration data_type parameters must be of the type SecureString and the name must start with the prefix /d9d01087-4a3f-49e0-b0b4-d568d7826553/ssm/integrations/webhook/. See here for information on the usage of aws:ssm:integration parameters.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ssm_parameter.aws_ssm_parameter.value
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ssm_parameter.aws_ssm_parameter.tags_all
}
output "type" {
  description = "(Required) Type of the parameter. Valid types are String, StringList and SecureString."
  value       = aws_ssm_parameter.aws_ssm_parameter.type
}
output "allowed_pattern" {
  description = "(Optional) Regular expression used to validate the parameter value."
  value       = aws_ssm_parameter.aws_ssm_parameter.allowed_pattern
}
output "description" {
  description = "(Optional) Description of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.description
}
output "insecure_value" {
  description = "(Optional, exactly one of value or insecure_value is required) Value of the parameter. strongUse caution: This value is emnever marked as sensitive in the Terraform plan output. This argument is not valid with a type of SecureString."
  value       = aws_ssm_parameter.aws_ssm_parameter.insecure_value
}
output "tags" {
  description = "(Optional) Map of tags to assign to the object. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ssm_parameter.aws_ssm_parameter.tags
}
output "data_type" {
  description = "(Optional) Data type of the parameter. Valid values: text, aws:ssm:integration and aws:ec2:image for AMI format, see the Native parameter support for Amazon Machine Image IDs."
  value       = aws_ssm_parameter.aws_ssm_parameter.data_type
}
output "tier" {
  description = "(Optional) Parameter tier to assign to the parameter. If not specified, will use the default parameter tier for the region. Valid tiers are Standard, Advanced, and Intelligent-Tiering. Downgrading an Advanced tier parameter to Standard will recreate the resource. For more information on parameter tiers, see the AWS SSM Parameter tier comparison and guide."
  value       = aws_ssm_parameter.aws_ssm_parameter.tier
}
output "arn" {
  description = "ARN of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.arn
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ssm_parameter.aws_ssm_parameter.tags_all
}
output "version" {
  description = "Version of the parameter."
  value       = aws_ssm_parameter.aws_ssm_parameter.version
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
      "kind/name"                   = "aws_ssm_parameter"
      "kind/version"                = "v0.1.0"
    }
  }
}
