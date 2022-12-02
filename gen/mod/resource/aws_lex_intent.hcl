resource "aws_lex_intent" "aws_lex_intent" {
  confirmation_prompt      = var.confirmation_prompt
  sample_utterances        = var.sample_utterances
  type                     = var.type
  max_attempts             = var.max_attempts
  rejection_statement      = var.rejection_statement
  slot_constraint          = var.slot_constraint
  slot_type                = var.slot_type
  arn                      = var.arn
  checksum                 = var.checksum
  conclusion_statement     = var.conclusion_statement
  fulfillment_activity     = var.fulfillment_activity
  slot_type_version        = var.slot_type_version
  group_number             = var.group_number
  uri                      = var.uri
  value_elicitation_prompt = var.value_elicitation_prompt
  version                  = var.version
  dialog_code_hook         = var.dialog_code_hook
  last_updated_date        = var.last_updated_date
  message_version          = var.message_version
  priority                 = var.priority
  prompt                   = var.prompt
  slot                     = var.slot
  code_hook                = var.code_hook
  create_version           = var.create_version
  description              = var.description
  parent_intent_signature  = var.parent_intent_signature
  follow_up_prompt         = var.follow_up_prompt
  message                  = var.message
  name                     = var.name
  response_card            = var.response_card
  content                  = var.content
  content_type             = var.content_type
  create                   = var.create
  created_date             = var.created_date
  update                   = var.update
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "uri" {
  description = "(Required) The Amazon Resource Name (ARN) of the Lambda function.follow_up_prompt"
  type        = string
}
variable "value_elicitation_prompt" {
  description = "(Optional) The prompt that Amazon Lex uses to elicit the slot value\nfrom the user. Attributes are documented under prompt.statement"
  type        = string
  default     = ""
}
variable "version" {
  description = "The version of the bot.TimeoutsConfiguration options:"
  type        = string
}
variable "dialog_code_hook" {
  description = "code_hook."
  type        = string
}
variable "last_updated_date" {
  description = "The date when the $LATEST version of this intent was updated."
  type        = string
}
variable "message_version" {
  description = "(Required) The version of the request-response that you want Amazon Lex to use\nto invoke your Lambda function. For more information, see\nUsing Lambda Functions. Must be less than or equal to 5 characters in length."
  type        = string
}
variable "priority" {
  description = ""
  type        = string
}
variable "prompt" {
  description = "(Required) Prompts for information from the user. Attributes are documented under prompt."
  type        = string
}
variable "slot" {
  description = "(Optional) An list of intent slots. At runtime, Amazon Lex elicits required slot values\nfrom the user using prompts defined in the slots. Attributes are documented under slot.code_hookSpecifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot."
  type        = string
  default     = ""
}
variable "code_hook" {
  description = "code_hook.messageThe message object that provides the message text and its type."
  type        = string
}
variable "create_version" {
  description = "false."
  type        = string
}
variable "description" {
  description = "(Optional) A description of the bot. Must be less than or equal to 200 characters in length."
  type        = string
  default     = ""
}
variable "parent_intent_signature" {
  description = "(Optional) A unique identifier for the built-in intent to base this\nintent on. To find the signature for an intent, see\nStandard Built-in Intents"
  type        = string
  default     = ""
}
variable "follow_up_prompt" {
  description = "follow_up_prompt field and the conclusion_statementfollow_up_prompt."
  type        = string
}
variable "message" {
  description = "(Required) A set of messages, each of which provides a message string and its type.\nYou can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).\nAttributes are documented under message. Must contain between 1 and 15 messages."
  type        = string
}
variable "name" {
  description = "(Required) The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length."
  type        = string
}
variable "response_card" {
  description = "(Optional) The response card. Amazon Lex will substitute session attributes and\nslot values into the response card. For more information, see\nExample: Using a Response Card. Must be less than or equal to 50000 characters in length.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "content" {
  description = "(Required) The text of the message. Must be less than or equal to 1000 characters in length."
  type        = string
}
variable "content_type" {
  description = "(Required) The content type of the message string."
  type        = string
}
variable "create" {
  description = "(Default 1m)"
  type        = string
}
variable "created_date" {
  description = "The date when the intent version was created."
  type        = string
}
variable "update" {
  description = "(Default 1m)"
  type        = string
}
variable "confirmation_prompt" {
  description = "(Optional) Prompts the user to confirm the intent. This question should\nhave a yes or no answer. You you must provide both the rejection_statement and confirmation_promptprompt."
  type        = string
  default     = ""
}
variable "sample_utterances" {
  description = "(Optional) If you know a specific pattern with which users might respond to\nan Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This\nis optional. In most cases, Amazon Lex is capable of understanding user utterances. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length."
  type        = string
  default     = ""
}
variable "type" {
  description = "ReturnIntent or CodeHook, as documented here."
  type        = string
}
variable "max_attempts" {
  description = "(Required) The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive)."
  type        = string
}
variable "rejection_statement" {
  description = "statement.fulfillment_activityDescribes how the intent is fulfilled after the user provides all of the information required for the intent."
  type        = string
}
variable "slot_constraint" {
  description = "(Required) Specifies whether the slot is required or optional."
  type        = string
}
variable "slot_type" {
  description = ""
  type        = string
}
variable "arn" {
  description = "The ARN of the Lex intent."
  type        = string
}
variable "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  type        = string
}
variable "conclusion_statement" {
  description = "fulfillment_activityfollow_up_prompt and conclusion_statementstatement."
  type        = string
}
variable "fulfillment_activity" {
  description = "(Required) Describes how the intent is fulfilled. For example, after a\nuser provides all of the information for a pizza order, fulfillment_activityfulfillment_activity."
  type        = string
}
variable "slot_type_version" {
  description = "(Optional) The version of the slot type. Must be less than or equal to 64 characters in length."
  type        = string
  default     = ""
}
variable "group_number" {
  description = "(Optional) Identifies the message group that the message belongs to. When a group\nis assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).prompt"
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
output "follow_up_prompt" {
  description = "follow_up_prompt field and the conclusion_statementfollow_up_prompt."
  value       = aws_lex_intent.aws_lex_intent.follow_up_prompt
}
output "message" {
  description = "(Required) A set of messages, each of which provides a message string and its type.\nYou can specify the message string in plain text or in Speech Synthesis Markup Language (SSML).\nAttributes are documented under message. Must contain between 1 and 15 messages."
  value       = aws_lex_intent.aws_lex_intent.message
}
output "name" {
  description = "(Required) The name of the intent slot that you want to create. The name is case sensitive. Must be less than or equal to 100 characters in length."
  value       = aws_lex_intent.aws_lex_intent.name
}
output "response_card" {
  description = "(Optional) The response card. Amazon Lex will substitute session attributes and\nslot values into the response card. For more information, see\nExample: Using a Response Card. Must be less than or equal to 50000 characters in length.In addition to all arguments above, the following attributes are exported:"
  value       = aws_lex_intent.aws_lex_intent.response_card
}
output "content" {
  description = "(Required) The text of the message. Must be less than or equal to 1000 characters in length."
  value       = aws_lex_intent.aws_lex_intent.content
}
output "content_type" {
  description = "(Required) The content type of the message string."
  value       = aws_lex_intent.aws_lex_intent.content_type
}
output "create" {
  description = "(Default 1m)"
  value       = aws_lex_intent.aws_lex_intent.create
}
output "created_date" {
  description = "The date when the intent version was created."
  value       = aws_lex_intent.aws_lex_intent.created_date
}
output "update" {
  description = "(Default 1m)"
  value       = aws_lex_intent.aws_lex_intent.update
}
output "confirmation_prompt" {
  description = "(Optional) Prompts the user to confirm the intent. This question should\nhave a yes or no answer. You you must provide both the rejection_statement and confirmation_promptprompt."
  value       = aws_lex_intent.aws_lex_intent.confirmation_prompt
}
output "sample_utterances" {
  description = "(Optional) If you know a specific pattern with which users might respond to\nan Amazon Lex request for a slot value, you can provide those utterances to improve accuracy. This\nis optional. In most cases, Amazon Lex is capable of understanding user utterances. Must have between 1 and 10 items in the list, and each item must be less than or equal to 200 characters in length."
  value       = aws_lex_intent.aws_lex_intent.sample_utterances
}
output "type" {
  description = "ReturnIntent or CodeHook, as documented here."
  value       = aws_lex_intent.aws_lex_intent.type
}
output "max_attempts" {
  description = "(Required) The number of times to prompt the user for information. Must be a number between 1 and 5 (inclusive)."
  value       = aws_lex_intent.aws_lex_intent.max_attempts
}
output "rejection_statement" {
  description = "statement.fulfillment_activityDescribes how the intent is fulfilled after the user provides all of the information required for the intent."
  value       = aws_lex_intent.aws_lex_intent.rejection_statement
}
output "slot_constraint" {
  description = "(Required) Specifies whether the slot is required or optional."
  value       = aws_lex_intent.aws_lex_intent.slot_constraint
}
output "slot_type" {
  description = ""
  value       = aws_lex_intent.aws_lex_intent.slot_type
}
output "arn" {
  description = "The ARN of the Lex intent."
  value       = aws_lex_intent.aws_lex_intent.arn
}
output "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  value       = aws_lex_intent.aws_lex_intent.checksum
}
output "conclusion_statement" {
  description = "fulfillment_activityfollow_up_prompt and conclusion_statementstatement."
  value       = aws_lex_intent.aws_lex_intent.conclusion_statement
}
output "fulfillment_activity" {
  description = "(Required) Describes how the intent is fulfilled. For example, after a\nuser provides all of the information for a pizza order, fulfillment_activityfulfillment_activity."
  value       = aws_lex_intent.aws_lex_intent.fulfillment_activity
}
output "slot_type_version" {
  description = "(Optional) The version of the slot type. Must be less than or equal to 64 characters in length."
  value       = aws_lex_intent.aws_lex_intent.slot_type_version
}
output "group_number" {
  description = "(Optional) Identifies the message group that the message belongs to. When a group\nis assigned to a message, Amazon Lex returns one message from each group in the response. Must be a number between 1 and 5 (inclusive).prompt"
  value       = aws_lex_intent.aws_lex_intent.group_number
}
output "uri" {
  description = "(Required) The Amazon Resource Name (ARN) of the Lambda function.follow_up_prompt"
  value       = aws_lex_intent.aws_lex_intent.uri
}
output "value_elicitation_prompt" {
  description = "(Optional) The prompt that Amazon Lex uses to elicit the slot value\nfrom the user. Attributes are documented under prompt.statement"
  value       = aws_lex_intent.aws_lex_intent.value_elicitation_prompt
}
output "version" {
  description = "The version of the bot.TimeoutsConfiguration options:"
  value       = aws_lex_intent.aws_lex_intent.version
}
output "dialog_code_hook" {
  description = "code_hook."
  value       = aws_lex_intent.aws_lex_intent.dialog_code_hook
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this intent was updated."
  value       = aws_lex_intent.aws_lex_intent.last_updated_date
}
output "message_version" {
  description = "(Required) The version of the request-response that you want Amazon Lex to use\nto invoke your Lambda function. For more information, see\nUsing Lambda Functions. Must be less than or equal to 5 characters in length."
  value       = aws_lex_intent.aws_lex_intent.message_version
}
output "priority" {
  description = ""
  value       = aws_lex_intent.aws_lex_intent.priority
}
output "prompt" {
  description = "(Required) Prompts for information from the user. Attributes are documented under prompt."
  value       = aws_lex_intent.aws_lex_intent.prompt
}
output "slot" {
  description = "(Optional) An list of intent slots. At runtime, Amazon Lex elicits required slot values\nfrom the user using prompts defined in the slots. Attributes are documented under slot.code_hookSpecifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot."
  value       = aws_lex_intent.aws_lex_intent.slot
}
output "code_hook" {
  description = "code_hook.messageThe message object that provides the message text and its type."
  value       = aws_lex_intent.aws_lex_intent.code_hook
}
output "create_version" {
  description = "false."
  value       = aws_lex_intent.aws_lex_intent.create_version
}
output "description" {
  description = "(Optional) A description of the bot. Must be less than or equal to 200 characters in length."
  value       = aws_lex_intent.aws_lex_intent.description
}
output "parent_intent_signature" {
  description = "(Optional) A unique identifier for the built-in intent to base this\nintent on. To find the signature for an intent, see\nStandard Built-in Intents"
  value       = aws_lex_intent.aws_lex_intent.parent_intent_signature
}
output "created_date" {
  description = "The date when the intent version was created."
  value       = aws_lex_intent.aws_lex_intent.created_date
}
output "delete" {
  description = "(Default 5m)"
  value       = aws_lex_intent.aws_lex_intent.delete
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this intent was updated."
  value       = aws_lex_intent.aws_lex_intent.last_updated_date
}
output "update" {
  description = "(Default 1m)"
  value       = aws_lex_intent.aws_lex_intent.update
}
output "version" {
  description = "The version of the bot.TimeoutsConfiguration options:"
  value       = aws_lex_intent.aws_lex_intent.version
}
output "arn" {
  description = "The ARN of the Lex intent."
  value       = aws_lex_intent.aws_lex_intent.arn
}
output "checksum" {
  description = "Checksum identifying the version of the intent that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the intent."
  value       = aws_lex_intent.aws_lex_intent.checksum
}
output "create" {
  description = "(Default 1m)"
  value       = aws_lex_intent.aws_lex_intent.create
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
      "kind/name"                   = "aws_lex_intent"
      "kind/version"                = "v0.1.0"
    }
  }
}
