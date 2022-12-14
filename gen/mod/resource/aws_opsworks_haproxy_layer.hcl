resource "aws_opsworks_haproxy_layer" "aws_opsworks_haproxy_layer" {
  custom_json                 = var.custom_json
  instance_shutdown_timeout   = var.instance_shutdown_timeout
  iops                        = var.iops
  ebs_volume                  = var.ebs_volume
  stats_user                  = var.stats_user
  type                        = var.type
  tags                        = var.tags
  arn                         = var.arn
  auto_assign_public_ips      = var.auto_assign_public_ips
  custom_instance_profile_arn = var.custom_instance_profile_arn
  custom_undeploy_recipes     = var.custom_undeploy_recipes
  stats_password              = var.stats_password
  custom_deploy_recipes       = var.custom_deploy_recipes
  custom_shutdown_recipes     = var.custom_shutdown_recipes
  elastic_load_balancer       = var.elastic_load_balancer
  system_packages             = var.system_packages
  auto_healing                = var.auto_healing
  custom_configure_recipes    = var.custom_configure_recipes
  custom_security_group_ids   = var.custom_security_group_ids
  mount_point                 = var.mount_point
  install_updates_on_boot     = var.install_updates_on_boot
  stats_enabled               = var.stats_enabled
  stats_url                   = var.stats_url
  stack_id                    = var.stack_id
  healthcheck_method          = var.healthcheck_method
  id                          = var.id
  name                        = var.name
  raid_level                  = var.raid_level
  size                        = var.size
  use_ebs_optimized_instances = var.use_ebs_optimized_instances
  auto_assign_elastic_ips     = var.auto_assign_elastic_ips
  custom_setup_recipes        = var.custom_setup_recipes
  drain_elb_on_shutdown       = var.drain_elb_on_shutdown
  healthcheck_url             = var.healthcheck_url
  number_of_disks             = var.number_of_disks
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "auto_healing" {
  description = "(Optional) Whether to enable auto-healing for the layer."
  type        = string
  default     = ""
}
variable "custom_configure_recipes" {
  description = ""
  type        = string
}
variable "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  type        = string
  default     = ""
}
variable "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  type        = string
}
variable "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  type        = string
  default     = ""
}
variable "stats_enabled" {
  description = "(Optional) Whether to enable HAProxy stats."
  type        = string
  default     = ""
}
variable "stats_url" {
  description = "(Optional) The HAProxy stats URL. Defaults to \"/haproxy?stats\"."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Required) The size of the volume in gigabytes."
  type        = string
}
variable "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  type        = string
}
variable "healthcheck_method" {
  description = "(Optional) HTTP method to use for instance healthchecks. Defaults to \"OPTIONS\"."
  type        = string
  default     = ""
}
variable "id" {
  description = "The id of the layer."
  type        = string
}
variable "name" {
  description = "(Optional) A human-readable name for the layer."
  type        = string
  default     = ""
}
variable "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  type        = string
}
variable "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  type        = string
}
variable "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  type        = string
  default     = ""
}
variable "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  type        = string
  default     = ""
}
variable "custom_setup_recipes" {
  description = ""
  type        = string
}
variable "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  type        = string
  default     = ""
}
variable "healthcheck_url" {
  description = "(Optional) URL path to use for instance healthchecks. Defaults to \"/\"."
  type        = string
  default     = ""
}
variable "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  type        = string
  default     = ""
}
variable "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "ebs_volume" {
  description = "(Optional) ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances."
  type        = string
  default     = ""
}
variable "stats_user" {
  description = "(Optional) The username for HAProxy stats. Defaults to \"opsworks\"."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  type        = string
  default     = ""
}
variable "stats_password" {
  description = "(Required) The password to use for HAProxy stats."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  type        = string
}
variable "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  type        = string
  default     = ""
}
variable "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  type        = string
  default     = ""
}
variable "custom_undeploy_recipes" {
  description = "An ebs_volume block supports the following arguments:"
  type        = string
}
variable "custom_deploy_recipes" {
  description = ""
  type        = string
}
variable "custom_shutdown_recipes" {
  description = ""
  type        = string
}
variable "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  type        = string
  default     = ""
}
variable "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
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
output "ebs_volume" {
  description = "(Optional) ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.ebs_volume
}
output "stats_user" {
  description = "(Optional) The username for HAProxy stats. Defaults to \"opsworks\"."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.stats_user
}
output "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.type
}
output "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.arn
}
output "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.auto_assign_public_ips
}
output "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_instance_profile_arn
}
output "custom_undeploy_recipes" {
  description = "An ebs_volume block supports the following arguments:"
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_undeploy_recipes
}
output "stats_password" {
  description = "(Required) The password to use for HAProxy stats."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.stats_password
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.tags
}
output "custom_deploy_recipes" {
  description = ""
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_deploy_recipes
}
output "custom_shutdown_recipes" {
  description = ""
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_shutdown_recipes
}
output "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.elastic_load_balancer
}
output "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.system_packages
}
output "auto_healing" {
  description = "(Optional) Whether to enable auto-healing for the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.auto_healing
}
output "custom_configure_recipes" {
  description = ""
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_configure_recipes
}
output "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_security_group_ids
}
output "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.mount_point
}
output "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.install_updates_on_boot
}
output "stats_enabled" {
  description = "(Optional) Whether to enable HAProxy stats."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.stats_enabled
}
output "stats_url" {
  description = "(Optional) The HAProxy stats URL. Defaults to \"/haproxy?stats\"."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.stats_url
}
output "healthcheck_method" {
  description = "(Optional) HTTP method to use for instance healthchecks. Defaults to \"OPTIONS\"."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.healthcheck_method
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.id
}
output "name" {
  description = "(Optional) A human-readable name for the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.name
}
output "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.raid_level
}
output "size" {
  description = "(Required) The size of the volume in gigabytes."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.size
}
output "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.stack_id
}
output "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.auto_assign_elastic_ips
}
output "custom_setup_recipes" {
  description = ""
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_setup_recipes
}
output "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.drain_elb_on_shutdown
}
output "healthcheck_url" {
  description = "(Optional) URL path to use for instance healthchecks. Defaults to \"/\"."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.healthcheck_url
}
output "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.number_of_disks
}
output "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.use_ebs_optimized_instances
}
output "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.custom_json
}
output "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.instance_shutdown_timeout
}
output "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.iops
}
output "arn" {
  description = "The Amazon Resource Name(ARN) of the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.arn
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_haproxy_layer.aws_opsworks_haproxy_layer.id
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
      "kind/name"                   = "aws_opsworks_haproxy_layer"
      "kind/version"                = "v0.1.0"
    }
  }
}
