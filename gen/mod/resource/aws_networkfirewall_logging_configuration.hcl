resource "aws_networkfirewall_logging_configuration" "aws_networkfirewall_logging_configuration" {
  For a CloudWatch log group, specify the key                   = var.For a CloudWatch log group, specify the key 
  log_destination                                               = var.log_destination
  log_destination_type                                          = var.log_destination_type
  log_type                                                      = var.log_type
  logging_configuration                                         = var.logging_configuration
  For a Kinesis Data Firehose delivery stream, specify the key  = var.For a Kinesis Data Firehose delivery stream, specify the key 
  For an Amazon S3 bucket, specify the key                      = var.For an Amazon S3 bucket, specify the key 
  firewall_arn                                                  = var.firewall_arn
  log_destination_config                                        = var.log_destination_config
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "For a Kinesis Data Firehose delivery stream, specify the key " {
  description = "deliveryStream with the name of the delivery stream."
  type        = string
}
variable "For an Amazon S3 bucket, specify the key " {
  description = "bucketName with the name of the bucket and optionally specify the key prefix with a path."
  type        = string
}
variable "firewall_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Network Firewall firewall."
  type        = string
}
variable "log_destination_config" {
  description = "(Required) Set of configuration blocks describing the logging details for a firewall. See Log Destination Config below for details. At most, only two blocks can be specified; one for FLOW logs and one for ALERT logs.Log Destination ConfigThe log_destination_config block supports the following arguments:"
  type        = string
}
variable "For a CloudWatch log group, specify the key " {
  description = "logGroup with the name of the CloudWatch log group."
  type        = string
}
variable "log_destination" {
  description = "(Required) A map describing the logging destination for the chosen log_destination_type."
  type        = string
}
variable "log_destination_type" {
  description = "(Required) The location to send logs to. Valid values: S3, CloudWatchLogs, KinesisDataFirehose."
  type        = string
}
variable "log_type" {
  description = "(Required) The type of log to send. Valid values: ALERT or FLOW. Alert logs report traffic that matches a StatefulRule with an action setting that sends a log message. Flow logs are standard network traffic flow logs.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "logging_configuration" {
  description = "(Required) A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.Logging ConfigurationThe logging_configuration block supports the following arguments:"
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
output "logging_configuration" {
  description = "(Required) A configuration block describing how AWS Network Firewall performs logging for a firewall. See Logging Configuration below for details.Logging ConfigurationThe logging_configuration block supports the following arguments:"
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.logging_configuration
}
output "For a CloudWatch log group, specify the key " {
  description = "logGroup with the name of the CloudWatch log group."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.For a CloudWatch log group, specify the key 
}
output "log_destination" {
  description = "(Required) A map describing the logging destination for the chosen log_destination_type."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.log_destination
}
output "log_destination_type" {
  description = "(Required) The location to send logs to. Valid values: S3, CloudWatchLogs, KinesisDataFirehose."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.log_destination_type
}
output "log_type" {
  description = "(Required) The type of log to send. Valid values: ALERT or FLOW. Alert logs report traffic that matches a StatefulRule with an action setting that sends a log message. Flow logs are standard network traffic flow logs.In addition to all arguments above, the following attributes are exported:"
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.log_type
}
output "For a Kinesis Data Firehose delivery stream, specify the key " {
  description = "deliveryStream with the name of the delivery stream."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.For a Kinesis Data Firehose delivery stream, specify the key 
}
output "For an Amazon S3 bucket, specify the key " {
  description = "bucketName with the name of the bucket and optionally specify the key prefix with a path."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.For an Amazon S3 bucket, specify the key 
}
output "firewall_arn" {
  description = "(Required, Forces new resource) The Amazon Resource Name (ARN) of the Network Firewall firewall."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.firewall_arn
}
output "log_destination_config" {
  description = "(Required) Set of configuration blocks describing the logging details for a firewall. See Log Destination Config below for details. At most, only two blocks can be specified; one for FLOW logs and one for ALERT logs.Log Destination ConfigThe log_destination_config block supports the following arguments:"
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.log_destination_config
}
output "id" {
  description = "The Amazon Resource Name (ARN) of the associated firewall."
  value       = aws_networkfirewall_logging_configuration.aws_networkfirewall_logging_configuration.id
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
      "kind/name"                   = "aws_networkfirewall_logging_configuration"
      "kind/version"                = "v0.1.0"
    }
  }
}
