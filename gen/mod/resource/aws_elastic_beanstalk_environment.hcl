resource "aws_elastic_beanstalk_environment" "aws_elastic_beanstalk_environment" {
  tags                   = var.tags
  template_name          = var.template_name
  id                     = var.id
  launch_configurations  = var.launch_configurations
  name                   = var.name
  namespace              = var.namespace
  queues                 = var.queues
  resource               = var.resource
  tier                   = var.tier
  solution_stack_name    = var.solution_stack_name
  value                  = var.value
  autoscaling_groups     = var.autoscaling_groups
  cname                  = var.cname
  description            = var.description
  instances              = var.instances
  load_balancers         = var.load_balancers
  setting                = var.setting
  version_label          = var.version_label
  application            = var.application
  cname_prefix           = var.cname_prefix
  tags_all               = var.tags_all
  wait_for_ready_timeout = var.wait_for_ready_timeout
  all_settings           = var.all_settings
  platform_arn           = var.platform_arn
  poll_interval          = var.poll_interval
  triggers               = var.triggers
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cname" {
  description = "Fully qualified DNS name for this Environment."
  type        = string
}
variable "description" {
  description = "Description of the Elastic Beanstalk Environment."
  type        = string
}
variable "instances" {
  description = "Instances used by this Environment."
  type        = string
}
variable "load_balancers" {
  description = "Elastic load balancers in use by this Environment."
  type        = string
}
variable "setting" {
  description = " – Settings specifically set for this Environment."
  type        = string
}
variable "solution_stack_name" {
  description = "Amazon API documentation"
  type        = string
}
variable "value" {
  description = "value for the configuration option"
  type        = string
}
variable "autoscaling_groups" {
  description = "The autoscaling groups used by this Environment."
  type        = string
}
variable "version_label" {
  description = "(Optional) The name of the Elastic Beanstalk Application Version\nto use in deployment."
  type        = string
  default     = ""
}
variable "cname_prefix" {
  description = "(Optional) Prefix to use for the fully qualified DNS name of\nthe Environment."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "wait_for_ready_timeout" {
  description = "(Default 20mduration"
  type        = string
}
variable "application" {
  description = " – The Elastic Beanstalk Application specified for this environment."
  type        = string
}
variable "platform_arn" {
  description = " – (Optional) The ARN of the Elastic Beanstalk Platform"
  type        = string
  default     = ""
}
variable "poll_interval" {
  description = "create or update action. Minimum 10s, maximum 180s"
  type        = string
}
variable "triggers" {
  description = "Autoscaling triggers in use by this Environment."
  type        = string
}
variable "all_settings" {
  description = "setting"
  type        = string
}
variable "launch_configurations" {
  description = "Launch configurations in use by this Environment."
  type        = string
}
variable "name" {
  description = "Name of the Elastic Beanstalk Environment."
  type        = string
}
variable "namespace" {
  description = "unique namespace identifying the option's associated AWS resource"
  type        = string
}
variable "queues" {
  description = "SQS queues in use by this Environment."
  type        = string
}
variable "resource" {
  description = "(Optional) resource name for scheduled actionExample With OptionsIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A set of tags to apply to the Environment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Option SettingsSome options can be stack-specific, check AWS DocsThe setting and all_settings mappings support the following format:"
  type        = string
  default     = ""
}
variable "template_name" {
  description = ""
  type        = string
}
variable "id" {
  description = "ID of the Elastic Beanstalk Environment."
  type        = string
}
variable "tier" {
  description = "The environment tier specified."
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
output "all_settings" {
  description = "setting"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.all_settings
}
output "platform_arn" {
  description = " – (Optional) The ARN of the Elastic Beanstalk Platform"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.platform_arn
}
output "poll_interval" {
  description = "create or update action. Minimum 10s, maximum 180s"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.poll_interval
}
output "triggers" {
  description = "Autoscaling triggers in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.triggers
}
output "tags" {
  description = "(Optional) A set of tags to apply to the Environment. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Option SettingsSome options can be stack-specific, check AWS DocsThe setting and all_settings mappings support the following format:"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.tags
}
output "template_name" {
  description = ""
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.template_name
}
output "id" {
  description = "ID of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.id
}
output "launch_configurations" {
  description = "Launch configurations in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.launch_configurations
}
output "name" {
  description = "Name of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.name
}
output "namespace" {
  description = "unique namespace identifying the option's associated AWS resource"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.namespace
}
output "queues" {
  description = "SQS queues in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.queues
}
output "resource" {
  description = "(Optional) resource name for scheduled actionExample With OptionsIn addition to all arguments above, the following attributes are exported:"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.resource
}
output "tier" {
  description = "The environment tier specified."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.tier
}
output "solution_stack_name" {
  description = "Amazon API documentation"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.solution_stack_name
}
output "value" {
  description = "value for the configuration option"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.value
}
output "autoscaling_groups" {
  description = "The autoscaling groups used by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.autoscaling_groups
}
output "cname" {
  description = "Fully qualified DNS name for this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.cname
}
output "description" {
  description = "Description of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.description
}
output "instances" {
  description = "Instances used by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.instances
}
output "load_balancers" {
  description = "Elastic load balancers in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.load_balancers
}
output "setting" {
  description = " – Settings specifically set for this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.setting
}
output "version_label" {
  description = "(Optional) The name of the Elastic Beanstalk Application Version\nto use in deployment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.version_label
}
output "application" {
  description = " – The Elastic Beanstalk Application specified for this environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.application
}
output "cname_prefix" {
  description = "(Optional) Prefix to use for the fully qualified DNS name of\nthe Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.cname_prefix
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.tags_all
}
output "wait_for_ready_timeout" {
  description = "(Default 20mduration"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.wait_for_ready_timeout
}
output "autoscaling_groups" {
  description = "The autoscaling groups used by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.autoscaling_groups
}
output "setting" {
  description = " – Settings specifically set for this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.setting
}
output "all_settings" {
  description = "setting"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.all_settings
}
output "cname" {
  description = "Fully qualified DNS name for this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.cname
}
output "description" {
  description = "Description of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.description
}
output "instances" {
  description = "Instances used by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.instances
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.tags_all
}
output "triggers" {
  description = "Autoscaling triggers in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.triggers
}
output "application" {
  description = " – The Elastic Beanstalk Application specified for this environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.application
}
output "endpoint_url" {
  description = "The URL to the Load Balancer for this Environment"
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.endpoint_url
}
output "id" {
  description = "ID of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.id
}
output "launch_configurations" {
  description = "Launch configurations in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.launch_configurations
}
output "load_balancers" {
  description = "Elastic load balancers in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.load_balancers
}
output "name" {
  description = "Name of the Elastic Beanstalk Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.name
}
output "queues" {
  description = "SQS queues in use by this Environment."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.queues
}
output "tier" {
  description = "The environment tier specified."
  value       = aws_elastic_beanstalk_environment.aws_elastic_beanstalk_environment.tier
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
      "kind/name"                   = "aws_elastic_beanstalk_environment"
      "kind/version"                = "v0.1.0"
    }
  }
}
