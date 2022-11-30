resource "aws_ec2_network_insights_analysis" "aws_ec2_network_insights_analysis" {
  explanations             = var.explanations
  filter_in_arns           = var.filter_in_arns
  start_date               = var.start_date
  arn                      = var.arn
  component_arn            = var.component_arn
  component_id             = var.component_id
  forward_path_components  = var.forward_path_components
  network_insights_path_id = var.network_insights_path_id
  path_found               = var.path_found
  tags_all                 = var.tags_all
  warning_message          = var.warning_message
  alternate_path_hints     = var.alternate_path_hints
  id                       = var.id
  return_path_components   = var.return_path_components
  status_message           = var.status_message
  tags                     = var.tags
  status                   = var.status
  wait_for_completion      = var.wait_for_completion
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  type        = string
}
variable "id" {
  description = "ID of the Network Insights Analysis."
  type        = string
}
variable "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  type        = string
}
variable "status_message" {
  description = "A message to provide more context when the status is failed."
  type        = string
}
variable "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  type        = string
}
variable "wait_for_completion" {
  description = "(Optional) If enabled, the resource will wait for the Network Insights Analysis status to change to succeeded or failed. Setting this to false will skip the process. Default: true."
  type        = string
}
variable "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  type        = string
}
variable "filter_in_arns" {
  description = "(Optional) A list of ARNs for resources the path must traverse."
  type        = string
}
variable "start_date" {
  description = "The date/time the analysis was started."
  type        = string
}
variable "network_insights_path_id" {
  description = "(Required) ID of the Network Insights Path to run an analysis on."
  type        = string
}
variable "path_found" {
  description = "Set to true if the destination was reachable."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  type        = string
}
variable "arn" {
  description = "ARN of the Network Insights Analysis."
  type        = string
}
variable "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  type        = string
}
variable "component_id" {
  description = "The ID of the component."
  type        = string
}
variable "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
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
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_message" {
  description = "A message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wait_for_completion" {
  description = "(Optional) If enabled, the resource will wait for the Network Insights Analysis status to change to succeeded or failed. Setting this to false will skip the process. Default: true."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.wait_for_completion
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "filter_in_arns" {
  description = "(Optional) A list of ARNs for resources the path must traverse."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.filter_in_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_date" {
  description = "The date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.warning_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_id" {
  description = "The ID of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_insights_path_id" {
  description = "(Required) ID of the Network Insights Path to run an analysis on."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.network_insights_path_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_date" {
  description = "The date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_id" {
  description = "The ID of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.warning_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "ID of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_message" {
  description = "A message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
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
      "kind/name"                   = "aws_ec2_network_insights_analysis"
      "kind/version"                = "v0.1.0"
    }
  }
}
