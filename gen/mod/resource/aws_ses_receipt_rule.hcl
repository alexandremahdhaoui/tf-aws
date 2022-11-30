resource "aws_ses_receipt_rule" "aws_ses_receipt_rule" {
  sender            = var.sender
  function_arn      = var.function_arn
  header_value      = var.header_value
  message           = var.message
  add_header_action = var.add_header_action
  tls_policy        = var.tls_policy
  workmail_action   = var.workmail_action
  header_name       = var.header_name
  invocation_type   = var.invocation_type
  s3_action         = var.s3_action
  organization_arn  = var.organization_arn
  recipients        = var.recipients
  bounce_action     = var.bounce_action
  id                = var.id
  name              = var.name
  scan_enabled      = var.scan_enabled
  topic_arn         = var.topic_arn
  enabled           = var.enabled
  kms_key_arn       = var.kms_key_arn
  position          = var.position
  status_code       = var.status_code
  object_key_prefix = var.object_key_prefix
  smtp_reply_code   = var.smtp_reply_code
  sns_action        = var.sns_action
  lambda_action     = var.lambda_action
  rule_set_name     = var.rule_set_name
  stop_action       = var.stop_action
  scope             = var.scope
  after             = var.after
  bucket_name       = var.bucket_name
  encoding          = var.encoding
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "header_value" {
  description = "(Required) The value of the header to add"
  type        = string
}
variable "message" {
  description = "(Required) The message to send"
  type        = string
}
variable "sender" {
  description = "(Required) The email address of the sender"
  type        = string
}
variable "function_arn" {
  description = "(Required) The ARN of the Lambda function to invoke"
  type        = string
}
variable "tls_policy" {
  description = "(Optional) Require or Optional"
  type        = string
}
variable "add_header_action" {
  description = "(Optional) A list of Add Header Action blocks. Documented below."
  type        = string
}
variable "invocation_type" {
  description = "(Optional) Event or RequestResponse"
  type        = string
}
variable "s3_action" {
  description = "(Optional) A list of S3 Action blocks. Documented below."
  type        = string
}
variable "workmail_action" {
  description = "(Optional) A list of WorkMail Action blocks. Documented below.Add header actions support the following:"
  type        = string
}
variable "header_name" {
  description = "(Required) The name of the header to add"
  type        = string
}
variable "id" {
  description = "The SES receipt rule name."
  type        = string
}
variable "name" {
  description = "(Required) The name of the rule"
  type        = string
}
variable "organization_arn" {
  description = "(Required) The ARN of the WorkMail organization"
  type        = string
}
variable "recipients" {
  description = "(Optional) A list of email addresses"
  type        = string
}
variable "bounce_action" {
  description = "(Optional) A list of Bounce Action blocks. Documented below."
  type        = string
}
variable "kms_key_arn" {
  description = "(Optional) The ARN of the KMS key"
  type        = string
}
variable "position" {
  description = "(Required) The position of the action in the receipt ruleIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "scan_enabled" {
  description = "(Optional) If true, incoming emails will be scanned for spam and viruses"
  type        = string
}
variable "topic_arn" {
  description = "(Optional) The ARN of an SNS topic to notify"
  type        = string
}
variable "enabled" {
  description = "(Optional) If true, the rule will be enabled"
  type        = string
}
variable "smtp_reply_code" {
  description = "(Required) The RFC 5321 SMTP reply code"
  type        = string
}
variable "sns_action" {
  description = "(Optional) A list of SNS Action blocks. Documented below."
  type        = string
}
variable "status_code" {
  description = "(Optional) The RFC 3463 SMTP enhanced status code"
  type        = string
}
variable "object_key_prefix" {
  description = "(Optional) The key prefix of the S3 bucket"
  type        = string
}
variable "rule_set_name" {
  description = "(Required) The name of the rule set"
  type        = string
}
variable "stop_action" {
  description = "(Optional) A list of Stop Action blocks. Documented below."
  type        = string
}
variable "lambda_action" {
  description = "(Optional) A list of Lambda Action blocks. Documented below."
  type        = string
}
variable "bucket_name" {
  description = "(Required) The name of the S3 bucket"
  type        = string
}
variable "encoding" {
  description = "(Optional) The encoding to use for the email within the Amazon SNS notification. Default value is UTF-8.Stop actions support the following:"
  type        = string
}
variable "scope" {
  description = "(Required) The scope to apply. The only acceptable value is RuleSet."
  type        = string
}
variable "after" {
  description = "(Optional) The name of the rule to place this rule after"
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
output "enabled" {
  description = "(Optional) If true, the rule will be enabled"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_arn" {
  description = "(Optional) The ARN of the KMS key"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.kms_key_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "position" {
  description = "(Required) The position of the action in the receipt ruleIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.position
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scan_enabled" {
  description = "(Optional) If true, incoming emails will be scanned for spam and viruses"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.scan_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic_arn" {
  description = "(Optional) The ARN of an SNS topic to notify"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "object_key_prefix" {
  description = "(Optional) The key prefix of the S3 bucket"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.object_key_prefix
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "smtp_reply_code" {
  description = "(Required) The RFC 5321 SMTP reply code"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.smtp_reply_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sns_action" {
  description = "(Optional) A list of SNS Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.sns_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_code" {
  description = "(Optional) The RFC 3463 SMTP enhanced status code"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.status_code
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda_action" {
  description = "(Optional) A list of Lambda Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.lambda_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "rule_set_name" {
  description = "(Required) The name of the rule set"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.rule_set_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stop_action" {
  description = "(Optional) A list of Stop Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.stop_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "after" {
  description = "(Optional) The name of the rule to place this rule after"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.after
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_name" {
  description = "(Required) The name of the S3 bucket"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.bucket_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encoding" {
  description = "(Optional) The encoding to use for the email within the Amazon SNS notification. Default value is UTF-8.Stop actions support the following:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.encoding
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Required) The scope to apply. The only acceptable value is RuleSet."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "function_arn" {
  description = "(Required) The ARN of the Lambda function to invoke"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.function_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_value" {
  description = "(Required) The value of the header to add"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.header_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "message" {
  description = "(Required) The message to send"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sender" {
  description = "(Required) The email address of the sender"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.sender
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "add_header_action" {
  description = "(Optional) A list of Add Header Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.add_header_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tls_policy" {
  description = "(Optional) Require or Optional"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.tls_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "header_name" {
  description = "(Required) The name of the header to add"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.header_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "invocation_type" {
  description = "(Optional) Event or RequestResponse"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.invocation_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_action" {
  description = "(Optional) A list of S3 Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.s3_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workmail_action" {
  description = "(Optional) A list of WorkMail Action blocks. Documented below.Add header actions support the following:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.workmail_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bounce_action" {
  description = "(Optional) A list of Bounce Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.bounce_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The SES receipt rule name."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the rule"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "organization_arn" {
  description = "(Required) The ARN of the WorkMail organization"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.organization_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "recipients" {
  description = "(Optional) A list of email addresses"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.recipients
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The SES receipt rule ARN."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The SES receipt rule name."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.id
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
      "kind/name"                   = "aws_ses_receipt_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
