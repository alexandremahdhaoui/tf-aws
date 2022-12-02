resource "aws_secretsmanager_secret" "aws_secretsmanager_secret" {
  name_prefix                    = var.name_prefix
  rotation_enabled               = var.rotation_enabled
  rotation_lambda_arn            = var.rotation_lambda_arn
  tags_all                       = var.tags_all
  arn                            = var.arn
  automatically_after_days       = var.automatically_after_days
  region                         = var.region
  replica                        = var.replica
  status                         = var.status
  id                             = var.id
  name                           = var.name
  recovery_window_in_days        = var.recovery_window_in_days
  rotation_rules                 = var.rotation_rules
  tags                           = var.tags
  description                    = var.description
  force_overwrite_replica_secret = var.force_overwrite_replica_secret
  kms_key_id                     = var.kms_key_id
  last_accessed_date             = var.last_accessed_date
  policy                         = var.policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "region" {
  description = "(Required) Region for replicating the secret.rotation_rules"
  type        = string
}
variable "replica" {
  description = "Attributes of a replica are described below."
  type        = string
}
variable "status" {
  description = "Status can be InProgress, Failed, or InSync."
  type        = string
}
variable "arn" {
  description = "ARN of the secret."
  type        = string
}
variable "automatically_after_days" {
  description = "(Required) Specifies the number of days between automatic scheduled rotations of the secret.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "recovery_window_in_days" {
  description = "(Optional) Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30."
  type        = string
  default     = ""
}
variable "id" {
  description = "ARN of the secret."
  type        = string
}
variable "name" {
  description = "(Optional) Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Conflicts with name_prefix."
  type        = string
  default     = ""
}
variable "kms_key_id" {
  description = "(Optional) ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (aws/secretsmanager) in the region or creates one for use if non-existent."
  type        = string
  default     = ""
}
variable "last_accessed_date" {
  description = "Date that you last accessed the secret in the Region."
  type        = string
}
variable "policy" {
  description = "(Optional) Valid JSON document representing a resource policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Removing policy from your configuration or setting policy to null or an empty string (i.e., policy = \"\") emwill not delete the policy since it could have been set by aws_secretsmanager_secret_policy. To delete the policy, set it to \"{}\" (an empty JSON document)."
  type        = string
  default     = ""
}
variable "rotation_rules" {
  description = "(Optional, strongDEPRECATED) Configuration block for the rotation configuration of this secret. Defined below. Use the aws_secretsmanager_secret_rotation resource to manage this configuration instead. As of version 2.67.0, removal of this configuration will no longer remove rotation due to supporting the new resource. Either import the new resource and remove the configuration or manually remove rotation."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of user-defined tags that are attached to the secret. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.replica"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Description of the secret."
  type        = string
  default     = ""
}
variable "force_overwrite_replica_secret" {
  description = "(Optional) Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region."
  type        = string
  default     = ""
}
variable "rotation_lambda_arn" {
  description = "(Optional, strongDEPRECATED) ARN of the Lambda function that can rotate the secret. Use the aws_secretsmanager_secret_rotation resource to manage this configuration instead. As of version 2.67.0, removal of this configuration will no longer remove rotation due to supporting the new resource. Either import the new resource and remove the configuration or manually remove rotation."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.replica"
  type        = string
}
variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = ""
}
variable "rotation_enabled" {
  description = "Whether automatic rotation is enabled for this secret."
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
output "kms_key_id" {
  description = "(Optional) ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (aws/secretsmanager) in the region or creates one for use if non-existent."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.kms_key_id
}
output "last_accessed_date" {
  description = "Date that you last accessed the secret in the Region."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.last_accessed_date
}
output "policy" {
  description = "(Optional) Valid JSON document representing a resource policy. For more information about building AWS IAM policy documents with Terraform, see the AWS IAM Policy Document Guide. Removing policy from your configuration or setting policy to null or an empty string (i.e., policy = \"\") emwill not delete the policy since it could have been set by aws_secretsmanager_secret_policy. To delete the policy, set it to \"{}\" (an empty JSON document)."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.policy
}
output "rotation_rules" {
  description = "(Optional, strongDEPRECATED) Configuration block for the rotation configuration of this secret. Defined below. Use the aws_secretsmanager_secret_rotation resource to manage this configuration instead. As of version 2.67.0, removal of this configuration will no longer remove rotation due to supporting the new resource. Either import the new resource and remove the configuration or manually remove rotation."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_rules
}
output "tags" {
  description = "(Optional) Key-value map of user-defined tags that are attached to the secret. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.replica"
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.tags
}
output "description" {
  description = "(Optional) Description of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.description
}
output "force_overwrite_replica_secret" {
  description = "(Optional) Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.force_overwrite_replica_secret
}
output "rotation_lambda_arn" {
  description = "(Optional, strongDEPRECATED) ARN of the Lambda function that can rotate the secret. Use the aws_secretsmanager_secret_rotation resource to manage this configuration instead. As of version 2.67.0, removal of this configuration will no longer remove rotation due to supporting the new resource. Either import the new resource and remove the configuration or manually remove rotation."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_lambda_arn
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.replica"
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.tags_all
}
output "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.name_prefix
}
output "rotation_enabled" {
  description = "Whether automatic rotation is enabled for this secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_enabled
}
output "region" {
  description = "(Required) Region for replicating the secret.rotation_rules"
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.region
}
output "replica" {
  description = "Attributes of a replica are described below."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.replica
}
output "status" {
  description = "Status can be InProgress, Failed, or InSync."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.status
}
output "arn" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.arn
}
output "automatically_after_days" {
  description = "(Required) Specifies the number of days between automatic scheduled rotations of the secret.In addition to all arguments above, the following attributes are exported:"
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.automatically_after_days
}
output "recovery_window_in_days" {
  description = "(Optional) Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.recovery_window_in_days
}
output "id" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.id
}
output "name" {
  description = "(Optional) Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Conflicts with name_prefix."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.name
}
output "last_accessed_date" {
  description = "Date that you last accessed the secret in the Region."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.last_accessed_date
}
output "replica" {
  description = "Attributes of a replica are described below."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.replica
}
output "rotation_enabled" {
  description = "Whether automatic rotation is enabled for this secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.rotation_enabled
}
output "status" {
  description = "Status can be InProgress, Failed, or InSync."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.status
}
output "status_message" {
  description = "Message such as Replication succeeded or Secret with this name already exists in this region."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.status_message
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.replica"
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.tags_all
}
output "arn" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.arn
}
output "id" {
  description = "ARN of the secret."
  value       = aws_secretsmanager_secret.aws_secretsmanager_secret.id
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
      "kind/name"                   = "aws_secretsmanager_secret"
      "kind/version"                = "v0.1.0"
    }
  }
}
