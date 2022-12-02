resource "aws_ses_receipt_rule" "aws_ses_receipt_rule" {
  stop_action       = var.stop_action
  after             = var.after
  enabled           = var.enabled
  header_name       = var.header_name
  invocation_type   = var.invocation_type
  rule_set_name     = var.rule_set_name
  message           = var.message
  recipients        = var.recipients
  sender            = var.sender
  workmail_action   = var.workmail_action
  add_header_action = var.add_header_action
  function_arn      = var.function_arn
  header_value      = var.header_value
  object_key_prefix = var.object_key_prefix
  topic_arn         = var.topic_arn
  id                = var.id
  encoding          = var.encoding
  scan_enabled      = var.scan_enabled
  scope             = var.scope
  bucket_name       = var.bucket_name
  name              = var.name
  lambda_action     = var.lambda_action
  position          = var.position
  smtp_reply_code   = var.smtp_reply_code
  sns_action        = var.sns_action
  status_code       = var.status_code
  bounce_action     = var.bounce_action
  kms_key_arn       = var.kms_key_arn
  organization_arn  = var.organization_arn
  s3_action         = var.s3_action
  tls_policy        = var.tls_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "header_name" {
  description = "(Required) The name of the header to add"
  type        = string
}
variable "invocation_type" {
  description = "(Optional) Event or RequestResponse"
  type        = string
  default     = ""
}
variable "rule_set_name" {
  description = "(Required) The name of the rule set"
  type        = string
}
variable "stop_action" {
  description = "(Optional) A list of Stop Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "after" {
  description = "(Optional) The name of the rule to place this rule after"
  type        = string
  default     = ""
}
variable "enabled" {
  description = "(Optional) If true, the rule will be enabled"
  type        = string
  default     = ""
}
variable "sender" {
  description = "(Required) The email address of the sender"
  type        = string
}
variable "message" {
  description = "(Required) The message to send"
  type        = string
}
variable "recipients" {
  description = "(Optional) A list of email addresses"
  type        = string
  default     = ""
}
variable "header_value" {
  description = "(Required) The value of the header to add"
  type        = string
}
variable "object_key_prefix" {
  description = "(Optional) The key prefix of the S3 bucket"
  type        = string
  default     = ""
}
variable "topic_arn" {
  description = "(Optional) The ARN of an SNS topic to notify"
  type        = string
  default     = ""
}
variable "workmail_action" {
  description = "(Optional) A list of WorkMail Action blocks. Documented below.Add header actions support the following:"
  type        = string
  default     = ""
}
variable "add_header_action" {
  description = "(Optional) A list of Add Header Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "function_arn" {
  description = "(Required) The ARN of the Lambda function to invoke"
  type        = string
}
variable "id" {
  description = "The SES receipt rule name."
  type        = string
}
variable "scope" {
  description = "(Required) The scope to apply. The only acceptable value is RuleSet."
  type        = string
}
variable "encoding" {
  description = "(Optional) The encoding to use for the email within the Amazon SNS notification. Default value is UTF-8.Stop actions support the following:"
  type        = string
  default     = ""
}
variable "scan_enabled" {
  description = "(Optional) If true, incoming emails will be scanned for spam and viruses"
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Required) The name of the S3 bucket"
  type        = string
}
variable "name" {
  description = "(Required) The name of the rule"
  type        = string
}
variable "smtp_reply_code" {
  description = "(Required) The RFC 5321 SMTP reply code"
  type        = string
}
variable "sns_action" {
  description = "(Optional) A list of SNS Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "status_code" {
  description = "(Optional) The RFC 3463 SMTP enhanced status code"
  type        = string
  default     = ""
}
variable "lambda_action" {
  description = "(Optional) A list of Lambda Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "position" {
  description = "(Required) The position of the action in the receipt ruleIn addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "organization_arn" {
  description = "(Required) The ARN of the WorkMail organization"
  type        = string
}
variable "s3_action" {
  description = "(Optional) A list of S3 Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "tls_policy" {
  description = "(Optional) Require or Optional"
  type        = string
  default     = ""
}
variable "bounce_action" {
  description = "(Optional) A list of Bounce Action blocks. Documented below."
  type        = string
  default     = ""
}
variable "kms_key_arn" {
  description = "(Optional) The ARN of the KMS key"
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
output "bounce_action" {
  description = "(Optional) A list of Bounce Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.bounce_action
}
output "kms_key_arn" {
  description = "(Optional) The ARN of the KMS key"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.kms_key_arn
}
output "organization_arn" {
  description = "(Required) The ARN of the WorkMail organization"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.organization_arn
}
output "s3_action" {
  description = "(Optional) A list of S3 Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.s3_action
}
output "tls_policy" {
  description = "(Optional) Require or Optional"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.tls_policy
}
output "after" {
  description = "(Optional) The name of the rule to place this rule after"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.after
}
output "enabled" {
  description = "(Optional) If true, the rule will be enabled"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.enabled
}
output "header_name" {
  description = "(Required) The name of the header to add"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.header_name
}
output "invocation_type" {
  description = "(Optional) Event or RequestResponse"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.invocation_type
}
output "rule_set_name" {
  description = "(Required) The name of the rule set"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.rule_set_name
}
output "stop_action" {
  description = "(Optional) A list of Stop Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.stop_action
}
output "message" {
  description = "(Required) The message to send"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.message
}
output "recipients" {
  description = "(Optional) A list of email addresses"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.recipients
}
output "sender" {
  description = "(Required) The email address of the sender"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.sender
}
output "add_header_action" {
  description = "(Optional) A list of Add Header Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.add_header_action
}
output "function_arn" {
  description = "(Required) The ARN of the Lambda function to invoke"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.function_arn
}
output "header_value" {
  description = "(Required) The value of the header to add"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.header_value
}
output "object_key_prefix" {
  description = "(Optional) The key prefix of the S3 bucket"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.object_key_prefix
}
output "topic_arn" {
  description = "(Optional) The ARN of an SNS topic to notify"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.topic_arn
}
output "workmail_action" {
  description = "(Optional) A list of WorkMail Action blocks. Documented below.Add header actions support the following:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.workmail_action
}
output "id" {
  description = "The SES receipt rule name."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.id
}
output "encoding" {
  description = "(Optional) The encoding to use for the email within the Amazon SNS notification. Default value is UTF-8.Stop actions support the following:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.encoding
}
output "scan_enabled" {
  description = "(Optional) If true, incoming emails will be scanned for spam and viruses"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.scan_enabled
}
output "scope" {
  description = "(Required) The scope to apply. The only acceptable value is RuleSet."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.scope
}
output "bucket_name" {
  description = "(Required) The name of the S3 bucket"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.bucket_name
}
output "name" {
  description = "(Required) The name of the rule"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.name
}
output "lambda_action" {
  description = "(Optional) A list of Lambda Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.lambda_action
}
output "position" {
  description = "(Required) The position of the action in the receipt ruleIn addition to all arguments above, the following attributes are exported:"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.position
}
output "smtp_reply_code" {
  description = "(Required) The RFC 5321 SMTP reply code"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.smtp_reply_code
}
output "sns_action" {
  description = "(Optional) A list of SNS Action blocks. Documented below."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.sns_action
}
output "status_code" {
  description = "(Optional) The RFC 3463 SMTP enhanced status code"
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.status_code
}
output "arn" {
  description = "The SES receipt rule ARN."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.arn
}
output "id" {
  description = "The SES receipt rule name."
  value       = aws_ses_receipt_rule.aws_ses_receipt_rule.id
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
      "kind/name"                   = "aws_ses_receipt_rule"
      "kind/version"                = "v0.1.0"
    }
  }
}
