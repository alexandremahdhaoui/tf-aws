resource "aws_lex_bot" "aws_lex_bot" {
  checksum                        = var.checksum
  create                          = var.create
  intent                          = var.intent
  locale                          = var.locale
  clarification_prompt            = var.clarification_prompt
  create_version                  = var.create_version
  nlu_intent_confidence_threshold = var.nlu_intent_confidence_threshold
  child_directed                  = var.child_directed
  created_date                    = var.created_date
  enable_model_improvements       = var.enable_model_improvements
  idle_session_ttl_in_seconds     = var.idle_session_ttl_in_seconds
  intent_name                     = var.intent_name
  voice_id                        = var.voice_id
  content                         = var.content
  group_number                    = var.group_number
  name                            = var.name
  status                          = var.status
  delete                          = var.delete
  description                     = var.description
  intent_version                  = var.intent_version
  last_updated_date               = var.last_updated_date
  update                          = var.update
  content_type                    = var.content_type
  detect_sentiment                = var.detect_sentiment
  max_attempts                    = var.max_attempts
  message                         = var.message
  abort_statement                 = var.abort_statement
  failure_reason                  = var.failure_reason
  process_behavior                = var.process_behavior
  response_card                   = var.response_card
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "abort_statement" {
  description = "(Required) The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement."
  type        = string
}
variable "failure_reason" {
  description = "If status is FAILED, Amazon Lex provides the reason that it failed to build the bot."
  type        = string
}
variable "process_behavior" {
  description = "(Optional) If you set the process_behavior element to BUILD, Amazon Lex builds the bot so that it can be run. If you set the element to SAVE Amazon Lex saves the bot, but doesn't build it. Default is SAVE."
  type        = string
}
variable "response_card" {
  description = "Example: Using a Response Card.TimeoutsConfiguration options:"
  type        = string
}
variable "checksum" {
  description = "Checksum identifying the version of the bot that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the bot."
  type        = string
}
variable "create" {
  description = "(Default 5m)"
  type        = string
}
variable "intent" {
  description = "(Required) A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects."
  type        = string
}
variable "locale" {
  description = "(Optional) Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see Amazon Lex Bot PutBot API Docs. Default is en-US."
  type        = string
}
variable "clarification_prompt" {
  description = "(Required) The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt."
  type        = string
}
variable "create_version" {
  description = "(Optional) Determines if a new bot version is created when the initial resource is created and on each update. Defaults to false."
  type        = string
}
variable "nlu_intent_confidence_threshold" {
  description = "(Optional) Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see Amazon Lex Bot PutBot API Docs This value requires enable_model_improvements to be set to true and the default is 0. Must be a float between 0 and 1."
  type        = string
}
variable "child_directed" {
  description = "(Required) By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the Amazon Lex FAQ and the Amazon Lex PutBot API Docs."
  type        = string
}
variable "created_date" {
  description = "The date when the bot version was created."
  type        = string
}
variable "enable_model_improvements" {
  description = "(Optional) Set to true to enable access to natural language understanding improvements. When you set the enable_model_improvements parameter to true you can use the nlu_intent_confidence_threshold parameter to configure confidence scores. For more information, see Confidence Scores. You can only set the enable_model_improvements parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the Amazon Lex Bot PutBot API Docs."
  type        = string
}
variable "idle_session_ttl_in_seconds" {
  description = "(Optional) The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is 300. Must be a number between 60 and 86400 (inclusive)."
  type        = string
}
variable "intent_name" {
  description = "(Required) The name of the intent. Must be less than or equal to 100 characters in length."
  type        = string
}
variable "voice_id" {
  description = "(Optional) The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see Available Voices in the Amazon Polly Developer Guide.intentIdentifies the specific version of an intent."
  type        = string
}
variable "content" {
  description = "(Required) The text of the message."
  type        = string
}
variable "group_number" {
  description = "(Optional) Identifies the message group that the message belongs to. When a group\nis assigned to a message, Amazon Lex returns one message from each group in the response.prompt"
  type        = string
}
variable "name" {
  description = "(Required) The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length."
  type        = string
}
variable "status" {
  description = ""
  type        = string
}
variable "delete" {
  description = "(Default 5m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "description" {
  description = "(Optional) A description of the bot. Must be less than or equal to 200 characters in length."
  type        = string
}
variable "intent_version" {
  description = "(Required) The version of the intent. Must be less than or equal to 64 characters in length.messageThe message object that provides the message text and its type."
  type        = string
}
variable "last_updated_date" {
  description = "The date when the $LATEST version of this bot was updated."
  type        = string
}
variable "update" {
  description = "(Default 5m)"
  type        = string
}
variable "content_type" {
  description = "(Required) The content type of the message string."
  type        = string
}
variable "detect_sentiment" {
  description = "(Optional) When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is false."
  type        = string
}
variable "max_attempts" {
  description = "(Required) The number of times to prompt the user for information."
  type        = string
}
variable "message" {
  description = "(Required) A set of messages, each of which provides a message string and its type. You\ncan specify the message string in plain text or in Speech Synthesis Markup Language (SSML). Attributes\nare documented under message."
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
output "description" {
  description = "(Optional) A description of the bot. Must be less than or equal to 200 characters in length."
  value       = aws_lex_bot.aws_lex_bot.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "intent_version" {
  description = "(Required) The version of the intent. Must be less than or equal to 64 characters in length.messageThe message object that provides the message text and its type."
  value       = aws_lex_bot.aws_lex_bot.intent_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this bot was updated."
  value       = aws_lex_bot.aws_lex_bot.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 5m)"
  value       = aws_lex_bot.aws_lex_bot.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 5m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_lex_bot.aws_lex_bot.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "detect_sentiment" {
  description = "(Optional) When set to true user utterances are sent to Amazon Comprehend for sentiment analysis. If you don't specify detectSentiment, the default is false."
  value       = aws_lex_bot.aws_lex_bot.detect_sentiment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_attempts" {
  description = "(Required) The number of times to prompt the user for information."
  value       = aws_lex_bot.aws_lex_bot.max_attempts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "message" {
  description = "(Required) A set of messages, each of which provides a message string and its type. You\ncan specify the message string in plain text or in Speech Synthesis Markup Language (SSML). Attributes\nare documented under message."
  value       = aws_lex_bot.aws_lex_bot.message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content_type" {
  description = "(Required) The content type of the message string."
  value       = aws_lex_bot.aws_lex_bot.content_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_reason" {
  description = "If status is FAILED, Amazon Lex provides the reason that it failed to build the bot."
  value       = aws_lex_bot.aws_lex_bot.failure_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "process_behavior" {
  description = "(Optional) If you set the process_behavior element to BUILD, Amazon Lex builds the bot so that it can be run. If you set the element to SAVE Amazon Lex saves the bot, but doesn't build it. Default is SAVE."
  value       = aws_lex_bot.aws_lex_bot.process_behavior
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "response_card" {
  description = "Example: Using a Response Card.TimeoutsConfiguration options:"
  value       = aws_lex_bot.aws_lex_bot.response_card
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "abort_statement" {
  description = "(Required) The message that Amazon Lex uses to abort a conversation. Attributes are documented under statement."
  value       = aws_lex_bot.aws_lex_bot.abort_statement
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 5m)"
  value       = aws_lex_bot.aws_lex_bot.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "intent" {
  description = "(Required) A set of Intent objects. Each intent represents a command that a user can express. Attributes are documented under intent. Can have up to 250 Intent objects."
  value       = aws_lex_bot.aws_lex_bot.intent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "locale" {
  description = "(Optional) Specifies the target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot. For available locales, see Amazon Lex Bot PutBot API Docs. Default is en-US."
  value       = aws_lex_bot.aws_lex_bot.locale
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the bot that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the bot."
  value       = aws_lex_bot.aws_lex_bot.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create_version" {
  description = "(Optional) Determines if a new bot version is created when the initial resource is created and on each update. Defaults to false."
  value       = aws_lex_bot.aws_lex_bot.create_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "clarification_prompt" {
  description = "(Required) The message that Amazon Lex uses when it doesn't understand the user's request. Attributes are documented under prompt."
  value       = aws_lex_bot.aws_lex_bot.clarification_prompt
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "nlu_intent_confidence_threshold" {
  description = "(Optional) Determines the threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot. For more information see Amazon Lex Bot PutBot API Docs This value requires enable_model_improvements to be set to true and the default is 0. Must be a float between 0 and 1."
  value       = aws_lex_bot.aws_lex_bot.nlu_intent_confidence_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "The date when the bot version was created."
  value       = aws_lex_bot.aws_lex_bot.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable_model_improvements" {
  description = "(Optional) Set to true to enable access to natural language understanding improvements. When you set the enable_model_improvements parameter to true you can use the nlu_intent_confidence_threshold parameter to configure confidence scores. For more information, see Confidence Scores. You can only set the enable_model_improvements parameter in certain Regions. If you set the parameter to true, your bot has access to accuracy improvements. For more information see the Amazon Lex Bot PutBot API Docs."
  value       = aws_lex_bot.aws_lex_bot.enable_model_improvements
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "idle_session_ttl_in_seconds" {
  description = "(Optional) The maximum time in seconds that Amazon Lex retains the data gathered in a conversation. Default is 300. Must be a number between 60 and 86400 (inclusive)."
  value       = aws_lex_bot.aws_lex_bot.idle_session_ttl_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "intent_name" {
  description = "(Required) The name of the intent. Must be less than or equal to 100 characters in length."
  value       = aws_lex_bot.aws_lex_bot.intent_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "voice_id" {
  description = "(Optional) The Amazon Polly voice ID that you want Amazon Lex to use for voice interactions with the user. The locale configured for the voice must match the locale of the bot. For more information, see Available Voices in the Amazon Polly Developer Guide.intentIdentifies the specific version of an intent."
  value       = aws_lex_bot.aws_lex_bot.voice_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "child_directed" {
  description = "(Required) By specifying true, you confirm that your use of Amazon Lex is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA. For more information see the Amazon Lex FAQ and the Amazon Lex PutBot API Docs."
  value       = aws_lex_bot.aws_lex_bot.child_directed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_number" {
  description = "(Optional) Identifies the message group that the message belongs to. When a group\nis assigned to a message, Amazon Lex returns one message from each group in the response.prompt"
  value       = aws_lex_bot.aws_lex_bot.group_number
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The name of the bot that you want to create, case sensitive. Must be between 2 and 50 characters in length."
  value       = aws_lex_bot.aws_lex_bot.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = ""
  value       = aws_lex_bot.aws_lex_bot.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "content" {
  description = "(Required) The text of the message."
  value       = aws_lex_bot.aws_lex_bot.content
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "checksum" {
  description = "Checksum identifying the version of the bot that was created. The checksum is not\nincluded as an argument because the resource will add it automatically when updating the bot."
  value       = aws_lex_bot.aws_lex_bot.checksum
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_date" {
  description = "The date when the bot version was created."
  value       = aws_lex_bot.aws_lex_bot.created_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_reason" {
  description = "If status is FAILED, Amazon Lex provides the reason that it failed to build the bot."
  value       = aws_lex_bot.aws_lex_bot.failure_reason
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_updated_date" {
  description = "The date when the $LATEST version of this bot was updated."
  value       = aws_lex_bot.aws_lex_bot.last_updated_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = ""
  value       = aws_lex_bot.aws_lex_bot.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "version" {
  description = "The version of the bot."
  value       = aws_lex_bot.aws_lex_bot.version
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
      "kind/name"                   = "aws_lex_bot"
      "kind/version"                = "v0.1.0"
    }
  }
}
