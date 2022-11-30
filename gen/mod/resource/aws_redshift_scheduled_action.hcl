resource "aws_redshift_scheduled_action" "aws_redshift_scheduled_action" {
  cluster_type       = var.cluster_type
  enable             = var.enable
  resume_cluster     = var.resume_cluster
  schedule           = var.schedule
  target_action      = var.target_action
  classic            = var.classic
  resize_cluster     = var.resize_cluster
  iam_role           = var.iam_role
  end_time           = var.end_time
  node_type          = var.node_type
  pause_cluster      = var.pause_cluster
  start_time         = var.start_time
  description        = var.description
  name               = var.name
  number_of_nodes    = var.number_of_nodes
  cluster_identifier = var.cluster_identifier
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_type" {
  description = "(Optional)\u3000The new cluster type for the specified cluster."
  type        = string
}
variable "enable" {
  description = "(Optional) Whether to enable the scheduled action. Default is true ."
  type        = string
}
variable "resume_cluster" {
  description = "(Optional) An action that runs a ResumeCluster API operation. Documented below.pause_cluster"
  type        = string
}
variable "schedule" {
  description = "(Required) The schedule of action. The schedule is defined format of \"at expression\" or \"cron expression\", for example at(2016-03-04T17:27:00) or cron(0 10 ? * MON *). See Scheduled Action for more information."
  type        = string
}
variable "target_action" {
  description = "(Required) Target action. Documented below.Nested Blockstarget_action"
  type        = string
}
variable "classic" {
  description = "(Optional) A boolean value indicating whether the resize operation is using the classic resize process. Default: false."
  type        = string
}
variable "resize_cluster" {
  description = "(Optional) An action that runs a ResizeCluster API operation. Documented below."
  type        = string
}
variable "iam_role" {
  description = "(Required) The IAM role to assume to run the scheduled action."
  type        = string
}
variable "end_time" {
  description = "(Optional) The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  type        = string
}
variable "node_type" {
  description = "(Optional) The new node type for the nodes you are adding."
  type        = string
}
variable "pause_cluster" {
  description = "(Optional) An action that runs a PauseCluster API operation. Documented below."
  type        = string
}
variable "start_time" {
  description = "(Optional) The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  type        = string
}
variable "description" {
  description = "(Optional) The description of the scheduled action."
  type        = string
}
variable "name" {
  description = "(Required) The scheduled action name."
  type        = string
}
variable "number_of_nodes" {
  description = "(Optional) The new number of nodes for the cluster.resume_cluster"
  type        = string
}
variable "cluster_identifier" {
  description = "(Required) The identifier of the cluster to be resumed.In addition to all arguments above, the following attributes are exported:"
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
output "iam_role" {
  description = "(Required) The IAM role to assume to run the scheduled action."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.iam_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resize_cluster" {
  description = "(Optional) An action that runs a ResizeCluster API operation. Documented below."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.resize_cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) The description of the scheduled action."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "end_time" {
  description = "(Optional) The end time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.end_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "node_type" {
  description = "(Optional) The new node type for the nodes you are adding."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.node_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pause_cluster" {
  description = "(Optional) An action that runs a PauseCluster API operation. Documented below."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.pause_cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_time" {
  description = "(Optional) The start time in UTC when the schedule is active, in UTC RFC3339 format(for example, YYYY-MM-DDTHH:MM:SSZ)."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.start_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_identifier" {
  description = "(Required) The identifier of the cluster to be resumed.In addition to all arguments above, the following attributes are exported:"
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.cluster_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) The scheduled action name."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "number_of_nodes" {
  description = "(Optional) The new number of nodes for the cluster.resume_cluster"
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.number_of_nodes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_action" {
  description = "(Required) Target action. Documented below.Nested Blockstarget_action"
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.target_action
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "classic" {
  description = "(Optional) A boolean value indicating whether the resize operation is using the classic resize process. Default: false."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.classic
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster_type" {
  description = "(Optional)\u3000The new cluster type for the specified cluster."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.cluster_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "enable" {
  description = "(Optional) Whether to enable the scheduled action. Default is true ."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.enable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resume_cluster" {
  description = "(Optional) An action that runs a ResumeCluster API operation. Documented below.pause_cluster"
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.resume_cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "schedule" {
  description = "(Required) The schedule of action. The schedule is defined format of \"at expression\" or \"cron expression\", for example at(2016-03-04T17:27:00) or cron(0 10 ? * MON *). See Scheduled Action for more information."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.schedule
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The Redshift Scheduled Action name."
  value       = aws_redshift_scheduled_action.aws_redshift_scheduled_action.id
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
      "kind/name"                   = "aws_redshift_scheduled_action"
      "kind/version"                = "v0.1.0"
    }
  }
}
