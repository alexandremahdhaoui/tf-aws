resource "aws_ecs_task_definition" "aws_ecs_task_definition" {
  task_role_arn                                = var.task_role_arn
  credentials_parameter                        = var.credentials_parameter
  fsx_windows_file_server_volume_configuration = var.fsx_windows_file_server_volume_configuration
  root_directory                               = var.root_directory
  pid_mode                                     = var.pid_mode
  arn                                          = var.arn
  driver_opts                                  = var.driver_opts
  family                                       = var.family
  size_in_gib                                  = var.size_in_gib
  tags_all                                     = var.tags_all
  volume                                       = var.volume
  driver                                       = var.driver
  proxy_configuration                          = var.proxy_configuration
  scope                                        = var.scope
  memory                                       = var.memory
  network_mode                                 = var.network_mode
  container_name                               = var.container_name
  efs_volume_configuration                     = var.efs_volume_configuration
  host_path                                    = var.host_path
  device_name                                  = var.device_name
  domain                                       = var.domain
  placement_constraints                        = var.placement_constraints
  revision                                     = var.revision
  runtime_platform                             = var.runtime_platform
  autoprovision                                = var.autoprovision
  container_definitions                        = var.container_definitions
  cpu_architecture                             = var.cpu_architecture
  transit_encryption_port                      = var.transit_encryption_port
  docker_volume_configuration                  = var.docker_volume_configuration
  inference_accelerator                        = var.inference_accelerator
  labels                                       = var.labels
  expression                                   = var.expression
  file_system_id                               = var.file_system_id
  iam                                          = var.iam
  name                                         = var.name
  operating_system_family                      = var.operating_system_family
  authorization_config                         = var.authorization_config
  device_type                                  = var.device_type
  ephemeral_storage                            = var.ephemeral_storage
  type                                         = var.type
  requires_compatibilities                     = var.requires_compatibilities
  skip_destroy                                 = var.skip_destroy
  transit_encryption                           = var.transit_encryption
  ipc_mode                                     = var.ipc_mode
  properties                                   = var.properties
  tags                                         = var.tags
  access_point_id                              = var.access_point_id
  cpu                                          = var.cpu
  execution_role_arn                           = var.execution_role_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "autoprovision" {
  description = "(Optional) If this value is true, the Docker volume is created if it does not already exist. emNote: This field is only used if the scope is shared."
  type        = string
}
variable "container_definitions" {
  description = "(Required) A list of valid container definitions provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the Task Definition Parameters section from the official Developer Guide."
  type        = string
}
variable "cpu_architecture" {
  description = "(Optional) Must be set to either X86_64 or ARM64; see cpu architectureauthorization_config"
  type        = string
}
variable "device_name" {
  description = "(Required) Elastic Inference accelerator device name. The deviceName must also be referenced in a container definition as a ResourceRequirement."
  type        = string
}
variable "domain" {
  description = "(Required) A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.placement_constraints"
  type        = string
}
variable "placement_constraints" {
  description = "(Optional) Configuration block for rules that are taken into consideration during task placement. Maximum number of placement_constraints is 10. Detailed below."
  type        = string
}
variable "revision" {
  description = "Revision of the task in a particular family."
  type        = string
}
variable "runtime_platform" {
  description = "(Optional) Configuration block for runtime_platform that containers in your task may use."
  type        = string
}
variable "docker_volume_configuration" {
  description = "(Optional) Configuration block to configure a docker volume. Detailed below."
  type        = string
}
variable "inference_accelerator" {
  description = "(Optional) Configuration block(s) with Inference Accelerators settings. Detailed below."
  type        = string
}
variable "labels" {
  description = "(Optional) Map of custom metadata to add to your Docker volume."
  type        = string
}
variable "transit_encryption_port" {
  description = "(Optional) Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses."
  type        = string
}
variable "authorization_config" {
  description = "(Required) Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.authorization_config"
  type        = string
}
variable "device_type" {
  description = "(Required) Elastic Inference accelerator type to use.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "ephemeral_storage" {
  description = "(Optional)  The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage."
  type        = string
}
variable "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide."
  type        = string
}
variable "file_system_id" {
  description = "(Required) The Amazon FSx for Windows File Server file system ID to use."
  type        = string
}
variable "iam" {
  description = "(Optional) Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.fsx_windows_file_server_volume_configurationFor more information, see Specifying an FSX Windows File Server volume in your Task Definition Developer Guide"
  type        = string
}
variable "name" {
  description = "(Required) Name of the volume. This name is referenced in the sourceVolumemountPoints section.docker_volume_configurationFor more information, see Specifying a Docker volume in your Task Definition Developer Guide"
  type        = string
}
variable "operating_system_family" {
  description = "(Optional) If the requires_compatibilities is FARGATE this field is required; must be set to a valid option from the operating system family in the runtime platform setting"
  type        = string
}
variable "requires_compatibilities" {
  description = "(Optional) Set of launch types required by the task. The valid values are EC2 and FARGATE."
  type        = string
}
variable "skip_destroy" {
  description = "(Optional) Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is false."
  type        = string
}
variable "transit_encryption" {
  description = "(Optional) Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used."
  type        = string
}
variable "type" {
  description = "(Optional) Proxy type. The default value is APPMESH. The only supported value is APPMESH.ephemeral_storage"
  type        = string
}
variable "access_point_id" {
  description = "(Optional) Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration."
  type        = string
}
variable "cpu" {
  description = "(Optional) Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required."
  type        = string
}
variable "execution_role_arn" {
  description = "(Optional) ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume."
  type        = string
}
variable "ipc_mode" {
  description = "(Optional) IPC resource namespace to be used for the containers in the task The valid values are host, task, and none."
  type        = string
}
variable "properties" {
  description = "(Required) Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping."
  type        = string
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "credentials_parameter" {
  description = "(Required) The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials."
  type        = string
}
variable "fsx_windows_file_server_volume_configuration" {
  description = "(Optional) Configuration block for an FSX Windows File Server volume. Detailed below."
  type        = string
}
variable "root_directory" {
  description = "(Required) The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host."
  type        = string
}
variable "task_role_arn" {
  description = "(Optional) ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services."
  type        = string
}
variable "arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  type        = string
}
variable "driver_opts" {
  description = "(Optional) Map of Docker driver specific options."
  type        = string
}
variable "family" {
  description = "(Required) A unique name for your task definition."
  type        = string
}
variable "pid_mode" {
  description = "(Optional) Process namespace to use for the containers in the task. The valid values are host and task."
  type        = string
}
variable "driver" {
  description = "(Optional) Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement."
  type        = string
}
variable "proxy_configuration" {
  description = "(Optional) Configuration block for the App Mesh proxy. Detailed below."
  type        = string
}
variable "scope" {
  description = "(Optional) Scope for the Docker volume, which determines its lifecycle, either task or shared.  Docker volumes that are scoped to a task are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as shared persist after the task stops.efs_volume_configurationFor more information, see Specifying an EFS volume in your Task Definition Developer Guide"
  type        = string
}
variable "size_in_gib" {
  description = "(Required) The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.inference_accelerator"
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "volume" {
  description = "(Optional) Configuration block for volumes that containers in your task may use. Detailed below.volume"
  type        = string
}
variable "container_name" {
  description = "(Required) Name of the container that will serve as the App Mesh proxy."
  type        = string
}
variable "efs_volume_configuration" {
  description = "(Optional) Configuration block for an EFS volume. Detailed below."
  type        = string
}
variable "host_path" {
  description = "(Optional) Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished."
  type        = string
}
variable "memory" {
  description = "(Optional) Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required."
  type        = string
}
variable "network_mode" {
  description = "(Optional) Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host."
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
output "arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "driver_opts" {
  description = "(Optional) Map of Docker driver specific options."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.driver_opts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "family" {
  description = "(Required) A unique name for your task definition."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "pid_mode" {
  description = "(Optional) Process namespace to use for the containers in the task. The valid values are host and task."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.pid_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "volume" {
  description = "(Optional) Configuration block for volumes that containers in your task may use. Detailed below.volume"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.volume
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "driver" {
  description = "(Optional) Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.driver
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "proxy_configuration" {
  description = "(Optional) Configuration block for the App Mesh proxy. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.proxy_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "scope" {
  description = "(Optional) Scope for the Docker volume, which determines its lifecycle, either task or shared.  Docker volumes that are scoped to a task are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as shared persist after the task stops.efs_volume_configurationFor more information, see Specifying an EFS volume in your Task Definition Developer Guide"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.scope
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "size_in_gib" {
  description = "(Required) The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.inference_accelerator"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.size_in_gib
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_name" {
  description = "(Required) Name of the container that will serve as the App Mesh proxy."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.container_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "efs_volume_configuration" {
  description = "(Optional) Configuration block for an EFS volume. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.efs_volume_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "host_path" {
  description = "(Optional) Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.host_path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory" {
  description = "(Optional) Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.memory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_mode" {
  description = "(Optional) Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.network_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "placement_constraints" {
  description = "(Optional) Configuration block for rules that are taken into consideration during task placement. Maximum number of placement_constraints is 10. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.placement_constraints
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "revision" {
  description = "Revision of the task in a particular family."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime_platform" {
  description = "(Optional) Configuration block for runtime_platform that containers in your task may use."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.runtime_platform
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "autoprovision" {
  description = "(Optional) If this value is true, the Docker volume is created if it does not already exist. emNote: This field is only used if the scope is shared."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.autoprovision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "container_definitions" {
  description = "(Required) A list of valid container definitions provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the Task Definition Parameters section from the official Developer Guide."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.container_definitions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu_architecture" {
  description = "(Optional) Must be set to either X86_64 or ARM64; see cpu architectureauthorization_config"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.cpu_architecture
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_name" {
  description = "(Required) Elastic Inference accelerator device name. The deviceName must also be referenced in a container definition as a ResourceRequirement."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.device_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "domain" {
  description = "(Required) A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.placement_constraints"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.domain
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "docker_volume_configuration" {
  description = "(Optional) Configuration block to configure a docker volume. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.docker_volume_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "inference_accelerator" {
  description = "(Optional) Configuration block(s) with Inference Accelerators settings. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.inference_accelerator
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "labels" {
  description = "(Optional) Map of custom metadata to add to your Docker volume."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.labels
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_encryption_port" {
  description = "(Optional) Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.transit_encryption_port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "iam" {
  description = "(Optional) Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.fsx_windows_file_server_volume_configurationFor more information, see Specifying an FSX Windows File Server volume in your Task Definition Developer Guide"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.iam
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) Name of the volume. This name is referenced in the sourceVolumemountPoints section.docker_volume_configurationFor more information, see Specifying a Docker volume in your Task Definition Developer Guide"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "operating_system_family" {
  description = "(Optional) If the requires_compatibilities is FARGATE this field is required; must be set to a valid option from the operating system family in the runtime platform setting"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.operating_system_family
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authorization_config" {
  description = "(Required) Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.authorization_config"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.authorization_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "device_type" {
  description = "(Required) Elastic Inference accelerator type to use.In addition to all arguments above, the following attributes are exported:"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.device_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ephemeral_storage" {
  description = "(Optional)  The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.ephemeral_storage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "expression" {
  description = " (Optional) Cluster Query Language expression to apply to the constraint. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.expression
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_id" {
  description = "(Required) The Amazon FSx for Windows File Server file system ID to use."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.file_system_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "requires_compatibilities" {
  description = "(Optional) Set of launch types required by the task. The valid values are EC2 and FARGATE."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.requires_compatibilities
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "skip_destroy" {
  description = "(Optional) Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is false."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.skip_destroy
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "transit_encryption" {
  description = "(Optional) Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.transit_encryption
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Optional) Proxy type. The default value is APPMESH. The only supported value is APPMESH.ephemeral_storage"
  value       = aws_ecs_task_definition.aws_ecs_task_definition.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_point_id" {
  description = "(Optional) Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.access_point_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu" {
  description = "(Optional) Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.cpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "execution_role_arn" {
  description = "(Optional) ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.execution_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ipc_mode" {
  description = "(Optional) IPC resource namespace to be used for the containers in the task The valid values are host, task, and none."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.ipc_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "properties" {
  description = "(Required) Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.properties
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "credentials_parameter" {
  description = "(Required) The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.credentials_parameter
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fsx_windows_file_server_volume_configuration" {
  description = "(Optional) Configuration block for an FSX Windows File Server volume. Detailed below."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.fsx_windows_file_server_volume_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "root_directory" {
  description = "(Required) The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.root_directory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "task_role_arn" {
  description = "(Optional) ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.task_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "Full ARN of the Task Definition (including both family and revision)."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "revision" {
  description = "Revision of the task in a particular family."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.revision
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_ecs_task_definition.aws_ecs_task_definition.tags_all
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
      "kind/name"                   = "aws_ecs_task_definition"
      "kind/version"                = "v0.1.0"
    }
  }
}
