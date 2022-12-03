resource "aws_fms_policy" "aws_fms_policy" {
  name                               = var.name
  orgunit                            = var.orgunit
  resource_tags                      = var.resource_tags
  delete_unused_fm_managed_resources = var.delete_unused_fm_managed_resources
  include_map                        = var.include_map
  managed_service_data               = var.managed_service_data
  policy_update_token                = var.policy_update_token
  resource_type                      = var.resource_type
  tags                               = var.tags
  exclude_resource_tags              = var.exclude_resource_tags
  id                                 = var.id
  type                               = var.type
  remediation_enabled                = var.remediation_enabled
  resource_type_list                 = var.resource_type_list
  security_service_policy_data       = var.security_service_policy_data
  account                            = var.account
  delete_all_policy_resources        = var.delete_all_policy_resources
  exclude_map                        = var.exclude_map
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "exclude_resource_tags" {
  description = "(Required, Forces new resource) A boolean value, if true the tags that are specified in the resource_tags are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy."
  type        = string
}
variable "id" {
  description = "The AWS account ID of the AWS Firewall Manager administrator account."
  type        = string
}
variable "type" {
  description = "(Required, Forces new resource) The service that the policy is using to protect the resources. For the current list of supported types, please refer to the AWS Firewall Manager SecurityServicePolicyData API Type Reference.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "account" {
  description = "(Optional) A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy."
  type        = string
  default     = ""
}
variable "delete_all_policy_resources" {
  description = "(Optional) If true, the request will also perform a clean-up process. Defaults to true. More information can be found here AWS Firewall Manager delete policy"
  type        = string
  default     = ""
}
variable "exclude_map" {
  description = "(Optional) A map of lists of accounts and OU's to exclude from the policy."
  type        = string
  default     = ""
}
variable "remediation_enabled" {
  description = "(Required) A boolean value, indicates if the policy should automatically applied to resources that already exist in the account."
  type        = string
}
variable "resource_type_list" {
  description = "(Optional) A list of resource types to protect. Conflicts with resource_type. See the FMS API Reference for more information about supported values. Lists with only one element are not supported, instead use resource_type."
  type        = string
  default     = ""
}
variable "security_service_policy_data" {
  description = "(Required) The objects to include in Security Service Policy Data. Documented below."
  type        = string
}
variable "delete_unused_fm_managed_resources" {
  description = "(Optional) If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to false. More information can be found here AWS Firewall Manager policy contents"
  type        = string
  default     = ""
}
variable "include_map" {
  description = "(Optional) A map of lists of accounts and OU's to include in the policy."
  type        = string
  default     = ""
}
variable "managed_service_data" {
  description = " (Optional) Details about the service that are specific to the service type, in JSON format. For service type SHIELD_ADVANCED, this is an empty string. Examples depending on type can be found in the AWS Firewall Manager SecurityServicePolicyData API Reference."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required, Forces new resource) The friendly name of the AWS Firewall Manager Policy."
  type        = string
}
variable "orgunit" {
  description = "(Optional) A list of AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.You can specify inclusions or exclusions, but not both. If you specify an include_map, AWS Firewall Manager applies the policy to all accounts specified by the include_map, and does not evaluate any exclude_map specifications. If you do not specify an include_map, then Firewall Manager applies the policy to all accounts except for those specified by the exclude_map.security_service_policy_data Configuration Block"
  type        = string
  default     = ""
}
variable "resource_tags" {
  description = "(Optional) A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags."
  type        = string
  default     = ""
}
variable "policy_update_token" {
  description = "A unique identifier for each update to the policy."
  type        = string
}
variable "resource_type" {
  description = "(Optional) A resource type to protect. Conflicts with resource_type_list. See the FMS API Reference for more information about supported values."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.exclude_map Configuration Block"
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
output "delete_unused_fm_managed_resources" {
  description = "(Optional) If true, Firewall Manager will automatically remove protections from resources that leave the policy scope. Defaults to false. More information can be found here AWS Firewall Manager policy contents"
  value       = aws_fms_policy.aws_fms_policy.delete_unused_fm_managed_resources
}
output "include_map" {
  description = "(Optional) A map of lists of accounts and OU's to include in the policy."
  value       = aws_fms_policy.aws_fms_policy.include_map
}
output "managed_service_data" {
  description = " (Optional) Details about the service that are specific to the service type, in JSON format. For service type SHIELD_ADVANCED, this is an empty string. Examples depending on type can be found in the AWS Firewall Manager SecurityServicePolicyData API Reference."
  value       = aws_fms_policy.aws_fms_policy.managed_service_data
}
output "name" {
  description = "(Required, Forces new resource) The friendly name of the AWS Firewall Manager Policy."
  value       = aws_fms_policy.aws_fms_policy.name
}
output "orgunit" {
  description = "(Optional) A list of AWS Organizational Units that you want to include for this AWS FMS Policy. Specifying an OU is the equivalent of specifying all accounts in the OU and in any of its child OUs, including any child OUs and accounts that are added at a later time.You can specify inclusions or exclusions, but not both. If you specify an include_map, AWS Firewall Manager applies the policy to all accounts specified by the include_map, and does not evaluate any exclude_map specifications. If you do not specify an include_map, then Firewall Manager applies the policy to all accounts except for those specified by the exclude_map.security_service_policy_data Configuration Block"
  value       = aws_fms_policy.aws_fms_policy.orgunit
}
output "resource_tags" {
  description = "(Optional) A map of resource tags, that if present will filter protections on resources based on the exclude_resource_tags."
  value       = aws_fms_policy.aws_fms_policy.resource_tags
}
output "policy_update_token" {
  description = "A unique identifier for each update to the policy."
  value       = aws_fms_policy.aws_fms_policy.policy_update_token
}
output "resource_type" {
  description = "(Optional) A resource type to protect. Conflicts with resource_type_list. See the FMS API Reference for more information about supported values."
  value       = aws_fms_policy.aws_fms_policy.resource_type
}
output "tags" {
  description = "(Optional) Key-value mapping of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.exclude_map Configuration Block"
  value       = aws_fms_policy.aws_fms_policy.tags
}
output "exclude_resource_tags" {
  description = "(Required, Forces new resource) A boolean value, if true the tags that are specified in the resource_tags are not protected by this policy. If set to false and resource_tags are populated, resources that contain tags will be protected by this policy."
  value       = aws_fms_policy.aws_fms_policy.exclude_resource_tags
}
output "id" {
  description = "The AWS account ID of the AWS Firewall Manager administrator account."
  value       = aws_fms_policy.aws_fms_policy.id
}
output "type" {
  description = "(Required, Forces new resource) The service that the policy is using to protect the resources. For the current list of supported types, please refer to the AWS Firewall Manager SecurityServicePolicyData API Type Reference.In addition to all arguments above, the following attributes are exported:"
  value       = aws_fms_policy.aws_fms_policy.type
}
output "account" {
  description = "(Optional) A list of AWS Organization member Accounts that you want to include for this AWS FMS Policy."
  value       = aws_fms_policy.aws_fms_policy.account
}
output "delete_all_policy_resources" {
  description = "(Optional) If true, the request will also perform a clean-up process. Defaults to true. More information can be found here AWS Firewall Manager delete policy"
  value       = aws_fms_policy.aws_fms_policy.delete_all_policy_resources
}
output "exclude_map" {
  description = "(Optional) A map of lists of accounts and OU's to exclude from the policy."
  value       = aws_fms_policy.aws_fms_policy.exclude_map
}
output "remediation_enabled" {
  description = "(Required) A boolean value, indicates if the policy should automatically applied to resources that already exist in the account."
  value       = aws_fms_policy.aws_fms_policy.remediation_enabled
}
output "resource_type_list" {
  description = "(Optional) A list of resource types to protect. Conflicts with resource_type. See the FMS API Reference for more information about supported values. Lists with only one element are not supported, instead use resource_type."
  value       = aws_fms_policy.aws_fms_policy.resource_type_list
}
output "security_service_policy_data" {
  description = "(Required) The objects to include in Security Service Policy Data. Documented below."
  value       = aws_fms_policy.aws_fms_policy.security_service_policy_data
}
output "id" {
  description = "The AWS account ID of the AWS Firewall Manager administrator account."
  value       = aws_fms_policy.aws_fms_policy.id
}
output "policy_update_token" {
  description = "A unique identifier for each update to the policy."
  value       = aws_fms_policy.aws_fms_policy.policy_update_token
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_fms_policy.aws_fms_policy.tags_all
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
      "kind/name"                   = "aws_fms_policy"
      "kind/version"                = "v0.1.0"
    }
  }
}
