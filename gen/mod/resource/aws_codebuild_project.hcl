resource "aws_codebuild_project" "aws_codebuild_project" {
  secondary_source_version    = var.secondary_source_version
  tags                        = var.tags
  artifacts                   = var.artifacts
  build_batch_config          = var.build_batch_config
  certificate                 = var.certificate
  id                          = var.id
  privileged_mode             = var.privileged_mode
  vpc_config                  = var.vpc_config
  cloudwatch_logs             = var.cloudwatch_logs
  maximum_builds_allowed      = var.maximum_builds_allowed
  packaging                   = var.packaging
  path                        = var.path
  resource_access_role        = var.resource_access_role
  context                     = var.context
  secondary_sources           = var.secondary_sources
  subnets                     = var.subnets
  value                       = var.value
  concurrent_build_limit      = var.concurrent_build_limit
  identifier                  = var.identifier
  namespace_type              = var.namespace_type
  queued_timeout              = var.queued_timeout
  bucket_owner_access         = var.bucket_owner_access
  build_status_config         = var.build_status_config
  image_pull_credentials_type = var.image_pull_credentials_type
  badge_enabled               = var.badge_enabled
  encryption_disabled         = var.encryption_disabled
  source_version              = var.source_version
  type                        = var.type
  modes                       = var.modes
  public_project_alias        = var.public_project_alias
  security_group_ids          = var.security_group_ids
  target_url                  = var.target_url
  build_timeout               = var.build_timeout
  image                       = var.image
  location                    = var.location
  s3_logs                     = var.s3_logs
  restrictions                = var.restrictions
  buildspec                   = var.buildspec
  cache                       = var.cache
  environment_variable        = var.environment_variable
  group_name                  = var.group_name
  mount_options               = var.mount_options
  override_artifact_name      = var.override_artifact_name
  registry_credential         = var.registry_credential
  status                      = var.status
  description                 = var.description
  encryption_key              = var.encryption_key
  git_submodules_config       = var.git_submodules_config
  secondary_artifacts         = var.secondary_artifacts
  tags_all                    = var.tags_all
  fetch_submodules            = var.fetch_submodules
  resource                    = var.resource
  arn                         = var.arn
  auth                        = var.auth
  badge_url                   = var.badge_url
  compute_type                = var.compute_type
  credential                  = var.credential
  environment                 = var.environment
  logs_config                 = var.logs_config
  name                        = var.name
  stream_name                 = var.stream_name
  combine_artifacts           = var.combine_artifacts
  credential_provider         = var.credential_provider
  file_system_locations       = var.file_system_locations
  vpc_id                      = var.vpc_id
  project_visibility          = var.project_visibility
  report_build_status         = var.report_build_status
  service_role                = var.service_role
  artifact_identifier         = var.artifact_identifier
  compute_types_allowed       = var.compute_types_allowed
  git_clone_depth             = var.git_clone_depth
  insecure_ssl                = var.insecure_ssl
  mount_point                 = var.mount_point
  source                      = var.source
  source_identifier           = var.source_identifier
  timeout_in_mins             = var.timeout_in_mins
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "environment" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "logs_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "name" {
  description = "(Optional) Name of the project. If type is set to S3, this is the name of the output artifact object"
  type        = string
}
variable "stream_name" {
  description = "(Optional) Stream name of the logs in CloudWatch Logs.logs_config: s3_logs"
  type        = string
}
variable "combine_artifacts" {
  description = "(Optional) Specifies if the build artifacts for the batch build should be combined into a single artifact location."
  type        = string
}
variable "credential_provider" {
  description = "(Required) Service that created the credentials to access a private Docker registry. Valid value: SECRETS_MANAGER (AWS Secrets Manager).logs_config"
  type        = string
}
variable "file_system_locations" {
  description = "(Optional) A set of file system locations to to mount inside the build. File system locations are documented below."
  type        = string
}
variable "vpc_id" {
  description = "(Required) ID of the VPC within which to run builds.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "service_role" {
  description = "(Required) Specifies the service role ARN for the batch build project."
  type        = string
}
variable "artifact_identifier" {
  description = "(Required) Artifact identifier. Must be the same specified inside the AWS CodeBuild build specification."
  type        = string
}
variable "compute_types_allowed" {
  description = "(Optional) An array of strings that specify the compute types that are allowed for the batch build. See Build environment compute types in the AWS CodeBuild User Guide for these values."
  type        = string
}
variable "git_clone_depth" {
  description = "(Optional) Truncate git history to this many commits. Use 0 for a Full checkout which you need to run commands like git branch --show-current. See AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source for details."
  type        = string
}
variable "insecure_ssl" {
  description = "(Optional) Ignore SSL warnings when connecting to source control."
  type        = string
}
variable "mount_point" {
  description = "(Optional) The location in the container where you mount the file system."
  type        = string
}
variable "project_visibility" {
  description = "(Optional) Specifies the visibility of the project's builds. Possible values are: PUBLIC_READ and PRIVATE. Default value is PRIVATE."
  type        = string
}
variable "report_build_status" {
  description = "(Optional) Whether to report the status of a build's start and finish to your source provider. This option is only valid when the type is BITBUCKET or GITHUB."
  type        = string
}
variable "source" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "source_identifier" {
  description = "(Required) An identifier for a source in the build project."
  type        = string
}
variable "timeout_in_mins" {
  description = "(Optional) Specifies the maximum amount of time, in minutes, that the batch build must be completed in.restrictions"
  type        = string
}
variable "artifacts" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "build_batch_config" {
  description = "(Optional) Defines the batch build options for the project."
  type        = string
}
variable "certificate" {
  description = "(Optional) ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate."
  type        = string
}
variable "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  type        = string
}
variable "privileged_mode" {
  description = "(Optional) Whether to enable running the Docker daemon inside a Docker container. Defaults to false."
  type        = string
}
variable "secondary_source_version" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
}
variable "cloudwatch_logs" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "maximum_builds_allowed" {
  description = "(Optional) Specifies the maximum number of builds allowed.cache"
  type        = string
}
variable "packaging" {
  description = "(Optional) Type of build output artifact to create. If type is set to S3, valid values are NONE, ZIP"
  type        = string
}
variable "path" {
  description = "(Optional) If type is set to S3, this is the path to the output artifact."
  type        = string
}
variable "resource_access_role" {
  description = "The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds."
  type        = string
}
variable "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.artifacts"
  type        = string
}
variable "context" {
  description = "(Optional) Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider."
  type        = string
}
variable "secondary_sources" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "subnets" {
  description = "(Required) Subnet IDs within which to run builds."
  type        = string
}
variable "value" {
  description = "(Required) Environment variable's value.environment: registry_credentialCredentials for access to a private Docker registry."
  type        = string
}
variable "concurrent_build_limit" {
  description = "(Optional) Specify a maximum number of concurrent builds for the project. The value specified must be greater than 0 and less than the account concurrent running builds limit."
  type        = string
}
variable "identifier" {
  description = "(Optional) The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the identifier in all capital letters to CODEBUILD_. For example, if you specify my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS."
  type        = string
}
variable "namespace_type" {
  description = "(Optional) Namespace to use in storing build artifacts. If type is set to S3, then valid values are BUILD_ID or NONE."
  type        = string
}
variable "queued_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it times out. The default is 8 hours."
  type        = string
}
variable "bucket_owner_access" {
  description = "(Optional) Specifies the bucket owner's access for objects that another account uploads to their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these objects. This property allows you to give the bucket owner access to these objects. Valid values are NONE, READ_ONLY, and FULL. your CodeBuild service role must have the s3:PutBucketAcl permission. This permission allows CodeBuild to modify the access control list for the bucket."
  type        = string
}
variable "build_status_config" {
  description = "(Optional) Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is GITHUB, GITHUB_ENTERPRISE, or BITBUCKET."
  type        = string
}
variable "image_pull_credentials_type" {
  description = "(Optional) Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE. When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to CODEBUILD."
  type        = string
}
variable "badge_enabled" {
  description = "(Optional) Generates a publicly-accessible URL for the projects build badge. Available as badge_url attribute when enabled."
  type        = string
}
variable "encryption_disabled" {
  description = "(Optional) Whether to disable encrypting output artifacts. If type is set to NO_ARTIFACTS, this value is ignored. Defaults to false."
  type        = string
}
variable "source_version" {
  description = "(Required) The source version for the corresponding source identifier. See AWS docs for more details.source"
  type        = string
}
variable "type" {
  description = "(Required, strongDeprecated) Authorization type to use. The only valid value is OAUTH. This data type is deprecated and is no longer accurate or used. Use the aws_codebuild_source_credential resource instead.source: git_submodules_configThis block is only valid when the type is CODECOMMIT, GITHUB or GITHUB_ENTERPRISE."
  type        = string
}
variable "modes" {
  description = "(Required when cache type is LOCAL) Specifies settings that AWS CodeBuild uses to store and reuse build dependencies. Valid values:  LOCAL_SOURCE_CACHE, LOCAL_DOCKER_LAYER_CACHE, LOCAL_CUSTOM_CACHE."
  type        = string
}
variable "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  type        = string
}
variable "security_group_ids" {
  description = "(Required) Security group IDs to assign to running builds."
  type        = string
}
variable "target_url" {
  description = "(Optional) Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.secondary_source_version"
  type        = string
}
variable "build_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes."
  type        = string
}
variable "image" {
  description = "(Required) Docker image to use for this build project. Valid values include Docker images provided by CodeBuild (e.g aws/codebuild/standard:2.0), Docker Hub images (e.g., hashicorp/terraform:latest), and full Docker repository URIs such as those for ECR (e.g., 137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest)."
  type        = string
}
variable "location" {
  description = "(Optional) A string that specifies the location of the file system created by Amazon EFS. Its format is efs-dns-name:/directory-path."
  type        = string
}
variable "s3_logs" {
  description = "(Optional) Configuration block. Detailed below.logs_config: cloudwatch_logs"
  type        = string
}
variable "buildspec" {
  description = "(Optional) Build specification to use for this build project's related builds. This must be set when type is NO_SOURCE."
  type        = string
}
variable "cache" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "environment_variable" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "group_name" {
  description = "(Optional) Group name of the logs in CloudWatch Logs."
  type        = string
}
variable "mount_options" {
  description = "(Optional) The mount options for a file system created by AWS EFS."
  type        = string
}
variable "restrictions" {
  description = "(Optional) Specifies the restrictions for the batch build."
  type        = string
}
variable "override_artifact_name" {
  description = " (Optional) Whether a name specified in the build specification overrides the artifact name."
  type        = string
}
variable "registry_credential" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "status" {
  description = "(Optional) Current status of logs in S3 for a build project. Valid values: ENABLED, DISABLED. Defaults to DISABLED."
  type        = string
}
variable "description" {
  description = "(Optional) Short description of the project."
  type        = string
}
variable "encryption_key" {
  description = "(Optional) AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build project's build output artifacts."
  type        = string
}
variable "git_submodules_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "secondary_artifacts" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "arn" {
  description = "ARN of the CodeBuild project."
  type        = string
}
variable "auth" {
  description = "(Optional, strongDeprecated) Configuration block with the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Use the aws_codebuild_source_credential resource instead. Auth blocks are documented below."
  type        = string
}
variable "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
  type        = string
}
variable "compute_type" {
  description = "(Required) Information about the compute resources the build project will use. Valid values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE. BUILD_GENERAL1_SMALL is only valid if type is set to LINUX_CONTAINER. When type is set to LINUX_GPU_CONTAINER, compute_type must be BUILD_GENERAL1_LARGE."
  type        = string
}
variable "credential" {
  description = "(Required) ARN or name of credentials created using AWS Secrets Manager."
  type        = string
}
variable "fetch_submodules" {
  description = "(Required) Whether to fetch Git submodules for the AWS CodeBuild build project.vpc_config"
  type        = string
}
variable "resource" {
  description = "(Optional, strongDeprecated) Resource value that applies to the specified authorization type. Use the aws_codebuild_source_credential resource instead."
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
output "modes" {
  description = "(Required when cache type is LOCAL) Specifies settings that AWS CodeBuild uses to store and reuse build dependencies. Valid values:  LOCAL_SOURCE_CACHE, LOCAL_DOCKER_LAYER_CACHE, LOCAL_CUSTOM_CACHE."
  value       = aws_codebuild_project.aws_codebuild_project.modes
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  value       = aws_codebuild_project.aws_codebuild_project.public_project_alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "security_group_ids" {
  description = "(Required) Security group IDs to assign to running builds."
  value       = aws_codebuild_project.aws_codebuild_project.security_group_ids
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "target_url" {
  description = "(Optional) Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.secondary_source_version"
  value       = aws_codebuild_project.aws_codebuild_project.target_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes."
  value       = aws_codebuild_project.aws_codebuild_project.build_timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image" {
  description = "(Required) Docker image to use for this build project. Valid values include Docker images provided by CodeBuild (e.g aws/codebuild/standard:2.0), Docker Hub images (e.g., hashicorp/terraform:latest), and full Docker repository URIs such as those for ECR (e.g., 137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest)."
  value       = aws_codebuild_project.aws_codebuild_project.image
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "location" {
  description = "(Optional) A string that specifies the location of the file system created by Amazon EFS. Its format is efs-dns-name:/directory-path."
  value       = aws_codebuild_project.aws_codebuild_project.location
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "s3_logs" {
  description = "(Optional) Configuration block. Detailed below.logs_config: cloudwatch_logs"
  value       = aws_codebuild_project.aws_codebuild_project.s3_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "buildspec" {
  description = "(Optional) Build specification to use for this build project's related builds. This must be set when type is NO_SOURCE."
  value       = aws_codebuild_project.aws_codebuild_project.buildspec
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cache" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.cache
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment_variable" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.environment_variable
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "group_name" {
  description = "(Optional) Group name of the logs in CloudWatch Logs."
  value       = aws_codebuild_project.aws_codebuild_project.group_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mount_options" {
  description = "(Optional) The mount options for a file system created by AWS EFS."
  value       = aws_codebuild_project.aws_codebuild_project.mount_options
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "restrictions" {
  description = "(Optional) Specifies the restrictions for the batch build."
  value       = aws_codebuild_project.aws_codebuild_project.restrictions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "override_artifact_name" {
  description = " (Optional) Whether a name specified in the build specification overrides the artifact name."
  value       = aws_codebuild_project.aws_codebuild_project.override_artifact_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "registry_credential" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.registry_credential
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "(Optional) Current status of logs in S3 for a build project. Valid values: ENABLED, DISABLED. Defaults to DISABLED."
  value       = aws_codebuild_project.aws_codebuild_project.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = "(Optional) Short description of the project."
  value       = aws_codebuild_project.aws_codebuild_project.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_key" {
  description = "(Optional) AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build project's build output artifacts."
  value       = aws_codebuild_project.aws_codebuild_project.encryption_key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "git_submodules_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.git_submodules_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_artifacts" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_artifacts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codebuild_project.aws_codebuild_project.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource" {
  description = "(Optional, strongDeprecated) Resource value that applies to the specified authorization type. Use the aws_codebuild_source_credential resource instead."
  value       = aws_codebuild_project.aws_codebuild_project.resource
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "auth" {
  description = "(Optional, strongDeprecated) Configuration block with the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Use the aws_codebuild_source_credential resource instead. Auth blocks are documented below."
  value       = aws_codebuild_project.aws_codebuild_project.auth
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_type" {
  description = "(Required) Information about the compute resources the build project will use. Valid values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE. BUILD_GENERAL1_SMALL is only valid if type is set to LINUX_CONTAINER. When type is set to LINUX_GPU_CONTAINER, compute_type must be BUILD_GENERAL1_LARGE."
  value       = aws_codebuild_project.aws_codebuild_project.compute_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "credential" {
  description = "(Required) ARN or name of credentials created using AWS Secrets Manager."
  value       = aws_codebuild_project.aws_codebuild_project.credential
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "fetch_submodules" {
  description = "(Required) Whether to fetch Git submodules for the AWS CodeBuild build project.vpc_config"
  value       = aws_codebuild_project.aws_codebuild_project.fetch_submodules
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "environment" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.environment
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "logs_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.logs_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Optional) Name of the project. If type is set to S3, this is the name of the output artifact object"
  value       = aws_codebuild_project.aws_codebuild_project.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stream_name" {
  description = "(Optional) Stream name of the logs in CloudWatch Logs.logs_config: s3_logs"
  value       = aws_codebuild_project.aws_codebuild_project.stream_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "combine_artifacts" {
  description = "(Optional) Specifies if the build artifacts for the batch build should be combined into a single artifact location."
  value       = aws_codebuild_project.aws_codebuild_project.combine_artifacts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "credential_provider" {
  description = "(Required) Service that created the credentials to access a private Docker registry. Valid value: SECRETS_MANAGER (AWS Secrets Manager).logs_config"
  value       = aws_codebuild_project.aws_codebuild_project.credential_provider
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "file_system_locations" {
  description = "(Optional) A set of file system locations to to mount inside the build. File system locations are documented below."
  value       = aws_codebuild_project.aws_codebuild_project.file_system_locations
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_id" {
  description = "(Required) ID of the VPC within which to run builds.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codebuild_project.aws_codebuild_project.vpc_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "report_build_status" {
  description = "(Optional) Whether to report the status of a build's start and finish to your source provider. This option is only valid when the type is BITBUCKET or GITHUB."
  value       = aws_codebuild_project.aws_codebuild_project.report_build_status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "service_role" {
  description = "(Required) Specifies the service role ARN for the batch build project."
  value       = aws_codebuild_project.aws_codebuild_project.service_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "artifact_identifier" {
  description = "(Required) Artifact identifier. Must be the same specified inside the AWS CodeBuild build specification."
  value       = aws_codebuild_project.aws_codebuild_project.artifact_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "compute_types_allowed" {
  description = "(Optional) An array of strings that specify the compute types that are allowed for the batch build. See Build environment compute types in the AWS CodeBuild User Guide for these values."
  value       = aws_codebuild_project.aws_codebuild_project.compute_types_allowed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "git_clone_depth" {
  description = "(Optional) Truncate git history to this many commits. Use 0 for a Full checkout which you need to run commands like git branch --show-current. See AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source for details."
  value       = aws_codebuild_project.aws_codebuild_project.git_clone_depth
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "insecure_ssl" {
  description = "(Optional) Ignore SSL warnings when connecting to source control."
  value       = aws_codebuild_project.aws_codebuild_project.insecure_ssl
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "mount_point" {
  description = "(Optional) The location in the container where you mount the file system."
  value       = aws_codebuild_project.aws_codebuild_project.mount_point
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "project_visibility" {
  description = "(Optional) Specifies the visibility of the project's builds. Possible values are: PUBLIC_READ and PRIVATE. Default value is PRIVATE."
  value       = aws_codebuild_project.aws_codebuild_project.project_visibility
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.source
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_identifier" {
  description = "(Required) An identifier for a source in the build project."
  value       = aws_codebuild_project.aws_codebuild_project.source_identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "timeout_in_mins" {
  description = "(Optional) Specifies the maximum amount of time, in minutes, that the batch build must be completed in.restrictions"
  value       = aws_codebuild_project.aws_codebuild_project.timeout_in_mins
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_codebuild_project.aws_codebuild_project.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "artifacts" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.artifacts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_batch_config" {
  description = "(Optional) Defines the batch build options for the project."
  value       = aws_codebuild_project.aws_codebuild_project.build_batch_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate" {
  description = "(Optional) ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate."
  value       = aws_codebuild_project.aws_codebuild_project.certificate
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "privileged_mode" {
  description = "(Optional) Whether to enable running the Docker daemon inside a Docker container. Defaults to false."
  value       = aws_codebuild_project.aws_codebuild_project.privileged_mode
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_source_version" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_source_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_logs" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.cloudwatch_logs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "maximum_builds_allowed" {
  description = "(Optional) Specifies the maximum number of builds allowed.cache"
  value       = aws_codebuild_project.aws_codebuild_project.maximum_builds_allowed
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "packaging" {
  description = "(Optional) Type of build output artifact to create. If type is set to S3, valid values are NONE, ZIP"
  value       = aws_codebuild_project.aws_codebuild_project.packaging
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path" {
  description = "(Optional) If type is set to S3, this is the path to the output artifact."
  value       = aws_codebuild_project.aws_codebuild_project.path
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "resource_access_role" {
  description = "The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds."
  value       = aws_codebuild_project.aws_codebuild_project.resource_access_role
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.artifacts"
  value       = aws_codebuild_project.aws_codebuild_project.vpc_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "context" {
  description = "(Optional) Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider."
  value       = aws_codebuild_project.aws_codebuild_project.context
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "secondary_sources" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_sources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "subnets" {
  description = "(Required) Subnet IDs within which to run builds."
  value       = aws_codebuild_project.aws_codebuild_project.subnets
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "(Required) Environment variable's value.environment: registry_credentialCredentials for access to a private Docker registry."
  value       = aws_codebuild_project.aws_codebuild_project.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "concurrent_build_limit" {
  description = "(Optional) Specify a maximum number of concurrent builds for the project. The value specified must be greater than 0 and less than the account concurrent running builds limit."
  value       = aws_codebuild_project.aws_codebuild_project.concurrent_build_limit
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "identifier" {
  description = "(Optional) The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the identifier in all capital letters to CODEBUILD_. For example, if you specify my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS."
  value       = aws_codebuild_project.aws_codebuild_project.identifier
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "namespace_type" {
  description = "(Optional) Namespace to use in storing build artifacts. If type is set to S3, then valid values are BUILD_ID or NONE."
  value       = aws_codebuild_project.aws_codebuild_project.namespace_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "queued_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it times out. The default is 8 hours."
  value       = aws_codebuild_project.aws_codebuild_project.queued_timeout
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "bucket_owner_access" {
  description = "(Optional) Specifies the bucket owner's access for objects that another account uploads to their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these objects. This property allows you to give the bucket owner access to these objects. Valid values are NONE, READ_ONLY, and FULL. your CodeBuild service role must have the s3:PutBucketAcl permission. This permission allows CodeBuild to modify the access control list for the bucket."
  value       = aws_codebuild_project.aws_codebuild_project.bucket_owner_access
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "build_status_config" {
  description = "(Optional) Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is GITHUB, GITHUB_ENTERPRISE, or BITBUCKET."
  value       = aws_codebuild_project.aws_codebuild_project.build_status_config
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "image_pull_credentials_type" {
  description = "(Optional) Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE. When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to CODEBUILD."
  value       = aws_codebuild_project.aws_codebuild_project.image_pull_credentials_type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "badge_enabled" {
  description = "(Optional) Generates a publicly-accessible URL for the projects build badge. Available as badge_url attribute when enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_enabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "encryption_disabled" {
  description = "(Optional) Whether to disable encrypting output artifacts. If type is set to NO_ARTIFACTS, this value is ignored. Defaults to false."
  value       = aws_codebuild_project.aws_codebuild_project.encryption_disabled
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "source_version" {
  description = "(Required) The source version for the corresponding source identifier. See AWS docs for more details.source"
  value       = aws_codebuild_project.aws_codebuild_project.source_version
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "(Required, strongDeprecated) Authorization type to use. The only valid value is OAUTH. This data type is deprecated and is no longer accurate or used. Use the aws_codebuild_source_credential resource instead.source: git_submodules_configThis block is only valid when the type is CODECOMMIT, GITHUB or GITHUB_ENTERPRISE."
  value       = aws_codebuild_project.aws_codebuild_project.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_url
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  value       = aws_codebuild_project.aws_codebuild_project.public_project_alias
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codebuild_project.aws_codebuild_project.tags_all
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
      "kind/name"                   = "aws_codebuild_project"
      "kind/version"                = "v0.1.0"
    }
  }
}
