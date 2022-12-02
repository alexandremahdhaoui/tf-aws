resource "aws_codepipeline.markdown" "aws_codepipeline.markdown" {
  action           = var.action
  arn              = var.arn
  tags             = var.tags
  version          = var.version
  artifact_store   = var.artifact_store
  encryption_key   = var.encryption_key
  namespace        = var.namespace
  run_order        = var.run_order
  type             = var.type
  id               = var.id
  location         = var.location
  output_artifacts = var.output_artifacts
  owner            = var.owner
  role_arn         = var.role_arn
  region           = var.region
  stage            = var.stage
  category         = var.category
  configuration    = var.configuration
  input_artifacts  = var.input_artifacts
  name             = var.name
  provider         = var.provider
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "action" {
  description = "(Required) The action(s) to include in the stage. Defined as an action block belowAn action block supports the following arguments:"
  type        = string
}
variable "arn" {
  description = "The codepipeline ARN."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An artifact_store block supports the following arguments:"
  type        = string
  default     = ""
}
variable "version" {
  description = "(Required) A string that identifies the action type."
  type        = string
}
variable "type" {
  description = "(Required) The type of key; currently only KMS is supportedA stage block supports the following arguments:"
  type        = string
}
variable "artifact_store" {
  description = " (Required) One or more artifact_store blocks. Artifact stores are documented below."
  type        = string
}
variable "encryption_key" {
  description = "(Optional) The encryption key block AWS CodePipeline uses to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If you don't specify a key, AWS CodePipeline uses the default key for Amazon Simple Storage Service (Amazon S3). An encryption_key block is documented below."
  type        = string
  default     = ""
}
variable "namespace" {
  description = "(Optional) The namespace all output variables will be accessed from.~> strongNote: The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "run_order" {
  description = "(Optional) The order in which actions are run."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Optional) The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline."
  type        = string
  default     = ""
}
variable "id" {
  description = "The codepipeline ID."
  type        = string
}
variable "location" {
  description = "(Required) The location where AWS CodePipeline stores artifacts for a pipeline; currently only S3 is supported."
  type        = string
}
variable "output_artifacts" {
  description = "(Optional) A list of artifact names to output. Output artifact names must be unique within a pipeline."
  type        = string
  default     = ""
}
variable "owner" {
  description = "(Required) The creator of the action being called. Possible values are AWS, Custom and ThirdParty."
  type        = string
}
variable "provider" {
  description = "(Required) The provider of the service being called by the action. Valid providers are determined by the action category. Provider names are listed in the Action Structure Reference documentation."
  type        = string
}
variable "region" {
  description = "(Optional) The region in which to run the action."
  type        = string
  default     = ""
}
variable "stage" {
  description = " (Minimum of at least two stage blocks is required) A stage block. Stages are documented below."
  type        = string
}
variable "category" {
  description = "(Required) A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Possible values are Approval, Build, Deploy, Invoke, Source and Test."
  type        = string
}
variable "configuration" {
  description = "(Optional) A map of the action declaration's configuration. Configurations options for action types and providers can be found in the Pipeline Structure Reference and Action Structure Reference documentation."
  type        = string
  default     = ""
}
variable "input_artifacts" {
  description = "(Optional) A list of artifact names to be worked on."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) The action declaration's name."
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
output "provider" {
  description = "(Required) The provider of the service being called by the action. Valid providers are determined by the action category. Provider names are listed in the Action Structure Reference documentation."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.provider
}
output "region" {
  description = "(Optional) The region in which to run the action."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.region
}
output "stage" {
  description = " (Minimum of at least two stage blocks is required) A stage block. Stages are documented below."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.stage
}
output "category" {
  description = "(Required) A category defines what kind of action can be taken in the stage, and constrains the provider type for the action. Possible values are Approval, Build, Deploy, Invoke, Source and Test."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.category
}
output "configuration" {
  description = "(Optional) A map of the action declaration's configuration. Configurations options for action types and providers can be found in the Pipeline Structure Reference and Action Structure Reference documentation."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.configuration
}
output "input_artifacts" {
  description = "(Optional) A list of artifact names to be worked on."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.input_artifacts
}
output "name" {
  description = "(Required) The action declaration's name."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.name
}
output "action" {
  description = "(Required) The action(s) to include in the stage. Defined as an action block belowAn action block supports the following arguments:"
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.action
}
output "arn" {
  description = "The codepipeline ARN."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.arn
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.An artifact_store block supports the following arguments:"
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.tags
}
output "version" {
  description = "(Required) A string that identifies the action type."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.version
}
output "type" {
  description = "(Required) The type of key; currently only KMS is supportedA stage block supports the following arguments:"
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.type
}
output "artifact_store" {
  description = " (Required) One or more artifact_store blocks. Artifact stores are documented below."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.artifact_store
}
output "encryption_key" {
  description = "(Optional) The encryption key block AWS CodePipeline uses to encrypt the data in the artifact store, such as an AWS Key Management Service (AWS KMS) key. If you don't specify a key, AWS CodePipeline uses the default key for Amazon Simple Storage Service (Amazon S3). An encryption_key block is documented below."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.encryption_key
}
output "namespace" {
  description = "(Optional) The namespace all output variables will be accessed from.~> strongNote: The input artifact of an action must exactly match the output artifact declared in a preceding action, but the input artifact does not have to be the next action in strict sequence from the action that provided the output artifact. Actions in parallel can declare different output artifacts, which are in turn consumed by different following actions.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.namespace
}
output "run_order" {
  description = "(Optional) The order in which actions are run."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.run_order
}
output "role_arn" {
  description = "(Optional) The ARN of the IAM service role that will perform the declared action. This is assumed through the roleArn for the pipeline."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.role_arn
}
output "id" {
  description = "The codepipeline ID."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.id
}
output "location" {
  description = "(Required) The location where AWS CodePipeline stores artifacts for a pipeline; currently only S3 is supported."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.location
}
output "output_artifacts" {
  description = "(Optional) A list of artifact names to output. Output artifact names must be unique within a pipeline."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.output_artifacts
}
output "owner" {
  description = "(Required) The creator of the action being called. Possible values are AWS, Custom and ThirdParty."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.owner
}
output "arn" {
  description = "The codepipeline ARN."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.arn
}
output "id" {
  description = "The codepipeline ID."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codepipeline.markdown.aws_codepipeline.markdown.tags_all
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
      "kind/name"                   = "aws_codepipeline.markdown"
      "kind/version"                = "v0.1.0"
    }
  }
}
