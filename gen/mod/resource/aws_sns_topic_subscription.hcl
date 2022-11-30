resource "aws_sns_topic_subscription" "aws_sns_topic_subscription" {
  protocol                        = var.protocol
  raw_message_delivery            = var.raw_message_delivery
  email-json                      = var.email-json
  http                            = var.http
  https                           = var.https
  id                              = var.id
  filter_policy                   = var.filter_policy
  firehose                        = var.firehose
  pending_confirmation            = var.pending_confirmation
  sqs                             = var.sqs
  application                     = var.application
  confirmation_was_authenticated  = var.confirmation_was_authenticated
  email                           = var.email
  endpoint                        = var.endpoint
  subscription_role_arn           = var.subscription_role_arn
  topic_arn                       = var.topic_arn
  confirmation_timeout_in_minutes = var.confirmation_timeout_in_minutes
  endpoint_auto_confirms          = var.endpoint_auto_confirms
  lambda                          = var.lambda
  sms                             = var.sms
  arn                             = var.arn
  delivery_policy                 = var.delivery_policy
  owner_id                        = var.owner_id
  redrive_policy                  = var.redrive_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "lambda" {
  description = "Delivers JSON-encoded messages. endpoint is the ARN of an AWS Lambda function."
  type        = string
}
variable "confirmation_timeout_in_minutes" {
  description = "(Optional) Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1."
  type        = string
}
variable "endpoint_auto_confirms" {
  description = "(Optional) Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty). Default is false."
  type        = string
}
variable "owner_id" {
  description = "AWS account ID of the subscription's owner."
  type        = string
}
variable "redrive_policy" {
  description = "(Optional) JSON String with the redrive policy that will be used in the subscription. Refer to the SNS docs for more details.Protocol supportSupported values for protocol include:"
  type        = string
}
variable "sms" {
  description = "Delivers text messages via SMS. endpoint is the phone number of an SMS-enabled device."
  type        = string
}
variable "arn" {
  description = "ARN of the subscription."
  type        = string
}
variable "delivery_policy" {
  description = "(Optional) JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the SNS docs for more details."
  type        = string
}
variable "https" {
  description = " -- Delivers JSON-encoded messages via HTTPS POST. endpoint is a URL beginning with https://.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "id" {
  description = "ARN of the subscription."
  type        = string
}
variable "protocol" {
  description = "(Required) Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported. See details below."
  type        = string
}
variable "raw_message_delivery" {
  description = "(Optional) Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false."
  type        = string
}
variable "email-json" {
  description = "Delivers JSON-encoded messages via SMTP. endpoint is an email address."
  type        = string
}
variable "http" {
  description = " -- Delivers JSON-encoded messages via HTTP POST. endpoint is a URL beginning with http://."
  type        = string
}
variable "email" {
  description = "Delivers messages via SMTP. endpoint is an email address."
  type        = string
}
variable "endpoint" {
  description = "(Required) Endpoint to send data to. The contents vary with the protocol. See details below."
  type        = string
}
variable "filter_policy" {
  description = "(Optional) JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the SNS docs for more details."
  type        = string
}
variable "firehose" {
  description = "Delivers JSON-encoded messages. endpointarn:aws:firehose:us-east-1:123456789012:deliverystream/ticketUploadStream)."
  type        = string
}
variable "pending_confirmation" {
  description = "Whether the subscription has not been confirmed."
  type        = string
}
variable "sqs" {
  description = "Delivers JSON-encoded messages. endpoint is the ARN of an Amazon SQS queue (e.g., arn:aws:sqs:us-west-2:123456789012:terraform-queue-too).Partially supported values for protocol include:~> strongNOTE: If an aws_sns_topic_subscription uses a partially-supported protocol and the subscription is not confirmed, either through automatic confirmation or means outside of Terraform (e.g., clicking on a \"Confirm Subscription\" link in an email), Terraform cannot delete / unsubscribe the subscription. Attempting to destroy an unconfirmed subscription will remove the aws_sns_topic_subscription from Terraform's state but strongemwill not remove the subscription from AWS. The pending_confirmation attribute provides confirmation status."
  type        = string
}
variable "application" {
  description = "Delivers JSON-encoded messages. endpoint is the endpoint ARN of a mobile app and device."
  type        = string
}
variable "confirmation_was_authenticated" {
  description = "Whether the subscription confirmation request was authenticated."
  type        = string
}
variable "subscription_role_arn" {
  description = "(Required if protocol is firehose) ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to SNS docs."
  type        = string
}
variable "topic_arn" {
  description = "(Required) ARN of the SNS topic to subscribe to."
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
output "application" {
  description = "Delivers JSON-encoded messages. endpoint is the endpoint ARN of a mobile app and device."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.application
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "confirmation_was_authenticated" {
  description = "Whether the subscription confirmation request was authenticated."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.confirmation_was_authenticated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email" {
  description = "Delivers messages via SMTP. endpoint is an email address."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.email
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint" {
  description = "(Required) Endpoint to send data to. The contents vary with the protocol. See details below."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.endpoint
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter_policy" {
  description = "(Optional) JSON String with the filter policy that will be used in the subscription to filter messages seen by the target resource. Refer to the SNS docs for more details."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.filter_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "firehose" {
  description = "Delivers JSON-encoded messages. endpointarn:aws:firehose:us-east-1:123456789012:deliverystream/ticketUploadStream)."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.firehose
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pending_confirmation" {
  description = "Whether the subscription has not been confirmed."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.pending_confirmation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sqs" {
  description = "Delivers JSON-encoded messages. endpoint is the ARN of an Amazon SQS queue (e.g., arn:aws:sqs:us-west-2:123456789012:terraform-queue-too).Partially supported values for protocol include:~> strongNOTE: If an aws_sns_topic_subscription uses a partially-supported protocol and the subscription is not confirmed, either through automatic confirmation or means outside of Terraform (e.g., clicking on a \"Confirm Subscription\" link in an email), Terraform cannot delete / unsubscribe the subscription. Attempting to destroy an unconfirmed subscription will remove the aws_sns_topic_subscription from Terraform's state but strongemwill not remove the subscription from AWS. The pending_confirmation attribute provides confirmation status."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.sqs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subscription_role_arn" {
  description = "(Required if protocol is firehose) ARN of the IAM role to publish to Kinesis Data Firehose delivery stream. Refer to SNS docs."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.subscription_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "topic_arn" {
  description = "(Required) ARN of the SNS topic to subscribe to."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.topic_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "confirmation_timeout_in_minutes" {
  description = "(Optional) Integer indicating number of minutes to wait in retrying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols. Default is 1."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.confirmation_timeout_in_minutes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "endpoint_auto_confirms" {
  description = "(Optional) Whether the endpoint is capable of auto confirming subscription (e.g., PagerDuty). Default is false."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.endpoint_auto_confirms
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "lambda" {
  description = "Delivers JSON-encoded messages. endpoint is the ARN of an AWS Lambda function."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.lambda
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the subscription."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delivery_policy" {
  description = "(Optional) JSON String with the delivery policy (retries, backoff, etc.) that will be used in the subscription - this only applies to HTTP/S subscriptions. Refer to the SNS docs for more details."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.delivery_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account ID of the subscription's owner."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "redrive_policy" {
  description = "(Optional) JSON String with the redrive policy that will be used in the subscription. Refer to the SNS docs for more details.Protocol supportSupported values for protocol include:"
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.redrive_policy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "sms" {
  description = "Delivers text messages via SMS. endpoint is the phone number of an SMS-enabled device."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.sms
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "email-json" {
  description = "Delivers JSON-encoded messages via SMTP. endpoint is an email address."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.email-json
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "http" {
  description = " -- Delivers JSON-encoded messages via HTTP POST. endpoint is a URL beginning with http://."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.http
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "https" {
  description = " -- Delivers JSON-encoded messages via HTTPS POST. endpoint is a URL beginning with https://.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.https
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the subscription."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Required) Protocol to use. Valid values are: sqs, sms, lambda, firehose, and application. Protocols email, email-json, http and https are also valid but partially supported. See details below."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "raw_message_delivery" {
  description = "(Optional) Whether to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.raw_message_delivery
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "confirmation_was_authenticated" {
  description = "Whether the subscription confirmation request was authenticated."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.confirmation_was_authenticated
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ARN of the subscription."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "owner_id" {
  description = "AWS account ID of the subscription's owner."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.owner_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pending_confirmation" {
  description = "Whether the subscription has not been confirmed."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.pending_confirmation
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the subscription."
  value       = aws_sns_topic_subscription.aws_sns_topic_subscription.arn
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
      "kind/name"                   = "aws_sns_topic_subscription"
      "kind/version"                = "v0.1.0"
    }
  }
}
