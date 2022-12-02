resource "aws_ec2_network_insights_analysis" "aws_ec2_network_insights_analysis" {
  warning_message          = var.warning_message
  component_id             = var.component_id
  explanations             = var.explanations
  return_path_components   = var.return_path_components
  start_date               = var.start_date
  id                       = var.id
  path_found               = var.path_found
  tags                     = var.tags
  tags_all                 = var.tags_all
  arn                      = var.arn
  component_arn            = var.component_arn
  filter_in_arns           = var.filter_in_arns
  forward_path_components  = var.forward_path_components
  alternate_path_hints     = var.alternate_path_hints
  status                   = var.status
  wait_for_completion      = var.wait_for_completion
  network_insights_path_id = var.network_insights_path_id
  status_message           = var.status_message
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "component_id" {
  description = "The ID of the component."
  type        = string
  default     = ""
}
variable "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  type        = string
  default     = ""
}
variable "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  type        = string
  default     = ""
}
variable "start_date" {
  description = "The date/time the analysis was started."
  type        = string
  default     = ""
}
variable "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Network Insights Analysis."
  type        = string
  default     = ""
}
variable "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  type        = string
  default     = ""
}
variable "filter_in_arns" {
  description = "(Optional) A list of ARNs for resources the path must traverse."
  type        = string
  default     = ""
}
variable "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the Network Insights Analysis."
  type        = string
  default     = ""
}
variable "path_found" {
  description = "Set to true if the destination was reachable."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  type        = string
  default     = ""
}
variable "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  type        = string
  default     = ""
}
variable "wait_for_completion" {
  description = "(Optional) If enabled, the resource will wait for the Network Insights Analysis status to change to succeeded or failed. Setting this to false will skip the process. Default: true."
  type        = string
  default     = ""
}
variable "network_insights_path_id" {
  description = "(Required) ID of the Network Insights Path to run an analysis on."
  type        = string
}
variable "status_message" {
  description = "A message to provide more context when the status is failed."
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
output "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.warning_message
}
output "component_id" {
  description = "The ID of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_id
}
output "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "start_date" {
  description = "The date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "id" {
  description = "ID of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.id
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags_all
}
output "arn" {
  description = "ARN of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_arn
}
output "filter_in_arns" {
  description = "(Optional) A list of ARNs for resources the path must traverse."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.filter_in_arns
}
output "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "wait_for_completion" {
  description = "(Optional) If enabled, the resource will wait for the Network Insights Analysis status to change to succeeded or failed. Setting this to false will skip the process. Default: true."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.wait_for_completion
}
output "network_insights_path_id" {
  description = "(Required) ID of the Network Insights Path to run an analysis on."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.network_insights_path_id
}
output "status_message" {
  description = "A message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
}
output "status" {
  description = "The status of the analysis. succeeded means the analysis was completed, not that a path was found, for that see path_found."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.tags_all
}
output "warning_message" {
  description = "The warning message.The alternate_path_hints object supports the following:"
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.warning_message
}
output "alternate_path_hints" {
  description = "Potential intermediate components of a feasible path. Described below."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.alternate_path_hints
}
output "component_id" {
  description = "The ID of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_id
}
output "explanations" {
  description = "Explanation codes for an unreachable path. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.explanations
}
output "start_date" {
  description = "The date/time the analysis was started."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.start_date
}
output "forward_path_components" {
  description = "The components in the path from source to destination. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.forward_path_components
}
output "return_path_components" {
  description = "The components in the path from destination to source. See the AWS documentation for details."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.return_path_components
}
output "id" {
  description = "ID of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.id
}
output "path_found" {
  description = "Set to true if the destination was reachable."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.path_found
}
output "status_message" {
  description = "A message to provide more context when the status is failed."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.status_message
}
output "arn" {
  description = "ARN of the Network Insights Analysis."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.arn
}
output "component_arn" {
  description = "The Amazon Resource Name (ARN) of the component."
  value       = aws_ec2_network_insights_analysis.aws_ec2_network_insights_analysis.component_arn
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
      "kind/name"                   = "aws_ec2_network_insights_analysis"
      "kind/version"                = "v0.1.0"
    }
  }
}
