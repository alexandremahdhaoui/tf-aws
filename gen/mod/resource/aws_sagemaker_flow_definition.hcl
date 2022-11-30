resource "aws_sagemaker_flow_definition" "aws_sagemaker_flow_definition" {
  amount_in_usd                           = var.amount_in_usd
  dollars                                 = var.dollars
  s3_output_path                          = var.s3_output_path
  task_count                              = var.task_count
  aws_managed_human_loop_request_source   = var.aws_managed_human_loop_request_source
  kms_key_id                              = var.kms_key_id
  flow_definition_name                    = var.flow_definition_name
  public_workforce_task_price             = var.public_workforce_task_price
  human_loop_activation_conditions        = var.human_loop_activation_conditions
  human_loop_config                       = var.human_loop_config
  human_task_ui_arn                       = var.human_task_ui_arn
  output_config                           = var.output_config
  tags                                    = var.tags
  id                                      = var.id
  task_description                        = var.task_description
  task_title                              = var.task_title
  cents                                   = var.cents
  human_loop_activation_config            = var.human_loop_activation_config
  human_loop_request_source               = var.human_loop_request_source
  task_keywords                           = var.task_keywords
  arn                                     = var.arn
  human_loop_activation_conditions_config = var.human_loop_activation_conditions_config
  role_arn                                = var.role_arn
  task_availability_lifetime_in_seconds   = var.task_availability_lifetime_in_seconds
  task_time_limit_in_seconds              = var.task_time_limit_in_seconds
  tenth_fractions_of_a_cent               = var.tenth_fractions_of_a_cent
  workteam_arn                            = var.workteam_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "flow_definition_name" {
  description = "(Required) The name of your flow definition."
  type        = string
}
variable "public_workforce_task_price" {
  description = "(Optional) Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. See Public Workforce Task Price details below."
  type        = string
}
variable "human_loop_activation_conditions" {
  description = "(Required) A JSON expressing use-case specific conditions declaratively. If any condition is matched, atomic tasks are created against the configured work team. For more information about how to structure the JSON, see JSON Schema for Human Loop Activation Conditions in Amazon Augmented AI.Human Loop Request Source"
  type        = string
}
variable "human_loop_config" {
  description = "(Required)  An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below."
  type        = string
}
variable "human_task_ui_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the human task user interface."
  type        = string
}
variable "output_config" {
  description = "(Required) An object containing information about where the human review results will be uploaded. See Output Config details below."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Human Loop Config"
  type        = string
}
variable "id" {
  description = "The name of the Flow Definition."
  type        = string
}
variable "task_description" {
  description = "(Required) A description for the human worker task."
  type        = string
}
variable "task_title" {
  description = "(Required) A title for the human worker task."
  type        = string
}
variable "cents" {
  description = "(Optional) The fractional portion, in cents, of the amount. Valid value range between 0 and 99."
  type        = string
}
variable "human_loop_activation_config" {
  description = "(Optional) An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below."
  type        = string
}
variable "human_loop_request_source" {
  description = "(Optional) Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below."
  type        = string
}
variable "task_keywords" {
  description = "(Optional) An array of keywords used to describe the task so that workers can discover the task."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition."
  type        = string
}
variable "human_loop_activation_conditions_config" {
  description = "(Required) defines under what conditions SageMaker creates a human loop. See Human Loop Activation Conditions Config details below.Human Loop Activation Conditions Config"
  type        = string
}
variable "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the role needed to call other services on your behalf."
  type        = string
}
variable "task_availability_lifetime_in_seconds" {
  description = "(Required) The length of time that a task remains available for review by human workers. Valid value range between 1 and 864000."
  type        = string
}
variable "task_time_limit_in_seconds" {
  description = "(Optional) The amount of time that a worker has to complete a task. The default value is 3600 seconds."
  type        = string
}
variable "tenth_fractions_of_a_cent" {
  description = "(Optional) Fractions of a cent, in tenths. Valid value range between 0 and 9.Human Loop Activation Config"
  type        = string
}
variable "workteam_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the human task user interface. Amazon Resource Name (ARN) of a team of workers. For Public workforces see AWS Docs.Public Workforce Task Price"
  type        = string
}
variable "amount_in_usd" {
  description = "(Optional) Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.Amount In Usd"
  type        = string
}
variable "dollars" {
  description = "(Optional) The whole number of dollars in the amount. Valid value range between 0 and 2."
  type        = string
}
variable "s3_output_path" {
  description = "(Required) The Amazon S3 path where the object containing human output will be made available."
  type        = string
}
variable "task_count" {
  description = "(Required) The number of distinct workers who will perform the same task on each object. Valid value range between 1 and 3."
  type        = string
}
variable "aws_managed_human_loop_request_source" {
  description = "(Required) Specifies whether Amazon Rekognition or Amazon Textract are used as the integration source. Valid values are: AWS/Rekognition/DetectModerationLabels/Image/V3 and AWS/Textract/AnalyzeDocument/Forms/V1.Output Config"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The Amazon Key Management Service (KMS) key ARN for server-side encryption.In addition to all arguments above, the following attributes are exported:"
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
output "aws_managed_human_loop_request_source" {
  description = "(Required) Specifies whether Amazon Rekognition or Amazon Textract are used as the integration source. Valid values are: AWS/Rekognition/DetectModerationLabels/Image/V3 and AWS/Textract/AnalyzeDocument/Forms/V1.Output Config"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.aws_managed_human_loop_request_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key_id" {
  description = "(Optional) The Amazon Key Management Service (KMS) key ARN for server-side encryption.In addition to all arguments above, the following attributes are exported:"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.kms_key_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "flow_definition_name" {
  description = "(Required) The name of your flow definition."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.flow_definition_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_workforce_task_price" {
  description = "(Optional) Defines the amount of money paid to an Amazon Mechanical Turk worker for each task performed. See Public Workforce Task Price details below."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.public_workforce_task_price
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_loop_activation_conditions" {
  description = "(Required) A JSON expressing use-case specific conditions declaratively. If any condition is matched, atomic tasks are created against the configured work team. For more information about how to structure the JSON, see JSON Schema for Human Loop Activation Conditions in Amazon Augmented AI.Human Loop Request Source"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_loop_activation_conditions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_loop_config" {
  description = "(Required)  An object containing information about the tasks the human reviewers will perform. See Human Loop Config details below."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_loop_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_task_ui_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the human task user interface."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_task_ui_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "output_config" {
  description = "(Required) An object containing information about where the human review results will be uploaded. See Output Config details below."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.output_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Human Loop Config"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Flow Definition."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_description" {
  description = "(Required) A description for the human worker task."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_title" {
  description = "(Required) A title for the human worker task."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_title
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cents" {
  description = "(Optional) The fractional portion, in cents, of the amount. Valid value range between 0 and 99."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.cents
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_loop_activation_config" {
  description = "(Optional) An object containing information about the events that trigger a human workflow. See Human Loop Activation Config details below."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_loop_activation_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_loop_request_source" {
  description = "(Optional) Container for configuring the source of human task requests. Use to specify if Amazon Rekognition or Amazon Textract is used as an integration source. See Human Loop Request Source details below."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_loop_request_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_keywords" {
  description = "(Optional) An array of keywords used to describe the task so that workers can discover the task."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_keywords
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "human_loop_activation_conditions_config" {
  description = "(Required) defines under what conditions SageMaker creates a human loop. See Human Loop Activation Conditions Config details below.Human Loop Activation Conditions Config"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.human_loop_activation_conditions_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "role_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the role needed to call other services on your behalf."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_availability_lifetime_in_seconds" {
  description = "(Required) The length of time that a task remains available for review by human workers. Valid value range between 1 and 864000."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_availability_lifetime_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_time_limit_in_seconds" {
  description = "(Optional) The amount of time that a worker has to complete a task. The default value is 3600 seconds."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_time_limit_in_seconds
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tenth_fractions_of_a_cent" {
  description = "(Optional) Fractions of a cent, in tenths. Valid value range between 0 and 9.Human Loop Activation Config"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.tenth_fractions_of_a_cent
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "workteam_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the human task user interface. Amazon Resource Name (ARN) of a team of workers. For Public workforces see AWS Docs.Public Workforce Task Price"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.workteam_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "amount_in_usd" {
  description = "(Optional) Defines the amount of money paid to an Amazon Mechanical Turk worker in United States dollars. See Amount In Usd details below.Amount In Usd"
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.amount_in_usd
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "dollars" {
  description = "(Optional) The whole number of dollars in the amount. Valid value range between 0 and 2."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.dollars
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_output_path" {
  description = "(Required) The Amazon S3 path where the object containing human output will be made available."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.s3_output_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_count" {
  description = "(Required) The number of distinct workers who will perform the same task on each object. Valid value range between 1 and 3."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.task_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The name of the Flow Definition."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) assigned by AWS to this Flow Definition."
  value       = aws_sagemaker_flow_definition.aws_sagemaker_flow_definition.arn
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
      "kind/name"                   = "aws_sagemaker_flow_definition"
      "kind/version"                = "v0.1.0"
    }
  }
}
