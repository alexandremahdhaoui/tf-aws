resource "aws_evidently_project" "aws_evidently_project" {
  last_updated_time       = var.last_updated_time
  active_launch_count     = var.active_launch_count
  created_time            = var.created_time
  id                      = var.id
  name                    = var.name
  status                  = var.status
  tags                    = var.tags
  update                  = var.update
  active_experiment_count = var.active_experiment_count
  cloudwatch_logs         = var.cloudwatch_logs
  launch_count            = var.launch_count
  data_delivery           = var.data_delivery
  log_group               = var.log_group
  prefix                  = var.prefix
  arn                     = var.arn
  bucket                  = var.bucket
  create                  = var.create
  feature_count           = var.feature_count
  s3_destination          = var.s3_destination
  delete                  = var.delete
  description             = var.description
  experiment_count        = var.experiment_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "active_launch_count" {
  description = "The number of ongoing launches currently in the project."
  type        = string
}
variable "created_time" {
  description = "The date and time that the project is created."
  type        = string
}
variable "id" {
  description = "The ID has the same value as the arn of the project."
  type        = string
}
variable "last_updated_time" {
  description = "The date and time that the project was most recently updated."
  type        = string
}
variable "active_experiment_count" {
  description = "The number of ongoing experiments currently in the project."
  type        = string
}
variable "cloudwatch_logs" {
  description = "(Optional) A block that defines the CloudWatch Log Group that stores the evaluation events. See below."
  type        = string
  default     = ""
}
variable "launch_count" {
  description = "The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not."
  type        = string
}
variable "name" {
  description = "(Required) A name for the project."
  type        = string
}
variable "status" {
  description = "The current state of the project. Valid values are AVAILABLE and UPDATING."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the project. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The data_delivery block supports the following arguments:~> strongNOTE: You can't specify both cloudwatch_logs and s3_destination."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 2m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "arn" {
  description = "The ARN of the project."
  type        = string
}
variable "bucket" {
  description = "(Optional) The name of the bucket in which Evidently stores evaluation events."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 2m)"
  type        = string
}
variable "data_delivery" {
  description = "(Optional) A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below."
  type        = string
  default     = ""
}
variable "log_group" {
  description = "(Optional) The name of the log group where the project stores evaluation events.The s3_destination block supports the following arguments:"
  type        = string
  default     = ""
}
variable "prefix" {
  description = "(Optional) The bucket prefix in which Evidently stores evaluation events.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 2m)"
  type        = string
}
variable "description" {
  description = "(Optional) Specifies the description of the project."
  type        = string
  default     = ""
}
variable "experiment_count" {
  description = "The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not."
  type        = string
}
variable "feature_count" {
  description = "The number of features currently in the project."
  type        = string
}
variable "s3_destination" {
  description = "(Optional) A block that defines the S3 bucket and prefix that stores the evaluation events. See below.The cloudwatch_logs block supports the following arguments:"
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
output "data_delivery" {
  description = "(Optional) A block that contains information about where Evidently is to store evaluation events for longer term storage, if you choose to do so. If you choose not to store these events, Evidently deletes them after using them to produce metrics and other experiment results that you can view. See below."
  value       = aws_evidently_project.aws_evidently_project.data_delivery
}
output "log_group" {
  description = "(Optional) The name of the log group where the project stores evaluation events.The s3_destination block supports the following arguments:"
  value       = aws_evidently_project.aws_evidently_project.log_group
}
output "prefix" {
  description = "(Optional) The bucket prefix in which Evidently stores evaluation events.TimeoutsConfiguration options:"
  value       = aws_evidently_project.aws_evidently_project.prefix
}
output "arn" {
  description = "The ARN of the project."
  value       = aws_evidently_project.aws_evidently_project.arn
}
output "bucket" {
  description = "(Optional) The name of the bucket in which Evidently stores evaluation events."
  value       = aws_evidently_project.aws_evidently_project.bucket
}
output "create" {
  description = "(Default 2m)"
  value       = aws_evidently_project.aws_evidently_project.create
}
output "feature_count" {
  description = "The number of features currently in the project."
  value       = aws_evidently_project.aws_evidently_project.feature_count
}
output "s3_destination" {
  description = "(Optional) A block that defines the S3 bucket and prefix that stores the evaluation events. See below.The cloudwatch_logs block supports the following arguments:"
  value       = aws_evidently_project.aws_evidently_project.s3_destination
}
output "delete" {
  description = "(Default 2m)"
  value       = aws_evidently_project.aws_evidently_project.delete
}
output "description" {
  description = "(Optional) Specifies the description of the project."
  value       = aws_evidently_project.aws_evidently_project.description
}
output "experiment_count" {
  description = "The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not."
  value       = aws_evidently_project.aws_evidently_project.experiment_count
}
output "last_updated_time" {
  description = "The date and time that the project was most recently updated."
  value       = aws_evidently_project.aws_evidently_project.last_updated_time
}
output "active_launch_count" {
  description = "The number of ongoing launches currently in the project."
  value       = aws_evidently_project.aws_evidently_project.active_launch_count
}
output "created_time" {
  description = "The date and time that the project is created."
  value       = aws_evidently_project.aws_evidently_project.created_time
}
output "id" {
  description = "The ID has the same value as the arn of the project."
  value       = aws_evidently_project.aws_evidently_project.id
}
output "name" {
  description = "(Required) A name for the project."
  value       = aws_evidently_project.aws_evidently_project.name
}
output "status" {
  description = "The current state of the project. Valid values are AVAILABLE and UPDATING."
  value       = aws_evidently_project.aws_evidently_project.status
}
output "tags" {
  description = "(Optional) Tags to apply to the project. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.The data_delivery block supports the following arguments:~> strongNOTE: You can't specify both cloudwatch_logs and s3_destination."
  value       = aws_evidently_project.aws_evidently_project.tags
}
output "update" {
  description = "(Default 2m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_evidently_project.aws_evidently_project.update
}
output "active_experiment_count" {
  description = "The number of ongoing experiments currently in the project."
  value       = aws_evidently_project.aws_evidently_project.active_experiment_count
}
output "cloudwatch_logs" {
  description = "(Optional) A block that defines the CloudWatch Log Group that stores the evaluation events. See below."
  value       = aws_evidently_project.aws_evidently_project.cloudwatch_logs
}
output "launch_count" {
  description = "The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not."
  value       = aws_evidently_project.aws_evidently_project.launch_count
}
output "feature_count" {
  description = "The number of features currently in the project."
  value       = aws_evidently_project.aws_evidently_project.feature_count
}
output "launch_count" {
  description = "The number of launches currently in the project. This includes all launches that have been created and not deleted, whether they are ongoing or not."
  value       = aws_evidently_project.aws_evidently_project.launch_count
}
output "status" {
  description = "The current state of the project. Valid values are AVAILABLE and UPDATING."
  value       = aws_evidently_project.aws_evidently_project.status
}
output "active_experiment_count" {
  description = "The number of ongoing experiments currently in the project."
  value       = aws_evidently_project.aws_evidently_project.active_experiment_count
}
output "active_launch_count" {
  description = "The number of ongoing launches currently in the project."
  value       = aws_evidently_project.aws_evidently_project.active_launch_count
}
output "created_time" {
  description = "The date and time that the project is created."
  value       = aws_evidently_project.aws_evidently_project.created_time
}
output "last_updated_time" {
  description = "The date and time that the project was most recently updated."
  value       = aws_evidently_project.aws_evidently_project.last_updated_time
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_evidently_project.aws_evidently_project.tags_all
}
output "arn" {
  description = "The ARN of the project."
  value       = aws_evidently_project.aws_evidently_project.arn
}
output "experiment_count" {
  description = "The number of experiments currently in the project. This includes all experiments that have been created and not deleted, whether they are ongoing or not."
  value       = aws_evidently_project.aws_evidently_project.experiment_count
}
output "id" {
  description = "The ID has the same value as the arn of the project."
  value       = aws_evidently_project.aws_evidently_project.id
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
      "kind/name"                   = "aws_evidently_project"
      "kind/version"                = "v0.1.0"
    }
  }
}
