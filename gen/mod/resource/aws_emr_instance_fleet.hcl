resource "aws_emr_instance_fleet" "aws_emr_instance_fleet" {
  allocation_strategy                        = var.allocation_strategy
  block_duration_minutes                     = var.block_duration_minutes
  instance_type                              = var.instance_type
  on_demand_specification                    = var.on_demand_specification
  ebs_config                                 = var.ebs_config
  size                                       = var.size
  properties                                 = var.properties
  provisioned_spot_capacity                  = var.provisioned_spot_capacity
  bid_price                                  = var.bid_price
  id                                         = var.id
  iops                                       = var.iops
  type                                       = var.type
  bid_price_as_percentage_of_on_demand_price = var.bid_price_as_percentage_of_on_demand_price
  timeout_action                             = var.timeout_action
  spot_specification                         = var.spot_specification
  target_on_demand_capacity                  = var.target_on_demand_capacity
  weighted_capacity                          = var.weighted_capacity
  configurations                             = var.configurations
  instance_type_configs                      = var.instance_type_configs
  name                                       = var.name
  volumes_per_instance                       = var.volumes_per_instance
  launch_specifications                      = var.launch_specifications
  provisioned_on_demand_capacity             = var.provisioned_on_demand_capacity
  classification                             = var.classification
  timeout_duration_minutes                   = var.timeout_duration_minutes
  cluster_id                                 = var.cluster_id
  target_spot_capacity                       = var.target_spot_capacity
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "cluster_id" {
  description = "(Required) ID of the EMR Cluster to attach to. Changing this forces a new resource to be created."
  type        = string
}
variable "target_spot_capacity" {
  description = "(Optional) The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision."
  type        = string
  default     = ""
}
variable "timeout_duration_minutes" {
  description = "(Required) The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "allocation_strategy" {
  description = "(Required) Specifies the strategy to use in launching Spot instance fleets. Currently, the only option is capacity-optimized (the default), which launches instances from Spot instance pools with optimal capacity for the number of instances that are launching."
  type        = string
}
variable "block_duration_minutes" {
  description = "(Optional) The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Required) An EC2 instance type, such as m4.xlarge."
  type        = string
}
variable "on_demand_specification" {
  description = "(Optional) Configuration block for on demand instances launch specifications"
  type        = string
  default     = ""
}
variable "ebs_config" {
  description = "(Optional) Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Required) The volume size, in gibibytes (GiB)."
  type        = string
}
variable "bid_price" {
  description = "(Optional) The bid price for each EC2 Spot instance type as defined by instance_type. Expressed in USD. If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique identifier of the instance fleet."
  type        = string
}
variable "iops" {
  description = "(Optional) The number of I/O operations per second (IOPS) that the volume supports"
  type        = string
  default     = ""
}
variable "properties" {
  description = "(Optional) A map of properties specified within a configuration classificationebs_configAttributes for the EBS volumes attached to each EC2 instance in the master_instance_group and core_instance_group configuration blocks:"
  type        = string
  default     = ""
}
variable "provisioned_spot_capacity" {
  description = ""
  type        = string
}
variable "type" {
  description = "(Required) The volume type. Valid options are gp2, io1, standard and st1. See EBS Volume Types."
  type        = string
}
variable "bid_price_as_percentage_of_on_demand_price" {
  description = "(Optional) The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by instance_type. Expressed as a number (for example, 20 specifies 20%). If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  type        = string
  default     = ""
}
variable "timeout_action" {
  description = "(Required) The action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are TERMINATE_CLUSTER and SWITCH_TO_ON_DEMAND. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity."
  type        = string
}
variable "spot_specification" {
  description = "(Optional) Configuration block for spot instances launch specificationson_demand_specification  Configuration Block"
  type        = string
  default     = ""
}
variable "target_on_demand_capacity" {
  description = "(Optional)  The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision."
  type        = string
  default     = ""
}
variable "weighted_capacity" {
  description = "(Optional) The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in aws_emr_instance_fleet.configurations Configuration BlockA configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. See Configuring Applications."
  type        = string
  default     = ""
}
variable "configurations" {
  description = "(Optional) A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of configuration blocks."
  type        = string
  default     = ""
}
variable "instance_type_configs" {
  description = "(Optional) Configuration block for instance fleet"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Friendly name given to the instance fleet.instance_type_configs Configuration Block"
  type        = string
  default     = ""
}
variable "volumes_per_instance" {
  description = "(Optional) The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)launch_specifications Configuration Block"
  type        = string
  default     = ""
}
variable "classification" {
  description = "(Optional) The classification within a configuration."
  type        = string
  default     = ""
}
variable "launch_specifications" {
  description = "(Optional) Configuration block for launch specification"
  type        = string
  default     = ""
}
variable "provisioned_on_demand_capacity" {
  description = ""
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
output "size" {
  description = "(Required) The volume size, in gibibytes (GiB)."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.size
}
output "ebs_config" {
  description = "(Optional) Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.ebs_config
}
output "id" {
  description = "The unique identifier of the instance fleet."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.id
}
output "iops" {
  description = "(Optional) The number of I/O operations per second (IOPS) that the volume supports"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.iops
}
output "properties" {
  description = "(Optional) A map of properties specified within a configuration classificationebs_configAttributes for the EBS volumes attached to each EC2 instance in the master_instance_group and core_instance_group configuration blocks:"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.properties
}
output "provisioned_spot_capacity" {
  description = ""
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.provisioned_spot_capacity
}
output "bid_price" {
  description = "(Optional) The bid price for each EC2 Spot instance type as defined by instance_type. Expressed in USD. If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.bid_price
}
output "type" {
  description = "(Required) The volume type. Valid options are gp2, io1, standard and st1. See EBS Volume Types."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.type
}
output "timeout_action" {
  description = "(Required) The action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are TERMINATE_CLUSTER and SWITCH_TO_ON_DEMAND. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.timeout_action
}
output "bid_price_as_percentage_of_on_demand_price" {
  description = "(Optional) The bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by instance_type. Expressed as a number (for example, 20 specifies 20%). If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.bid_price_as_percentage_of_on_demand_price
}
output "target_on_demand_capacity" {
  description = "(Optional)  The target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.target_on_demand_capacity
}
output "weighted_capacity" {
  description = "(Optional) The number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in aws_emr_instance_fleet.configurations Configuration BlockA configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. See Configuring Applications."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.weighted_capacity
}
output "spot_specification" {
  description = "(Optional) Configuration block for spot instances launch specificationson_demand_specification  Configuration Block"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.spot_specification
}
output "instance_type_configs" {
  description = "(Optional) Configuration block for instance fleet"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.instance_type_configs
}
output "name" {
  description = "(Optional) Friendly name given to the instance fleet.instance_type_configs Configuration Block"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.name
}
output "volumes_per_instance" {
  description = "(Optional) The number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1)launch_specifications Configuration Block"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.volumes_per_instance
}
output "configurations" {
  description = "(Optional) A configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. List of configuration blocks."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.configurations
}
output "classification" {
  description = "(Optional) The classification within a configuration."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.classification
}
output "launch_specifications" {
  description = "(Optional) Configuration block for launch specification"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.launch_specifications
}
output "provisioned_on_demand_capacity" {
  description = ""
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.provisioned_on_demand_capacity
}
output "cluster_id" {
  description = "(Required) ID of the EMR Cluster to attach to. Changing this forces a new resource to be created."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.cluster_id
}
output "target_spot_capacity" {
  description = "(Optional) The target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.target_spot_capacity
}
output "timeout_duration_minutes" {
  description = "(Required) The spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.In addition to all arguments above, the following attributes are exported:"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.timeout_duration_minutes
}
output "block_duration_minutes" {
  description = "(Optional) The defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.block_duration_minutes
}
output "instance_type" {
  description = "(Required) An EC2 instance type, such as m4.xlarge."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.instance_type
}
output "on_demand_specification" {
  description = "(Optional) Configuration block for on demand instances launch specifications"
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.on_demand_specification
}
output "allocation_strategy" {
  description = "(Required) Specifies the strategy to use in launching Spot instance fleets. Currently, the only option is capacity-optimized (the default), which launches instances from Spot instance pools with optimal capacity for the number of instances that are launching."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.allocation_strategy
}
output "id" {
  description = "The unique identifier of the instance fleet."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.id
}
output "provisioned_on_demand_capacity" {
  description = ""
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.provisioned_on_demand_capacity
}
output "provisioned_spot_capacity" {
  description = ""
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.provisioned_spot_capacity
}
output "status" {
  description = " The current status of the instance fleet."
  value       = aws_emr_instance_fleet.aws_emr_instance_fleet.status
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
      "kind/name"                   = "aws_emr_instance_fleet"
      "kind/version"                = "v0.1.0"
    }
  }
}
