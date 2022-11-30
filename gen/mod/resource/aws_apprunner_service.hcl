resource "aws_apprunner_service" "aws_apprunner_service" {
  code_configuration_values       = var.code_configuration_values
  egress_configuration            = var.egress_configuration
  service_url                     = var.service_url
  timeout                         = var.timeout
  value                           = var.value
  access_role_arn                 = var.access_role_arn
  configuration_source            = var.configuration_source
  service_name                    = var.service_name
  unhealthy_threshold             = var.unhealthy_threshold
  service_id                      = var.service_id
  port                            = var.port
  type                            = var.type
  arn                             = var.arn
  auto_scaling_configuration_arn  = var.auto_scaling_configuration_arn
  ingress_configuration           = var.ingress_configuration
  health_check_configuration      = var.health_check_configuration
  egress_type                     = var.egress_type
  network_configuration           = var.network_configuration
  protocol                        = var.protocol
  authentication_configuration    = var.authentication_configuration
  healthy_threshold               = var.healthy_threshold
  image_repository                = var.image_repository
  instance_configuration          = var.instance_configuration
  kms_key                         = var.kms_key
  start_command                   = var.start_command
  image_identifier                = var.image_identifier
  image_repository_type           = var.image_repository_type
  memory                          = var.memory
  status                          = var.status
  tags_all                        = var.tags_all
  API                             = var.API
  REPOSITORY                      = var.REPOSITORY
  build_command                   = var.build_command
  connection_arn                  = var.connection_arn
  instance_role_arn               = var.instance_role_arn
  code_repository                 = var.code_repository
  source_code_version             = var.source_code_version
  source_configuration            = var.source_configuration
  tags                            = var.tags
  vpc_connector_arn               = var.vpc_connector_arn
  cpu                             = var.cpu
  is_publicly_accessible          = var.is_publicly_accessible
  runtime                         = var.runtime
  image_configuration             = var.image_configuration
  interval                        = var.interval
  path                            = var.path
  auto_deployments_enabled        = var.auto_deployments_enabled
  encryption_configuration        = var.encryption_configuration
  observability_enabled           = var.observability_enabled
  repository_url                  = var.repository_url
  observability_configuration     = var.observability_configuration
  observability_configuration_arn = var.observability_configuration_arn
  runtime_environment_variables   = var.runtime_environment_variables
  code_configuration              = var.code_configuration
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "egress_configuration" {
  description = "(Optional) Network configuration settings for outbound message traffic. See Egress Configuration below for more details."
  type        = string
}
variable "service_url" {
  description = "Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application."
  type        = string
}
variable "timeout" {
  description = "(Optional) Time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of  1. Maximum value of 20."
  type        = string
}
variable "value" {
  description = "- (Required) Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "code_configuration_values" {
  description = "(Optional) Basic configuration for building and running the App Runner service. Use this parameter to quickly launch an App Runner service without providing an apprunner.yaml file in the source code repository (or ignoring the file if it exists). See Code Configuration Values below for more details."
  type        = string
}
variable "configuration_source" {
  description = "(Required) Source of the App Runner configuration. Valid values: REPOSITORY, API"
  type        = string
}
variable "service_name" {
  description = "(Forces new resource) Name of the service."
  type        = string
}
variable "unhealthy_threshold" {
  description = "(Optional) Number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of  1. Maximum value of 20.Instance ConfigurationThe instance_configuration block supports the following arguments:"
  type        = string
}
variable "access_role_arn" {
  description = "(Optional) ARN of the IAM role that grants the App Runner service access to a source repository. Required for ECR image repositories (but not for ECR Public)"
  type        = string
}
variable "service_id" {
  description = "An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region."
  type        = string
}
variable "auto_scaling_configuration_arn" {
  description = "ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration."
  type        = string
}
variable "ingress_configuration" {
  description = "(Optional) Network configuration settings for inbound network traffic. See Ingress Configuration below for more details."
  type        = string
}
variable "port" {
  description = "(Optional) Port that your application listens to in the container. Defaults to \"8080\"."
  type        = string
}
variable "type" {
  description = "(Required) Type of version identifier. For a git-based repository, branches represent versions. Valid values: BRANCH."
  type        = string
}
variable "arn" {
  description = "ARN of the App Runner service."
  type        = string
}
variable "health_check_configuration" {
  description = "(Forces new resource) Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details."
  type        = string
}
variable "network_configuration" {
  description = "Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details."
  type        = string
}
variable "egress_type" {
  description = "The type of egress configuration. Valid values are: DEFAULT and VPC."
  type        = string
}
variable "healthy_threshold" {
  description = "(Optional) Number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 1. Minimum value of 1. Maximum value of 20."
  type        = string
}
variable "image_repository" {
  description = "(Optional) Description of a source image repository. See Image Repository below for more details.Authentication ConfigurationThe authentication_configuration block supports the following arguments:"
  type        = string
}
variable "instance_configuration" {
  description = "The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details."
  type        = string
}
variable "kms_key" {
  description = "(Required) ARN of the KMS key used for encryption.Health Check ConfigurationThe health_check_configuration block supports the following arguments:"
  type        = string
}
variable "protocol" {
  description = "(Optional) IP protocol that App Runner uses to perform health checks for your service. Valid values: TCP, HTTP. Defaults to TCP. If you set protocol to HTTP, App Runner sends health check requests to the HTTP path specified by path."
  type        = string
}
variable "authentication_configuration" {
  description = "(Optional) Describes resources needed to authenticate access to some source repositories. See Authentication Configuration below for more details."
  type        = string
}
variable "start_command" {
  description = "(Optional) Command App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start command.Source Code VersionThe source_code_version block supports the following arguments:"
  type        = string
}
variable "image_repository_type" {
  description = "(Required) Type of the image repository. This reflects the repository provider and whether the repository is private or public. Valid values: ECR , ECR_PUBLIC.Code ConfigurationThe code_configuration block supports the following arguments:"
  type        = string
}
variable "memory" {
  description = "(Optional) Amount of memory, in MB or GB, reserved for each instance of your App Runner service. Defaults to 2048. Valid values: 2048|3072|4096|(2|3|4) GB.Source ConfigurationThe source_configuration block supports the following arguments:~>strongNote: Either code_repository or image_repository must be specified (but not both)."
  type        = string
}
variable "status" {
  description = "Current state of the App Runner service."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "image_identifier" {
  description = "(Required) Identifier of an image. For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the\nimage name format, see Pulling an image in the Amazon ECR User Guide."
  type        = string
}
variable "REPOSITORY" {
  description = "App Runner reads configuration values from the apprunner.yaml file in the\nsource code repository and ignores the CodeConfigurationValues parameter."
  type        = string
}
variable "build_command" {
  description = "(Optional) Command App Runner runs to build your application."
  type        = string
}
variable "connection_arn" {
  description = "(Optional) ARN of the App Runner connection that enables the App Runner service to connect to a source repository. Required for GitHub code repositories.Network ConfigurationThe network_configuration block supports the following arguments:"
  type        = string
}
variable "instance_role_arn" {
  description = "(Optional) ARN of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls any AWS APIs."
  type        = string
}
variable "API" {
  description = "App Runner uses configuration values provided in the CodeConfigurationValues\nparameter and ignores the apprunner.yaml file in the source code repository.Code Configuration ValuesThe code_configuration_values blocks supports the following arguments:"
  type        = string
}
variable "source_code_version" {
  description = "(Required) Version that should be used within the source code repository. See Source Code Version below for more details.Image RepositoryThe image_repository block supports the following arguments:"
  type        = string
}
variable "source_configuration" {
  description = "The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details."
  type        = string
}
variable "tags" {
  description = "Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Encryption ConfigurationThe encryption_configuration block supports the following argument:"
  type        = string
}
variable "vpc_connector_arn" {
  description = "The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when EgressType = VPC.Observability ConfigurationThe observability_configuration block supports the following arguments:"
  type        = string
}
variable "code_repository" {
  description = "(Optional) Description of a source code repository. See Code Repository below for more details."
  type        = string
}
variable "is_publicly_accessible" {
  description = "(Required) Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to True. To make the service privately accessible, from only within an Amazon VPC set it to False.Egress ConfigurationThe egress_configuration block supports the following argument:"
  type        = string
}
variable "runtime" {
  description = "(Required) Runtime environment type for building and running an App Runner service. Represents a programming language runtime. Valid values: PYTHON_3, NODEJS_12, NODEJS_14, NODEJS_16, CORRETTO_8, CORRETTO_11, GO_1, DOTNET_6, PHP_81, RUBY_31."
  type        = string
}
variable "cpu" {
  description = "(Optional) Number of CPU units reserved for each instance of your App Runner service represented as a String. Defaults to 1024. Valid values: 1024|2048|(1|2) vCPU."
  type        = string
}
variable "image_configuration" {
  description = "(Optional) Configuration for running the identified image. See Image Configuration below for more details."
  type        = string
}
variable "interval" {
  description = "(Optional) Time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20."
  type        = string
}
variable "path" {
  description = "(Optional) URL to send requests to for health checks. Defaults to /. Minimum length of 0. Maximum length of 51200."
  type        = string
}
variable "encryption_configuration" {
  description = "(Forces new resource) An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details."
  type        = string
}
variable "observability_enabled" {
  description = "(Required) When true, an observability configuration resource is associated with the service.Code RepositoryThe code_repository block supports the following arguments:"
  type        = string
}
variable "repository_url" {
  description = "(Required) Location of the repository that contains the source code."
  type        = string
}
variable "auto_deployments_enabled" {
  description = "(Optional) Whether continuous integration from the source repository is enabled for the App Runner service. If set to true, each repository change (source code commit or new image version) starts a deployment. Defaults to true."
  type        = string
}
variable "observability_configuration" {
  description = "The observability configuration of your service. See Observability Configuration below for more details."
  type        = string
}
variable "observability_configuration_arn" {
  description = "(Required) ARN of the observability configuration that is associated with the service."
  type        = string
}
variable "code_configuration" {
  description = "(Optional) Configuration for building and running the service from a source code repository. See Code Configuration below for more details."
  type        = string
}
variable "runtime_environment_variables" {
  description = "(Optional) Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of AWSAPPRUNNER are reserved for system use and aren't valid."
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
output "connection_arn" {
  description = "(Optional) ARN of the App Runner connection that enables the App Runner service to connect to a source repository. Required for GitHub code repositories.Network ConfigurationThe network_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.connection_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_role_arn" {
  description = "(Optional) ARN of an IAM role that provides permissions to your App Runner service. These are permissions that your code needs when it calls any AWS APIs."
  value       = aws_apprunner_service.aws_apprunner_service.instance_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "API" {
  description = "App Runner uses configuration values provided in the CodeConfigurationValues\nparameter and ignores the apprunner.yaml file in the source code repository.Code Configuration ValuesThe code_configuration_values blocks supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.API
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "REPOSITORY" {
  description = "App Runner reads configuration values from the apprunner.yaml file in the\nsource code repository and ignores the CodeConfigurationValues parameter."
  value       = aws_apprunner_service.aws_apprunner_service.REPOSITORY
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_command" {
  description = "(Optional) Command App Runner runs to build your application."
  value       = aws_apprunner_service.aws_apprunner_service.build_command
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Encryption ConfigurationThe encryption_configuration block supports the following argument:"
  value       = aws_apprunner_service.aws_apprunner_service.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_connector_arn" {
  description = "The Amazon Resource Name (ARN) of the App Runner VPC connector that you want to associate with your App Runner service. Only valid when EgressType = VPC.Observability ConfigurationThe observability_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.vpc_connector_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_repository" {
  description = "(Optional) Description of a source code repository. See Code Repository below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.code_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_code_version" {
  description = "(Required) Version that should be used within the source code repository. See Source Code Version below for more details.Image RepositoryThe image_repository block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.source_code_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_configuration" {
  description = "The source to deploy to the App Runner service. Can be a code or an image repository. See Source Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.source_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cpu" {
  description = "(Optional) Number of CPU units reserved for each instance of your App Runner service represented as a String. Defaults to 1024. Valid values: 1024|2048|(1|2) vCPU."
  value       = aws_apprunner_service.aws_apprunner_service.cpu
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "is_publicly_accessible" {
  description = "(Required) Specifies whether your App Runner service is publicly accessible. To make the service publicly accessible set it to True. To make the service privately accessible, from only within an Amazon VPC set it to False.Egress ConfigurationThe egress_configuration block supports the following argument:"
  value       = aws_apprunner_service.aws_apprunner_service.is_publicly_accessible
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime" {
  description = "(Required) Runtime environment type for building and running an App Runner service. Represents a programming language runtime. Valid values: PYTHON_3, NODEJS_12, NODEJS_14, NODEJS_16, CORRETTO_8, CORRETTO_11, GO_1, DOTNET_6, PHP_81, RUBY_31."
  value       = aws_apprunner_service.aws_apprunner_service.runtime
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "interval" {
  description = "(Optional) Time interval, in seconds, between health checks. Defaults to 5. Minimum value of 1. Maximum value of 20."
  value       = aws_apprunner_service.aws_apprunner_service.interval
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Optional) URL to send requests to for health checks. Defaults to /. Minimum length of 0. Maximum length of 51200."
  value       = aws_apprunner_service.aws_apprunner_service.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_configuration" {
  description = "(Optional) Configuration for running the identified image. See Image Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.image_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "observability_enabled" {
  description = "(Required) When true, an observability configuration resource is associated with the service.Code RepositoryThe code_repository block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.observability_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "repository_url" {
  description = "(Required) Location of the repository that contains the source code."
  value       = aws_apprunner_service.aws_apprunner_service.repository_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_deployments_enabled" {
  description = "(Optional) Whether continuous integration from the source repository is enabled for the App Runner service. If set to true, each repository change (source code commit or new image version) starts a deployment. Defaults to true."
  value       = aws_apprunner_service.aws_apprunner_service.auto_deployments_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_configuration" {
  description = "(Forces new resource) An optional custom encryption key that App Runner uses to encrypt the copy of your source repository that it maintains and your service logs. By default, App Runner uses an AWS managed CMK. See Encryption Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.encryption_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "observability_configuration_arn" {
  description = "(Required) ARN of the observability configuration that is associated with the service."
  value       = aws_apprunner_service.aws_apprunner_service.observability_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "observability_configuration" {
  description = "The observability configuration of your service. See Observability Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.observability_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "runtime_environment_variables" {
  description = "(Optional) Environment variables available to your running App Runner service. A map of key/value pairs. Keys with a prefix of AWSAPPRUNNER are reserved for system use and aren't valid."
  value       = aws_apprunner_service.aws_apprunner_service.runtime_environment_variables
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_configuration" {
  description = "(Optional) Configuration for building and running the service from a source code repository. See Code Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.code_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout" {
  description = "(Optional) Time, in seconds, to wait for a health check response before deciding it failed. Defaults to 2. Minimum value of  1. Maximum value of 20."
  value       = aws_apprunner_service.aws_apprunner_service.timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "- (Required) Source code version. For a git-based repository, a branch name maps to a specific version. App Runner uses the most recent commit to the branch.In addition to all arguments above, the following attributes are exported:"
  value       = aws_apprunner_service.aws_apprunner_service.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "code_configuration_values" {
  description = "(Optional) Basic configuration for building and running the App Runner service. Use this parameter to quickly launch an App Runner service without providing an apprunner.yaml file in the source code repository (or ignoring the file if it exists). See Code Configuration Values below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.code_configuration_values
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_configuration" {
  description = "(Optional) Network configuration settings for outbound message traffic. See Egress Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.egress_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_url" {
  description = "Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application."
  value       = aws_apprunner_service.aws_apprunner_service.service_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "unhealthy_threshold" {
  description = "(Optional) Number of consecutive checks that must fail before App Runner decides that the service is unhealthy. Defaults to 5. Minimum value of  1. Maximum value of 20.Instance ConfigurationThe instance_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.unhealthy_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "access_role_arn" {
  description = "(Optional) ARN of the IAM role that grants the App Runner service access to a source repository. Required for ECR image repositories (but not for ECR Public)"
  value       = aws_apprunner_service.aws_apprunner_service.access_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "configuration_source" {
  description = "(Required) Source of the App Runner configuration. Valid values: REPOSITORY, API"
  value       = aws_apprunner_service.aws_apprunner_service.configuration_source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_name" {
  description = "(Forces new resource) Name of the service."
  value       = aws_apprunner_service.aws_apprunner_service.service_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_id" {
  description = "An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region."
  value       = aws_apprunner_service.aws_apprunner_service.service_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ingress_configuration" {
  description = "(Optional) Network configuration settings for inbound network traffic. See Ingress Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.ingress_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "port" {
  description = "(Optional) Port that your application listens to in the container. Defaults to \"8080\"."
  value       = aws_apprunner_service.aws_apprunner_service.port
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required) Type of version identifier. For a git-based repository, branches represent versions. Valid values: BRANCH."
  value       = aws_apprunner_service.aws_apprunner_service.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the App Runner service."
  value       = aws_apprunner_service.aws_apprunner_service.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auto_scaling_configuration_arn" {
  description = "ARN of an App Runner automatic scaling configuration resource that you want to associate with your service. If not provided, App Runner associates the latest revision of a default auto scaling configuration."
  value       = aws_apprunner_service.aws_apprunner_service.auto_scaling_configuration_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "health_check_configuration" {
  description = "(Forces new resource) Settings of the health check that AWS App Runner performs to monitor the health of your service. See Health Check Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.health_check_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "egress_type" {
  description = "The type of egress configuration. Valid values are: DEFAULT and VPC."
  value       = aws_apprunner_service.aws_apprunner_service.egress_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "network_configuration" {
  description = "Configuration settings related to network traffic of the web application that the App Runner service runs. See Network Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.network_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_repository" {
  description = "(Optional) Description of a source image repository. See Image Repository below for more details.Authentication ConfigurationThe authentication_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.image_repository
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "instance_configuration" {
  description = "The runtime configuration of instances (scaling units) of the App Runner service. See Instance Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.instance_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "kms_key" {
  description = "(Required) ARN of the KMS key used for encryption.Health Check ConfigurationThe health_check_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.kms_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "protocol" {
  description = "(Optional) IP protocol that App Runner uses to perform health checks for your service. Valid values: TCP, HTTP. Defaults to TCP. If you set protocol to HTTP, App Runner sends health check requests to the HTTP path specified by path."
  value       = aws_apprunner_service.aws_apprunner_service.protocol
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "authentication_configuration" {
  description = "(Optional) Describes resources needed to authenticate access to some source repositories. See Authentication Configuration below for more details."
  value       = aws_apprunner_service.aws_apprunner_service.authentication_configuration
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "healthy_threshold" {
  description = "(Optional) Number of consecutive checks that must succeed before App Runner decides that the service is healthy. Defaults to 1. Minimum value of 1. Maximum value of 20."
  value       = aws_apprunner_service.aws_apprunner_service.healthy_threshold
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "start_command" {
  description = "(Optional) Command App Runner runs to start the application in the source image. If specified, this command overrides the Docker image’s default start command.Source Code VersionThe source_code_version block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.start_command
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current state of the App Runner service."
  value       = aws_apprunner_service.aws_apprunner_service.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_apprunner_service.aws_apprunner_service.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_identifier" {
  description = "(Required) Identifier of an image. For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the\nimage name format, see Pulling an image in the Amazon ECR User Guide."
  value       = aws_apprunner_service.aws_apprunner_service.image_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_repository_type" {
  description = "(Required) Type of the image repository. This reflects the repository provider and whether the repository is private or public. Valid values: ECR , ECR_PUBLIC.Code ConfigurationThe code_configuration block supports the following arguments:"
  value       = aws_apprunner_service.aws_apprunner_service.image_repository_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "memory" {
  description = "(Optional) Amount of memory, in MB or GB, reserved for each instance of your App Runner service. Defaults to 2048. Valid values: 2048|3072|4096|(2|3|4) GB.Source ConfigurationThe source_configuration block supports the following arguments:~>strongNote: Either code_repository or image_repository must be specified (but not both)."
  value       = aws_apprunner_service.aws_apprunner_service.memory
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_apprunner_service.aws_apprunner_service.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the App Runner service."
  value       = aws_apprunner_service.aws_apprunner_service.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_id" {
  description = "An alphanumeric ID that App Runner generated for this service. Unique within the AWS Region."
  value       = aws_apprunner_service.aws_apprunner_service.service_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_url" {
  description = "Subdomain URL that App Runner generated for this service. You can use this URL to access your service web application."
  value       = aws_apprunner_service.aws_apprunner_service.service_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current state of the App Runner service."
  value       = aws_apprunner_service.aws_apprunner_service.status
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
      "kind/name"                   = "aws_apprunner_service"
      "kind/version"                = "v0.1.0"
    }
  }
}
