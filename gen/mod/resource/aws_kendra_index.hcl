resource "aws_kendra_index" "aws_kendra_index" {
  capacity_units                          = var.capacity_units
  importance                              = var.importance
  index_statistics                        = var.index_statistics
  indexed_question_answers_count          = var.indexed_question_answers_count
  name                                    = var.name
  status                                  = var.status
  storage_capacity_units                  = var.storage_capacity_units
  url                                     = var.url
  displayable                             = var.displayable
  edition                                 = var.edition
  faq_statistics                          = var.faq_statistics
  type                                    = var.type
  user_context_policy                     = var.user_context_policy
  user_group_resolution_mode              = var.user_group_resolution_mode
  create                                  = var.create
  created_at                              = var.created_at
  error_message                           = var.error_message
  facetable                               = var.facetable
  group_attribute_field                   = var.group_attribute_field
  server_side_encryption_configuration    = var.server_side_encryption_configuration
  text_document_statistics                = var.text_document_statistics
  updated_at                              = var.updated_at
  user_group_resolution_configuration     = var.user_group_resolution_configuration
  duration                                = var.duration
  id                                      = var.id
  issuer                                  = var.issuer
  jwt_token_type_configuration            = var.jwt_token_type_configuration
  query_capacity_units                    = var.query_capacity_units
  tags                                    = var.tags
  user_token_configurations               = var.user_token_configurations
  rank_order                              = var.rank_order
  search                                  = var.search
  arn                                     = var.arn
  indexed_text_bytes                      = var.indexed_text_bytes
  json_token_type_configuration           = var.json_token_type_configuration
  key_location                            = var.key_location
  kms_key_id                              = var.kms_key_id
  role_arn                                = var.role_arn
  searchable                              = var.searchable
  description                             = var.description
  document_metadata_configuration_updates = var.document_metadata_configuration_updates
  freshness                               = var.freshness
  relevance                               = var.relevance
  claim_regex                             = var.claim_regex
  delete                                  = var.delete
  secrets_manager_arn                     = var.secrets_manager_arn
  sortable                                = var.sortable
  tags_all                                = var.tags_all
  update                                  = var.update
  user_name_attribute_field               = var.user_name_attribute_field
  values_importance_map                   = var.values_importance_map
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "indexed_text_bytes" {
  description = "The total size, in bytes, of the indexed documents."
  type        = string
}
variable "json_token_type_configuration" {
  description = "(Optional) A block that specifies the information about the JSON token type configuration. Detailed below."
  type        = string
  default     = ""
}
variable "key_location" {
  description = "(Required) The location of the key. Valid values are URL or SECRET_MANAGER"
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.user_group_resolution_configurationA user_group_resolution_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Required) An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the BatchPutDocument API to index documents from an Amazon S3 bucket."
  type        = string
}
variable "searchable" {
  description = "(Required) Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is true for string fields and false for number and date fields."
  type        = string
}
variable "arn" {
  description = "The Amazon Resource Name (ARN) of the Index."
  type        = string
}
variable "document_metadata_configuration_updates" {
  description = "(Optional) One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at Amazon Kendra Index documentation. For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below."
  type        = string
  default     = ""
}
variable "freshness" {
  description = "(Required if type is of DATE_VALUE) Indicates that this field determines how \"fresh\" a document is. For more information, refer to Freshness."
  type        = string
}
variable "relevance" {
  description = "(Required) A block that provides manual tuning parameters to determine how the field affects the search results. Detailed below"
  type        = string
}
variable "description" {
  description = "(Optional) The description of the Index."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 40m)"
  type        = string
}
variable "secrets_manager_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the secret."
  type        = string
  default     = ""
}
variable "sortable" {
  description = "(Required) Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is false.server_side_encryption_configurationA server_side_encryption_configuration block supports the following arguments:"
  type        = string
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.index_statisticsA index_statistics block supports the following attributes:"
  type        = string
}
variable "update" {
  description = "(Default 40m)In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "user_name_attribute_field" {
  description = "(Optional) The user name attribute field. Minimum length of 1. Maximum length of 100.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "values_importance_map" {
  description = "(Required if type is of STRING_VALUE) A list of values that should be given a different boost when they appear in the result list. For more information, refer to ValueImportanceMap.searchA search block supports the following attributes:"
  type        = string
}
variable "claim_regex" {
  description = "(Optional) The regular expression that identifies the claim. Minimum length of 1. Maximum length of 100."
  type        = string
  default     = ""
}
variable "importance" {
  description = "(Required for all types) The relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10."
  type        = string
}
variable "index_statistics" {
  description = "A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below."
  type        = string
}
variable "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.text_document_statisticsA text_document_statistics block supports the following attributes:"
  type        = string
}
variable "name" {
  description = "(Required) The name of the index field. Minimum length of 1. Maximum length of 30."
  type        = string
}
variable "status" {
  description = "The current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  type        = string
}
variable "storage_capacity_units" {
  description = "(Required) The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.document_metadata_configuration_updatesA document_metadata_configuration_updates block supports the following arguments:"
  type        = string
}
variable "url" {
  description = "(Optional) The signing key URL. Valid pattern is ^(https?|ftp|file):\\/\\/([^\\s]*)"
  type        = string
  default     = ""
}
variable "capacity_units" {
  description = "(Optional) A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below."
  type        = string
  default     = ""
}
variable "edition" {
  description = "(Optional) The Amazon Kendra edition to use for the index. Choose DEVELOPER_EDITION for indexes intended for development, testing, or proof of concept. Use ENTERPRISE_EDITION for your production databases. Once you set the edition for an index, it can't be changed. Defaults to ENTERPRISE_EDITION"
  type        = string
  default     = ""
}
variable "faq_statistics" {
  description = "A block that specifies the number of question and answer topics in the index. Detailed below."
  type        = string
}
variable "type" {
  description = "(Required) The data type of the index field. Valid values are STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE.relevanceA relevance block supports the following attributes:"
  type        = string
}
variable "user_context_policy" {
  description = "(Optional) The user context policy. Valid values are ATTRIBUTE_FILTER or USER_TOKEN. For more information, refer to UserContextPolicy. Defaults to ATTRIBUTE_FILTER."
  type        = string
  default     = ""
}
variable "user_group_resolution_mode" {
  description = "(Required) The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are AWS_SSO or NONE.user_token_configurationsA user_token_configurations block supports the following arguments:"
  type        = string
}
variable "displayable" {
  description = "(Required) Determines whether the field is returned in the query response. The default is true."
  type        = string
}
variable "created_at" {
  description = "The Unix datetime that the index was created."
  type        = string
}
variable "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  type        = string
}
variable "facetable" {
  description = "(Required) Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is false."
  type        = string
}
variable "group_attribute_field" {
  description = "(Optional) The group attribute field. Minimum length of 1. Maximum length of 100."
  type        = string
  default     = ""
}
variable "server_side_encryption_configuration" {
  description = "(Optional) A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below."
  type        = string
  default     = ""
}
variable "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed. Detailed below.faq_statisticsA faq_statistics block supports the following attributes:"
  type        = string
}
variable "updated_at" {
  description = "The Unix datetime that the index was last updated."
  type        = string
}
variable "create" {
  description = "(Default 40m)"
  type        = string
}
variable "user_group_resolution_configuration" {
  description = "(Optional) A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see UserGroupResolutionConfiguration. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "The identifier of the Index."
  type        = string
}
variable "issuer" {
  description = "(Optional) The issuer of the token. Minimum length of 1. Maximum length of 65."
  type        = string
  default     = ""
}
variable "jwt_token_type_configuration" {
  description = "(Optional) A block that specifies the information about the JWT token type configuration. Detailed below.json_token_type_configurationA json_token_type_configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "query_capacity_units" {
  description = "(Required) The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to QueryCapacityUnits."
  type        = string
}
variable "tags" {
  description = "(Optional) Tags to apply to the Index. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.capacity_unitsA capacity_units block supports the following arguments:"
  type        = string
  default     = ""
}
variable "user_token_configurations" {
  description = "(Optional) A block that specifies the user token configuration. Detailed below."
  type        = string
  default     = ""
}
variable "duration" {
  description = "(Required if type is of DATE_VALUE) Specifies the time period that the boost applies to. For more information, refer to Duration."
  type        = string
}
variable "search" {
  description = "(Required) A block that provides information about how the field is used during a search. Documented below. Detailed below"
  type        = string
}
variable "rank_order" {
  description = "(Required if type is of DATE_VALUE, or LONG_VALUE) Determines how values should be interpreted. For more information, refer to RankOrder."
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
output "name" {
  description = "(Required) The name of the index field. Minimum length of 1. Maximum length of 30."
  value       = aws_kendra_index.aws_kendra_index.name
}
output "status" {
  description = "The current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.status
}
output "storage_capacity_units" {
  description = "(Required) The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.document_metadata_configuration_updatesA document_metadata_configuration_updates block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.storage_capacity_units
}
output "url" {
  description = "(Optional) The signing key URL. Valid pattern is ^(https?|ftp|file):\\/\\/([^\\s]*)"
  value       = aws_kendra_index.aws_kendra_index.url
}
output "capacity_units" {
  description = "(Optional) A block that sets the number of additional document storage and query capacity units that should be used by the index. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.capacity_units
}
output "importance" {
  description = "(Required for all types) The relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10."
  value       = aws_kendra_index.aws_kendra_index.importance
}
output "index_statistics" {
  description = "A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.index_statistics
}
output "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.text_document_statisticsA text_document_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_question_answers_count
}
output "user_context_policy" {
  description = "(Optional) The user context policy. Valid values are ATTRIBUTE_FILTER or USER_TOKEN. For more information, refer to UserContextPolicy. Defaults to ATTRIBUTE_FILTER."
  value       = aws_kendra_index.aws_kendra_index.user_context_policy
}
output "user_group_resolution_mode" {
  description = "(Required) The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are AWS_SSO or NONE.user_token_configurationsA user_token_configurations block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_mode
}
output "displayable" {
  description = "(Required) Determines whether the field is returned in the query response. The default is true."
  value       = aws_kendra_index.aws_kendra_index.displayable
}
output "edition" {
  description = "(Optional) The Amazon Kendra edition to use for the index. Choose DEVELOPER_EDITION for indexes intended for development, testing, or proof of concept. Use ENTERPRISE_EDITION for your production databases. Once you set the edition for an index, it can't be changed. Defaults to ENTERPRISE_EDITION"
  value       = aws_kendra_index.aws_kendra_index.edition
}
output "faq_statistics" {
  description = "A block that specifies the number of question and answer topics in the index. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.faq_statistics
}
output "type" {
  description = "(Required) The data type of the index field. Valid values are STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE.relevanceA relevance block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.type
}
output "group_attribute_field" {
  description = "(Optional) The group attribute field. Minimum length of 1. Maximum length of 100."
  value       = aws_kendra_index.aws_kendra_index.group_attribute_field
}
output "server_side_encryption_configuration" {
  description = "(Optional) A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.server_side_encryption_configuration
}
output "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed. Detailed below.faq_statisticsA faq_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.text_document_statistics
}
output "updated_at" {
  description = "The Unix datetime that the index was last updated."
  value       = aws_kendra_index.aws_kendra_index.updated_at
}
output "create" {
  description = "(Default 40m)"
  value       = aws_kendra_index.aws_kendra_index.create
}
output "created_at" {
  description = "The Unix datetime that the index was created."
  value       = aws_kendra_index.aws_kendra_index.created_at
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.error_message
}
output "facetable" {
  description = "(Required) Indicates that the field can be used to create search facets, a count of results for each value in the field. The default is false."
  value       = aws_kendra_index.aws_kendra_index.facetable
}
output "user_group_resolution_configuration" {
  description = "(Optional) A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. To configure this, see UserGroupResolutionConfiguration. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_configuration
}
output "query_capacity_units" {
  description = "(Required) The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to QueryCapacityUnits."
  value       = aws_kendra_index.aws_kendra_index.query_capacity_units
}
output "tags" {
  description = "(Optional) Tags to apply to the Index. If configured with a provider\ndefault_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.capacity_unitsA capacity_units block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.tags
}
output "user_token_configurations" {
  description = "(Optional) A block that specifies the user token configuration. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.user_token_configurations
}
output "duration" {
  description = "(Required if type is of DATE_VALUE) Specifies the time period that the boost applies to. For more information, refer to Duration."
  value       = aws_kendra_index.aws_kendra_index.duration
}
output "id" {
  description = "The identifier of the Index."
  value       = aws_kendra_index.aws_kendra_index.id
}
output "issuer" {
  description = "(Optional) The issuer of the token. Minimum length of 1. Maximum length of 65."
  value       = aws_kendra_index.aws_kendra_index.issuer
}
output "jwt_token_type_configuration" {
  description = "(Optional) A block that specifies the information about the JWT token type configuration. Detailed below.json_token_type_configurationA json_token_type_configuration block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.jwt_token_type_configuration
}
output "rank_order" {
  description = "(Required if type is of DATE_VALUE, or LONG_VALUE) Determines how values should be interpreted. For more information, refer to RankOrder."
  value       = aws_kendra_index.aws_kendra_index.rank_order
}
output "search" {
  description = "(Required) A block that provides information about how the field is used during a search. Documented below. Detailed below"
  value       = aws_kendra_index.aws_kendra_index.search
}
output "kms_key_id" {
  description = "(Optional) The identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.user_group_resolution_configurationA user_group_resolution_configuration block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.kms_key_id
}
output "role_arn" {
  description = "(Required) An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the BatchPutDocument API to index documents from an Amazon S3 bucket."
  value       = aws_kendra_index.aws_kendra_index.role_arn
}
output "searchable" {
  description = "(Required) Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is true for string fields and false for number and date fields."
  value       = aws_kendra_index.aws_kendra_index.searchable
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Index."
  value       = aws_kendra_index.aws_kendra_index.arn
}
output "indexed_text_bytes" {
  description = "The total size, in bytes, of the indexed documents."
  value       = aws_kendra_index.aws_kendra_index.indexed_text_bytes
}
output "json_token_type_configuration" {
  description = "(Optional) A block that specifies the information about the JSON token type configuration. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.json_token_type_configuration
}
output "key_location" {
  description = "(Required) The location of the key. Valid values are URL or SECRET_MANAGER"
  value       = aws_kendra_index.aws_kendra_index.key_location
}
output "description" {
  description = "(Optional) The description of the Index."
  value       = aws_kendra_index.aws_kendra_index.description
}
output "document_metadata_configuration_updates" {
  description = "(Optional) One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Minimum number of 0 items. Maximum number of 500 items. If specified, you must define all elements, including those that are provided by default. These index fields are documented at Amazon Kendra Index documentation. For an example resource that defines these default index fields, refer to the default example above. For an example resource that appends additional index fields, refer to the append example above. All arguments for each block must be specified. Note that blocks cannot be removed since index fields cannot be deleted. This argument is detailed below."
  value       = aws_kendra_index.aws_kendra_index.document_metadata_configuration_updates
}
output "freshness" {
  description = "(Required if type is of DATE_VALUE) Indicates that this field determines how \"fresh\" a document is. For more information, refer to Freshness."
  value       = aws_kendra_index.aws_kendra_index.freshness
}
output "relevance" {
  description = "(Required) A block that provides manual tuning parameters to determine how the field affects the search results. Detailed below"
  value       = aws_kendra_index.aws_kendra_index.relevance
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.index_statisticsA index_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.tags_all
}
output "update" {
  description = "(Default 40m)In addition to all arguments above, the following attributes are exported:"
  value       = aws_kendra_index.aws_kendra_index.update
}
output "user_name_attribute_field" {
  description = "(Optional) The user name attribute field. Minimum length of 1. Maximum length of 100.TimeoutsConfiguration options:"
  value       = aws_kendra_index.aws_kendra_index.user_name_attribute_field
}
output "values_importance_map" {
  description = "(Required if type is of STRING_VALUE) A list of values that should be given a different boost when they appear in the result list. For more information, refer to ValueImportanceMap.searchA search block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.values_importance_map
}
output "claim_regex" {
  description = "(Optional) The regular expression that identifies the claim. Minimum length of 1. Maximum length of 100."
  value       = aws_kendra_index.aws_kendra_index.claim_regex
}
output "delete" {
  description = "(Default 40m)"
  value       = aws_kendra_index.aws_kendra_index.delete
}
output "secrets_manager_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the secret."
  value       = aws_kendra_index.aws_kendra_index.secrets_manager_arn
}
output "sortable" {
  description = "(Required) Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is false.server_side_encryption_configurationA server_side_encryption_configuration block supports the following arguments:"
  value       = aws_kendra_index.aws_kendra_index.sortable
}
output "indexed_text_documents_count" {
  description = "The number of text documents indexed."
  value       = aws_kendra_index.aws_kendra_index.indexed_text_documents_count
}
output "status" {
  description = "The current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.index_statisticsA index_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.tags_all
}
output "updated_at" {
  description = "The Unix datetime that the index was last updated."
  value       = aws_kendra_index.aws_kendra_index.updated_at
}
output "created_at" {
  description = "The Unix datetime that the index was created."
  value       = aws_kendra_index.aws_kendra_index.created_at
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.error_message
}
output "index_statistics" {
  description = "A block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.index_statistics
}
output "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.text_document_statisticsA text_document_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_question_answers_count
}
output "indexed_text_bytes" {
  description = "The total size, in bytes, of the indexed documents."
  value       = aws_kendra_index.aws_kendra_index.indexed_text_bytes
}
output "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed. Detailed below.faq_statisticsA faq_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.text_document_statistics
}
output "arn" {
  description = "The Amazon Resource Name (ARN) of the Index."
  value       = aws_kendra_index.aws_kendra_index.arn
}
output "faq_statistics" {
  description = "A block that specifies the number of question and answer topics in the index. Detailed below."
  value       = aws_kendra_index.aws_kendra_index.faq_statistics
}
output "id" {
  description = "The identifier of the Index."
  value       = aws_kendra_index.aws_kendra_index.id
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
      "kind/name"                   = "aws_kendra_index"
      "kind/version"                = "v0.1.0"
    }
  }
}
