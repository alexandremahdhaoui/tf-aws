resource "aws_opsworks_application" "aws_opsworks_application" {
  stack_id                  = var.stack_id
  type                      = var.type
  name                      = var.name
  app_source                = var.app_source
  environment               = var.environment
  domains                   = var.domains
  url                       = var.url
  data_source_database_name = var.data_source_database_name
  description               = var.description
  value                     = var.value
  document_root             = var.document_root
  secure                    = var.secure
  chain                     = var.chain
  data_source_type          = var.data_source_type
  enable_ssl                = var.enable_ssl
  rails_env                 = var.rails_env
  revision                  = var.revision
  ssh_key                   = var.ssh_key
  auto_bundle_on_deploy     = var.auto_bundle_on_deploy
  certificate               = var.certificate
  ssl_configuration         = var.ssl_configuration
  username                  = var.username
  key                       = var.key
  password                  = var.password
  private_key               = var.private_key
  short_name                = var.short_name
  aws_flow_ruby_settings    = var.aws_flow_ruby_settings
  data_source_arn           = var.data_source_arn
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "aws_flow_ruby_settings" {
  description = "(Optional) Specify activity and workflow workers for your app using the aws-flow gem.An app_source block supports the following arguments (can only be defined once per resource):"
  type        = string
  default     = ""
}
variable "data_source_arn" {
  description = "(Optional) The data source's ARN."
  type        = string
  default     = ""
}
variable "private_key" {
  description = "(Required) The private key; the contents of the certificate's domain.key file."
  type        = string
}
variable "short_name" {
  description = "(Required) A short, machine-readable name for the application. This can only be defined on resource creation and ignored on resource update."
  type        = string
}
variable "stack_id" {
  description = "(Required) ID of the stack the application will belong to."
  type        = string
}
variable "type" {
  description = "(Required) The type of source to use. For example, \"archive\"."
  type        = string
}
variable "app_source" {
  description = "(Optional) SCM configuration of the app as described below."
  type        = string
  default     = ""
}
variable "environment" {
  description = "(Optional) Object to define environment variables.  Object is described below."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A human-readable name for the application."
  type        = string
}
variable "url" {
  description = "(Required) The URL where the app resource can be found."
  type        = string
}
variable "data_source_database_name" {
  description = "(Optional) The database name."
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A description of the app."
  type        = string
  default     = ""
}
variable "domains" {
  description = " (Optional) A list of virtual host alias."
  type        = string
  default     = ""
}
variable "document_root" {
  description = "(Optional) Subfolder for the document root for application of type rails."
  type        = string
  default     = ""
}
variable "secure" {
  description = "(Optional) Set visibility of the variable value to true or false.A ssl_configuration block supports the following arguments (can only be defined once per resource):"
  type        = string
  default     = ""
}
variable "value" {
  description = "(Required) Variable value."
  type        = string
}
variable "enable_ssl" {
  description = "(Optional) Whether to enable SSL for the app. This must be set in order to let ssl_configuration.private_key, ssl_configuration.certificate and ssl_configuration.chain take effect."
  type        = string
  default     = ""
}
variable "rails_env" {
  description = "(Required if type = rails) The name of the Rails environment for application of type rails."
  type        = string
}
variable "revision" {
  description = "(Optional) For sources that are version-aware, the revision to use.An environment block supports the following arguments:"
  type        = string
  default     = ""
}
variable "ssh_key" {
  description = "(Optional) SSH key to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "auto_bundle_on_deploy" {
  description = "(Optional) Run bundle install when deploying for application of type rails."
  type        = string
  default     = ""
}
variable "certificate" {
  description = "(Required) The contents of the certificate's domain.crt file."
  type        = string
}
variable "chain" {
  description = "(Optional)  Can be used to specify an intermediate certificate authority key or client authentication.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "data_source_type" {
  description = "(Optional) The data source's type one of AutoSelectOpsworksMysqlInstance, OpsworksMysqlInstance, or RdsDbInstance."
  type        = string
  default     = ""
}
variable "ssl_configuration" {
  description = "(Optional) The SSL configuration of the app. Object is described below."
  type        = string
  default     = ""
}
variable "username" {
  description = "(Optional) Username to use when authenticating to the source."
  type        = string
  default     = ""
}
variable "password" {
  description = "(Optional) Password to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  type        = string
  default     = ""
}
variable "key" {
  description = "(Required) Variable name."
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
output "username" {
  description = "(Optional) Username to use when authenticating to the source."
  value       = aws_opsworks_application.aws_opsworks_application.username
}
output "key" {
  description = "(Required) Variable name."
  value       = aws_opsworks_application.aws_opsworks_application.key
}
output "password" {
  description = "(Optional) Password to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  value       = aws_opsworks_application.aws_opsworks_application.password
}
output "aws_flow_ruby_settings" {
  description = "(Optional) Specify activity and workflow workers for your app using the aws-flow gem.An app_source block supports the following arguments (can only be defined once per resource):"
  value       = aws_opsworks_application.aws_opsworks_application.aws_flow_ruby_settings
}
output "data_source_arn" {
  description = "(Optional) The data source's ARN."
  value       = aws_opsworks_application.aws_opsworks_application.data_source_arn
}
output "private_key" {
  description = "(Required) The private key; the contents of the certificate's domain.key file."
  value       = aws_opsworks_application.aws_opsworks_application.private_key
}
output "short_name" {
  description = "(Required) A short, machine-readable name for the application. This can only be defined on resource creation and ignored on resource update."
  value       = aws_opsworks_application.aws_opsworks_application.short_name
}
output "stack_id" {
  description = "(Required) ID of the stack the application will belong to."
  value       = aws_opsworks_application.aws_opsworks_application.stack_id
}
output "type" {
  description = "(Required) The type of source to use. For example, \"archive\"."
  value       = aws_opsworks_application.aws_opsworks_application.type
}
output "app_source" {
  description = "(Optional) SCM configuration of the app as described below."
  value       = aws_opsworks_application.aws_opsworks_application.app_source
}
output "environment" {
  description = "(Optional) Object to define environment variables.  Object is described below."
  value       = aws_opsworks_application.aws_opsworks_application.environment
}
output "name" {
  description = "(Required) A human-readable name for the application."
  value       = aws_opsworks_application.aws_opsworks_application.name
}
output "data_source_database_name" {
  description = "(Optional) The database name."
  value       = aws_opsworks_application.aws_opsworks_application.data_source_database_name
}
output "description" {
  description = "(Optional) A description of the app."
  value       = aws_opsworks_application.aws_opsworks_application.description
}
output "domains" {
  description = " (Optional) A list of virtual host alias."
  value       = aws_opsworks_application.aws_opsworks_application.domains
}
output "url" {
  description = "(Required) The URL where the app resource can be found."
  value       = aws_opsworks_application.aws_opsworks_application.url
}
output "document_root" {
  description = "(Optional) Subfolder for the document root for application of type rails."
  value       = aws_opsworks_application.aws_opsworks_application.document_root
}
output "secure" {
  description = "(Optional) Set visibility of the variable value to true or false.A ssl_configuration block supports the following arguments (can only be defined once per resource):"
  value       = aws_opsworks_application.aws_opsworks_application.secure
}
output "value" {
  description = "(Required) Variable value."
  value       = aws_opsworks_application.aws_opsworks_application.value
}
output "revision" {
  description = "(Optional) For sources that are version-aware, the revision to use.An environment block supports the following arguments:"
  value       = aws_opsworks_application.aws_opsworks_application.revision
}
output "ssh_key" {
  description = "(Optional) SSH key to use when authenticating to the source. Terraform cannot perform drift detection of this configuration."
  value       = aws_opsworks_application.aws_opsworks_application.ssh_key
}
output "auto_bundle_on_deploy" {
  description = "(Optional) Run bundle install when deploying for application of type rails."
  value       = aws_opsworks_application.aws_opsworks_application.auto_bundle_on_deploy
}
output "certificate" {
  description = "(Required) The contents of the certificate's domain.crt file."
  value       = aws_opsworks_application.aws_opsworks_application.certificate
}
output "chain" {
  description = "(Optional)  Can be used to specify an intermediate certificate authority key or client authentication.In addition to all arguments above, the following attributes are exported:"
  value       = aws_opsworks_application.aws_opsworks_application.chain
}
output "data_source_type" {
  description = "(Optional) The data source's type one of AutoSelectOpsworksMysqlInstance, OpsworksMysqlInstance, or RdsDbInstance."
  value       = aws_opsworks_application.aws_opsworks_application.data_source_type
}
output "enable_ssl" {
  description = "(Optional) Whether to enable SSL for the app. This must be set in order to let ssl_configuration.private_key, ssl_configuration.certificate and ssl_configuration.chain take effect."
  value       = aws_opsworks_application.aws_opsworks_application.enable_ssl
}
output "rails_env" {
  description = "(Required if type = rails) The name of the Rails environment for application of type rails."
  value       = aws_opsworks_application.aws_opsworks_application.rails_env
}
output "ssl_configuration" {
  description = "(Optional) The SSL configuration of the app. Object is described below."
  value       = aws_opsworks_application.aws_opsworks_application.ssl_configuration
}
output "id" {
  description = "The id of the application."
  value       = aws_opsworks_application.aws_opsworks_application.id
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
      "kind/name"                   = "aws_opsworks_application"
      "kind/version"                = "v0.1.0"
    }
  }
}
