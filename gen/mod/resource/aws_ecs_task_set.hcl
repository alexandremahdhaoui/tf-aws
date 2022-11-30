resource "aws_ecs_task_set" "aws_ecs_task_set" {
  registry_arn               = var.registry_arn
  stability_status           = var.stability_status
  tags                       = var.tags
  external_id                = var.external_id
  force_delete               = var.force_delete
  security_groups            = var.security_groups
  subnets                    = var.subnets
  task_definition            = var.task_definition
  task_set_id                = var.task_set_id
  arn                        = var.arn
  capacity_provider_strategy = var.capacity_provider_strategy
  container_name             = var.container_name
  network_configuration      = var.network_configuration
  target_group_arn           = var.target_group_arn
  base                       = var.base
  container_port             = var.container_port
  launch_type                = var.launch_type
  load_balancer_name         = var.load_balancer_name
  wait_until_stable_timeout  = var.wait_until_stable_timeout
  cluster                    = var.cluster
  platform_version           = var.platform_version
  scale                      = var.scale
  weight                     = var.weight
  status                     = var.status
  tags_all                   = var.tags_all
  assign_public_ip           = var.assign_public_ip
  load_balancer              = var.load_balancer
  service                    = var.service
  unit                       = var.unit
  capacity_provider          = var.capacity_provider
  id                         = var.id
  port                       = var.port
  service_registries         = var.service_registries
  value                      = var.value
  wait_until_stable          = var.wait_until_stable
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "status" {
  description = "The status of the task set."
  type        = string
}
variable "load_balancer" {
  description = "(Optional) Details on load balancers that are used with a task set. Detailed below."
  type        = string
}
variable "service" {
  description = "(Required) The short name or ARN of the ECS service."
  type        = string
}
variable "unit" {
  description = "(Optional) The unit of measure for the scale value. Default: PERCENT."
  type        = string
}
variable "assign_public_ip" {
  description = "(Optional) Whether to assign a public IP address to the ENI (FARGATE launch type only). Valid values are true or false. Default false.For more information, see Task Networking.scaleThe scale configuration block supports the following:"
  type        = string
}
variable "id" {
  description = "The task_set_id, service and cluster separated by commas (,)."
  type        = string
}
variable "port" {
  description = "(Optional) The port value used if your Service Discovery service specified an SRV record."
  type        = string
}
variable "service_registries" {
  description = "(Optional) The service discovery registries for the service. The maximum number of service_registries blocks is 1. Detailed below."
  type        = string
}
variable "value" {
  description = "(Optional) The value, specified as a percent total of a service's desiredCount, to scale the task set. Defaults to 0 if not specified. Accepted values are numbers between 0.0 and 100.0.service_registriesservice_registries support the following:"
  type        = string
}
variable "wait_until_stable" {
  description = "(Optional) Whether terraform should wait until the task set has reached STEADY_STATE."
  type        = string
}
variable "capacity_provider" {
  description = "(Required) The short name or full Amazon Resource Name (ARN) of the capacity provider."
  type        = string
}
variable "stability_status" {
  description = "The stability status. This indicates whether the task set has reached a steady state."
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set copy_tags_to_backups to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup."
  type        = string
}
variable "registry_arn" {
  description = "(Required) The ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(aws_service_discovery_service resource). For more information, see Service."
  type        = string
}
variable "force_delete" {
  description = "(Optional) Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, Terraform drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling."
  type        = string
}
variable "security_groups" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5."
  type        = string
}
variable "subnets" {
  description = "(Required) The subnets associated with the task or service. Maximum of 16."
  type        = string
}
variable "task_definition" {
  description = "(Required) The family and revision (family:revision) or full ARN of the task definition that you want to run in your service."
  type        = string
}
variable "task_set_id" {
  description = "The ID of the task set."
  type        = string
}
variable "external_id" {
  description = "(Optional) The external ID associated with the task set."
  type        = string
}
variable "capacity_provider_strategy" {
  description = "(Optional) The capacity provider strategy to use for the service. Can be one or more.  Defined below."
  type        = string
}
variable "container_name" {
  description = "(Optional) The container name value, already specified in the task definition, to be used for your service discovery service.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "network_configuration" {
  description = "(Optional) The network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below."
  type        = string
}
variable "target_group_arn" {
  description = "(Optional, Required for ALB/NLB) The ARN of the Load Balancer target group to associate with the service."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the task set."
  type        = string
}
variable "container_port" {
  description = "(Optional) The port value, already specified in the task definition, to be used for your service discovery service."
  type        = string
}
variable "launch_type" {
  description = "(Optional) The launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2."
  type        = string
}
variable "load_balancer_name" {
  description = "(Optional, Required for ELB Classic) The name of the ELB (Classic) to associate with the service."
  type        = string
}
variable "wait_until_stable_timeout" {
  description = "(Optional) Wait timeout for task set to reach STEADY_STATE. Valid time units include ns, us (or µs), ms, s, m, and h. Default 10m.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  type        = string
}
variable "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.load_balancerThe load_balancer configuration block supports the following:"
  type        = string
}
variable "platform_version" {
  description = "(Optional) The platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST. More information about Fargate platform versions can be found in the AWS ECS User Guide."
  type        = string
}
variable "scale" {
  description = "(Optional) A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below."
  type        = string
}
variable "weight" {
  description = "(Required) The relative percentage of the total number of launched tasks that should use the specified capacity provider."
  type        = string
}
variable "cluster" {
  description = "(Required) The short name or ARN of the cluster that hosts the service to create the task set in."
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
output "unit" {
  description = "(Optional) The unit of measure for the scale value. Default: PERCENT."
  value       = aws_ecs_task_set.aws_ecs_task_set.unit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "assign_public_ip" {
  description = "(Optional) Whether to assign a public IP address to the ENI (FARGATE launch type only). Valid values are true or false. Default false.For more information, see Task Networking.scaleThe scale configuration block supports the following:"
  value       = aws_ecs_task_set.aws_ecs_task_set.assign_public_ip
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancer" {
  description = "(Optional) Details on load balancers that are used with a task set. Detailed below."
  value       = aws_ecs_task_set.aws_ecs_task_set.load_balancer
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service" {
  description = "(Required) The short name or ARN of the ECS service."
  value       = aws_ecs_task_set.aws_ecs_task_set.service
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_registries" {
  description = "(Optional) The service discovery registries for the service. The maximum number of service_registries blocks is 1. Detailed below."
  value       = aws_ecs_task_set.aws_ecs_task_set.service_registries
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Optional) The value, specified as a percent total of a service's desiredCount, to scale the task set. Defaults to 0 if not specified. Accepted values are numbers between 0.0 and 100.0.service_registriesservice_registries support the following:"
  value       = aws_ecs_task_set.aws_ecs_task_set.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wait_until_stable" {
  description = "(Optional) Whether terraform should wait until the task set has reached STEADY_STATE."
  value       = aws_ecs_task_set.aws_ecs_task_set.wait_until_stable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_provider" {
  description = "(Required) The short name or full Amazon Resource Name (ARN) of the capacity provider."
  value       = aws_ecs_task_set.aws_ecs_task_set.capacity_provider
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The task_set_id, service and cluster separated by commas (,)."
  value       = aws_ecs_task_set.aws_ecs_task_set.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "(Optional) The port value used if your Service Discovery service specified an SRV record."
  value       = aws_ecs_task_set.aws_ecs_task_set.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registry_arn" {
  description = "(Required) The ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(aws_service_discovery_service resource). For more information, see Service."
  value       = aws_ecs_task_set.aws_ecs_task_set.registry_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stability_status" {
  description = "The stability status. This indicates whether the task set has reached a steady state."
  value       = aws_ecs_task_set.aws_ecs_task_set.stability_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) A map of tags to assign to the file system. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. If you have set copy_tags_to_backups to true, and you specify one or more tags, no existing file system tags are copied from the file system to the backup."
  value       = aws_ecs_task_set.aws_ecs_task_set.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnets" {
  description = "(Required) The subnets associated with the task or service. Maximum of 16."
  value       = aws_ecs_task_set.aws_ecs_task_set.subnets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_definition" {
  description = "(Required) The family and revision (family:revision) or full ARN of the task definition that you want to run in your service."
  value       = aws_ecs_task_set.aws_ecs_task_set.task_definition
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_set_id" {
  description = "The ID of the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.task_set_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "external_id" {
  description = "(Optional) The external ID associated with the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.external_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "force_delete" {
  description = "(Optional) Whether to allow deleting the task set without waiting for scaling down to 0. You can force a task set to delete even if it's in the process of scaling a resource. Normally, Terraform drains all the tasks before deleting the task set. This bypasses that behavior and potentially leaves resources dangling."
  value       = aws_ecs_task_set.aws_ecs_task_set.force_delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_groups" {
  description = "(Optional) The security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used. Maximum of 5."
  value       = aws_ecs_task_set.aws_ecs_task_set.security_groups
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_configuration" {
  description = "(Optional) The network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. Detailed below."
  value       = aws_ecs_task_set.aws_ecs_task_set.network_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_group_arn" {
  description = "(Optional, Required for ALB/NLB) The ARN of the Load Balancer target group to associate with the service."
  value       = aws_ecs_task_set.aws_ecs_task_set.target_group_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "capacity_provider_strategy" {
  description = "(Optional) The capacity provider strategy to use for the service. Can be one or more.  Defined below."
  value       = aws_ecs_task_set.aws_ecs_task_set.capacity_provider_strategy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_name" {
  description = "(Optional) The container name value, already specified in the task definition, to be used for your service discovery service.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_task_set.aws_ecs_task_set.container_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "load_balancer_name" {
  description = "(Optional, Required for ELB Classic) The name of the ELB (Classic) to associate with the service."
  value       = aws_ecs_task_set.aws_ecs_task_set.load_balancer_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "wait_until_stable_timeout" {
  description = "(Optional) Wait timeout for task set to reach STEADY_STATE. Valid time units include ns, us (or µs), ms, s, m, and h. Default 10m.capacity_provider_strategyThe capacity_provider_strategy configuration block supports the following:"
  value       = aws_ecs_task_set.aws_ecs_task_set.wait_until_stable_timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "base" {
  description = "(Optional) The number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.load_balancerThe load_balancer configuration block supports the following:"
  value       = aws_ecs_task_set.aws_ecs_task_set.base
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_port" {
  description = "(Optional) The port value, already specified in the task definition, to be used for your service discovery service."
  value       = aws_ecs_task_set.aws_ecs_task_set.container_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_type" {
  description = "(Optional) The launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2."
  value       = aws_ecs_task_set.aws_ecs_task_set.launch_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "weight" {
  description = "(Required) The relative percentage of the total number of launched tasks that should use the specified capacity provider."
  value       = aws_ecs_task_set.aws_ecs_task_set.weight
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cluster" {
  description = "(Required) The short name or ARN of the cluster that hosts the service to create the task set in."
  value       = aws_ecs_task_set.aws_ecs_task_set.cluster
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "platform_version" {
  description = "(Optional) The platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST. More information about Fargate platform versions can be found in the AWS ECS User Guide."
  value       = aws_ecs_task_set.aws_ecs_task_set.platform_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scale" {
  description = "(Optional) A floating-point percentage of the desired number of tasks to place and keep running in the task set. Detailed below."
  value       = aws_ecs_task_set.aws_ecs_task_set.scale
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_task_set.aws_ecs_task_set.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "The Amazon Resource Name (ARN) that identifies the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "The task_set_id, service and cluster separated by commas (,)."
  value       = aws_ecs_task_set.aws_ecs_task_set.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stability_status" {
  description = "The stability status. This indicates whether the task set has reached a steady state."
  value       = aws_ecs_task_set.aws_ecs_task_set.stability_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "The status of the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_task_set.aws_ecs_task_set.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_set_id" {
  description = "The ID of the task set."
  value       = aws_ecs_task_set.aws_ecs_task_set.task_set_id
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
      "kind/name"                   = "aws_ecs_task_set"
      "kind/version"                = "v0.1.0"
    }
  }
}
