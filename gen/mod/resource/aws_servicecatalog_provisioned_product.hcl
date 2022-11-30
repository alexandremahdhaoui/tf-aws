resource "aws_servicecatalog_provisioned_product" "aws_servicecatalog_provisioned_product" {
  PLAN_IN_PROGRESS                       = var.PLAN_IN_PROGRESS
  accept_language                        = var.accept_language
  max_concurrency_percentage             = var.max_concurrency_percentage
  update                                 = var.update
  AVAILABLE                              = var.AVAILABLE
  id                                     = var.id
  retain_physical_resources              = var.retain_physical_resources
  value                                  = var.value
  delete                                 = var.delete
  description                            = var.description
  ignore_errors                          = var.ignore_errors
  key                                    = var.key
  last_record_id                         = var.last_record_id
  product_name                           = var.product_name
  provisioning_artifact_name             = var.provisioning_artifact_name
  provisioning_parameters                = var.provisioning_parameters
  cloudwatch_dashboard_names             = var.cloudwatch_dashboard_names
  status                                 = var.status
  tags_all                               = var.tags_all
  read                                   = var.read
  arn                                    = var.arn
  created_time                           = var.created_time
  failure_tolerance_percentage           = var.failure_tolerance_percentage
  max_concurrency_count                  = var.max_concurrency_count
  outputs                                = var.outputs
  product_id                             = var.product_id
  ERROR                                  = var.ERROR
  name                                   = var.name
  failure_tolerance_count                = var.failure_tolerance_count
  path_id                                = var.path_id
  use_previous_value                     = var.use_previous_value
  accounts                               = var.accounts
  last_provisioning_record_id            = var.last_provisioning_record_id
  last_successful_provisioning_record_id = var.last_successful_provisioning_record_id
  notification_arns                      = var.notification_arns
  path_name                              = var.path_name
  type                                   = var.type
  create                                 = var.create
  UNDER_CHANGE                           = var.UNDER_CHANGE
  launch_role_arn                        = var.launch_role_arn
  provisioning_artifact_id               = var.provisioning_artifact_id
  regions                                = var.regions
  stack_set_provisioning_preferences     = var.stack_set_provisioning_preferences
  status_message                         = var.status_message
  tags                                   = var.tags
  TAINTED                                = var.TAINTED
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "stack_set_provisioning_preferences" {
  description = "(Optional) Configuration block with information about the provisioning preferences for a stack set. See details below."
  type        = string
}
variable "status_message" {
  description = "Current status message of the provisioned product."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the provisioned product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_parameters"
  type        = string
}
variable "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  type        = string
}
variable "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  type        = string
}
variable "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  type        = string
}
variable "provisioning_artifact_id" {
  description = "(Optional) Identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  type        = string
}
variable "regions" {
  description = "(Optional) One or more AWS Regions where the provisioned product will be available. The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all regions from the STACKSET constraint.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  type        = string
}
variable "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  type        = string
}
variable "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  type        = string
}
variable "max_concurrency_percentage" {
  description = "(Optional) Maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  type        = string
}
variable "update" {
  description = "(Default 30m)"
  type        = string
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
}
variable "id" {
  description = "Provisioned Product ID."
  type        = string
}
variable "retain_physical_resources" {
  description = "(Optional) emOnly applies to deleting. Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false."
  type        = string
}
variable "value" {
  description = "The output value."
  type        = string
}
variable "product_name" {
  description = "(Optional) Name of the product. You must provide product_id or product_name, but not both."
  type        = string
}
variable "provisioning_artifact_name" {
  description = "(Optional) Name of the provisioning artifact. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  type        = string
}
variable "provisioning_parameters" {
  description = "(Optional) Configuration block with parameters specified by the administrator that are required for provisioning the product. See details below."
  type        = string
}
variable "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  type        = string
}
variable "description" {
  description = " The description of the output."
  type        = string
}
variable "ignore_errors" {
  description = "(Optional) emOnly applies to deleting. If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is false."
  type        = string
}
variable "key" {
  description = "The output key."
  type        = string
}
variable "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  type        = string
}
variable "read" {
  description = "(Default 10m)"
  type        = string
}
variable "status" {
  description = "Current status of the provisioned product. See meanings below."
  type        = string
}
variable "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  type        = string
}
variable "outputs" {
  description = "The set of outputs for the product created.\n"
  type        = string
}
variable "product_id" {
  description = "(Optional) Product identifier. For example, prod-abcdzk7xy33qa. You must provide product_id or product_name, but not both."
  type        = string
}
variable "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  type        = string
}
variable "arn" {
  description = "ARN of the provisioned product."
  type        = string
}
variable "created_time" {
  description = "Time when the provisioned product was created."
  type        = string
}
variable "failure_tolerance_percentage" {
  description = "(Optional) Percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both."
  type        = string
}
variable "max_concurrency_count" {
  description = "(Optional) Maximum number of accounts in which to perform this operation at one time. This is dependent on the value of failure_tolerance_count. max_concurrency_count is at most one more than the failure_tolerance_count. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  type        = string
}
variable "name" {
  description = "(Required) User-friendly name of the provisioned product."
  type        = string
}
variable "accounts" {
  description = "(Optional) One or more AWS accounts that will have access to the provisioned product. The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all accounts from the STACKSET constraint."
  type        = string
}
variable "failure_tolerance_count" {
  description = "(Optional) Number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both. The default value is 0 if no value is specified."
  type        = string
}
variable "path_id" {
  description = "(Optional) Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use aws_servicecatalog_launch_paths. When required, you must provide path_id or path_name, but not both."
  type        = string
}
variable "use_previous_value" {
  description = "(Optional) Whether to ignore value and keep the previous parameter value. Ignored when initially provisioning a product."
  type        = string
}
variable "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
  type        = string
}
variable "create" {
  description = "(Default 30m)"
  type        = string
}
variable "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  type        = string
}
variable "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  type        = string
}
variable "notification_arns" {
  description = "(Optional) Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
  type        = string
}
variable "path_name" {
  description = "(Optional) Name of the path. You must provide path_id or path_name, but not both."
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
output "accounts" {
  description = "(Optional) One or more AWS accounts that will have access to the provisioned product. The AWS accounts specified should be within the list of accounts in the STACKSET constraint. To get the list of accounts in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all accounts from the STACKSET constraint."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.accounts
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_tolerance_count" {
  description = "(Optional) Number of accounts, per region, for which this operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both. The default value is 0 if no value is specified."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.failure_tolerance_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_id" {
  description = "(Optional) Path identifier of the product. This value is optional if the product has a default path, and required if the product has more than one path. To list the paths for a product, use aws_servicecatalog_launch_paths. When required, you must provide path_id or path_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.path_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "use_previous_value" {
  description = "(Optional) Whether to ignore value and keep the previous parameter value. Ignored when initially provisioning a product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.use_previous_value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_provisioning_record_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_successful_provisioning_record_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "notification_arns" {
  description = "(Optional) Passed to CloudFormation. The SNS topic ARNs to which to publish stack-related events."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.notification_arns
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "path_name" {
  description = "(Optional) Name of the path. You must provide path_id or path_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.path_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_message" {
  description = "Current status message of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags" {
  description = "(Optional) Tags to apply to the provisioned product. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.provisioning_parameters"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.TAINTED
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.UNDER_CHANGE
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.launch_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_artifact_id" {
  description = "(Optional) Identifier of the provisioning artifact. For example, pa-4abcdjnxjj6ne. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_artifact_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "regions" {
  description = "(Optional) One or more AWS Regions where the provisioned product will be available. The specified regions should be within the list of regions from the STACKSET constraint. To get the list of regions in the STACKSET constraint, use the aws_servicecatalog_provisioning_parameters data source. If no values are specified, the default value is all regions from the STACKSET constraint.In addition to all arguments above, the following attributes are exported:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.regions
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "stack_set_provisioning_preferences" {
  description = "(Optional) Configuration block with information about the provisioning preferences for a stack set. See details below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.stack_set_provisioning_preferences
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.AVAILABLE
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.PLAN_IN_PROGRESS
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "accept_language" {
  description = "(Optional) Language code. Valid values: en (English), jp (Japanese), zh (Chinese). Default value is en."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.accept_language
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_concurrency_percentage" {
  description = "(Optional) Maximum percentage of accounts in which to perform this operation at one time. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. This is true except in cases where rounding down would result is zero. In this case, AWS Service Catalog sets the number as 1 instead. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.max_concurrency_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Provisioned Product ID."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "retain_physical_resources" {
  description = "(Optional) emOnly applies to deleting. Whether to delete the Service Catalog provisioned product but leave the CloudFormation stack, stack set, or the underlying resources of the deleted provisioned product. The default value is false."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.retain_physical_resources
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The output value."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_artifact_name" {
  description = "(Optional) Name of the provisioning artifact. You must provide the provisioning_artifact_id or provisioning_artifact_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_artifact_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "provisioning_parameters" {
  description = "(Optional) Configuration block with parameters specified by the administrator that are required for provisioning the product. See details below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.provisioning_parameters
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.cloudwatch_dashboard_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " The description of the output."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ignore_errors" {
  description = "(Optional) emOnly applies to deleting. If set to true, AWS Service Catalog stops managing the specified provisioned product even if it cannot delete the underlying resources. The default value is false."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ignore_errors
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "The output key."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_record_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "product_name" {
  description = "(Optional) Name of the product. You must provide product_id or product_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.product_name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the provisioned product. See meanings below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "product_id" {
  description = "(Optional) Product identifier. For example, prod-abcdzk7xy33qa. You must provide product_id or product_name, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.product_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ERROR
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the provisioned product was created."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "failure_tolerance_percentage" {
  description = "(Optional) Percentage of accounts, per region, for which this stack operation can fail before AWS Service Catalog stops the operation in that region. If the operation is stopped in a region, AWS Service Catalog doesn't attempt the operation in any subsequent regions. When calculating the number of accounts based on the specified percentage, AWS Service Catalog rounds down to the next whole number. You must specify either failure_tolerance_count or failure_tolerance_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.failure_tolerance_percentage
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "max_concurrency_count" {
  description = "(Optional) Maximum number of accounts in which to perform this operation at one time. This is dependent on the value of failure_tolerance_count. max_concurrency_count is at most one more than the failure_tolerance_count. Note that this setting lets you specify the maximum for operations. For large deployments, under certain circumstances the actual number of accounts acted upon concurrently may be lower due to service throttling. You must specify either max_concurrency_count or max_concurrency_percentage, but not both."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.max_concurrency_count
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outputs" {
  description = "The set of outputs for the product created.\n"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.outputs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "name" {
  description = "(Required) User-friendly name of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.name
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "update" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.update
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "value" {
  description = "The output value."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.value
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "arn" {
  description = "ARN of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "create" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.create
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "key" {
  description = "The output key."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.key
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_record_id" {
  description = "Record identifier of the last request performed on this provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_record_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "launch_role_arn" {
  description = "ARN of the launch role associated with the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.launch_role_arn
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "outputs" {
  description = "The set of outputs for the product created.\n"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.outputs
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "TAINTED" {
  description = "Stable state, ready to perform any operation. The stack has completed the requested operation but is not exactly what was requested. For example, a request to update to a new version failed and the stack rolled back to the current version."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.TAINTED
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "UNDER_CHANGE" {
  description = "AVAILABLE status before performing operations."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.UNDER_CHANGE
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "cloudwatch_dashboard_names" {
  description = "Set of CloudWatch dashboards that were created when provisioning the product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.cloudwatch_dashboard_names
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "description" {
  description = " The description of the output."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.description
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status_message" {
  description = "Current status message of the provisioned product."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status_message
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "PLAN_IN_PROGRESS" {
  description = "Transitive state. The plan operations were performed to provision a new product, but resources have not yet been created. After reviewing the list of resources to be created, execute the plan. Wait for an AVAILABLE status before performing operations.TimeoutsConfiguration options:"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.PLAN_IN_PROGRESS
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_provisioning_record_id" {
  description = "Record identifier of the last request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_provisioning_record_id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "status" {
  description = "Current status of the provisioned product. See meanings below."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.status
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "type" {
  description = "Type of provisioned product. Valid values are CFN_STACK and CFN_STACKSET.status Meanings~> strongNOTE: Enable logging to WARN verbosity to further investigate error messages associated with a provisioned product in the ERROR or TAINTED state which can occur during resource creation or update."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.type
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "read" {
  description = "(Default 10m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.read
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "tags_all" {
  description = "Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.tags_all
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "AVAILABLE" {
  description = "Stable state, ready to perform any operation. The most recent operation succeeded and completed."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.AVAILABLE
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "ERROR" {
  description = "An unexpected error occurred. The provisioned product exists but the stack is not running. For example, CloudFormation received a parameter value that was not valid and could not launch the stack."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.ERROR
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "created_time" {
  description = "Time when the provisioned product was created."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.created_time
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.delete
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "Provisioned Product ID."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "last_successful_provisioning_record_id" {
  description = "Record identifier of the last successful request performed on this provisioned product of the following types: ProvisionedProduct, UpdateProvisionedProduct, ExecuteProvisionedProductPlan, TerminateProvisionedProduct."
  value       = aws_servicecatalog_provisioned_product.aws_servicecatalog_provisioned_product.last_successful_provisioning_record_id
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
      "kind/name"                   = "aws_servicecatalog_provisioned_product"
      "kind/version"                = "v0.1.0"
    }
  }
}
