datasource "aws_iam_policy_document" "aws_iam_policy_document" {
  policy_id                 = var.policy_id
  principals                = var.principals
  resources                 = var.resources
  values                    = var.values
  variable                  = var.variable
  version                   = var.version
  effect                    = var.effect
  identifiers               = var.identifiers
  override_json             = var.override_json
  sid                       = var.sid
  source_json               = var.source_json
  source_policy_documents   = var.source_policy_documents
  statement                 = var.statement
  test                      = var.test
  condition                 = var.condition
  not_principals            = var.not_principals
  override_policy_documents = var.override_policy_documents
  type                      = var.type
  actions                   = var.actions
  not_actions               = var.not_actions
  not_resources             = var.not_resources
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "actions" {
  description = " (Optional) - List of actions that this statement either allows or denies. For example, [\"ec2:RunInstances\", \"s3:*\"]."
  type        = string
  default     = ""
}
variable "not_actions" {
  description = " (Optional) - List of actions that this statement does emnot apply to. Use to apply a policy statement to all actions emexcept those listed."
  type        = string
  default     = ""
}
variable "not_resources" {
  description = " (Optional) - List of resource ARNs that this statement does emnot apply to. Use to apply a policy statement to all resources emexcept those listed. Conflicts with resources."
  type        = string
  default     = ""
}
variable "policy_id" {
  description = " (Optional) - ID for the policy document."
  type        = string
  default     = ""
}
variable "principals" {
  description = " (Optional) - Configuration block for principals. Detailed below."
  type        = string
  default     = ""
}
variable "resources" {
  description = " (Optional) - List of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with not_resources."
  type        = string
  default     = ""
}
variable "variable" {
  description = " (Required) Name of a Context Variable to apply the condition to. Context variables may either be standard AWS variables starting with aws: or service-specific variables prefixed with the service name.principals and not_principalsThe principals and not_principals arguments define to whom a statement applies or does not apply, respectively.~> strongNOTE: Even though the IAM Documentation states that \"Principal\": \"*\" and \"Principal\": {\"AWS\": \"*\"} are equivalent, those principal elements have different behavior in some situations, e.g., IAM Role Trust Policy. To have Terraform render JSON containing \"Principal\": \"*\", use type = \"*\" and identifiers = [\"*\"]. To have Terraform render JSON containing \"Principal\": {\"AWS\": \"*\"}, use type = \"AWS\" and identifiers = [\"*\"].-> For more information about AWS principals, refer to the AWS Identity and Access Management User Guide: AWS JSON policy elements: Principal."
  type        = string
}
variable "version" {
  description = " (Optional) - IAM policy document version. Valid values are 2008-10-17 and 2012-10-17. Defaults to 2012-10-17. For more information, see the AWS IAM User Guide.statement"
  type        = string
  default     = ""
}
variable "effect" {
  description = " (Optional) - Whether this statement allows or denies the given actions. Valid values are Allow and Deny. Defaults to Allow."
  type        = string
  default     = ""
}
variable "identifiers" {
  description = " (Required) List of identifiers for principals. When type is AWS, these are IAM principal ARNs, e.g., arn:aws:iam::12345678901:role/yak-role.  When type is Service, these are AWS Service roles, e.g., lambda.amazonaws.com. When type is Federated, these are web identity users or SAML provider ARNs, e.g., accounts.google.com or arn:aws:iam::12345678901:saml-provider/yak-saml-provider. When type is CanonicalUser, these are canonical user IDs, e.g., 79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be."
  type        = string
}
variable "override_json" {
  description = " (Optional, strongDeprecated use the override_policy_documents attribute instead) - IAM policy document whose statements with non-blank sids will override statements with the same sid from documents assigned to the source_json, source_policy_documents, and override_policy_documents arguments. Non-overriding statements will be added to the exported document.~> strongNOTE: Statements without a sid cannot be overridden. In other words, a statement without a sid from documents assigned to the source_json or source_policy_documents arguments cannot be overridden by statements from documents assigned to the override_json or override_policy_documents arguments."
  type        = string
  default     = ""
}
variable "values" {
  description = " (Required) Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an \"OR\" boolean operation."
  type        = string
}
variable "source_json" {
  description = " (Optional, strongDeprecated use the source_policy_documents attribute instead) - IAM policy document used as a base for the exported policy document. Statements with the same sid from documents assigned to the override_json and override_policy_documents arguments will override source statements."
  type        = string
  default     = ""
}
variable "source_policy_documents" {
  description = " (Optional) - List of IAM policy documents that are merged together into the exported document. Statements defined in source_policy_documents or source_json must have unique sids. Statements with the same sid from documents assigned to the override_json and override_policy_documents arguments will override source statements."
  type        = string
  default     = ""
}
variable "statement" {
  description = " (Optional) - Configuration block for a policy statement. Detailed below."
  type        = string
  default     = ""
}
variable "test" {
  description = " (Required) Name of the IAM condition operator to evaluate."
  type        = string
}
variable "condition" {
  description = " (Optional) - Configuration block for a condition. Detailed below."
  type        = string
  default     = ""
}
variable "not_principals" {
  description = " (Optional) - Like principals except these are principals that the statement does emnot apply to."
  type        = string
  default     = ""
}
variable "override_policy_documents" {
  description = " (Optional) - List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank sids will override statements with the same sid from earlier documents in the list. Statements with non-blank sids will also override statements with the same sid from documents provided in the source_json and source_policy_documents arguments.  Non-overriding statements will be added to the exported document."
  type        = string
  default     = ""
}
variable "sid" {
  description = " (Optional) - Sid (statement ID) is an identifier for a policy statement.conditionA condition constrains whether a statement applies in a particular situation. Conditions can be specific to an AWS service. When using multiple condition blocks, they must emall evaluate to true for the policy statement to apply. In other words, AWS evaluates the conditions as though with an \"AND\" boolean operation."
  type        = string
  default     = ""
}
variable "type" {
  description = " (Required) Type of principal. Valid values include AWS, Service, Federated, CanonicalUser and *.The following attribute is exported:"
  type        = string
}
output "source_policy_documents" {
  description = " (Optional) - List of IAM policy documents that are merged together into the exported document. Statements defined in source_policy_documents or source_json must have unique sids. Statements with the same sid from documents assigned to the override_json and override_policy_documents arguments will override source statements."
  value       = aws_iam_policy_document.aws_iam_policy_document.source_policy_documents
}
output "statement" {
  description = " (Optional) - Configuration block for a policy statement. Detailed below."
  value       = aws_iam_policy_document.aws_iam_policy_document.statement
}
output "test" {
  description = " (Required) Name of the IAM condition operator to evaluate."
  value       = aws_iam_policy_document.aws_iam_policy_document.test
}
output "condition" {
  description = " (Optional) - Configuration block for a condition. Detailed below."
  value       = aws_iam_policy_document.aws_iam_policy_document.condition
}
output "not_principals" {
  description = " (Optional) - Like principals except these are principals that the statement does emnot apply to."
  value       = aws_iam_policy_document.aws_iam_policy_document.not_principals
}
output "override_policy_documents" {
  description = " (Optional) - List of IAM policy documents that are merged together into the exported document. In merging, statements with non-blank sids will override statements with the same sid from earlier documents in the list. Statements with non-blank sids will also override statements with the same sid from documents provided in the source_json and source_policy_documents arguments.  Non-overriding statements will be added to the exported document."
  value       = aws_iam_policy_document.aws_iam_policy_document.override_policy_documents
}
output "sid" {
  description = " (Optional) - Sid (statement ID) is an identifier for a policy statement.conditionA condition constrains whether a statement applies in a particular situation. Conditions can be specific to an AWS service. When using multiple condition blocks, they must emall evaluate to true for the policy statement to apply. In other words, AWS evaluates the conditions as though with an \"AND\" boolean operation."
  value       = aws_iam_policy_document.aws_iam_policy_document.sid
}
output "source_json" {
  description = " (Optional, strongDeprecated use the source_policy_documents attribute instead) - IAM policy document used as a base for the exported policy document. Statements with the same sid from documents assigned to the override_json and override_policy_documents arguments will override source statements."
  value       = aws_iam_policy_document.aws_iam_policy_document.source_json
}
output "type" {
  description = " (Required) Type of principal. Valid values include AWS, Service, Federated, CanonicalUser and *.The following attribute is exported:"
  value       = aws_iam_policy_document.aws_iam_policy_document.type
}
output "actions" {
  description = " (Optional) - List of actions that this statement either allows or denies. For example, [\"ec2:RunInstances\", \"s3:*\"]."
  value       = aws_iam_policy_document.aws_iam_policy_document.actions
}
output "not_actions" {
  description = " (Optional) - List of actions that this statement does emnot apply to. Use to apply a policy statement to all actions emexcept those listed."
  value       = aws_iam_policy_document.aws_iam_policy_document.not_actions
}
output "not_resources" {
  description = " (Optional) - List of resource ARNs that this statement does emnot apply to. Use to apply a policy statement to all resources emexcept those listed. Conflicts with resources."
  value       = aws_iam_policy_document.aws_iam_policy_document.not_resources
}
output "policy_id" {
  description = " (Optional) - ID for the policy document."
  value       = aws_iam_policy_document.aws_iam_policy_document.policy_id
}
output "principals" {
  description = " (Optional) - Configuration block for principals. Detailed below."
  value       = aws_iam_policy_document.aws_iam_policy_document.principals
}
output "resources" {
  description = " (Optional) - List of resource ARNs that this statement applies to. This is required by AWS if used for an IAM policy. Conflicts with not_resources."
  value       = aws_iam_policy_document.aws_iam_policy_document.resources
}
output "version" {
  description = " (Optional) - IAM policy document version. Valid values are 2008-10-17 and 2012-10-17. Defaults to 2012-10-17. For more information, see the AWS IAM User Guide.statement"
  value       = aws_iam_policy_document.aws_iam_policy_document.version
}
output "effect" {
  description = " (Optional) - Whether this statement allows or denies the given actions. Valid values are Allow and Deny. Defaults to Allow."
  value       = aws_iam_policy_document.aws_iam_policy_document.effect
}
output "identifiers" {
  description = " (Required) List of identifiers for principals. When type is AWS, these are IAM principal ARNs, e.g., arn:aws:iam::12345678901:role/yak-role.  When type is Service, these are AWS Service roles, e.g., lambda.amazonaws.com. When type is Federated, these are web identity users or SAML provider ARNs, e.g., accounts.google.com or arn:aws:iam::12345678901:saml-provider/yak-saml-provider. When type is CanonicalUser, these are canonical user IDs, e.g., 79a59df900b949e55d96a1e698fbacedfd6e09d98eacf8f8d5218e7cd47ef2be."
  value       = aws_iam_policy_document.aws_iam_policy_document.identifiers
}
output "override_json" {
  description = " (Optional, strongDeprecated use the override_policy_documents attribute instead) - IAM policy document whose statements with non-blank sids will override statements with the same sid from documents assigned to the source_json, source_policy_documents, and override_policy_documents arguments. Non-overriding statements will be added to the exported document.~> strongNOTE: Statements without a sid cannot be overridden. In other words, a statement without a sid from documents assigned to the source_json or source_policy_documents arguments cannot be overridden by statements from documents assigned to the override_json or override_policy_documents arguments."
  value       = aws_iam_policy_document.aws_iam_policy_document.override_json
}
output "values" {
  description = " (Required) Values to evaluate the condition against. If multiple values are provided, the condition matches if at least one of them applies. That is, AWS evaluates multiple values as though using an \"OR\" boolean operation."
  value       = aws_iam_policy_document.aws_iam_policy_document.values
}
output "variable" {
  description = " (Required) Name of a Context Variable to apply the condition to. Context variables may either be standard AWS variables starting with aws: or service-specific variables prefixed with the service name.principals and not_principalsThe principals and not_principals arguments define to whom a statement applies or does not apply, respectively.~> strongNOTE: Even though the IAM Documentation states that \"Principal\": \"*\" and \"Principal\": {\"AWS\": \"*\"} are equivalent, those principal elements have different behavior in some situations, e.g., IAM Role Trust Policy. To have Terraform render JSON containing \"Principal\": \"*\", use type = \"*\" and identifiers = [\"*\"]. To have Terraform render JSON containing \"Principal\": {\"AWS\": \"*\"}, use type = \"AWS\" and identifiers = [\"*\"].-> For more information about AWS principals, refer to the AWS Identity and Access Management User Guide: AWS JSON policy elements: Principal."
  value       = aws_iam_policy_document.aws_iam_policy_document.variable
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
}
