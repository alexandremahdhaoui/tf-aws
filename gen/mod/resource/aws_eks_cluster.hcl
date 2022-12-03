resource "aws_eks_cluster" "aws_eks_cluster" {
  enabled_cluster_log_types                                                                            = var.enabled_cluster_log_types
  encryption_config                                                                                    = var.encryption_config
  ip_family                                                                                            = var.ip_family
  outpost_config                                                                                       = var.outpost_config
  1–20 nodes, then we recommend specifying a large instance type.                                      = var.1–20 nodes, then we recommend specifying a large instance type.
  21–100 nodes, then we recommend specifying an xlarge instance type.                                  = var.21–100 nodes, then we recommend specifying an xlarge instance type.
  arn                                                                                                  = var.arn
  provider                                                                                             = var.provider
  service_ipv4_cidr                                                                                    = var.service_ipv4_cidr
  tags_all                                                                                             = var.tags_all
  vpc_config                                                                                           = var.vpc_config
  vpc_id                                                                                               = var.vpc_id
  created_at                                                                                           = var.created_at
  outpost_arns                                                                                         = var.outpost_arns
  endpoint                                                                                             = var.endpoint
  kubernetes_network_config                                                                            = var.kubernetes_network_config
  kubernetes_network_config.service_ipv6_cidr                                                          = var.kubernetes_network_config.service_ipv6_cidr
  name                                                                                                 = var.name
  public_access_cidrs                                                                                  = var.public_access_cidrs
  update                                                                                               = var.update
  101–250 nodes, then we recommend specifying a 2xlarge instance type.                                 = var.101–250 nodes, then we recommend specifying a 2xlarge instance type.
  data                                                                                                 = var.data
  Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16. = var.Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16.
  cluster_security_group_id                                                                            = var.cluster_security_group_id
  key_arn                                                                                              = var.key_arn
  role_arn                                                                                             = var.role_arn
  subnet_ids                                                                                           = var.subnet_ids
  Between /24 and /12.                                                                                 = var.Between /24 and /12.
  Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.                   = var.Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.
  issuer                                                                                               = var.issuer
  security_group_ids                                                                                   = var.security_group_ids
  tags                                                                                                 = var.tags
  create                                                                                               = var.create
  id                                                                                                   = var.id
  status                                                                                               = var.status
  delete                                                                                               = var.delete
  endpoint_private_access                                                                              = var.endpoint_private_access
  endpoint_public_access                                                                               = var.endpoint_public_access
  identity                                                                                             = var.identity
  oidc                                                                                                 = var.oidc
  platform_version                                                                                     = var.platform_version
  resources                                                                                            = var.resources
  version                                                                                              = var.version
  certificate_authority                                                                                = var.certificate_authority
  control_plane_instance_type                                                                          = var.control_plane_instance_type
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key_arn" {
  description = "(Required) ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide.vpc_config Arguments"
  type        = string
}
variable "role_arn" {
  description = "(Required) ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding depends_on if using the aws_iam_role_policy resource or aws_iam_role_policy_attachment resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion."
  type        = string
}
variable "subnet_ids" {
  description = " – (Required) List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.kubernetes_network_configkubernetes_network_config configuration block:"
  type        = string
}
variable "Between /24 and /12." {
  description = ""
  type        = string
  default     = ""
}
variable "Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC." {
  description = ""
  type        = string
  default     = ""
}
variable "Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16." {
  description = ""
  type        = string
  default     = ""
}
variable "cluster_security_group_id" {
  description = "Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "id" {
  description = "Name of the cluster."
  type        = string
  default     = ""
}
variable "issuer" {
  description = "Issuer URL for the OpenID Connect identity provider.vpc_config Attributes"
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = " – (Optional) List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 15m)"
  type        = string
  default     = ""
}
variable "endpoint_private_access" {
  description = "(Optional) Whether the Amazon EKS private API server endpoint is enabled. Default is false."
  type        = string
  default     = ""
}
variable "status" {
  description = "Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED."
  type        = string
  default     = ""
}
variable "oidc" {
  description = "Nested block containing OpenID Connect identity provider information for the cluster. Detailed below.oidc"
  type        = string
  default     = ""
}
variable "platform_version" {
  description = "Platform version for the cluster."
  type        = string
  default     = ""
}
variable "resources" {
  description = "(Required) List of strings with resources to be encrypted. Valid values: secrets.providerprovider configuration block:"
  type        = string
}
variable "version" {
  description = " – (Optional) Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.encryption_configencryption_config configuration block:"
  type        = string
  default     = ""
}
variable "certificate_authority" {
  description = "Attribute block containing certificate-authority-data for your cluster. Detailed below."
  type        = string
  default     = ""
}
variable "control_plane_instance_type" {
  description = "(Required) The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:"
  type        = string
}
variable "endpoint_public_access" {
  description = "(Optional) Whether the Amazon EKS public API server endpoint is enabled. Default is true."
  type        = string
  default     = ""
}
variable "identity" {
  description = "Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below."
  type        = string
  default     = ""
}
variable "ip_family" {
  description = "(Optional) The IP family used to assign Kubernetes pod and service addresses. Valid values are ipv4 (default) and ipv6. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.outpost_configoutpost_config configuration block:"
  type        = string
  default     = ""
}
variable "outpost_config" {
  description = "(Optional) Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud."
  type        = string
  default     = ""
}
variable "1–20 nodes, then we recommend specifying a large instance type." {
  description = ""
  type        = string
  default     = ""
}
variable "21–100 nodes, then we recommend specifying an xlarge instance type." {
  description = ""
  type        = string
  default     = ""
}
variable "enabled_cluster_log_types" {
  description = "(Optional) List of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging."
  type        = string
  default     = ""
}
variable "encryption_config" {
  description = "(Optional) Configuration block with encryption configuration for the cluster. Only available on Kubernetes 1.13 and above clusters created after March 6, 2020. Detailed below."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the cluster."
  type        = string
  default     = ""
}
variable "provider" {
  description = "(Required) Configuration block with provider for encryption. Detailed below."
  type        = string
}
variable "vpc_config" {
  description = "Configuration block emargument that also includes attributes for the VPC associated with your cluster. Detailed below.certificate_authority"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "ID of the VPC associated with your cluster.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "created_at" {
  description = "Unix epoch timestamp in seconds for when the cluster was created."
  type        = string
  default     = ""
}
variable "outpost_arns" {
  description = "(Required) The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "service_ipv4_cidr" {
  description = "(Optional) The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:"
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "kubernetes_network_config.service_ipv6_cidr" {
  description = "The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specified ipv6 for ipFamily when you created the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster."
  type        = string
  default     = ""
}
variable "name" {
  description = " – (Required) Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  type        = string
}
variable "public_access_cidrs" {
  description = "(Optional) List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0. Terraform will only perform drift detection of its value when present in a configuration."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 60mupdate timeout is used separately for both version and vpc_config update timeouts."
  type        = string
  default     = ""
}
variable "101–250 nodes, then we recommend specifying a 2xlarge instance type." {
  description = "For a list of the available Amazon EC2 instance types, see Compute and storage in AWS Outposts rack features  The control plane is not automatically scaled by Amazon EKS."
  type        = string
  default     = ""
}
variable "data" {
  description = "Base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.identity"
  type        = string
  default     = ""
}
variable "endpoint" {
  description = "Endpoint for your Kubernetes API server."
  type        = string
  default     = ""
}
variable "kubernetes_network_config" {
  description = "(Optional) Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, Terraform will only perform drift detection if a configuration value is provided."
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
output "create" {
  description = "(Default 30m)"
  value       = aws_eks_cluster.aws_eks_cluster.create
}
output "id" {
  description = "Name of the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.id
}
output "issuer" {
  description = "Issuer URL for the OpenID Connect identity provider.vpc_config Attributes"
  value       = aws_eks_cluster.aws_eks_cluster.issuer
}
output "security_group_ids" {
  description = " – (Optional) List of security group IDs for the cross-account elastic network interfaces that Amazon EKS creates to use to allow communication between your worker nodes and the Kubernetes control plane."
  value       = aws_eks_cluster.aws_eks_cluster.security_group_ids
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_eks_cluster.aws_eks_cluster.tags
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_eks_cluster.aws_eks_cluster.delete
}
output "endpoint_private_access" {
  description = "(Optional) Whether the Amazon EKS private API server endpoint is enabled. Default is false."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint_private_access
}
output "status" {
  description = "Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED."
  value       = aws_eks_cluster.aws_eks_cluster.status
}
output "certificate_authority" {
  description = "Attribute block containing certificate-authority-data for your cluster. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.certificate_authority
}
output "control_plane_instance_type" {
  description = "(Required) The Amazon EC2 instance type that you want to use for your local Amazon EKS cluster on Outposts. The instance type that you specify is used for all Kubernetes control plane instances. The instance type can't be changed after cluster creation. Choose an instance type based on the number of nodes that your cluster will have. If your cluster will have:"
  value       = aws_eks_cluster.aws_eks_cluster.control_plane_instance_type
}
output "endpoint_public_access" {
  description = "(Optional) Whether the Amazon EKS public API server endpoint is enabled. Default is true."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint_public_access
}
output "identity" {
  description = "Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.identity
}
output "oidc" {
  description = "Nested block containing OpenID Connect identity provider information for the cluster. Detailed below.oidc"
  value       = aws_eks_cluster.aws_eks_cluster.oidc
}
output "platform_version" {
  description = "Platform version for the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.platform_version
}
output "resources" {
  description = "(Required) List of strings with resources to be encrypted. Valid values: secrets.providerprovider configuration block:"
  value       = aws_eks_cluster.aws_eks_cluster.resources
}
output "version" {
  description = " – (Optional) Desired Kubernetes master version. If you do not specify a value, the latest available version at resource creation is used and no upgrades will occur except those automatically triggered by EKS. The value must be configured and increased to upgrade the version when desired. Downgrades are not supported by EKS.encryption_configencryption_config configuration block:"
  value       = aws_eks_cluster.aws_eks_cluster.version
}
output "1–20 nodes, then we recommend specifying a large instance type." {
  description = ""
  value       = aws_eks_cluster.aws_eks_cluster.1–20 nodes, then we recommend specifying a large instance type.
}
output "21–100 nodes, then we recommend specifying an xlarge instance type." {
  description = ""
  value       = aws_eks_cluster.aws_eks_cluster.21–100 nodes, then we recommend specifying an xlarge instance type.
}
output "enabled_cluster_log_types" {
  description = "(Optional) List of the desired control plane logging to enable. For more information, see Amazon EKS Control Plane Logging."
  value       = aws_eks_cluster.aws_eks_cluster.enabled_cluster_log_types
}
output "encryption_config" {
  description = "(Optional) Configuration block with encryption configuration for the cluster. Only available on Kubernetes 1.13 and above clusters created after March 6, 2020. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.encryption_config
}
output "ip_family" {
  description = "(Optional) The IP family used to assign Kubernetes pod and service addresses. Valid values are ipv4 (default) and ipv6. You can only specify an IP family when you create a cluster, changing this value will force a new cluster to be created.outpost_configoutpost_config configuration block:"
  value       = aws_eks_cluster.aws_eks_cluster.ip_family
}
output "outpost_config" {
  description = "(Optional) Configuration block representing the configuration of your local Amazon EKS cluster on an AWS Outpost. This block isn't available for creating Amazon EKS clusters on the AWS cloud."
  value       = aws_eks_cluster.aws_eks_cluster.outpost_config
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.arn
}
output "provider" {
  description = "(Required) Configuration block with provider for encryption. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.provider
}
output "created_at" {
  description = "Unix epoch timestamp in seconds for when the cluster was created."
  value       = aws_eks_cluster.aws_eks_cluster.created_at
}
output "outpost_arns" {
  description = "(Required) The ARN of the Outpost that you want to use for your local Amazon EKS cluster on Outposts. This argument is a list of arns, but only a single Outpost ARN is supported currently.In addition to all arguments above, the following attributes are exported:"
  value       = aws_eks_cluster.aws_eks_cluster.outpost_arns
}
output "service_ipv4_cidr" {
  description = "(Optional) The CIDR block to assign Kubernetes pod and service IP addresses from. If you don't specify a block, Kubernetes assigns addresses from either the 10.100.0.0/16 or 172.20.0.0/16 CIDR blocks. We recommend that you specify a block that does not overlap with resources in other networks that are peered or connected to your VPC. You can only specify a custom CIDR block when you create a cluster, changing this value will force a new cluster to be created. The block must meet the following requirements:"
  value       = aws_eks_cluster.aws_eks_cluster.service_ipv4_cidr
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_eks_cluster.aws_eks_cluster.tags_all
}
output "vpc_config" {
  description = "Configuration block emargument that also includes attributes for the VPC associated with your cluster. Detailed below.certificate_authority"
  value       = aws_eks_cluster.aws_eks_cluster.vpc_config
}
output "vpc_id" {
  description = "ID of the VPC associated with your cluster.TimeoutsConfiguration options:"
  value       = aws_eks_cluster.aws_eks_cluster.vpc_id
}
output "101–250 nodes, then we recommend specifying a 2xlarge instance type." {
  description = "For a list of the available Amazon EC2 instance types, see Compute and storage in AWS Outposts rack features  The control plane is not automatically scaled by Amazon EKS."
  value       = aws_eks_cluster.aws_eks_cluster.101–250 nodes, then we recommend specifying a 2xlarge instance type.
}
output "data" {
  description = "Base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.identity"
  value       = aws_eks_cluster.aws_eks_cluster.data
}
output "endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint
}
output "kubernetes_network_config" {
  description = "(Optional) Configuration block with kubernetes network configuration for the cluster. Detailed below. If removed, Terraform will only perform drift detection if a configuration value is provided."
  value       = aws_eks_cluster.aws_eks_cluster.kubernetes_network_config
}
output "kubernetes_network_config.service_ipv6_cidr" {
  description = "The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specified ipv6 for ipFamily when you created the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.kubernetes_network_config.service_ipv6_cidr
}
output "name" {
  description = " – (Required) Name of the cluster. Must be between 1-100 characters in length. Must begin with an alphanumeric character, and must only contain alphanumeric characters, dashes and underscores (^[0-9A-Za-z][A-Za-z0-9\\-_]+$)."
  value       = aws_eks_cluster.aws_eks_cluster.name
}
output "public_access_cidrs" {
  description = "(Optional) List of CIDR blocks. Indicates which CIDR blocks can access the Amazon EKS public API server endpoint when enabled. EKS defaults this to a list with 0.0.0.0/0. Terraform will only perform drift detection of its value when present in a configuration."
  value       = aws_eks_cluster.aws_eks_cluster.public_access_cidrs
}
output "update" {
  description = "(Default 60mupdate timeout is used separately for both version and vpc_config update timeouts."
  value       = aws_eks_cluster.aws_eks_cluster.update
}
output "Between /24 and /12." {
  description = ""
  value       = aws_eks_cluster.aws_eks_cluster.Between /24 and /12.
}
output "Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC." {
  description = ""
  value       = aws_eks_cluster.aws_eks_cluster.Doesn't overlap with any CIDR block assigned to the VPC that you selected for VPC.
}
output "Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16." {
  description = ""
  value       = aws_eks_cluster.aws_eks_cluster.Within one of the following private IP address blocks: 10.0.0.0/8, 172.16.0.0/12, or 192.168.0.0/16.
}
output "cluster_security_group_id" {
  description = "Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication."
  value       = aws_eks_cluster.aws_eks_cluster.cluster_security_group_id
}
output "key_arn" {
  description = "(Required) ARN of the Key Management Service (KMS) customer master key (CMK). The CMK must be symmetric, created in the same region as the cluster, and if the CMK was created in a different account, the user must have access to the CMK. For more information, see Allowing Users in Other Accounts to Use a CMK in the AWS Key Management Service Developer Guide.vpc_config Arguments"
  value       = aws_eks_cluster.aws_eks_cluster.key_arn
}
output "role_arn" {
  description = "(Required) ARN of the IAM role that provides permissions for the Kubernetes control plane to make calls to AWS API operations on your behalf. Ensure the resource configuration includes explicit dependencies on the IAM Role permissions by adding depends_on if using the aws_iam_role_policy resource or aws_iam_role_policy_attachment resource, otherwise EKS cannot delete EKS managed EC2 infrastructure such as Security Groups on EKS Cluster deletion."
  value       = aws_eks_cluster.aws_eks_cluster.role_arn
}
output "subnet_ids" {
  description = " – (Required) List of subnet IDs. Must be in at least two different availability zones. Amazon EKS creates cross-account elastic network interfaces in these subnets to allow communication between your worker nodes and the Kubernetes control plane.kubernetes_network_configkubernetes_network_config configuration block:"
  value       = aws_eks_cluster.aws_eks_cluster.subnet_ids
}
output "cluster_security_group_id" {
  description = "Cluster security group that was created by Amazon EKS for the cluster. Managed node groups use this security group for control-plane-to-data-plane communication."
  value       = aws_eks_cluster.aws_eks_cluster.cluster_security_group_id
}
output "identity" {
  description = "Attribute block containing identity provider information for your cluster. Only available on Kubernetes version 1.13 and 1.14 clusters created or upgraded on or after September 3, 2019. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.identity
}
output "status" {
  description = "Status of the EKS cluster. One of CREATING, ACTIVE, DELETING, FAILED."
  value       = aws_eks_cluster.aws_eks_cluster.status
}
output "arn" {
  description = "ARN of the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.arn
}
output "delete" {
  description = "(Default 15m)"
  value       = aws_eks_cluster.aws_eks_cluster.delete
}
output "issuer" {
  description = "Issuer URL for the OpenID Connect identity provider.vpc_config Attributes"
  value       = aws_eks_cluster.aws_eks_cluster.issuer
}
output "oidc" {
  description = "Nested block containing OpenID Connect identity provider information for the cluster. Detailed below.oidc"
  value       = aws_eks_cluster.aws_eks_cluster.oidc
}
output "update" {
  description = "(Default 60mupdate timeout is used separately for both version and vpc_config update timeouts."
  value       = aws_eks_cluster.aws_eks_cluster.update
}
output "vpc_config" {
  description = "Configuration block emargument that also includes attributes for the VPC associated with your cluster. Detailed below.certificate_authority"
  value       = aws_eks_cluster.aws_eks_cluster.vpc_config
}
output "certificate_authority" {
  description = "Attribute block containing certificate-authority-data for your cluster. Detailed below."
  value       = aws_eks_cluster.aws_eks_cluster.certificate_authority
}
output "create" {
  description = "(Default 30m)"
  value       = aws_eks_cluster.aws_eks_cluster.create
}
output "id" {
  description = "Name of the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.id
}
output "platform_version" {
  description = "Platform version for the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.platform_version
}
output "created_at" {
  description = "Unix epoch timestamp in seconds for when the cluster was created."
  value       = aws_eks_cluster.aws_eks_cluster.created_at
}
output "data" {
  description = "Base64 encoded certificate data required to communicate with your cluster. Add this to the certificate-authority-data section of the kubeconfig file for your cluster.identity"
  value       = aws_eks_cluster.aws_eks_cluster.data
}
output "endpoint" {
  description = "Endpoint for your Kubernetes API server."
  value       = aws_eks_cluster.aws_eks_cluster.endpoint
}
output "kubernetes_network_config.service_ipv6_cidr" {
  description = "The CIDR block that Kubernetes pod and service IP addresses are assigned from if you specified ipv6 for ipFamily when you created the cluster. Kubernetes assigns service addresses from the unique local address range (fc00::/7) because you can't specify a custom IPv6 CIDR block when you create the cluster."
  value       = aws_eks_cluster.aws_eks_cluster.kubernetes_network_config.service_ipv6_cidr
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_eks_cluster.aws_eks_cluster.tags_all
}
output "vpc_id" {
  description = "ID of the VPC associated with your cluster.TimeoutsConfiguration options:"
  value       = aws_eks_cluster.aws_eks_cluster.vpc_id
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
      "kind/name"                   = "aws_eks_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
