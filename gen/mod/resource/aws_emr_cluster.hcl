resource "aws_emr_cluster" "aws_emr_cluster" {
  configurations                             = var.configurations
  configurations_json                        = var.configurations_json
  log_uri                                    = var.log_uri
  ad_domain_join_password                    = var.ad_domain_join_password
  bid_price                                  = var.bid_price
  classification                             = var.classification
  ec2_attributes                             = var.ec2_attributes
  autoscaling_policy                         = var.autoscaling_policy
  autoscaling_role                           = var.autoscaling_role
  ebs_config                                 = var.ebs_config
  kdc_admin_password                         = var.kdc_admin_password
  key_name                                   = var.key_name
  master_instance_fleet                      = var.master_instance_fleet
  master_public_dns                          = var.master_public_dns
  subnet_ids                                 = var.subnet_ids
  action_on_failure                          = var.action_on_failure
  additional_slave_security_groups           = var.additional_slave_security_groups
  timeout_action                             = var.timeout_action
  instance_type_configs                      = var.instance_type_configs
  realm                                      = var.realm
  auto_termination_policy                    = var.auto_termination_policy
  id                                         = var.id
  spot_specification                         = var.spot_specification
  step                                       = var.step
  target_spot_capacity                       = var.target_spot_capacity
  emr_managed_master_security_group          = var.emr_managed_master_security_group
  idle_timeout                               = var.idle_timeout
  master_instance_group                      = var.master_instance_group
  size                                       = var.size
  bootstrap_action                           = var.bootstrap_action
  jar                                        = var.jar
  subnet_id                                  = var.subnet_id
  name                                       = var.name
  release_label                              = var.release_label
  visible_to_all_users                       = var.visible_to_all_users
  volumes_per_instance                       = var.volumes_per_instance
  custom_ami_id                              = var.custom_ami_id
  iops                                       = var.iops
  keep_job_flow_alive_when_no_steps          = var.keep_job_flow_alive_when_no_steps
  list_steps_states                          = var.list_steps_states
  core_instance_group.0.id                   = var.core_instance_group.0.id
  hadoop_jar_step                            = var.hadoop_jar_step
  arn                                        = var.arn
  cross_realm_trust_principal_password       = var.cross_realm_trust_principal_password
  instance_profile                           = var.instance_profile
  path                                       = var.path
  service_role                               = var.service_role
  type                                       = var.type
  ad_domain_join_user                        = var.ad_domain_join_user
  allocation_strategy                        = var.allocation_strategy
  weighted_capacity                          = var.weighted_capacity
  log_encryption_kms_key_id                  = var.log_encryption_kms_key_id
  core_instance_group                        = var.core_instance_group
  security_configuration                     = var.security_configuration
  service_access_security_group              = var.service_access_security_group
  additional_info                            = var.additional_info
  bid_price_as_percentage_of_on_demand_price = var.bid_price_as_percentage_of_on_demand_price
  launch_specifications                      = var.launch_specifications
  master_instance_group.0.id                 = var.master_instance_group.0.id
  timeout_duration_minutes                   = var.timeout_duration_minutes
  additional_master_security_groups          = var.additional_master_security_groups
  applications                               = var.applications
  kerberos_attributes                        = var.kerberos_attributes
  main_class                                 = var.main_class
  on_demand_specification                    = var.on_demand_specification
  tags                                       = var.tags
  tags_all                                   = var.tags_all
  throughput                                 = var.throughput
  ebs_root_volume_size                       = var.ebs_root_volume_size
  emr_managed_slave_security_group           = var.emr_managed_slave_security_group
  instance_count                             = var.instance_count
  instance_type                              = var.instance_type
  block_duration_minutes                     = var.block_duration_minutes
  core_instance_fleet                        = var.core_instance_fleet
  scale_down_behavior                        = var.scale_down_behavior
  step_concurrency_level                     = var.step_concurrency_level
  target_on_demand_capacity                  = var.target_on_demand_capacity
  termination_protection                     = var.termination_protection
  args                                       = var.args
  properties                                 = var.properties
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "ebs_config" {
  description = "(Optional) Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below."
  type        = string
  default     = ""
}
variable "kdc_admin_password" {
  description = "(Required) Password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster. Terraform cannot perform drift detection of this configuration."
  type        = string
}
variable "key_name" {
  description = "(Optional) Amazon EC2 key pair that can be used to ssh to the master node as the user called hadoop."
  type        = string
  default     = ""
}
variable "master_instance_fleet" {
  description = "(Optional) Configuration block to use an Instance Fleet for the master node type. Cannot be specified if any master_instance_group configuration blocks are set. Detailed below."
  type        = string
  default     = ""
}
variable "master_public_dns" {
  description = "The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name."
  type        = string
  default     = ""
}
variable "subnet_ids" {
  description = "(Optional) List of VPC subnet id-s where you want the job flow to launch.  Amazon EMR identifies the best Availability Zone to launch instances according to your fleet specifications.~> strongNOTE on EMR-Managed security groups: These security groups will have any missing inbound or outbound access rules added and maintained by AWS, to ensure proper communication between instances in a cluster. The EMR service will maintain these rules for groups provided in emr_managed_master_security_group and emr_managed_slave_security_group; attempts to remove the required rules may succeed, only for the EMR service to re-add them in a matter of minutes. This may cause Terraform to fail to destroy an environment that contains an EMR cluster, because the EMR service does not revoke rules added on deletion, leaving a cyclic dependency between the security groups that prevents their deletion. To avoid this, use the revoke_rules_on_delete optional attribute for any Security Group used in emr_managed_master_security_group and emr_managed_slave_security_group. See Amazon EMR-Managed Security Groups for more information about the EMR-managed security group rules.kerberos_attributes"
  type        = string
  default     = ""
}
variable "action_on_failure" {
  description = "(Required) Action to take if the step fails. Valid values: TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE"
  type        = string
}
variable "additional_slave_security_groups" {
  description = "(Optional) String containing a comma separated list of additional Amazon EC2 security group IDs for the slave nodes as a comma separated string."
  type        = string
  default     = ""
}
variable "timeout_action" {
  description = "(Required) Action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are TERMINATE_CLUSTER and SWITCH_TO_ON_DEMAND. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity."
  type        = string
}
variable "instance_type_configs" {
  description = "(Optional) Configuration block for instance fleet."
  type        = string
  default     = ""
}
variable "realm" {
  description = "(Required) Name of the Kerberos realm to which all nodes in a cluster belong. For example, EC2.INTERNALmaster_instance_fleet"
  type        = string
}
variable "auto_termination_policy" {
  description = "(Optional) An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below."
  type        = string
  default     = ""
}
variable "id" {
  description = "ID of the cluster."
  type        = string
  default     = ""
}
variable "spot_specification" {
  description = "(Optional) Configuration block for spot instances launch specifications.on_demand_specification"
  type        = string
  default     = ""
}
variable "step" {
  description = "(Optional) List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle configuration block with ignore_changes if other steps are being managed outside of Terraform. This argument is processed in attribute-as-blocks mode."
  type        = string
  default     = ""
}
variable "target_spot_capacity" {
  description = "(Optional) Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.instance_type_configsSee instance_type_configs above, under core_instance_fleet.launch_specificationsSee launch_specifications above, under core_instance_fleet.master_instance_groupSupported nested arguments for the master_instance_group configuration block:"
  type        = string
  default     = ""
}
variable "emr_managed_master_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 EMR-Managed security group for the master node."
  type        = string
  default     = ""
}
variable "idle_timeout" {
  description = "(Optional) Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of 60 seconds and a maximum of 604800 seconds (seven days).configurationsA configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. See Configuring Applications."
  type        = string
  default     = ""
}
variable "master_instance_group" {
  description = "(Optional) Configuration block to use an Instance Group for the master node type."
  type        = string
  default     = ""
}
variable "size" {
  description = "(Required) Volume size, in gibibytes (GiB)."
  type        = string
}
variable "bootstrap_action" {
  description = "List of bootstrap actions that will be run before Hadoop is started on the cluster nodes."
  type        = string
  default     = ""
}
variable "jar" {
  description = "(Required) Path to a JAR file run during the step."
  type        = string
}
variable "subnet_id" {
  description = "(Optional) VPC subnet id where you want the job flow to launch. Cannot specify the cc1.4xlarge instance type for nodes of a job flow launched in an Amazon VPC."
  type        = string
  default     = ""
}
variable "name" {
  description = "Name of the cluster."
  type        = string
  default     = ""
}
variable "release_label" {
  description = "Release label for the Amazon EMR release."
  type        = string
  default     = ""
}
variable "visible_to_all_users" {
  description = "Indicates whether the job flow is visible to all IAM users of the AWS account associated with the job flow."
  type        = string
  default     = ""
}
variable "volumes_per_instance" {
  description = "(Optional) Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).ec2_attributesAttributes for the Amazon EC2 instances running the job flow:"
  type        = string
  default     = ""
}
variable "custom_ami_id" {
  description = "(Optional) Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later."
  type        = string
  default     = ""
}
variable "iops" {
  description = "(Optional) Number of I/O operations per second (IOPS) that the volume supports."
  type        = string
  default     = ""
}
variable "keep_job_flow_alive_when_no_steps" {
  description = "(Optional) Switch on/off run cluster with no steps or when all steps are complete (default is on)"
  type        = string
  default     = ""
}
variable "list_steps_states" {
  description = "(Optional) List of step states used to filter returned steps"
  type        = string
  default     = ""
}
variable "core_instance_group.0.id" {
  description = "Core node type Instance Group ID, if using Instance Group for this node type."
  type        = string
  default     = ""
}
variable "hadoop_jar_step" {
  description = "(Required) JAR file used for the step. See below."
  type        = string
}
variable "arn" {
  description = "- ARN of the cluster."
  type        = string
  default     = ""
}
variable "cross_realm_trust_principal_password" {
  description = "(Optional) Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "instance_profile" {
  description = "(Required) Instance Profile for EC2 instances of the cluster assume this role."
  type        = string
}
variable "path" {
  description = "(Required) Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.auto_termination_policy"
  type        = string
}
variable "service_role" {
  description = "IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required) Volume type. Valid options are gp3, gp2, io1, standard, st1 and sc1. See EBS Volume Types."
  type        = string
}
variable "ad_domain_join_user" {
  description = "(Optional) Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "allocation_strategy" {
  description = "(Required) Specifies the strategy to use in launching Spot instance fleets. Currently, the only option is capacity-optimized (the default), which launches instances from Spot instance pools with optimal capacity for the number of instances that are launching."
  type        = string
}
variable "weighted_capacity" {
  description = "(Optional) Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in aws_emr_instance_fleet.launch_specifications"
  type        = string
  default     = ""
}
variable "log_encryption_kms_key_id" {
  description = "(Optional) AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0."
  type        = string
  default     = ""
}
variable "core_instance_group" {
  description = "(Optional) Configuration block to use an Instance Group for the core node type."
  type        = string
  default     = ""
}
variable "security_configuration" {
  description = "(Optional) Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with release_label 4.8.0 or greater."
  type        = string
  default     = ""
}
variable "service_access_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 service-access security group - required when the cluster runs on a private subnet."
  type        = string
  default     = ""
}
variable "additional_info" {
  description = "(Optional) JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore Terraform cannot detect drift from the actual EMR cluster if its value is changed outside Terraform."
  type        = string
  default     = ""
}
variable "bid_price_as_percentage_of_on_demand_price" {
  description = "(Optional) Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by instance_type. Expressed as a number (for example, 20 specifies 20%). If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  type        = string
  default     = ""
}
variable "launch_specifications" {
  description = "(Optional) Configuration block for launch specification."
  type        = string
  default     = ""
}
variable "master_instance_group.0.id" {
  description = "Master node type Instance Group ID, if using Instance Group for this node type."
  type        = string
  default     = ""
}
variable "timeout_duration_minutes" {
  description = "(Required) Spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.core_instance_group"
  type        = string
}
variable "additional_master_security_groups" {
  description = "(Optional) String containing a comma separated list of additional Amazon EC2 security group IDs for the master node."
  type        = string
  default     = ""
}
variable "applications" {
  description = "Applications installed on this cluster."
  type        = string
  default     = ""
}
variable "kerberos_attributes" {
  description = "(Optional) Kerberos configuration for the cluster. See below."
  type        = string
  default     = ""
}
variable "main_class" {
  description = "(Optional) Name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file."
  type        = string
  default     = ""
}
variable "on_demand_specification" {
  description = "(Optional) Configuration block for on demand instances launch specifications."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) list of tags to apply to the EMR Cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "throughput" {
  description = "(Optional) The throughput, in mebibyte per second (MiB/s)."
  type        = string
  default     = ""
}
variable "ebs_root_volume_size" {
  description = "(Optional) Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later."
  type        = string
  default     = ""
}
variable "emr_managed_slave_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 EMR-Managed security group for the slave nodes."
  type        = string
  default     = ""
}
variable "instance_count" {
  description = "(Optional) Target number of instances for the instance group. Must be 1 or 3. Defaults to 1. Launching with multiple master nodes is only supported in EMR version 5.23.0+, and requires this resource's core_instance_group to be configured. Public (Internet accessible) instances must be created in VPC subnets that have map public IP on launch enabled. Termination protection is automatically enabled when launched with multiple master nodes and Terraform must have the termination_protection = false configuration applied before destroying this resource."
  type        = string
  default     = ""
}
variable "instance_type" {
  description = "(Required) EC2 instance type for all instances in the instance group."
  type        = string
}
variable "block_duration_minutes" {
  description = "(Optional) Defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates."
  type        = string
  default     = ""
}
variable "core_instance_fleet" {
  description = "(Optional) Configuration block to use an Instance Fleet for the core node type. Cannot be specified if any core_instance_group configuration blocks are set. Detailed below."
  type        = string
  default     = ""
}
variable "scale_down_behavior" {
  description = "(Optional) Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized."
  type        = string
  default     = ""
}
variable "step_concurrency_level" {
  description = "(Optional) Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with release_label 5.28.0 or greater (default is 1)."
  type        = string
  default     = ""
}
variable "target_on_demand_capacity" {
  description = "(Optional) Target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision."
  type        = string
  default     = ""
}
variable "termination_protection" {
  description = "(Optional) Switch on/off termination protection (default is false, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to false."
  type        = string
  default     = ""
}
variable "args" {
  description = "(Optional) List of command line arguments passed to the JAR file's main function when executed."
  type        = string
  default     = ""
}
variable "properties" {
  description = "(Optional) Key-Value map of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "configurations" {
  description = "List of Configurations supplied to the EMR cluster."
  type        = string
  default     = ""
}
variable "configurations_json" {
  description = "(Optional) JSON string for supplying list of configurations for the EMR cluster.~> strongNOTE on configurations_json: If the Configurations value is empty then you should skip the Configurations field instead of providing an empty list as a value, \"Configurations\": []."
  type        = string
  default     = ""
}
variable "log_uri" {
  description = "Path to the Amazon S3 location where logs for this cluster are stored."
  type        = string
  default     = ""
}
variable "ad_domain_join_password" {
  description = "(Optional) Active Directory password for ad_domain_join_user. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "bid_price" {
  description = "(Optional) Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances."
  type        = string
  default     = ""
}
variable "classification" {
  description = "(Optional) Classification within a configuration."
  type        = string
  default     = ""
}
variable "ec2_attributes" {
  description = "Provides information about the EC2 instances in a cluster grouped by category: key name, subnet ID, IAM instance profile, and so on."
  type        = string
  default     = ""
}
variable "autoscaling_policy" {
  description = "(Optional) String containing the EMR Auto Scaling Policy JSON."
  type        = string
  default     = ""
}
variable "autoscaling_role" {
  description = "(Optional) IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group."
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
output "bootstrap_action" {
  description = "List of bootstrap actions that will be run before Hadoop is started on the cluster nodes."
  value       = aws_emr_cluster.aws_emr_cluster.bootstrap_action
}
output "jar" {
  description = "(Required) Path to a JAR file run during the step."
  value       = aws_emr_cluster.aws_emr_cluster.jar
}
output "master_instance_group" {
  description = "(Optional) Configuration block to use an Instance Group for the master node type."
  value       = aws_emr_cluster.aws_emr_cluster.master_instance_group
}
output "size" {
  description = "(Required) Volume size, in gibibytes (GiB)."
  value       = aws_emr_cluster.aws_emr_cluster.size
}
output "name" {
  description = "Name of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.name
}
output "release_label" {
  description = "Release label for the Amazon EMR release."
  value       = aws_emr_cluster.aws_emr_cluster.release_label
}
output "subnet_id" {
  description = "(Optional) VPC subnet id where you want the job flow to launch. Cannot specify the cc1.4xlarge instance type for nodes of a job flow launched in an Amazon VPC."
  value       = aws_emr_cluster.aws_emr_cluster.subnet_id
}
output "custom_ami_id" {
  description = "(Optional) Custom Amazon Linux AMI for the cluster (instead of an EMR-owned AMI). Available in Amazon EMR version 5.7.0 and later."
  value       = aws_emr_cluster.aws_emr_cluster.custom_ami_id
}
output "iops" {
  description = "(Optional) Number of I/O operations per second (IOPS) that the volume supports."
  value       = aws_emr_cluster.aws_emr_cluster.iops
}
output "visible_to_all_users" {
  description = "Indicates whether the job flow is visible to all IAM users of the AWS account associated with the job flow."
  value       = aws_emr_cluster.aws_emr_cluster.visible_to_all_users
}
output "volumes_per_instance" {
  description = "(Optional) Number of EBS volumes with this configuration to attach to each EC2 instance in the instance group (default is 1).ec2_attributesAttributes for the Amazon EC2 instances running the job flow:"
  value       = aws_emr_cluster.aws_emr_cluster.volumes_per_instance
}
output "core_instance_group.0.id" {
  description = "Core node type Instance Group ID, if using Instance Group for this node type."
  value       = aws_emr_cluster.aws_emr_cluster.core_instance_group.0.id
}
output "hadoop_jar_step" {
  description = "(Required) JAR file used for the step. See below."
  value       = aws_emr_cluster.aws_emr_cluster.hadoop_jar_step
}
output "keep_job_flow_alive_when_no_steps" {
  description = "(Optional) Switch on/off run cluster with no steps or when all steps are complete (default is on)"
  value       = aws_emr_cluster.aws_emr_cluster.keep_job_flow_alive_when_no_steps
}
output "list_steps_states" {
  description = "(Optional) List of step states used to filter returned steps"
  value       = aws_emr_cluster.aws_emr_cluster.list_steps_states
}
output "instance_profile" {
  description = "(Required) Instance Profile for EC2 instances of the cluster assume this role."
  value       = aws_emr_cluster.aws_emr_cluster.instance_profile
}
output "path" {
  description = "(Required) Location of the script to run during a bootstrap action. Can be either a location in Amazon S3 or on a local file system.auto_termination_policy"
  value       = aws_emr_cluster.aws_emr_cluster.path
}
output "service_role" {
  description = "IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf."
  value       = aws_emr_cluster.aws_emr_cluster.service_role
}
output "type" {
  description = "(Required) Volume type. Valid options are gp3, gp2, io1, standard, st1 and sc1. See EBS Volume Types."
  value       = aws_emr_cluster.aws_emr_cluster.type
}
output "ad_domain_join_user" {
  description = "(Optional) Required only when establishing a cross-realm trust with an Active Directory domain. A user with sufficient privileges to join resources to the domain. Terraform cannot perform drift detection of this configuration."
  value       = aws_emr_cluster.aws_emr_cluster.ad_domain_join_user
}
output "allocation_strategy" {
  description = "(Required) Specifies the strategy to use in launching Spot instance fleets. Currently, the only option is capacity-optimized (the default), which launches instances from Spot instance pools with optimal capacity for the number of instances that are launching."
  value       = aws_emr_cluster.aws_emr_cluster.allocation_strategy
}
output "arn" {
  description = "- ARN of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.arn
}
output "cross_realm_trust_principal_password" {
  description = "(Optional) Required only when establishing a cross-realm trust with a KDC in a different realm. The cross-realm principal password, which must be identical across realms. Terraform cannot perform drift detection of this configuration."
  value       = aws_emr_cluster.aws_emr_cluster.cross_realm_trust_principal_password
}
output "weighted_capacity" {
  description = "(Optional) Number of units that a provisioned instance of this type provides toward fulfilling the target capacities defined in aws_emr_instance_fleet.launch_specifications"
  value       = aws_emr_cluster.aws_emr_cluster.weighted_capacity
}
output "log_encryption_kms_key_id" {
  description = "(Optional) AWS KMS customer master key (CMK) key ID or arn used for encrypting log files. This attribute is only available with EMR version 5.30.0 and later, excluding EMR 6.0.0."
  value       = aws_emr_cluster.aws_emr_cluster.log_encryption_kms_key_id
}
output "service_access_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 service-access security group - required when the cluster runs on a private subnet."
  value       = aws_emr_cluster.aws_emr_cluster.service_access_security_group
}
output "additional_info" {
  description = "(Optional) JSON string for selecting additional features such as adding proxy information. Note: Currently there is no API to retrieve the value of this argument after EMR cluster creation from provider, therefore Terraform cannot detect drift from the actual EMR cluster if its value is changed outside Terraform."
  value       = aws_emr_cluster.aws_emr_cluster.additional_info
}
output "bid_price_as_percentage_of_on_demand_price" {
  description = "(Optional) Bid price, as a percentage of On-Demand price, for each EC2 Spot instance as defined by instance_type. Expressed as a number (for example, 20 specifies 20%). If neither bid_price nor bid_price_as_percentage_of_on_demand_price is provided, bid_price_as_percentage_of_on_demand_price defaults to 100%."
  value       = aws_emr_cluster.aws_emr_cluster.bid_price_as_percentage_of_on_demand_price
}
output "core_instance_group" {
  description = "(Optional) Configuration block to use an Instance Group for the core node type."
  value       = aws_emr_cluster.aws_emr_cluster.core_instance_group
}
output "security_configuration" {
  description = "(Optional) Security configuration name to attach to the EMR cluster. Only valid for EMR clusters with release_label 4.8.0 or greater."
  value       = aws_emr_cluster.aws_emr_cluster.security_configuration
}
output "timeout_duration_minutes" {
  description = "(Required) Spot provisioning timeout period in minutes. If Spot instances are not provisioned within this time period, the TimeOutAction is taken. Minimum value is 5 and maximum value is 1440. The timeout applies only during initial provisioning, when the cluster is first created.core_instance_group"
  value       = aws_emr_cluster.aws_emr_cluster.timeout_duration_minutes
}
output "additional_master_security_groups" {
  description = "(Optional) String containing a comma separated list of additional Amazon EC2 security group IDs for the master node."
  value       = aws_emr_cluster.aws_emr_cluster.additional_master_security_groups
}
output "applications" {
  description = "Applications installed on this cluster."
  value       = aws_emr_cluster.aws_emr_cluster.applications
}
output "launch_specifications" {
  description = "(Optional) Configuration block for launch specification."
  value       = aws_emr_cluster.aws_emr_cluster.launch_specifications
}
output "master_instance_group.0.id" {
  description = "Master node type Instance Group ID, if using Instance Group for this node type."
  value       = aws_emr_cluster.aws_emr_cluster.master_instance_group.0.id
}
output "on_demand_specification" {
  description = "(Optional) Configuration block for on demand instances launch specifications."
  value       = aws_emr_cluster.aws_emr_cluster.on_demand_specification
}
output "tags" {
  description = "(Optional) list of tags to apply to the EMR Cluster. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_emr_cluster.aws_emr_cluster.tags
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_emr_cluster.aws_emr_cluster.tags_all
}
output "throughput" {
  description = "(Optional) The throughput, in mebibyte per second (MiB/s)."
  value       = aws_emr_cluster.aws_emr_cluster.throughput
}
output "ebs_root_volume_size" {
  description = "(Optional) Size in GiB of the EBS root device volume of the Linux AMI that is used for each EC2 instance. Available in Amazon EMR version 4.x and later."
  value       = aws_emr_cluster.aws_emr_cluster.ebs_root_volume_size
}
output "emr_managed_slave_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 EMR-Managed security group for the slave nodes."
  value       = aws_emr_cluster.aws_emr_cluster.emr_managed_slave_security_group
}
output "kerberos_attributes" {
  description = "(Optional) Kerberos configuration for the cluster. See below."
  value       = aws_emr_cluster.aws_emr_cluster.kerberos_attributes
}
output "main_class" {
  description = "(Optional) Name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file."
  value       = aws_emr_cluster.aws_emr_cluster.main_class
}
output "block_duration_minutes" {
  description = "(Optional) Defined duration for Spot instances (also known as Spot blocks) in minutes. When specified, the Spot instance does not terminate before the defined duration expires, and defined duration pricing for Spot instances applies. Valid values are 60, 120, 180, 240, 300, or 360. The duration period starts as soon as a Spot instance receives its instance ID. At the end of the duration, Amazon EC2 marks the Spot instance for termination and provides a Spot instance termination notice, which gives the instance a two-minute warning before it terminates."
  value       = aws_emr_cluster.aws_emr_cluster.block_duration_minutes
}
output "core_instance_fleet" {
  description = "(Optional) Configuration block to use an Instance Fleet for the core node type. Cannot be specified if any core_instance_group configuration blocks are set. Detailed below."
  value       = aws_emr_cluster.aws_emr_cluster.core_instance_fleet
}
output "instance_count" {
  description = "(Optional) Target number of instances for the instance group. Must be 1 or 3. Defaults to 1. Launching with multiple master nodes is only supported in EMR version 5.23.0+, and requires this resource's core_instance_group to be configured. Public (Internet accessible) instances must be created in VPC subnets that have map public IP on launch enabled. Termination protection is automatically enabled when launched with multiple master nodes and Terraform must have the termination_protection = false configuration applied before destroying this resource."
  value       = aws_emr_cluster.aws_emr_cluster.instance_count
}
output "instance_type" {
  description = "(Required) EC2 instance type for all instances in the instance group."
  value       = aws_emr_cluster.aws_emr_cluster.instance_type
}
output "target_on_demand_capacity" {
  description = "(Optional) Target capacity of On-Demand units for the instance fleet, which determines how many On-Demand instances to provision."
  value       = aws_emr_cluster.aws_emr_cluster.target_on_demand_capacity
}
output "termination_protection" {
  description = "(Optional) Switch on/off termination protection (default is false, except when using multiple master nodes). Before attempting to destroy the resource when termination protection is enabled, this configuration must be applied with its value set to false."
  value       = aws_emr_cluster.aws_emr_cluster.termination_protection
}
output "args" {
  description = "(Optional) List of command line arguments passed to the JAR file's main function when executed."
  value       = aws_emr_cluster.aws_emr_cluster.args
}
output "properties" {
  description = "(Optional) Key-Value map of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.In addition to all arguments above, the following attributes are exported:"
  value       = aws_emr_cluster.aws_emr_cluster.properties
}
output "scale_down_behavior" {
  description = "(Optional) Way that individual Amazon EC2 instances terminate when an automatic scale-in activity occurs or an instance group is resized."
  value       = aws_emr_cluster.aws_emr_cluster.scale_down_behavior
}
output "step_concurrency_level" {
  description = "(Optional) Number of steps that can be executed concurrently. You can specify a maximum of 256 steps. Only valid for EMR clusters with release_label 5.28.0 or greater (default is 1)."
  value       = aws_emr_cluster.aws_emr_cluster.step_concurrency_level
}
output "log_uri" {
  description = "Path to the Amazon S3 location where logs for this cluster are stored."
  value       = aws_emr_cluster.aws_emr_cluster.log_uri
}
output "ad_domain_join_password" {
  description = "(Optional) Active Directory password for ad_domain_join_user. Terraform cannot perform drift detection of this configuration."
  value       = aws_emr_cluster.aws_emr_cluster.ad_domain_join_password
}
output "bid_price" {
  description = "(Optional) Bid price for each EC2 instance in the instance group, expressed in USD. By setting this attribute, the instance group is being declared as a Spot Instance, and will implicitly create a Spot request. Leave this blank to use On-Demand Instances."
  value       = aws_emr_cluster.aws_emr_cluster.bid_price
}
output "configurations" {
  description = "List of Configurations supplied to the EMR cluster."
  value       = aws_emr_cluster.aws_emr_cluster.configurations
}
output "configurations_json" {
  description = "(Optional) JSON string for supplying list of configurations for the EMR cluster.~> strongNOTE on configurations_json: If the Configurations value is empty then you should skip the Configurations field instead of providing an empty list as a value, \"Configurations\": []."
  value       = aws_emr_cluster.aws_emr_cluster.configurations_json
}
output "autoscaling_policy" {
  description = "(Optional) String containing the EMR Auto Scaling Policy JSON."
  value       = aws_emr_cluster.aws_emr_cluster.autoscaling_policy
}
output "autoscaling_role" {
  description = "(Optional) IAM role for automatic scaling policies. The IAM role provides permissions that the automatic scaling feature requires to launch and terminate EC2 instances in an instance group."
  value       = aws_emr_cluster.aws_emr_cluster.autoscaling_role
}
output "classification" {
  description = "(Optional) Classification within a configuration."
  value       = aws_emr_cluster.aws_emr_cluster.classification
}
output "ec2_attributes" {
  description = "Provides information about the EC2 instances in a cluster grouped by category: key name, subnet ID, IAM instance profile, and so on."
  value       = aws_emr_cluster.aws_emr_cluster.ec2_attributes
}
output "key_name" {
  description = "(Optional) Amazon EC2 key pair that can be used to ssh to the master node as the user called hadoop."
  value       = aws_emr_cluster.aws_emr_cluster.key_name
}
output "master_instance_fleet" {
  description = "(Optional) Configuration block to use an Instance Fleet for the master node type. Cannot be specified if any master_instance_group configuration blocks are set. Detailed below."
  value       = aws_emr_cluster.aws_emr_cluster.master_instance_fleet
}
output "master_public_dns" {
  description = "The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name."
  value       = aws_emr_cluster.aws_emr_cluster.master_public_dns
}
output "subnet_ids" {
  description = "(Optional) List of VPC subnet id-s where you want the job flow to launch.  Amazon EMR identifies the best Availability Zone to launch instances according to your fleet specifications.~> strongNOTE on EMR-Managed security groups: These security groups will have any missing inbound or outbound access rules added and maintained by AWS, to ensure proper communication between instances in a cluster. The EMR service will maintain these rules for groups provided in emr_managed_master_security_group and emr_managed_slave_security_group; attempts to remove the required rules may succeed, only for the EMR service to re-add them in a matter of minutes. This may cause Terraform to fail to destroy an environment that contains an EMR cluster, because the EMR service does not revoke rules added on deletion, leaving a cyclic dependency between the security groups that prevents their deletion. To avoid this, use the revoke_rules_on_delete optional attribute for any Security Group used in emr_managed_master_security_group and emr_managed_slave_security_group. See Amazon EMR-Managed Security Groups for more information about the EMR-managed security group rules.kerberos_attributes"
  value       = aws_emr_cluster.aws_emr_cluster.subnet_ids
}
output "action_on_failure" {
  description = "(Required) Action to take if the step fails. Valid values: TERMINATE_JOB_FLOW, TERMINATE_CLUSTER, CANCEL_AND_WAIT, and CONTINUE"
  value       = aws_emr_cluster.aws_emr_cluster.action_on_failure
}
output "additional_slave_security_groups" {
  description = "(Optional) String containing a comma separated list of additional Amazon EC2 security group IDs for the slave nodes as a comma separated string."
  value       = aws_emr_cluster.aws_emr_cluster.additional_slave_security_groups
}
output "ebs_config" {
  description = "(Optional) Configuration block(s) for EBS volumes attached to each instance in the instance group. Detailed below."
  value       = aws_emr_cluster.aws_emr_cluster.ebs_config
}
output "kdc_admin_password" {
  description = "(Required) Password used within the cluster for the kadmin service on the cluster-dedicated KDC, which maintains Kerberos principals, password policies, and keytabs for the cluster. Terraform cannot perform drift detection of this configuration."
  value       = aws_emr_cluster.aws_emr_cluster.kdc_admin_password
}
output "timeout_action" {
  description = "(Required) Action to take when TargetSpotCapacity has not been fulfilled when the TimeoutDurationMinutes has expired; that is, when all Spot instances could not be provisioned within the Spot provisioning timeout. Valid values are TERMINATE_CLUSTER and SWITCH_TO_ON_DEMAND. SWITCH_TO_ON_DEMAND specifies that if no Spot instances are available, On-Demand Instances should be provisioned to fulfill any remaining Spot capacity."
  value       = aws_emr_cluster.aws_emr_cluster.timeout_action
}
output "auto_termination_policy" {
  description = "(Optional) An auto-termination policy for an Amazon EMR cluster. An auto-termination policy defines the amount of idle time in seconds after which a cluster automatically terminates. See Auto Termination Policy Below."
  value       = aws_emr_cluster.aws_emr_cluster.auto_termination_policy
}
output "id" {
  description = "ID of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.id
}
output "instance_type_configs" {
  description = "(Optional) Configuration block for instance fleet."
  value       = aws_emr_cluster.aws_emr_cluster.instance_type_configs
}
output "realm" {
  description = "(Required) Name of the Kerberos realm to which all nodes in a cluster belong. For example, EC2.INTERNALmaster_instance_fleet"
  value       = aws_emr_cluster.aws_emr_cluster.realm
}
output "target_spot_capacity" {
  description = "(Optional) Target capacity of Spot units for the instance fleet, which determines how many Spot instances to provision.instance_type_configsSee instance_type_configs above, under core_instance_fleet.launch_specificationsSee launch_specifications above, under core_instance_fleet.master_instance_groupSupported nested arguments for the master_instance_group configuration block:"
  value       = aws_emr_cluster.aws_emr_cluster.target_spot_capacity
}
output "emr_managed_master_security_group" {
  description = "(Optional) Identifier of the Amazon EC2 EMR-Managed security group for the master node."
  value       = aws_emr_cluster.aws_emr_cluster.emr_managed_master_security_group
}
output "idle_timeout" {
  description = "(Optional) Specifies the amount of idle time in seconds after which the cluster automatically terminates. You can specify a minimum of 60 seconds and a maximum of 604800 seconds (seven days).configurationsA configuration classification that applies when provisioning cluster instances, which can include configurations for applications and software that run on the cluster. See Configuring Applications."
  value       = aws_emr_cluster.aws_emr_cluster.idle_timeout
}
output "spot_specification" {
  description = "(Optional) Configuration block for spot instances launch specifications.on_demand_specification"
  value       = aws_emr_cluster.aws_emr_cluster.spot_specification
}
output "step" {
  description = "(Optional) List of steps to run when creating the cluster. See below. It is highly recommended to utilize the lifecycle configuration block with ignore_changes if other steps are being managed outside of Terraform. This argument is processed in attribute-as-blocks mode."
  value       = aws_emr_cluster.aws_emr_cluster.step
}
output "visible_to_all_users" {
  description = "Indicates whether the job flow is visible to all IAM users of the AWS account associated with the job flow."
  value       = aws_emr_cluster.aws_emr_cluster.visible_to_all_users
}
output "arn" {
  description = "- ARN of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.arn
}
output "configurations" {
  description = "List of Configurations supplied to the EMR cluster."
  value       = aws_emr_cluster.aws_emr_cluster.configurations
}
output "id" {
  description = "ID of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.id
}
output "service_role" {
  description = "IAM role that will be assumed by the Amazon EMR service to access AWS resources on your behalf."
  value       = aws_emr_cluster.aws_emr_cluster.service_role
}
output "bootstrap_action" {
  description = "List of bootstrap actions that will be run before Hadoop is started on the cluster nodes."
  value       = aws_emr_cluster.aws_emr_cluster.bootstrap_action
}
output "core_instance_group.0.id" {
  description = "Core node type Instance Group ID, if using Instance Group for this node type."
  value       = aws_emr_cluster.aws_emr_cluster.core_instance_group.0.id
}
output "log_uri" {
  description = "Path to the Amazon S3 location where logs for this cluster are stored."
  value       = aws_emr_cluster.aws_emr_cluster.log_uri
}
output "release_label" {
  description = "Release label for the Amazon EMR release."
  value       = aws_emr_cluster.aws_emr_cluster.release_label
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_emr_cluster.aws_emr_cluster.tags_all
}
output "applications" {
  description = "Applications installed on this cluster."
  value       = aws_emr_cluster.aws_emr_cluster.applications
}
output "ec2_attributes" {
  description = "Provides information about the EC2 instances in a cluster grouped by category: key name, subnet ID, IAM instance profile, and so on."
  value       = aws_emr_cluster.aws_emr_cluster.ec2_attributes
}
output "master_instance_group.0.id" {
  description = "Master node type Instance Group ID, if using Instance Group for this node type."
  value       = aws_emr_cluster.aws_emr_cluster.master_instance_group.0.id
}
output "master_public_dns" {
  description = "The DNS name of the master node. If the cluster is on a private subnet, this is the private DNS name. On a public subnet, this is the public DNS name."
  value       = aws_emr_cluster.aws_emr_cluster.master_public_dns
}
output "name" {
  description = "Name of the cluster."
  value       = aws_emr_cluster.aws_emr_cluster.name
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
      "kind/name"                   = "aws_emr_cluster"
      "kind/version"                = "v0.1.0"
    }
  }
}
