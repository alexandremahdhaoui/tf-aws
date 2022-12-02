resource "aws_codebuild_project" "aws_codebuild_project" {
  compute_type                = var.compute_type
  concurrent_build_limit      = var.concurrent_build_limit
  privileged_mode             = var.privileged_mode
  security_group_ids          = var.security_group_ids
  cloudwatch_logs             = var.cloudwatch_logs
  context                     = var.context
  insecure_ssl                = var.insecure_ssl
  target_url                  = var.target_url
  description                 = var.description
  mount_point                 = var.mount_point
  resource_access_role        = var.resource_access_role
  service_role                = var.service_role
  report_build_status         = var.report_build_status
  source                      = var.source
  artifact_identifier         = var.artifact_identifier
  badge_url                   = var.badge_url
  modes                       = var.modes
  public_project_alias        = var.public_project_alias
  image_pull_credentials_type = var.image_pull_credentials_type
  name                        = var.name
  stream_name                 = var.stream_name
  cache                       = var.cache
  fetch_submodules            = var.fetch_submodules
  git_clone_depth             = var.git_clone_depth
  identifier                  = var.identifier
  badge_enabled               = var.badge_enabled
  environment                 = var.environment
  location                    = var.location
  maximum_builds_allowed      = var.maximum_builds_allowed
  path                        = var.path
  project_visibility          = var.project_visibility
  queued_timeout              = var.queued_timeout
  arn                         = var.arn
  auth                        = var.auth
  build_batch_config          = var.build_batch_config
  combine_artifacts           = var.combine_artifacts
  resource                    = var.resource
  build_status_config         = var.build_status_config
  environment_variable        = var.environment_variable
  logs_config                 = var.logs_config
  mount_options               = var.mount_options
  subnets                     = var.subnets
  credential                  = var.credential
  group_name                  = var.group_name
  registry_credential         = var.registry_credential
  secondary_sources           = var.secondary_sources
  credential_provider         = var.credential_provider
  encryption_key              = var.encryption_key
  source_version              = var.source_version
  type                        = var.type
  value                       = var.value
  git_submodules_config       = var.git_submodules_config
  override_artifact_name      = var.override_artifact_name
  restrictions                = var.restrictions
  secondary_artifacts         = var.secondary_artifacts
  s3_logs                     = var.s3_logs
  status                      = var.status
  timeout_in_mins             = var.timeout_in_mins
  artifacts                   = var.artifacts
  build_timeout               = var.build_timeout
  id                          = var.id
  image                       = var.image
  source_identifier           = var.source_identifier
  tags                        = var.tags
  compute_types_allowed       = var.compute_types_allowed
  encryption_disabled         = var.encryption_disabled
  packaging                   = var.packaging
  secondary_source_version    = var.secondary_source_version
  certificate                 = var.certificate
  namespace_type              = var.namespace_type
  file_system_locations       = var.file_system_locations
  tags_all                    = var.tags_all
  vpc_config                  = var.vpc_config
  bucket_owner_access         = var.bucket_owner_access
  buildspec                   = var.buildspec
  vpc_id                      = var.vpc_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "git_clone_depth" {
  description = "(Optional) Truncate git history to this many commits. Use 0 for a Full checkout which you need to run commands like git branch --show-current. See AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source for details."
  type        = string
  default     = ""
}
variable "identifier" {
  description = "(Optional) The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the identifier in all capital letters to CODEBUILD_. For example, if you specify my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS."
  type        = string
  default     = ""
}
variable "image_pull_credentials_type" {
  description = "(Optional) Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE. When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to CODEBUILD."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Optional) Name of the project. If type is set to S3, this is the name of the output artifact object"
  type        = string
  default     = ""
}
variable "stream_name" {
  description = "(Optional) Stream name of the logs in CloudWatch Logs.logs_config: s3_logs"
  type        = string
  default     = ""
}
variable "cache" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "fetch_submodules" {
  description = "(Required) Whether to fetch Git submodules for the AWS CodeBuild build project.vpc_config"
  type        = string
}
variable "location" {
  description = "(Optional) A string that specifies the location of the file system created by Amazon EFS. Its format is efs-dns-name:/directory-path."
  type        = string
  default     = ""
}
variable "badge_enabled" {
  description = "(Optional) Generates a publicly-accessible URL for the projects build badge. Available as badge_url attribute when enabled."
  type        = string
  default     = ""
}
variable "environment" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "build_batch_config" {
  description = "(Optional) Defines the batch build options for the project."
  type        = string
  default     = ""
}
variable "combine_artifacts" {
  description = "(Optional) Specifies if the build artifacts for the batch build should be combined into a single artifact location."
  type        = string
  default     = ""
}
variable "maximum_builds_allowed" {
  description = "(Optional) Specifies the maximum number of builds allowed.cache"
  type        = string
  default     = ""
}
variable "path" {
  description = "(Optional) If type is set to S3, this is the path to the output artifact."
  type        = string
  default     = ""
}
variable "project_visibility" {
  description = "(Optional) Specifies the visibility of the project's builds. Possible values are: PUBLIC_READ and PRIVATE. Default value is PRIVATE."
  type        = string
  default     = ""
}
variable "queued_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it times out. The default is 8 hours."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the CodeBuild project."
  type        = string
  default     = ""
}
variable "auth" {
  description = "(Optional, strongDeprecated) Configuration block with the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Use the aws_codebuild_source_credential resource instead. Auth blocks are documented below."
  type        = string
  default     = ""
}
variable "logs_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "mount_options" {
  description = "(Optional) The mount options for a file system created by AWS EFS."
  type        = string
  default     = ""
}
variable "resource" {
  description = "(Optional, strongDeprecated) Resource value that applies to the specified authorization type. Use the aws_codebuild_source_credential resource instead."
  type        = string
  default     = ""
}
variable "build_status_config" {
  description = "(Optional) Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is GITHUB, GITHUB_ENTERPRISE, or BITBUCKET."
  type        = string
  default     = ""
}
variable "environment_variable" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "registry_credential" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "secondary_sources" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "subnets" {
  description = "(Required) Subnet IDs within which to run builds."
  type        = string
}
variable "credential" {
  description = "(Required) ARN or name of credentials created using AWS Secrets Manager."
  type        = string
}
variable "group_name" {
  description = "(Optional) Group name of the logs in CloudWatch Logs."
  type        = string
  default     = ""
}
variable "source_version" {
  description = "(Required) The source version for the corresponding source identifier. See AWS docs for more details.source"
  type        = string
}
variable "credential_provider" {
  description = "(Required) Service that created the credentials to access a private Docker registry. Valid value: SECRETS_MANAGER (AWS Secrets Manager).logs_config"
  type        = string
}
variable "encryption_key" {
  description = "(Optional) AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build project's build output artifacts."
  type        = string
  default     = ""
}
variable "restrictions" {
  description = "(Optional) Specifies the restrictions for the batch build."
  type        = string
  default     = ""
}
variable "secondary_artifacts" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required, strongDeprecated) Authorization type to use. The only valid value is OAUTH. This data type is deprecated and is no longer accurate or used. Use the aws_codebuild_source_credential resource instead.source: git_submodules_configThis block is only valid when the type is CODECOMMIT, GITHUB or GITHUB_ENTERPRISE."
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Environment variable's value.environment: registry_credentialCredentials for access to a private Docker registry."
  type        = string
}
variable "git_submodules_config" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "override_artifact_name" {
  description = " (Optional) Whether a name specified in the build specification overrides the artifact name."
  type        = string
  default     = ""
}
variable "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  type        = string
  default     = ""
}
variable "image" {
  description = "(Required) Docker image to use for this build project. Valid values include Docker images provided by CodeBuild (e.g aws/codebuild/standard:2.0), Docker Hub images (e.g., hashicorp/terraform:latest), and full Docker repository URIs such as those for ECR (e.g., 137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest)."
  type        = string
}
variable "s3_logs" {
  description = "(Optional) Configuration block. Detailed below.logs_config: cloudwatch_logs"
  type        = string
  default     = ""
}
variable "status" {
  description = "(Optional) Current status of logs in S3 for a build project. Valid values: ENABLED, DISABLED. Defaults to DISABLED."
  type        = string
  default     = ""
}
variable "timeout_in_mins" {
  description = "(Optional) Specifies the maximum amount of time, in minutes, that the batch build must be completed in.restrictions"
  type        = string
  default     = ""
}
variable "artifacts" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "build_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes."
  type        = string
  default     = ""
}
variable "packaging" {
  description = "(Optional) Type of build output artifact to create. If type is set to S3, valid values are NONE, ZIP"
  type        = string
  default     = ""
}
variable "secondary_source_version" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "source_identifier" {
  description = "(Required) An identifier for a source in the build project."
  type        = string
}
variable "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "compute_types_allowed" {
  description = "(Optional) An array of strings that specify the compute types that are allowed for the batch build. See Build environment compute types in the AWS CodeBuild User Guide for these values."
  type        = string
  default     = ""
}
variable "encryption_disabled" {
  description = "(Optional) Whether to disable encrypting output artifacts. If type is set to NO_ARTIFACTS, this value is ignored. Defaults to false."
  type        = string
  default     = ""
}
variable "certificate" {
  description = "(Optional) ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate."
  type        = string
  default     = ""
}
variable "namespace_type" {
  description = "(Optional) Namespace to use in storing build artifacts. If type is set to S3, then valid values are BUILD_ID or NONE."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.artifacts"
  type        = string
  default     = ""
}
variable "file_system_locations" {
  description = "(Optional) A set of file system locations to to mount inside the build. File system locations are documented below."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "(Required) ID of the VPC within which to run builds.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "bucket_owner_access" {
  description = "(Optional) Specifies the bucket owner's access for objects that another account uploads to their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these objects. This property allows you to give the bucket owner access to these objects. Valid values are NONE, READ_ONLY, and FULL. your CodeBuild service role must have the s3:PutBucketAcl permission. This permission allows CodeBuild to modify the access control list for the bucket."
  type        = string
  default     = ""
}
variable "buildspec" {
  description = "(Optional) Build specification to use for this build project's related builds. This must be set when type is NO_SOURCE."
  type        = string
  default     = ""
}
variable "privileged_mode" {
  description = "(Optional) Whether to enable running the Docker daemon inside a Docker container. Defaults to false."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) Security group IDs to assign to running builds."
  type        = string
}
variable "compute_type" {
  description = "(Required) Information about the compute resources the build project will use. Valid values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE. BUILD_GENERAL1_SMALL is only valid if type is set to LINUX_CONTAINER. When type is set to LINUX_GPU_CONTAINER, compute_type must be BUILD_GENERAL1_LARGE."
  type        = string
}
variable "concurrent_build_limit" {
  description = "(Optional) Specify a maximum number of concurrent builds for the project. The value specified must be greater than 0 and less than the account concurrent running builds limit."
  type        = string
  default     = ""
}
variable "insecure_ssl" {
  description = "(Optional) Ignore SSL warnings when connecting to source control."
  type        = string
  default     = ""
}
variable "cloudwatch_logs" {
  description = "(Optional) Configuration block. Detailed below."
  type        = string
  default     = ""
}
variable "context" {
  description = "(Optional) Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider."
  type        = string
  default     = ""
}
variable "resource_access_role" {
  description = "The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds."
  type        = string
  default     = ""
}
variable "service_role" {
  description = "(Required) Specifies the service role ARN for the batch build project."
  type        = string
}
variable "target_url" {
  description = "(Optional) Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.secondary_source_version"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) Short description of the project."
  type        = string
  default     = ""
}
variable "mount_point" {
  description = "(Optional) The location in the container where you mount the file system."
  type        = string
  default     = ""
}
variable "modes" {
  description = "(Required when cache type is LOCAL) Specifies settings that AWS CodeBuild uses to store and reuse build dependencies. Valid values:  LOCAL_SOURCE_CACHE, LOCAL_DOCKER_LAYER_CACHE, LOCAL_CUSTOM_CACHE."
  type        = string
  default     = ""
}
variable "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  type        = string
  default     = ""
}
variable "report_build_status" {
  description = "(Optional) Whether to report the status of a build's start and finish to your source provider. This option is only valid when the type is BITBUCKET or GITHUB."
  type        = string
  default     = ""
}
variable "source" {
  description = "(Required) Configuration block. Detailed below."
  type        = string
}
variable "artifact_identifier" {
  description = "(Required) Artifact identifier. Must be the same specified inside the AWS CodeBuild build specification."
  type        = string
}
variable "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
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
output "cloudwatch_logs" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.cloudwatch_logs
}
output "context" {
  description = "(Optional) Specifies the context of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider."
  value       = aws_codebuild_project.aws_codebuild_project.context
}
output "insecure_ssl" {
  description = "(Optional) Ignore SSL warnings when connecting to source control."
  value       = aws_codebuild_project.aws_codebuild_project.insecure_ssl
}
output "description" {
  description = "(Optional) Short description of the project."
  value       = aws_codebuild_project.aws_codebuild_project.description
}
output "mount_point" {
  description = "(Optional) The location in the container where you mount the file system."
  value       = aws_codebuild_project.aws_codebuild_project.mount_point
}
output "resource_access_role" {
  description = "The ARN of the IAM role that enables CodeBuild to access the CloudWatch Logs and Amazon S3 artifacts for the project's builds."
  value       = aws_codebuild_project.aws_codebuild_project.resource_access_role
}
output "service_role" {
  description = "(Required) Specifies the service role ARN for the batch build project."
  value       = aws_codebuild_project.aws_codebuild_project.service_role
}
output "target_url" {
  description = "(Optional) Specifies the target url of the build status CodeBuild sends to the source provider. The usage of this parameter depends on the source provider.secondary_source_version"
  value       = aws_codebuild_project.aws_codebuild_project.target_url
}
output "artifact_identifier" {
  description = "(Required) Artifact identifier. Must be the same specified inside the AWS CodeBuild build specification."
  value       = aws_codebuild_project.aws_codebuild_project.artifact_identifier
}
output "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_url
}
output "modes" {
  description = "(Required when cache type is LOCAL) Specifies settings that AWS CodeBuild uses to store and reuse build dependencies. Valid values:  LOCAL_SOURCE_CACHE, LOCAL_DOCKER_LAYER_CACHE, LOCAL_CUSTOM_CACHE."
  value       = aws_codebuild_project.aws_codebuild_project.modes
}
output "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  value       = aws_codebuild_project.aws_codebuild_project.public_project_alias
}
output "report_build_status" {
  description = "(Optional) Whether to report the status of a build's start and finish to your source provider. This option is only valid when the type is BITBUCKET or GITHUB."
  value       = aws_codebuild_project.aws_codebuild_project.report_build_status
}
output "source" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.source
}
output "cache" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.cache
}
output "fetch_submodules" {
  description = "(Required) Whether to fetch Git submodules for the AWS CodeBuild build project.vpc_config"
  value       = aws_codebuild_project.aws_codebuild_project.fetch_submodules
}
output "git_clone_depth" {
  description = "(Optional) Truncate git history to this many commits. Use 0 for a Full checkout which you need to run commands like git branch --show-current. See AWS CodePipeline User Guide: Tutorial: Use full clone with a GitHub pipeline source for details."
  value       = aws_codebuild_project.aws_codebuild_project.git_clone_depth
}
output "identifier" {
  description = "(Optional) The name used to access a file system created by Amazon EFS. CodeBuild creates an environment variable by appending the identifier in all capital letters to CODEBUILD_. For example, if you specify my-efs for identifier, a new environment variable is create named CODEBUILD_MY-EFS."
  value       = aws_codebuild_project.aws_codebuild_project.identifier
}
output "image_pull_credentials_type" {
  description = "(Optional) Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE. When you use a cross-account or private registry image, you must use SERVICE_ROLE credentials. When you use an AWS CodeBuild curated image, you must use CodeBuild credentials. Defaults to CODEBUILD."
  value       = aws_codebuild_project.aws_codebuild_project.image_pull_credentials_type
}
output "name" {
  description = "(Optional) Name of the project. If type is set to S3, this is the name of the output artifact object"
  value       = aws_codebuild_project.aws_codebuild_project.name
}
output "stream_name" {
  description = "(Optional) Stream name of the logs in CloudWatch Logs.logs_config: s3_logs"
  value       = aws_codebuild_project.aws_codebuild_project.stream_name
}
output "badge_enabled" {
  description = "(Optional) Generates a publicly-accessible URL for the projects build badge. Available as badge_url attribute when enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_enabled
}
output "environment" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.environment
}
output "location" {
  description = "(Optional) A string that specifies the location of the file system created by Amazon EFS. Its format is efs-dns-name:/directory-path."
  value       = aws_codebuild_project.aws_codebuild_project.location
}
output "queued_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), a build is allowed to be queued before it times out. The default is 8 hours."
  value       = aws_codebuild_project.aws_codebuild_project.queued_timeout
}
output "arn" {
  description = "ARN of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.arn
}
output "auth" {
  description = "(Optional, strongDeprecated) Configuration block with the authorization settings for AWS CodeBuild to access the source code to be built. This information is for the AWS CodeBuild console's use only. Use the aws_codebuild_source_credential resource instead. Auth blocks are documented below."
  value       = aws_codebuild_project.aws_codebuild_project.auth
}
output "build_batch_config" {
  description = "(Optional) Defines the batch build options for the project."
  value       = aws_codebuild_project.aws_codebuild_project.build_batch_config
}
output "combine_artifacts" {
  description = "(Optional) Specifies if the build artifacts for the batch build should be combined into a single artifact location."
  value       = aws_codebuild_project.aws_codebuild_project.combine_artifacts
}
output "maximum_builds_allowed" {
  description = "(Optional) Specifies the maximum number of builds allowed.cache"
  value       = aws_codebuild_project.aws_codebuild_project.maximum_builds_allowed
}
output "path" {
  description = "(Optional) If type is set to S3, this is the path to the output artifact."
  value       = aws_codebuild_project.aws_codebuild_project.path
}
output "project_visibility" {
  description = "(Optional) Specifies the visibility of the project's builds. Possible values are: PUBLIC_READ and PRIVATE. Default value is PRIVATE."
  value       = aws_codebuild_project.aws_codebuild_project.project_visibility
}
output "build_status_config" {
  description = "(Optional) Contains information that defines how the build project reports the build status to the source provider. This option is only used when the source provider is GITHUB, GITHUB_ENTERPRISE, or BITBUCKET."
  value       = aws_codebuild_project.aws_codebuild_project.build_status_config
}
output "environment_variable" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.environment_variable
}
output "logs_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.logs_config
}
output "mount_options" {
  description = "(Optional) The mount options for a file system created by AWS EFS."
  value       = aws_codebuild_project.aws_codebuild_project.mount_options
}
output "resource" {
  description = "(Optional, strongDeprecated) Resource value that applies to the specified authorization type. Use the aws_codebuild_source_credential resource instead."
  value       = aws_codebuild_project.aws_codebuild_project.resource
}
output "credential" {
  description = "(Required) ARN or name of credentials created using AWS Secrets Manager."
  value       = aws_codebuild_project.aws_codebuild_project.credential
}
output "group_name" {
  description = "(Optional) Group name of the logs in CloudWatch Logs."
  value       = aws_codebuild_project.aws_codebuild_project.group_name
}
output "registry_credential" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.registry_credential
}
output "secondary_sources" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_sources
}
output "subnets" {
  description = "(Required) Subnet IDs within which to run builds."
  value       = aws_codebuild_project.aws_codebuild_project.subnets
}
output "credential_provider" {
  description = "(Required) Service that created the credentials to access a private Docker registry. Valid value: SECRETS_MANAGER (AWS Secrets Manager).logs_config"
  value       = aws_codebuild_project.aws_codebuild_project.credential_provider
}
output "encryption_key" {
  description = "(Optional) AWS Key Management Service (AWS KMS) customer master key (CMK) to be used for encrypting the build project's build output artifacts."
  value       = aws_codebuild_project.aws_codebuild_project.encryption_key
}
output "source_version" {
  description = "(Required) The source version for the corresponding source identifier. See AWS docs for more details.source"
  value       = aws_codebuild_project.aws_codebuild_project.source_version
}
output "git_submodules_config" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.git_submodules_config
}
output "override_artifact_name" {
  description = " (Optional) Whether a name specified in the build specification overrides the artifact name."
  value       = aws_codebuild_project.aws_codebuild_project.override_artifact_name
}
output "restrictions" {
  description = "(Optional) Specifies the restrictions for the batch build."
  value       = aws_codebuild_project.aws_codebuild_project.restrictions
}
output "secondary_artifacts" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_artifacts
}
output "type" {
  description = "(Required, strongDeprecated) Authorization type to use. The only valid value is OAUTH. This data type is deprecated and is no longer accurate or used. Use the aws_codebuild_source_credential resource instead.source: git_submodules_configThis block is only valid when the type is CODECOMMIT, GITHUB or GITHUB_ENTERPRISE."
  value       = aws_codebuild_project.aws_codebuild_project.type
}
output "value" {
  description = "(Required) Environment variable's value.environment: registry_credentialCredentials for access to a private Docker registry."
  value       = aws_codebuild_project.aws_codebuild_project.value
}
output "artifacts" {
  description = "(Required) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.artifacts
}
output "build_timeout" {
  description = "(Optional) Number of minutes, from 5 to 480 (8 hours), for AWS CodeBuild to wait until timing out any related build that does not get marked as completed. The default is 60 minutes."
  value       = aws_codebuild_project.aws_codebuild_project.build_timeout
}
output "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.id
}
output "image" {
  description = "(Required) Docker image to use for this build project. Valid values include Docker images provided by CodeBuild (e.g aws/codebuild/standard:2.0), Docker Hub images (e.g., hashicorp/terraform:latest), and full Docker repository URIs such as those for ECR (e.g., 137112412989.dkr.ecr.us-west-2.amazonaws.com/amazonlinux:latest)."
  value       = aws_codebuild_project.aws_codebuild_project.image
}
output "s3_logs" {
  description = "(Optional) Configuration block. Detailed below.logs_config: cloudwatch_logs"
  value       = aws_codebuild_project.aws_codebuild_project.s3_logs
}
output "status" {
  description = "(Optional) Current status of logs in S3 for a build project. Valid values: ENABLED, DISABLED. Defaults to DISABLED."
  value       = aws_codebuild_project.aws_codebuild_project.status
}
output "timeout_in_mins" {
  description = "(Optional) Specifies the maximum amount of time, in minutes, that the batch build must be completed in.restrictions"
  value       = aws_codebuild_project.aws_codebuild_project.timeout_in_mins
}
output "compute_types_allowed" {
  description = "(Optional) An array of strings that specify the compute types that are allowed for the batch build. See Build environment compute types in the AWS CodeBuild User Guide for these values."
  value       = aws_codebuild_project.aws_codebuild_project.compute_types_allowed
}
output "encryption_disabled" {
  description = "(Optional) Whether to disable encrypting output artifacts. If type is set to NO_ARTIFACTS, this value is ignored. Defaults to false."
  value       = aws_codebuild_project.aws_codebuild_project.encryption_disabled
}
output "packaging" {
  description = "(Optional) Type of build output artifact to create. If type is set to S3, valid values are NONE, ZIP"
  value       = aws_codebuild_project.aws_codebuild_project.packaging
}
output "secondary_source_version" {
  description = "(Optional) Configuration block. Detailed below."
  value       = aws_codebuild_project.aws_codebuild_project.secondary_source_version
}
output "source_identifier" {
  description = "(Required) An identifier for a source in the build project."
  value       = aws_codebuild_project.aws_codebuild_project.source_identifier
}
output "tags" {
  description = "(Optional) Map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_codebuild_project.aws_codebuild_project.tags
}
output "certificate" {
  description = "(Optional) ARN of the S3 bucket, path prefix and object key that contains the PEM-encoded certificate."
  value       = aws_codebuild_project.aws_codebuild_project.certificate
}
output "namespace_type" {
  description = "(Optional) Namespace to use in storing build artifacts. If type is set to S3, then valid values are BUILD_ID or NONE."
  value       = aws_codebuild_project.aws_codebuild_project.namespace_type
}
output "file_system_locations" {
  description = "(Optional) A set of file system locations to to mount inside the build. File system locations are documented below."
  value       = aws_codebuild_project.aws_codebuild_project.file_system_locations
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codebuild_project.aws_codebuild_project.tags_all
}
output "vpc_config" {
  description = "(Optional) Configuration block. Detailed below.artifacts"
  value       = aws_codebuild_project.aws_codebuild_project.vpc_config
}
output "bucket_owner_access" {
  description = "(Optional) Specifies the bucket owner's access for objects that another account uploads to their Amazon S3 bucket. By default, only the account that uploads the objects to the bucket has access to these objects. This property allows you to give the bucket owner access to these objects. Valid values are NONE, READ_ONLY, and FULL. your CodeBuild service role must have the s3:PutBucketAcl permission. This permission allows CodeBuild to modify the access control list for the bucket."
  value       = aws_codebuild_project.aws_codebuild_project.bucket_owner_access
}
output "buildspec" {
  description = "(Optional) Build specification to use for this build project's related builds. This must be set when type is NO_SOURCE."
  value       = aws_codebuild_project.aws_codebuild_project.buildspec
}
output "vpc_id" {
  description = "(Required) ID of the VPC within which to run builds.In addition to all arguments above, the following attributes are exported:"
  value       = aws_codebuild_project.aws_codebuild_project.vpc_id
}
output "compute_type" {
  description = "(Required) Information about the compute resources the build project will use. Valid values: BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE. BUILD_GENERAL1_SMALL is only valid if type is set to LINUX_CONTAINER. When type is set to LINUX_GPU_CONTAINER, compute_type must be BUILD_GENERAL1_LARGE."
  value       = aws_codebuild_project.aws_codebuild_project.compute_type
}
output "concurrent_build_limit" {
  description = "(Optional) Specify a maximum number of concurrent builds for the project. The value specified must be greater than 0 and less than the account concurrent running builds limit."
  value       = aws_codebuild_project.aws_codebuild_project.concurrent_build_limit
}
output "privileged_mode" {
  description = "(Optional) Whether to enable running the Docker daemon inside a Docker container. Defaults to false."
  value       = aws_codebuild_project.aws_codebuild_project.privileged_mode
}
output "security_group_ids" {
  description = "(Required) Security group IDs to assign to running builds."
  value       = aws_codebuild_project.aws_codebuild_project.security_group_ids
}
output "badge_url" {
  description = "URL of the build badge when badge_enabled is enabled."
  value       = aws_codebuild_project.aws_codebuild_project.badge_url
}
output "id" {
  description = "Name (if imported via name) or ARN (if created via Terraform or imported via ARN) of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.id
}
output "public_project_alias" {
  description = "The project identifier used with the public build APIs."
  value       = aws_codebuild_project.aws_codebuild_project.public_project_alias
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_codebuild_project.aws_codebuild_project.tags_all
}
output "arn" {
  description = "ARN of the CodeBuild project."
  value       = aws_codebuild_project.aws_codebuild_project.arn
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
      "kind/name"                   = "aws_codebuild_project"
      "kind/version"                = "v0.1.0"
    }
  }
}
