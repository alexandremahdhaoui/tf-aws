datasource "aws_lex_bot" "aws_lex_bot" {
  detect_sentiment                = var.detect_sentiment
  last_updated_date               = var.last_updated_date
  nlu_intent_confidence_threshold = var.nlu_intent_confidence_threshold
  version                         = var.version
  checksum                        = var.checksum
  description                     = var.description
  idle_session_ttl_in_seconds     = var.idle_session_ttl_in_seconds
  locale                          = var.locale
  failure_reason                  = var.failure_reason
  name                            = var.name
  arn                             = var.arn
  child_directed                  = var.child_directed
  created_date                    = var.created_date
  enable_model_improvements       = var.enable_model_improvements
  status                          = var.status
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "failure_reason" {
  description = "If the status is FAILED, the reason why the bot failed to build."
  type        = string
}
variable "name" {
  description = "Name of the bot, case sensitive."
  type        = string
}
variable "status" {
  description = "Status of the bot."
  type        = string
}
variable "arn" {
  description = "ARN of the bot."
  type        = string
}
variable "child_directed" {
  description = "If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA."
  type        = string
}
variable "created_date" {
  description = "Date that the bot was created."
  type        = string
}
variable "enable_model_improvements" {
  description = "Set to true if natural language understanding improvements are enabled."
  type        = string
}
variable "detect_sentiment" {
  description = "When set to true user utterances are sent to Amazon Comprehend for sentiment analysis."
  type        = string
}
variable "last_updated_date" {
  description = "Date that the bot was updated."
  type        = string
}
variable "nlu_intent_confidence_threshold" {
  description = "The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot."
  type        = string
}
variable "version" {
  description = "Version of the bot. For a new bot, the version is always $LATEST."
  type        = string
}
variable "checksum" {
  description = "Checksum of the bot used to identify a specific revision of the bot's $LATEST version."
  type        = string
}
variable "description" {
  description = "Description of the bot."
  type        = string
}
variable "idle_session_ttl_in_seconds" {
  description = "The maximum time in seconds that Amazon Lex retains the data gathered in a conversation."
  type        = string
}
variable "locale" {
  description = "Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot."
  type        = string
}
output "failure_reason" {
  description = "If the status is FAILED, the reason why the bot failed to build."
  value       = aws_lex_bot.aws_lex_bot.failure_reason
}
output "name" {
  description = "Name of the bot, case sensitive."
  value       = aws_lex_bot.aws_lex_bot.name
}
output "arn" {
  description = "ARN of the bot."
  value       = aws_lex_bot.aws_lex_bot.arn
}
output "child_directed" {
  description = "If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA."
  value       = aws_lex_bot.aws_lex_bot.child_directed
}
output "created_date" {
  description = "Date that the bot was created."
  value       = aws_lex_bot.aws_lex_bot.created_date
}
output "enable_model_improvements" {
  description = "Set to true if natural language understanding improvements are enabled."
  value       = aws_lex_bot.aws_lex_bot.enable_model_improvements
}
output "status" {
  description = "Status of the bot."
  value       = aws_lex_bot.aws_lex_bot.status
}
output "detect_sentiment" {
  description = "When set to true user utterances are sent to Amazon Comprehend for sentiment analysis."
  value       = aws_lex_bot.aws_lex_bot.detect_sentiment
}
output "last_updated_date" {
  description = "Date that the bot was updated."
  value       = aws_lex_bot.aws_lex_bot.last_updated_date
}
output "nlu_intent_confidence_threshold" {
  description = "The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot."
  value       = aws_lex_bot.aws_lex_bot.nlu_intent_confidence_threshold
}
output "version" {
  description = "Version of the bot. For a new bot, the version is always $LATEST."
  value       = aws_lex_bot.aws_lex_bot.version
}
output "checksum" {
  description = "Checksum of the bot used to identify a specific revision of the bot's $LATEST version."
  value       = aws_lex_bot.aws_lex_bot.checksum
}
output "description" {
  description = "Description of the bot."
  value       = aws_lex_bot.aws_lex_bot.description
}
output "idle_session_ttl_in_seconds" {
  description = "The maximum time in seconds that Amazon Lex retains the data gathered in a conversation."
  value       = aws_lex_bot.aws_lex_bot.idle_session_ttl_in_seconds
}
output "locale" {
  description = "Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot."
  value       = aws_lex_bot.aws_lex_bot.locale
}
output "nlu_intent_confidence_threshold" {
  description = "The threshold where Amazon Lex will insert the AMAZON.FallbackIntent, AMAZON.KendraSearchIntent, or both when returning alternative intents in a PostContent or PostText response. AMAZON.FallbackIntent and AMAZON.KendraSearchIntent are only inserted if they are configured for the bot."
  value       = aws_lex_bot.aws_lex_bot.nlu_intent_confidence_threshold
}
output "arn" {
  description = "ARN of the bot."
  value       = aws_lex_bot.aws_lex_bot.arn
}
output "description" {
  description = "Description of the bot."
  value       = aws_lex_bot.aws_lex_bot.description
}
output "enable_model_improvements" {
  description = "Set to true if natural language understanding improvements are enabled."
  value       = aws_lex_bot.aws_lex_bot.enable_model_improvements
}
output "last_updated_date" {
  description = "Date that the bot was updated."
  value       = aws_lex_bot.aws_lex_bot.last_updated_date
}
output "child_directed" {
  description = "If this Amazon Lex Bot is related to a website, program, or other application that is directed or targeted, in whole or in part, to children under age 13 and subject to COPPA."
  value       = aws_lex_bot.aws_lex_bot.child_directed
}
output "failure_reason" {
  description = "If the status is FAILED, the reason why the bot failed to build."
  value       = aws_lex_bot.aws_lex_bot.failure_reason
}
output "status" {
  description = "Status of the bot."
  value       = aws_lex_bot.aws_lex_bot.status
}
output "version" {
  description = "Version of the bot. For a new bot, the version is always $LATEST."
  value       = aws_lex_bot.aws_lex_bot.version
}
output "checksum" {
  description = "Checksum of the bot used to identify a specific revision of the bot's $LATEST version."
  value       = aws_lex_bot.aws_lex_bot.checksum
}
output "created_date" {
  description = "Date that the bot was created."
  value       = aws_lex_bot.aws_lex_bot.created_date
}
output "detect_sentiment" {
  description = "When set to true user utterances are sent to Amazon Comprehend for sentiment analysis."
  value       = aws_lex_bot.aws_lex_bot.detect_sentiment
}
output "locale" {
  description = "Target locale for the bot. Any intent used in the bot must be compatible with the locale of the bot."
  value       = aws_lex_bot.aws_lex_bot.locale
}
output "idle_session_ttl_in_seconds" {
  description = "The maximum time in seconds that Amazon Lex retains the data gathered in a conversation."
  value       = aws_lex_bot.aws_lex_bot.idle_session_ttl_in_seconds
}
output "name" {
  description = "Name of the bot, case sensitive."
  value       = aws_lex_bot.aws_lex_bot.name
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
