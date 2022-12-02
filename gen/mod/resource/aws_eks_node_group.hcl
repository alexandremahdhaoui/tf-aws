resource "aws_eks_node_group" "aws_eks_node_group" {
  labels                          = var.labels
  launch_template                 = var.launch_template
  min_size                        = var.min_size
  name                            = var.name
  autoscaling_groups              = var.autoscaling_groups
  desired_size                    = var.desired_size
  effect                          = var.effect
  instance_types                  = var.instance_types
  resources                       = var.resources
  max_size                        = var.max_size
  remote_access                   = var.remote_access
  ami_type                        = var.ami_type
  disk_size                       = var.disk_size
  id                              = var.id
  key                             = var.key
  cluster_name                    = var.cluster_name
  release_version                 = var.release_version
  scaling_config                  = var.scaling_config
  taint                           = var.taint
  value                           = var.value
  remote_access_security_group_id = var.remote_access_security_group_id
  tags_all                        = var.tags_all
  update                          = var.update
  node_group_name_prefix          = var.node_group_name_prefix
  status                          = var.status
  arn                             = var.arn
  create                          = var.create
  delete                          = var.delete
  max_unavailable                 = var.max_unavailable
  tags                            = var.tags
  version                         = var.version
  capacity_type                   = var.capacity_type
  ec2_ssh_key                     = var.ec2_ssh_key
  node_role_arn                   = var.node_role_arn
  source_security_group_ids       = var.source_security_group_ids
  force_update_version            = var.force_update_version
  max_unavailable_percentage      = var.max_unavailable_percentage
  node_group_name                 = var.node_group_name
  subnet_ids                      = var.subnet_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "node_group_name" {
  description = " – (Optional) Name of the EKS Node Group. If omitted, Terraform will assign a random, unique name. Conflicts with node_group_name_prefix."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = " – (Required) Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
  type        = string
}
variable "force_update_version" {
  description = "(Optional) Force version update if existing pods are unable to be drained due to a pod disruption budget issue."
  type        = string
  default     = ""
}
variable "max_unavailable_percentage" {
  description = "(Optional) Desired max percentage of unavailable worker nodes during node group update.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "effect" {
  description = "(Required) The effect of the taint. Valid values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE.update_config Configuration BlockThe following arguments are mutually exclusive."
  type        = string
}
variable "instance_types" {
  description = "(Optional) List of instance types associated with the EKS Node Group. Defaults to [\"t3.medium\"]. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = ""
}
variable "labels" {
  description = "(Optional) Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed."
  type        = string
  default     = ""
}
variable "launch_template" {
  description = "(Optional) Configuration block with Launch Template settings. Detailed below."
  type        = string
  default     = ""
}
variable "min_size" {
  description = "(Required) Minimum number of worker nodes.taint Configuration Block"
  type        = string
}
variable "name" {
  description = "Name of the AutoScaling Group."
  type        = string
  default     = ""
}
variable "autoscaling_groups" {
  description = "List of objects containing information about AutoScaling Groups.\n"
  type        = string
  default     = ""
}
variable "desired_size" {
  description = "(Required) Desired number of worker nodes."
  type        = string
}
variable "resources" {
  description = "List of objects containing information about underlying resources.\n"
  type        = string
  default     = ""
}
variable "id" {
  description = "EKS Cluster name and EKS Node Group name separated by a colon (:)."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) The key of the taint. Maximum length of 63."
  type        = string
}
variable "max_size" {
  description = "(Required) Maximum number of worker nodes."
  type        = string
}
variable "remote_access" {
  description = "(Optional) Configuration block with remote access settings. Detailed below."
  type        = string
  default     = ""
}
variable "ami_type" {
  description = "(Optional) Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the AWS documentation for valid values. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = ""
}
variable "disk_size" {
  description = "(Optional) Disk size in GiB for worker nodes. Defaults to 20. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = ""
}
variable "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  type        = string
}
variable "taint" {
  description = "(Optional) The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. Detailed below."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Optional) The value of the taint. Maximum length of 63."
  type        = string
  default     = ""
}
variable "release_version" {
  description = " – (Optional) AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version."
  type        = string
  default     = ""
}
variable "scaling_config" {
  description = "(Required) Configuration block with scaling settings. Detailed below."
  type        = string
}
variable "update" {
  description = "(Default 60m)"
  type        = string
  default     = ""
}
variable "remote_access_security_group_id" {
  description = "Identifier of the remote access EC2 Security Group."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 60m)"
  type        = string
  default     = ""
}
variable "max_unavailable" {
  description = "(Optional) Desired max number of unavailable worker nodes during node group update."
  type        = string
  default     = ""
}
variable "node_group_name_prefix" {
  description = " – (Optional) Creates a unique name beginning with the specified prefix. Conflicts with node_group_name."
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of the EKS Node Group.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Node Group."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 60m)"
  type        = string
  default     = ""
}
variable "node_role_arn" {
  description = " – (Required) Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group."
  type        = string
}
variable "source_security_group_ids" {
  description = "(Optional) Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify ec2_ssh_key, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).scaling_config Configuration Block"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "version" {
  description = "(Required) EC2 Launch Template version number. While the API accepts values like $Default and $Latest, the API will convert the value to the associated version number (e.g., 1) on read and Terraform will show a difference on next plan. Using the default_version or latest_version attribute of the aws_launch_template resource or data source is recommended for this argument.remote_access Configuration Block"
  type        = string
}
variable "capacity_type" {
  description = "(Optional) Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT. Terraform will only perform drift detection if a configuration value is provided."
  type        = string
  default     = ""
}
variable "ec2_ssh_key" {
  description = "(Optional) EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify source_security_group_ids when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0)."
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
output "ami_type" {
  description = "(Optional) Type of Amazon Machine Image (AMI) associated with the EKS Node Group. See the AWS documentation for valid values. Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_eks_node_group.aws_eks_node_group.ami_type
}
output "disk_size" {
  description = "(Optional) Disk size in GiB for worker nodes. Defaults to 20. Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_eks_node_group.aws_eks_node_group.disk_size
}
output "id" {
  description = "EKS Cluster name and EKS Node Group name separated by a colon (:)."
  value       = aws_eks_node_group.aws_eks_node_group.id
}
output "key" {
  description = "(Required) The key of the taint. Maximum length of 63."
  value       = aws_eks_node_group.aws_eks_node_group.key
}
output "max_size" {
  description = "(Required) Maximum number of worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.max_size
}
output "remote_access" {
  description = "(Optional) Configuration block with remote access settings. Detailed below."
  value       = aws_eks_node_group.aws_eks_node_group.remote_access
}
output "cluster_name" {
  description = " – (Required) Name of the EKS Cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  value       = aws_eks_node_group.aws_eks_node_group.cluster_name
}
output "release_version" {
  description = " – (Optional) AMI version of the EKS Node Group. Defaults to latest version for Kubernetes version."
  value       = aws_eks_node_group.aws_eks_node_group.release_version
}
output "scaling_config" {
  description = "(Required) Configuration block with scaling settings. Detailed below."
  value       = aws_eks_node_group.aws_eks_node_group.scaling_config
}
output "taint" {
  description = "(Optional) The Kubernetes taints to be applied to the nodes in the node group. Maximum of 50 taints per node group. Detailed below."
  value       = aws_eks_node_group.aws_eks_node_group.taint
}
output "value" {
  description = "(Optional) The value of the taint. Maximum length of 63."
  value       = aws_eks_node_group.aws_eks_node_group.value
}
output "remote_access_security_group_id" {
  description = "Identifier of the remote access EC2 Security Group."
  value       = aws_eks_node_group.aws_eks_node_group.remote_access_security_group_id
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_eks_node_group.aws_eks_node_group.tags_all
}
output "update" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.update
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.arn
}
output "create" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.create
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.delete
}
output "max_unavailable" {
  description = "(Optional) Desired max number of unavailable worker nodes during node group update."
  value       = aws_eks_node_group.aws_eks_node_group.max_unavailable
}
output "node_group_name_prefix" {
  description = " – (Optional) Creates a unique name beginning with the specified prefix. Conflicts with node_group_name."
  value       = aws_eks_node_group.aws_eks_node_group.node_group_name_prefix
}
output "status" {
  description = "Status of the EKS Node Group.TimeoutsConfiguration options:"
  value       = aws_eks_node_group.aws_eks_node_group.status
}
output "capacity_type" {
  description = "(Optional) Type of capacity associated with the EKS Node Group. Valid values: ON_DEMAND, SPOT. Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_eks_node_group.aws_eks_node_group.capacity_type
}
output "ec2_ssh_key" {
  description = "(Optional) EC2 Key Pair name that provides access for SSH communication with the worker nodes in the EKS Node Group. If you specify this configuration, but do not specify source_security_group_ids when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0)."
  value       = aws_eks_node_group.aws_eks_node_group.ec2_ssh_key
}
output "node_role_arn" {
  description = " – (Required) Amazon Resource Name (ARN) of the IAM Role that provides permissions for the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.node_role_arn
}
output "source_security_group_ids" {
  description = "(Optional) Set of EC2 Security Group IDs to allow SSH access (port 22) from on the worker nodes. If you specify ec2_ssh_key, but do not specify this configuration when you create an EKS Node Group, port 22 on the worker nodes is opened to the Internet (0.0.0.0/0).scaling_config Configuration Block"
  value       = aws_eks_node_group.aws_eks_node_group.source_security_group_ids
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_eks_node_group.aws_eks_node_group.tags
}
output "version" {
  description = "(Required) EC2 Launch Template version number. While the API accepts values like $Default and $Latest, the API will convert the value to the associated version number (e.g., 1) on read and Terraform will show a difference on next plan. Using the default_version or latest_version attribute of the aws_launch_template resource or data source is recommended for this argument.remote_access Configuration Block"
  value       = aws_eks_node_group.aws_eks_node_group.version
}
output "force_update_version" {
  description = "(Optional) Force version update if existing pods are unable to be drained due to a pod disruption budget issue."
  value       = aws_eks_node_group.aws_eks_node_group.force_update_version
}
output "max_unavailable_percentage" {
  description = "(Optional) Desired max percentage of unavailable worker nodes during node group update.In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_node_group.aws_eks_node_group.max_unavailable_percentage
}
output "node_group_name" {
  description = " – (Optional) Name of the EKS Node Group. If omitted, Terraform will assign a random, unique name. Conflicts with node_group_name_prefix."
  value       = aws_eks_node_group.aws_eks_node_group.node_group_name
}
output "subnet_ids" {
  description = " – (Required) Identifiers of EC2 Subnets to associate with the EKS Node Group. These subnets must have the following resource tag: kubernetes.io/cluster/CLUSTER_NAME (where CLUSTER_NAME is replaced with the name of the EKS Cluster)."
  value       = aws_eks_node_group.aws_eks_node_group.subnet_ids
}
output "autoscaling_groups" {
  description = "List of objects containing information about AutoScaling Groups.\n"
  value       = aws_eks_node_group.aws_eks_node_group.autoscaling_groups
}
output "desired_size" {
  description = "(Required) Desired number of worker nodes."
  value       = aws_eks_node_group.aws_eks_node_group.desired_size
}
output "effect" {
  description = "(Required) The effect of the taint. Valid values: NO_SCHEDULE, NO_EXECUTE, PREFER_NO_SCHEDULE.update_config Configuration BlockThe following arguments are mutually exclusive."
  value       = aws_eks_node_group.aws_eks_node_group.effect
}
output "instance_types" {
  description = "(Optional) List of instance types associated with the EKS Node Group. Defaults to [\"t3.medium\"]. Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_eks_node_group.aws_eks_node_group.instance_types
}
output "labels" {
  description = "(Optional) Key-value map of Kubernetes labels. Only labels that are applied with the EKS API are managed by this argument. Other Kubernetes labels applied to the EKS Node Group will not be managed."
  value       = aws_eks_node_group.aws_eks_node_group.labels
}
output "launch_template" {
  description = "(Optional) Configuration block with Launch Template settings. Detailed below."
  value       = aws_eks_node_group.aws_eks_node_group.launch_template
}
output "min_size" {
  description = "(Required) Minimum number of worker nodes.taint Configuration Block"
  value       = aws_eks_node_group.aws_eks_node_group.min_size
}
output "name" {
  description = "Name of the AutoScaling Group."
  value       = aws_eks_node_group.aws_eks_node_group.name
}
output "resources" {
  description = "List of objects containing information about underlying resources.\n"
  value       = aws_eks_node_group.aws_eks_node_group.resources
}
output "id" {
  description = "EKS Cluster name and EKS Node Group name separated by a colon (:)."
  value       = aws_eks_node_group.aws_eks_node_group.id
}
output "name" {
  description = "Name of the AutoScaling Group."
  value       = aws_eks_node_group.aws_eks_node_group.name
}
output "remote_access_security_group_id" {
  description = "Identifier of the remote access EC2 Security Group."
  value       = aws_eks_node_group.aws_eks_node_group.remote_access_security_group_id
}
output "status" {
  description = "Status of the EKS Node Group.TimeoutsConfiguration options:"
  value       = aws_eks_node_group.aws_eks_node_group.status
}
output "arn" {
  description = "Amazon Resource Name (ARN) of the EKS Node Group."
  value       = aws_eks_node_group.aws_eks_node_group.arn
}
output "autoscaling_groups" {
  description = "List of objects containing information about AutoScaling Groups.\n"
  value       = aws_eks_node_group.aws_eks_node_group.autoscaling_groups
}
output "create" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.create
}
output "update" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.update
}
output "delete" {
  description = "(Default 60m)"
  value       = aws_eks_node_group.aws_eks_node_group.delete
}
output "resources" {
  description = "List of objects containing information about underlying resources.\n"
  value       = aws_eks_node_group.aws_eks_node_group.resources
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_eks_node_group.aws_eks_node_group.tags_all
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
      "kind/name"                   = "aws_eks_node_group"
      "kind/version"                = "v0.1.0"
    }
  }
}
