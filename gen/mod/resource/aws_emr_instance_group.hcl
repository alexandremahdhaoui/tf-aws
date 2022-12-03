resource "aws_emr_instance_group" "aws_emr_instance_group" {
  ebs_config             = var.ebs_config
  ebs_optimized          = var.ebs_optimized
  instance_count         = var.instance_count
  volumes_per_instance   = var.volumes_per_instance
  bid_price              = var.bid_price
  size                   = var.size
  name                   = var.name
  id                     = var.id
  instance_type          = var.instance_type
  iops                   = var.iops
  cluster_id             = var.cluster_id
  configurations_json    = var.configurations_json
  running_instance_count = var.running_instance_count
  type                   = var.type
  autoscaling_policy     = var.autoscaling_policy
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ebs_config" {
  description = " (Optional) One or more ebs_config blocks as defined below. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}
variable "ebs_optimized" {
  description = " (Optional) Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created."
  type        = string
  default     = ""
}
variable "instance_count" {
  description = " (Optional) target number of instances for the instance group. defaults to 0."
  type        = string
  default     = ""
}
variable "volumes_per_instance" {
  description = "(Optional) The number of EBS Volumes to attach per instance.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "bid_price" {
  description = "(Optional) If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Optional) The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10."
  type        = string
  default     = ""
}
variable "name" {
  description = " (Required) Human friendly name given to the instance group. Changing this forces a new resource to be created."
  type        = string
}
variable "id" {
  description = "The EMR Instance ID"
  type        = string
}
variable "instance_type" {
  description = " (Required) The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created."
  type        = string
}
variable "iops" {
  description = "(Optional) The number of I/O operations per second (IOPS) that the volume supports."
  type        = string
  default     = ""
}
variable "cluster_id" {
  description = " (Required) ID of the EMR Cluster to attach to. Changing this forces a new resource to be created."
  type        = string
}
variable "configurations_json" {
  description = "(Optional) A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.ebs_config supports the following:"
  type        = string
  default     = ""
}
variable "running_instance_count" {
  description = " The number of instances currently running in this instance group."
  type        = string
}
variable "type" {
  description = "(Optional) The volume type. Valid options are 'gp2', 'io1' and 'standard'."
  type        = string
  default     = ""
}
variable "autoscaling_policy" {
  description = "(Optional) The autoscaling policy document. This is a JSON formatted string. See EMR Auto Scaling"
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
output "autoscaling_policy" {
  description = "(Optional) The autoscaling policy document. This is a JSON formatted string. See EMR Auto Scaling"
  value       = aws_emr_instance_group.aws_emr_instance_group.autoscaling_policy
}
output "configurations_json" {
  description = "(Optional) A JSON string for supplying list of configurations specific to the EMR instance group. Note that this can only be changed when using EMR release 5.21 or later.ebs_config supports the following:"
  value       = aws_emr_instance_group.aws_emr_instance_group.configurations_json
}
output "running_instance_count" {
  description = " The number of instances currently running in this instance group."
  value       = aws_emr_instance_group.aws_emr_instance_group.running_instance_count
}
output "type" {
  description = "(Optional) The volume type. Valid options are 'gp2', 'io1' and 'standard'."
  value       = aws_emr_instance_group.aws_emr_instance_group.type
}
output "bid_price" {
  description = "(Optional) If set, the bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances."
  value       = aws_emr_instance_group.aws_emr_instance_group.bid_price
}
output "ebs_config" {
  description = " (Optional) One or more ebs_config blocks as defined below. Changing this forces a new resource to be created."
  value       = aws_emr_instance_group.aws_emr_instance_group.ebs_config
}
output "ebs_optimized" {
  description = " (Optional) Indicates whether an Amazon EBS volume is EBS-optimized. Changing this forces a new resource to be created."
  value       = aws_emr_instance_group.aws_emr_instance_group.ebs_optimized
}
output "instance_count" {
  description = " (Optional) target number of instances for the instance group. defaults to 0."
  value       = aws_emr_instance_group.aws_emr_instance_group.instance_count
}
output "volumes_per_instance" {
  description = "(Optional) The number of EBS Volumes to attach per instance.In addition to all arguments above, the following attributes are exported:"
  value       = aws_emr_instance_group.aws_emr_instance_group.volumes_per_instance
}
output "name" {
  description = " (Required) Human friendly name given to the instance group. Changing this forces a new resource to be created."
  value       = aws_emr_instance_group.aws_emr_instance_group.name
}
output "size" {
  description = "(Optional) The volume size, in gibibytes (GiB). This can be a number from 1 - 1024. If the volume type is EBS-optimized, the minimum value is 10."
  value       = aws_emr_instance_group.aws_emr_instance_group.size
}
output "cluster_id" {
  description = " (Required) ID of the EMR Cluster to attach to. Changing this forces a new resource to be created."
  value       = aws_emr_instance_group.aws_emr_instance_group.cluster_id
}
output "id" {
  description = "The EMR Instance ID"
  value       = aws_emr_instance_group.aws_emr_instance_group.id
}
output "instance_type" {
  description = " (Required) The EC2 instance type for all instances in the instance group. Changing this forces a new resource to be created."
  value       = aws_emr_instance_group.aws_emr_instance_group.instance_type
}
output "iops" {
  description = "(Optional) The number of I/O operations per second (IOPS) that the volume supports."
  value       = aws_emr_instance_group.aws_emr_instance_group.iops
}
output "status" {
  description = " The current status of the instance group."
  value       = aws_emr_instance_group.aws_emr_instance_group.status
}
output "id" {
  description = "The EMR Instance ID"
  value       = aws_emr_instance_group.aws_emr_instance_group.id
}
output "running_instance_count" {
  description = " The number of instances currently running in this instance group."
  value       = aws_emr_instance_group.aws_emr_instance_group.running_instance_count
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
      "kind/name"                   = "aws_emr_instance_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
