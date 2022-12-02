resource "aws_synthetics_canary" "aws_synthetics_canary" {
  encryption_mode          = var.encryption_mode
  handler                  = var.handler
  s3_encryption            = var.s3_encryption
  security_group_ids       = var.security_group_ids
  start_canary             = var.start_canary
  timeout_in_seconds       = var.timeout_in_seconds
  active_tracing           = var.active_tracing
  id                       = var.id
  expression               = var.expression
  last_started             = var.last_started
  s3_key                   = var.s3_key
  s3_version               = var.s3_version
  status                   = var.status
  artifact_s3_location     = var.artifact_s3_location
  created                  = var.created
  name                     = var.name
  schedule                 = var.schedule
  duration_in_seconds      = var.duration_in_seconds
  engine_arn               = var.engine_arn
  failure_retention_period = var.failure_retention_period
  last_stopped             = var.last_stopped
  memory_in_mb             = var.memory_in_mb
  source_location_arn      = var.source_location_arn
  tags_all                 = var.tags_all
  vpc_config               = var.vpc_config
  kms_key_arn              = var.kms_key_arn
  last_modified            = var.last_modified
  run_config               = var.run_config
  runtime_version          = var.runtime_version
  success_retention_period = var.success_retention_period
  tags                     = var.tags
  arn                      = var.arn
  artifact_config          = var.artifact_config
  execution_role_arn       = var.execution_role_arn
  s3_bucket                = var.s3_bucket
  timeline                 = var.timeline
  vpc_id                   = var.vpc_id
  delete_lambda            = var.delete_lambda
  environment_variables    = var.environment_variables
  subnet_ids               = var.subnet_ids
  zip_file                 = var.zip_file
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "s3_encryption" {
  description = "(Optional) Configuration of the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See S3 Encryption.s3_encryption"
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) IDs of the security groups for this canary.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "start_canary" {
  description = "(Optional) Whether to run or stop the canary."
  type        = string
  default     = ""
}
variable "timeout_in_seconds" {
  description = "(Optional) Number of seconds the canary is allowed to run before it must stop. If you omit this field, the frequency of the canary is used, up to a maximum of 840 (14 minutes)."
  type        = string
  default     = ""
}
variable "encryption_mode" {
  description = "(Optional) The encryption method to use for artifacts created by this canary. Valid values are: SSE_S3 and SSE_KMS."
  type        = string
  default     = ""
}
variable "handler" {
  description = "(Required) Entry point to use for the source code when running the canary. This value must end with the string .handler ."
  type        = string
}
variable "active_tracing" {
  description = "(Optional) Whether this canary is to use active AWS X-Ray tracing when it runs. You can enable active tracing only for canaries that use version syn-nodejs-2.0 or later for their canary runtime."
  type        = string
  default     = ""
}
variable "id" {
  description = "Name for this canary."
  type        = string
  default     = ""
}
variable "s3_key" {
  description = "(Optional) S3 key of your script. strongConflicts with zip_file."
  type        = string
  default     = ""
}
variable "s3_version" {
  description = "(Optional) S3 version ID of your script. strongConflicts with zip_file."
  type        = string
  default     = ""
}
variable "status" {
  description = "Canary status."
  type        = string
  default     = ""
}
variable "expression" {
  description = "(Required) Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is rate(number unit). emunit can be minute, minutes, or hour. For cron expression, the syntax is cron(expression). For more information about the syntax for cron expressions, see Scheduling canary runs using cron."
  type        = string
}
variable "last_started" {
  description = "Date and time that the canary's most recent run started."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) Name for this canary. Has a maximum length of 21 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore."
  type        = string
}
variable "schedule" {
  description = " (Required) Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below."
  type        = string
}
variable "artifact_s3_location" {
  description = "(Required) Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary."
  type        = string
}
variable "created" {
  description = "Date and time the canary was created."
  type        = string
  default     = ""
}
variable "failure_retention_period" {
  description = "(Optional) Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days."
  type        = string
  default     = ""
}
variable "last_stopped" {
  description = "Date and time that the canary's most recent run ended."
  type        = string
  default     = ""
}
variable "memory_in_mb" {
  description = "(Optional) Maximum amount of memory available to the canary while it is running, in MB. The value you specify must be a multiple of 64."
  type        = string
  default     = ""
}
variable "source_location_arn" {
  description = "ARN of the Lambda layer where Synthetics stores the canary script code."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "duration_in_seconds" {
  description = "(Optional) Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.run_config"
  type        = string
  default     = ""
}
variable "engine_arn" {
  description = "ARN of the Lambda function that is used as your canary's engine."
  type        = string
  default     = ""
}
variable "run_config" {
  description = "(Optional) Configuration block for individual canary runs. Detailed below."
  type        = string
  default     = ""
}
variable "runtime_version" {
  description = "(Required) Runtime version to use for the canary. Versions change often so consult the Amazon CloudWatch documentation for the latest valid versions. Values include syn-python-selenium-1.0, syn-nodejs-puppeteer-3.0, syn-nodejs-2.2, syn-nodejs-2.1, syn-nodejs-2.0, and syn-1.0."
  type        = string
}
variable "success_retention_period" {
  description = "(Optional) Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "kms_key_arn" {
  description = "(Optional) The ARN of the customer-managed KMS key to use, if you specify SSE_KMS for encryption_mode.schedule"
  type        = string
  default     = ""
}
variable "last_modified" {
  description = "Date and time the canary was most recently modified."
  type        = string
  default     = ""
}
variable "execution_role_arn" {
  description = "(Required) ARN of the IAM role to be used to run the canary. see AWS Docs for permissions needs for IAM Role."
  type        = string
}
variable "s3_bucket" {
  description = "(Optional) Full bucket name which is used if your canary script is located in S3. The bucket must already exist. Specify the full bucket name including s3:// as the start of the bucket name. strongConflicts with zip_file."
  type        = string
  default     = ""
}
variable "timeline" {
  description = "Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.vpc_config"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "ID of the VPC where this canary is to run.timeline"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the Canary."
  type        = string
  default     = ""
}
variable "artifact_config" {
  description = "(Optional) configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Required) IDs of the subnets where this canary is to run."
  type        = string
}
variable "zip_file" {
  description = "(Optional) ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 5 MB. strongConflicts with s3_bucket, s3_key, and s3_version.artifact_config"
  type        = string
  default     = ""
}
variable "delete_lambda" {
  description = "(Optional)  Specifies whether to also delete the Lambda functions and layers used by this canary. The default is false."
  type        = string
  default     = ""
}
variable "environment_variables" {
  description = "(Optional) Map of environment variables that are accessible from the canary during execution. Please see AWS Docs for variables reserved for Lambda.vpc_configIf this canary tests an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint. For more information, see Running a Canary in a VPC."
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
output "delete_lambda" {
  description = "(Optional)  Specifies whether to also delete the Lambda functions and layers used by this canary. The default is false."
  value       = aws_synthetics_canary.aws_synthetics_canary.delete_lambda
}
output "environment_variables" {
  description = "(Optional) Map of environment variables that are accessible from the canary during execution. Please see AWS Docs for variables reserved for Lambda.vpc_configIf this canary tests an endpoint in a VPC, this structure contains information about the subnet and security groups of the VPC endpoint. For more information, see Running a Canary in a VPC."
  value       = aws_synthetics_canary.aws_synthetics_canary.environment_variables
}
output "subnet_ids" {
  description = "(Required) IDs of the subnets where this canary is to run."
  value       = aws_synthetics_canary.aws_synthetics_canary.subnet_ids
}
output "zip_file" {
  description = "(Optional) ZIP file that contains the script, if you input your canary script directly into the canary instead of referring to an S3 location. It can be up to 5 MB. strongConflicts with s3_bucket, s3_key, and s3_version.artifact_config"
  value       = aws_synthetics_canary.aws_synthetics_canary.zip_file
}
output "timeout_in_seconds" {
  description = "(Optional) Number of seconds the canary is allowed to run before it must stop. If you omit this field, the frequency of the canary is used, up to a maximum of 840 (14 minutes)."
  value       = aws_synthetics_canary.aws_synthetics_canary.timeout_in_seconds
}
output "encryption_mode" {
  description = "(Optional) The encryption method to use for artifacts created by this canary. Valid values are: SSE_S3 and SSE_KMS."
  value       = aws_synthetics_canary.aws_synthetics_canary.encryption_mode
}
output "handler" {
  description = "(Required) Entry point to use for the source code when running the canary. This value must end with the string .handler ."
  value       = aws_synthetics_canary.aws_synthetics_canary.handler
}
output "s3_encryption" {
  description = "(Optional) Configuration of the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See S3 Encryption.s3_encryption"
  value       = aws_synthetics_canary.aws_synthetics_canary.s3_encryption
}
output "security_group_ids" {
  description = "(Required) IDs of the security groups for this canary.In addition to all arguments above, the following attributes are exported:"
  value       = aws_synthetics_canary.aws_synthetics_canary.security_group_ids
}
output "start_canary" {
  description = "(Optional) Whether to run or stop the canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.start_canary
}
output "active_tracing" {
  description = "(Optional) Whether this canary is to use active AWS X-Ray tracing when it runs. You can enable active tracing only for canaries that use version syn-nodejs-2.0 or later for their canary runtime."
  value       = aws_synthetics_canary.aws_synthetics_canary.active_tracing
}
output "id" {
  description = "Name for this canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.id
}
output "expression" {
  description = "(Required) Rate expression or cron expression that defines how often the canary is to run. For rate expression, the syntax is rate(number unit). emunit can be minute, minutes, or hour. For cron expression, the syntax is cron(expression). For more information about the syntax for cron expressions, see Scheduling canary runs using cron."
  value       = aws_synthetics_canary.aws_synthetics_canary.expression
}
output "last_started" {
  description = "Date and time that the canary's most recent run started."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_started
}
output "s3_key" {
  description = "(Optional) S3 key of your script. strongConflicts with zip_file."
  value       = aws_synthetics_canary.aws_synthetics_canary.s3_key
}
output "s3_version" {
  description = "(Optional) S3 version ID of your script. strongConflicts with zip_file."
  value       = aws_synthetics_canary.aws_synthetics_canary.s3_version
}
output "status" {
  description = "Canary status."
  value       = aws_synthetics_canary.aws_synthetics_canary.status
}
output "artifact_s3_location" {
  description = "(Required) Location in Amazon S3 where Synthetics stores artifacts from the test runs of this canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.artifact_s3_location
}
output "created" {
  description = "Date and time the canary was created."
  value       = aws_synthetics_canary.aws_synthetics_canary.created
}
output "name" {
  description = "(Required) Name for this canary. Has a maximum length of 21 characters. Valid characters are lowercase alphanumeric, hyphen, or underscore."
  value       = aws_synthetics_canary.aws_synthetics_canary.name
}
output "schedule" {
  description = " (Required) Configuration block providing how often the canary is to run and when these test runs are to stop. Detailed below."
  value       = aws_synthetics_canary.aws_synthetics_canary.schedule
}
output "source_location_arn" {
  description = "ARN of the Lambda layer where Synthetics stores the canary script code."
  value       = aws_synthetics_canary.aws_synthetics_canary.source_location_arn
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_synthetics_canary.aws_synthetics_canary.tags_all
}
output "vpc_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_synthetics_canary.aws_synthetics_canary.vpc_config
}
output "duration_in_seconds" {
  description = "(Optional) Duration in seconds, for the canary to continue making regular runs according to the schedule in the Expression value.run_config"
  value       = aws_synthetics_canary.aws_synthetics_canary.duration_in_seconds
}
output "engine_arn" {
  description = "ARN of the Lambda function that is used as your canary's engine."
  value       = aws_synthetics_canary.aws_synthetics_canary.engine_arn
}
output "failure_retention_period" {
  description = "(Optional) Number of days to retain data about failed runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days."
  value       = aws_synthetics_canary.aws_synthetics_canary.failure_retention_period
}
output "last_stopped" {
  description = "Date and time that the canary's most recent run ended."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_stopped
}
output "memory_in_mb" {
  description = "(Optional) Maximum amount of memory available to the canary while it is running, in MB. The value you specify must be a multiple of 64."
  value       = aws_synthetics_canary.aws_synthetics_canary.memory_in_mb
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_synthetics_canary.aws_synthetics_canary.tags
}
output "kms_key_arn" {
  description = "(Optional) The ARN of the customer-managed KMS key to use, if you specify SSE_KMS for encryption_mode.schedule"
  value       = aws_synthetics_canary.aws_synthetics_canary.kms_key_arn
}
output "last_modified" {
  description = "Date and time the canary was most recently modified."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_modified
}
output "run_config" {
  description = "(Optional) Configuration block for individual canary runs. Detailed below."
  value       = aws_synthetics_canary.aws_synthetics_canary.run_config
}
output "runtime_version" {
  description = "(Required) Runtime version to use for the canary. Versions change often so consult the Amazon CloudWatch documentation for the latest valid versions. Values include syn-python-selenium-1.0, syn-nodejs-puppeteer-3.0, syn-nodejs-2.2, syn-nodejs-2.1, syn-nodejs-2.0, and syn-1.0."
  value       = aws_synthetics_canary.aws_synthetics_canary.runtime_version
}
output "success_retention_period" {
  description = "(Optional) Number of days to retain data about successful runs of this canary. If you omit this field, the default of 31 days is used. The valid range is 1 to 455 days."
  value       = aws_synthetics_canary.aws_synthetics_canary.success_retention_period
}
output "vpc_id" {
  description = "ID of the VPC where this canary is to run.timeline"
  value       = aws_synthetics_canary.aws_synthetics_canary.vpc_id
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.arn
}
output "artifact_config" {
  description = "(Optional) configuration for canary artifacts, including the encryption-at-rest settings for artifacts that the canary uploads to Amazon S3. See Artifact Config."
  value       = aws_synthetics_canary.aws_synthetics_canary.artifact_config
}
output "execution_role_arn" {
  description = "(Required) ARN of the IAM role to be used to run the canary. see AWS Docs for permissions needs for IAM Role."
  value       = aws_synthetics_canary.aws_synthetics_canary.execution_role_arn
}
output "s3_bucket" {
  description = "(Optional) Full bucket name which is used if your canary script is located in S3. The bucket must already exist. Specify the full bucket name including s3:// as the start of the bucket name. strongConflicts with zip_file."
  value       = aws_synthetics_canary.aws_synthetics_canary.s3_bucket
}
output "timeline" {
  description = "Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.vpc_config"
  value       = aws_synthetics_canary.aws_synthetics_canary.timeline
}
output "source_location_arn" {
  description = "ARN of the Lambda layer where Synthetics stores the canary script code."
  value       = aws_synthetics_canary.aws_synthetics_canary.source_location_arn
}
output "status" {
  description = "Canary status."
  value       = aws_synthetics_canary.aws_synthetics_canary.status
}
output "timeline" {
  description = "Structure that contains information about when the canary was created, modified, and most recently run. see Timeline.vpc_config"
  value       = aws_synthetics_canary.aws_synthetics_canary.timeline
}
output "vpc_id" {
  description = "ID of the VPC where this canary is to run.timeline"
  value       = aws_synthetics_canary.aws_synthetics_canary.vpc_id
}
output "last_modified" {
  description = "Date and time the canary was most recently modified."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_modified
}
output "last_started" {
  description = "Date and time that the canary's most recent run started."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_started
}
output "last_stopped" {
  description = "Date and time that the canary's most recent run ended."
  value       = aws_synthetics_canary.aws_synthetics_canary.last_stopped
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_synthetics_canary.aws_synthetics_canary.tags_all
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the Canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.arn
}
output "created" {
  description = "Date and time the canary was created."
  value       = aws_synthetics_canary.aws_synthetics_canary.created
}
output "engine_arn" {
  description = "ARN of the Lambda function that is used as your canary's engine."
  value       = aws_synthetics_canary.aws_synthetics_canary.engine_arn
}
output "id" {
  description = "Name for this canary."
  value       = aws_synthetics_canary.aws_synthetics_canary.id
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
      "kind/name"                   = "aws_synthetics_canary"
      "kind/version"                = "v0.1.0"
    }
  }
}
