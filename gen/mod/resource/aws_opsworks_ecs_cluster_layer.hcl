resource "aws_opsworks_ecs_cluster_layer" "aws_opsworks_ecs_cluster_layer" {
  auto_assign_public_ips      = var.auto_assign_public_ips
  custom_setup_recipes        = var.custom_setup_recipes
  instance_shutdown_timeout   = var.instance_shutdown_timeout
  system_packages             = var.system_packages
  custom_configure_recipes    = var.custom_configure_recipes
  custom_deploy_recipes       = var.custom_deploy_recipes
  custom_json                 = var.custom_json
  iops                        = var.iops
  mount_point                 = var.mount_point
  raid_level                  = var.raid_level
  custom_shutdown_recipes     = var.custom_shutdown_recipes
  ebs_volume                  = var.ebs_volume
  number_of_disks             = var.number_of_disks
  size                        = var.size
  drain_elb_on_shutdown       = var.drain_elb_on_shutdown
  install_updates_on_boot     = var.install_updates_on_boot
  name                        = var.name
  auto_healing                = var.auto_healing
  custom_undeploy_recipes     = var.custom_undeploy_recipes
  ecs_cluster_arn             = var.ecs_cluster_arn
  id                          = var.id
  use_ebs_optimized_instances = var.use_ebs_optimized_instances
  custom_instance_profile_arn = var.custom_instance_profile_arn
  custom_security_group_ids   = var.custom_security_group_ids
  elastic_load_balancer       = var.elastic_load_balancer
  stack_id                    = var.stack_id
  type                        = var.type
  auto_assign_elastic_ips     = var.auto_assign_elastic_ips
  tags                        = var.tags
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
variable "custom_undeploy_recipes" {
  description = "An ebs_volume block supports the following arguments:"
  type        = string
}
variable "ecs_cluster_arn" {
  description = "(Required) The ECS Cluster ARN of the layer."
  type        = string
}
variable "id" {
  description = "The id of the layer."
  type        = string
}
variable "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  type        = string
  default     = ""
}
variable "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  type        = string
  default     = ""
}
variable "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  type        = string
  default     = ""
}
variable "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  type        = string
  default     = ""
}
variable "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  type        = string
}
variable "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  type        = string
  default     = ""
}
variable "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type        = string
  default     = ""
}
variable "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  type        = string
  default     = ""
}
variable "custom_setup_recipes" {
  description = ""
  type        = string
}
variable "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  type        = string
  default     = ""
}
variable "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
  type        = string
  default     = ""
}
variable "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  type        = string
}
variable "custom_configure_recipes" {
  description = ""
  type        = string
}
variable "custom_deploy_recipes" {
  description = ""
  type        = string
}
variable "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  type        = string
}
variable "custom_shutdown_recipes" {
  description = ""
  type        = string
}
variable "ebs_volume" {
  description = "(Optional) ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances."
  type        = string
  default     = ""
}
variable "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  type        = string
}
variable "size" {
  description = "(Required) The size of the volume in gigabytes."
  type        = string
}
variable "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  type        = string
  default     = ""
}
variable "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) A human-readable name for the layer."
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
output "auto_assign_public_ips" {
  description = "(Optional) For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.auto_assign_public_ips
}
output "custom_setup_recipes" {
  description = ""
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_setup_recipes
}
output "instance_shutdown_timeout" {
  description = "(Optional) The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.instance_shutdown_timeout
}
output "system_packages" {
  description = "(Optional) Names of a set of system packages to install on the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.system_packages
}
output "custom_configure_recipes" {
  description = ""
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_configure_recipes
}
output "custom_deploy_recipes" {
  description = ""
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_deploy_recipes
}
output "custom_json" {
  description = "(Optional) Custom JSON attributes to apply to the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_json
}
output "iops" {
  description = "(Optional) For PIOPS volumes, the IOPS per disk.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.iops
}
output "mount_point" {
  description = "(Required) The path to mount the EBS volume on the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.mount_point
}
output "raid_level" {
  description = "(Required) The RAID level to use for the volume."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.raid_level
}
output "custom_shutdown_recipes" {
  description = ""
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_shutdown_recipes
}
output "ebs_volume" {
  description = "(Optional) ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.ebs_volume
}
output "number_of_disks" {
  description = "(Required) The number of disks to use for the EBS volume."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.number_of_disks
}
output "size" {
  description = "(Required) The size of the volume in gigabytes."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.size
}
output "drain_elb_on_shutdown" {
  description = "(Optional) Whether to enable Elastic Load Balancing connection draining."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.drain_elb_on_shutdown
}
output "install_updates_on_boot" {
  description = "(Optional) Whether to install OS and package updates on each instance when it boots."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.install_updates_on_boot
}
output "name" {
  description = "(Optional) A human-readable name for the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.name
}
output "auto_healing" {
  description = "(Optional) Whether to enable auto-healing for the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.auto_healing
}
output "custom_undeploy_recipes" {
  description = "An ebs_volume block supports the following arguments:"
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_undeploy_recipes
}
output "ecs_cluster_arn" {
  description = "(Required) The ECS Cluster ARN of the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.ecs_cluster_arn
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.id
}
output "use_ebs_optimized_instances" {
  description = "(Optional) Whether to use EBS-optimized instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.use_ebs_optimized_instances
}
output "custom_instance_profile_arn" {
  description = "(Optional) The ARN of an IAM profile that will be used for the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_instance_profile_arn
}
output "custom_security_group_ids" {
  description = "(Optional) Ids for a set of security groups to apply to the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.custom_security_group_ids
}
output "elastic_load_balancer" {
  description = "(Optional) Name of an Elastic Load Balancer to attach to this layer"
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.elastic_load_balancer
}
output "stack_id" {
  description = "(Required) ID of the stack the layer will belong to."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.stack_id
}
output "type" {
  description = "(Optional) The type of volume to create. This may be standard (the default), io1 or gp2."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.type
}
output "auto_assign_elastic_ips" {
  description = "(Optional) Whether to automatically assign an elastic IP address to the layer's instances."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.auto_assign_elastic_ips
}
output "tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.tags
}
output "id" {
  description = "The id of the layer."
  value       = aws_opsworks_ecs_cluster_layer.aws_opsworks_ecs_cluster_layer.id
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
      "kind/name"                   = "aws_opsworks_ecs_cluster_layer"
      "kind/version"                = "v0.1.0"
    }
  }
}
