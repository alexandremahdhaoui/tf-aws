resource "aws_servicecatalog_provisioned_product" "aws_servicecatalog_provisioned_product" {
  id                                     = var.id
  key                                    = var.key
  tags                                   = var.tags
  UNDER_CHANGE                           = var.UNDER_CHANGE
  accounts                               = var.accounts
  read                                   = var.read
  ignore_errors                          = var.ignore_errors
  last_record_id                         = var.last_record_id
  max_concurrency_count                  = var.max_concurrency_count
  outputs                                = var.outputs
  path_name                              = var.path_name
  product_id                             = var.product_id
  cloudwatch_dashboard_names             = var.cloudwatch_dashboard_names
  delete                                 = var.delete
  tags_all                               = var.tags_all
  provisioning_artifact_id               = var.provisioning_artifact_id
  retain_physical_resources              = var.retain_physical_resources
  type                                   = var.type
  use_previous_value                     = var.use_previous_value
  last_provisioning_record_id            = var.last_provisioning_record_id
  last_successful_provisioning_record_id = var.last_successful_provisioning_record_id
  provisioning_artifact_name             = var.provisioning_artifact_name
  update                                 = var.update
  description                            = var.description
  failure_tolerance_percentage           = var.failure_tolerance_percentage
  accept_language                        = var.accept_language
  arn                                    = var.arn
  created_time                           = var.created_time
  max_concurrency_percentage             = var.max_concurrency_percentage
  path_id                                = var.path_id
  stack_set_provisioning_preferences     = var.stack_set_provisioning_preferences
  ERROR                                  = var.ERROR
  TAINTED                                = var.TAINTED
  status_message                         = var.status_message
  launch_role_arn                        = var.launch_role_arn
  notification_arns                      = var.notification_arns
  provisioning_parameters                = var.provisioning_parameters
  regions                                = var.regions
  status                                 = var.status
  value                                  = var.value
  AVAILABLE                              = var.AVAILABLE
  PLAN_IN_PROGRESS                       = var.PLAN_IN_PROGRESS
  name                                   = var.name
  product_name                           = var.product_name
  create                                 = var.create
  failure_tolerance_count                = var.failure_tolerance_count
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "description" {
  description = " The description of the output."
  type        = string
  default     = ""
}
variable "failure_tolerance_percentage" {
  description = "(Optional) Percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both."
  type        = string
  default     = ""
}
variable "provisioning_artifact_name" {
  description = "(Optional) Name of the provisioning artifact. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "max_concurrency_percentage" {
  description = "(Optional) Maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  type        = string
  default     = ""
}
variable "path_id" {
  description = "(Optional) Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use aws_servicecatalog_launch_paths. When required, you must provide path_id or path_name, but not both."
  type        = string
  default     = ""
}
variable "stack_set_provisioning_preferences" {
  description = "(Optional) Configuration block with information about the provisioning preferences for a stack set. See details below."
  type        = string
  default     = ""
}
variable "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  type        = string
  default     = ""
}
variable "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  type        = string
  default     = ""
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the provisioned product."
  type        = string
  default     = ""
}
variable "created_time" {
  description = "Time when the provisioned product was created."
  type        = string
  default     = ""
}
variable "status_message" {
  description = "Current status message of the provisioned product."
  type        = string
  default     = ""
}
variable "regions" {
  description = "(Optional) One or more AWS Regions where the provisioned product will be available. The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all regions from the STACKSET constraint.In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "status" {
  description = "Current status of the provisioned product. See meanings below."
  type        = string
  default     = ""
}
variable "value" {
  description = "The output value."
  type        = string
  default     = ""
}
variable "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  type        = string
  default     = ""
}
variable "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  type        = string
  default     = ""
}
variable "notification_arns" {
  description = "(Optional) Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
  type        = string
  default     = ""
}
variable "provisioning_parameters" {
  description = "(Optional) Configuration block with parameters specified by the administrator that are required for provisioning the product. See details below."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "failure_tolerance_count" {
  description = "(Optional) Number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both. The default value is 0 if no value is specified."
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) User-friendly name of the provisioned product."
  type        = string
}
variable "product_name" {
  description = "(Optional) Name of the product. You must provide product_id or product_name, but not both."
  type        = string
  default     = ""
}
variable "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  type        = string
  default     = ""
}
variable "accounts" {
  description = "(Optional) One or more AWS accounts that will have access to the provisioned product. The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all accounts from the STACKSET constraint."
  type        = string
  default     = ""
}
variable "id" {
  description = "Provisioned Product ID."
  type        = string
  default     = ""
}
variable "key" {
  description = "The output key."
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Tags to apply to the provisioned product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_parameters"
  type        = string
  default     = ""
}
variable "read" {
  description = "(Default 10m)"
  type        = string
  default     = ""
}
variable "outputs" {
  description = "The set of outputs for the product created.\n"
  type        = string
  default     = ""
}
variable "path_name" {
  description = "(Optional) Name of the path. You must provide path_id or path_name, but not both."
  type        = string
  default     = ""
}
variable "product_id" {
  description = "(Optional) Product identifier. For example, prod-abcdzk7xy33qa. You must provide product_id or product_name, but not both."
  type        = string
  default     = ""
}
variable "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "ignore_errors" {
  description = "(Optional) emOnly applies to deleting. If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is false."
  type        = string
  default     = ""
}
variable "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  type        = string
  default     = ""
}
variable "max_concurrency_count" {
  description = "(Optional) Maximum number of accounts in which to perform this operation at one time. This is dependent on the value of failure_tolerance_count. max_concurrency_count is at most one more than the failure_tolerance_count. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
  default     = ""
}
variable "use_previous_value" {
  description = "(Optional) Whether to ignore value and keep the previous parameter value. Ignored when initially provisioning a product."
  type        = string
  default     = ""
}
variable "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  type        = string
  default     = ""
}
variable "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  type        = string
  default     = ""
}
variable "provisioning_artifact_id" {
  description = "(Optional) Identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  type        = string
  default     = ""
}
variable "retain_physical_resources" {
  description = "(Optional) emOnly applies to deleting. Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false."
  type        = string
  default     = ""
}
variable "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
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
output "product_id" {
  description = "(Optional) Product identifier. For example, prod-abcdzk7xy33qa. You must provide product_id or product_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.product_id
}
output "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.cloudwatch_dashboard_names
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.delete
}
output "ignore_errors" {
  description = "(Optional) emOnly applies to deleting. If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is false."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ignore_errors
}
output "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_record_id
}
output "max_concurrency_count" {
  description = "(Optional) Maximum number of accounts in which to perform this operation at one time. This is dependent on the value of failure_tolerance_count. max_concurrency_count is at most one more than the failure_tolerance_count. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.max_concurrency_count
}
output "outputs" {
  description = "The set of outputs for the product created.\n"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.outputs
}
output "path_name" {
  description = "(Optional) Name of the path. You must provide path_id or path_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.path_name
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags_all
}
output "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_provisioning_record_id
}
output "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_successful_provisioning_record_id
}
output "provisioning_artifact_id" {
  description = "(Optional) Identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_artifact_id
}
output "retain_physical_resources" {
  description = "(Optional) emOnly applies to deleting. Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.retain_physical_resources
}
output "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.type
}
output "use_previous_value" {
  description = "(Optional) Whether to ignore value and keep the previous parameter value. Ignored when initially provisioning a product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.use_previous_value
}
output "description" {
  description = " The description of the output."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.description
}
output "failure_tolerance_percentage" {
  description = "(Optional) Percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.failure_tolerance_percentage
}
output "provisioning_artifact_name" {
  description = "(Optional) Name of the provisioning artifact. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_artifact_name
}
output "update" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.update
}
output "stack_set_provisioning_preferences" {
  description = "(Optional) Configuration block with information about the provisioning preferences for a stack set. See details below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.stack_set_provisioning_preferences
}
output "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ERROR
}
output "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.TAINTED
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.accept_language
}
output "arn" {
  description = "ARN of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.arn
}
output "created_time" {
  description = "Time when the provisioned product was created."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.created_time
}
output "max_concurrency_percentage" {
  description = "(Optional) Maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.max_concurrency_percentage
}
output "path_id" {
  description = "(Optional) Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use aws_servicecatalog_launch_paths. When required, you must provide path_id or path_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.path_id
}
output "status_message" {
  description = "Current status message of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status_message
}
output "value" {
  description = "The output value."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.value
}
output "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.AVAILABLE
}
output "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.PLAN_IN_PROGRESS
}
output "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.launch_role_arn
}
output "notification_arns" {
  description = "(Optional) Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.notification_arns
}
output "provisioning_parameters" {
  description = "(Optional) Configuration block with parameters specified by the administrator that are required for provisioning the product. See details below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_parameters
}
output "regions" {
  description = "(Optional) One or more AWS Regions where the provisioned product will be available. The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all regions from the STACKSET constraint.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.regions
}
output "status" {
  description = "Current status of the provisioned product. See meanings below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status
}
output "create" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.create
}
output "failure_tolerance_count" {
  description = "(Optional) Number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both. The default value is 0 if no value is specified."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.failure_tolerance_count
}
output "name" {
  description = "(Required) User-friendly name of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.name
}
output "product_name" {
  description = "(Optional) Name of the product. You must provide product_id or product_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.product_name
}
output "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.UNDER_CHANGE
}
output "accounts" {
  description = "(Optional) One or more AWS accounts that will have access to the provisioned product. The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all accounts from the STACKSET constraint."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.accounts
}
output "id" {
  description = "Provisioned Product ID."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.id
}
output "key" {
  description = "The output key."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.key
}
output "tags" {
  description = "(Optional) Tags to apply to the provisioned product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_parameters"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.read
}
output "key" {
  description = "The output key."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.key
}
output "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_record_id
}
output "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.launch_role_arn
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.read
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags_all
}
output "description" {
  description = " The description of the output."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.description
}
output "create" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.create
}
output "created_time" {
  description = "Time when the provisioned product was created."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.created_time
}
output "id" {
  description = "Provisioned Product ID."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.id
}
output "status" {
  description = "Current status of the provisioned product. See meanings below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status
}
output "status_message" {
  description = "Current status message of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status_message
}
output "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.cloudwatch_dashboard_names
}
output "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.type
}
output "update" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.update
}
output "value" {
  description = "The output value."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.value
}
output "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_provisioning_record_id
}
output "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ERROR
}
output "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.PLAN_IN_PROGRESS
}
output "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.TAINTED
}
output "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.UNDER_CHANGE
}
output "arn" {
  description = "ARN of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.arn
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.delete
}
output "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_successful_provisioning_record_id
}
output "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.AVAILABLE
}
output "outputs" {
  description = "The set of outputs for the product created.\n"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.outputs
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
      "kind/name"                   = "aws_servicecatalog_provisioned_product"
      "kind/version"                = "v0.1.0"
    }
  }
}
