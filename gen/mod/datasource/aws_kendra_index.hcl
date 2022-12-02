datasource "aws_kendra_index" "aws_kendra_index" {
  claim_regex                             = var.claim_regex
  id                                      = var.id
  key_location                            = var.key_location
  updated_at                              = var.updated_at
  user_group_resolution_mode              = var.user_group_resolution_mode
  arn                                     = var.arn
  indexed_question_answers_count          = var.indexed_question_answers_count
  user_name_attribute_field               = var.user_name_attribute_field
  group_attribute_field                   = var.group_attribute_field
  indexed_text_documents_count            = var.indexed_text_documents_count
  sortable                                = var.sortable
  url                                     = var.url
  created_at                              = var.created_at
  issuer                                  = var.issuer
  kms_key_id                              = var.kms_key_id
  search                                  = var.search
  secrets_manager_arn                     = var.secrets_manager_arn
  server_side_encryption_configuration    = var.server_side_encryption_configuration
  user_context_policy                     = var.user_context_policy
  document_metadata_configuration_updates = var.document_metadata_configuration_updates
  faq_statistics                          = var.faq_statistics
  importance                              = var.importance
  name                                    = var.name
  query_capacity_units                    = var.query_capacity_units
  role_arn                                = var.role_arn
  storage_capacity_units                  = var.storage_capacity_units
  rank_order                              = var.rank_order
  description                             = var.description
  displayable                             = var.displayable
  duration                                = var.duration
  edition                                 = var.edition
  freshness                               = var.freshness
  index_statistics                        = var.index_statistics
  jwt_token_type_configuration            = var.jwt_token_type_configuration
  text_document_statistics                = var.text_document_statistics
  values_importance_map                   = var.values_importance_map
  capacity_units                          = var.capacity_units
  facetable                               = var.facetable
  indexed_text_bytes                      = var.indexed_text_bytes
  json_token_type_configuration           = var.json_token_type_configuration
  tags                                    = var.tags
  type                                    = var.type
  user_group_resolution_configuration     = var.user_group_resolution_configuration
  error_message                           = var.error_message
  relevance                               = var.relevance
  searchable                              = var.searchable
  status                                  = var.status
  user_token_configurations               = var.user_token_configurations
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key_location" {
  description = "Location of the key. Valid values are URL or SECRET_MANAGER"
  type        = string
}
variable "updated_at" {
  description = "Unix datetime that the index was last updated."
  type        = string
}
variable "user_group_resolution_mode" {
  description = "The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are AWS_SSO or NONE.A user_token_configurations block supports the following attributes:"
  type        = string
}
variable "claim_regex" {
  description = "Regular expression that identifies the claim."
  type        = string
}
variable "id" {
  description = "Identifier of the Index."
  type        = string
}
variable "user_name_attribute_field" {
  description = "The user name attribute field.A jwt_token_type_configuration block supports the following attributes:"
  type        = string
}
variable "arn" {
  description = "ARN of the Index."
  type        = string
}
variable "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.A text_document_statistics block supports the following attributes:"
  type        = string
}
variable "sortable" {
  description = "Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is false.A index_statistics block supports the following attributes:"
  type        = string
}
variable "url" {
  description = "Signing key URL."
  type        = string
}
variable "group_attribute_field" {
  description = "The group attribute field."
  type        = string
}
variable "indexed_text_documents_count" {
  description = "The number of text documents indexed.A server_side_encryption_configuration block supports the following attributes:"
  type        = string
}
variable "kms_key_id" {
  description = "Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.A user_group_resolution_configuration block supports the following attributes:"
  type        = string
}
variable "search" {
  description = "Block that provides information about how the field is used during a search. Documented below."
  type        = string
}
variable "secrets_manager_arn" {
  description = "ARN of the secret."
  type        = string
}
variable "server_side_encryption_configuration" {
  description = "A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below."
  type        = string
}
variable "user_context_policy" {
  description = "User context policy. Valid values are ATTRIBUTE_FILTER or USER_TOKEN"
  type        = string
}
variable "created_at" {
  description = "Unix datetime that the index was created."
  type        = string
}
variable "issuer" {
  description = "Issuer of the token."
  type        = string
}
variable "importance" {
  description = "Relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10."
  type        = string
}
variable "name" {
  description = "Name of the index field. Minimum length of 1. Maximum length of 30."
  type        = string
}
variable "query_capacity_units" {
  description = "The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to QueryCapacityUnits."
  type        = string
}
variable "role_arn" {
  description = "An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the BatchPutDocument API to index documents from an Amazon S3 bucket."
  type        = string
}
variable "storage_capacity_units" {
  description = "The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.A document_metadata_configuration_updates block supports the following attributes:"
  type        = string
}
variable "document_metadata_configuration_updates" {
  description = "One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below."
  type        = string
}
variable "faq_statistics" {
  description = "Block that specifies the number of question and answer topics in the index. Documented below."
  type        = string
}
variable "duration" {
  description = "Time period that the boost applies to. For more information, refer to Duration."
  type        = string
}
variable "edition" {
  description = "Amazon Kendra edition for the index."
  type        = string
}
variable "freshness" {
  description = "How \"fresh\" a document is. For more information, refer to Freshness."
  type        = string
}
variable "index_statistics" {
  description = "Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below."
  type        = string
}
variable "jwt_token_type_configuration" {
  description = "A block that specifies the information about the JWT token type configuration.A json_token_type_configuration block supports the following attributes:"
  type        = string
}
variable "rank_order" {
  description = "Determines how values should be interpreted. For more information, refer to RankOrder."
  type        = string
}
variable "description" {
  description = "Description of the Index."
  type        = string
}
variable "displayable" {
  description = "Determines whether the field is returned in the query response. The default is true."
  type        = string
}
variable "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed.A faq_statistics block supports the following attributes:"
  type        = string
}
variable "indexed_text_bytes" {
  description = "Total size, in bytes, of the indexed documents."
  type        = string
}
variable "json_token_type_configuration" {
  description = "A block that specifies the information about the JSON token type configuration."
  type        = string
}
variable "tags" {
  description = "Metadata that helps organize the Indices you create.A capacity_units block supports the following attributes:"
  type        = string
}
variable "type" {
  description = "Data type of the index field. Valid values are STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE.A relevance block supports the following attributes:"
  type        = string
}
variable "user_group_resolution_configuration" {
  description = "A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below."
  type        = string
}
variable "values_importance_map" {
  description = "A list of values that should be given a different boost when they appear in the result list. For more information, refer to ValueImportanceMap.A search block supports the following attributes:"
  type        = string
}
variable "capacity_units" {
  description = "Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below."
  type        = string
}
variable "facetable" {
  description = "Whether the field can be used to create search facets, a count of results for each value in the field. The default is false."
  type        = string
}
variable "searchable" {
  description = "Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is true for string fields and false for number and date fields."
  type        = string
}
variable "status" {
  description = "Current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  type        = string
}
variable "user_token_configurations" {
  description = "A block that specifies the user token configuration. Documented below."
  type        = string
}
variable "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  type        = string
}
variable "relevance" {
  description = "Block that provides manual tuning parameters to determine how the field affects the search results. Documented below."
  type        = string
}
output "duration" {
  description = "Time period that the boost applies to. For more information, refer to Duration."
  value       = aws_kendra_index.aws_kendra_index.duration
}
output "edition" {
  description = "Amazon Kendra edition for the index."
  value       = aws_kendra_index.aws_kendra_index.edition
}
output "freshness" {
  description = "How \"fresh\" a document is. For more information, refer to Freshness."
  value       = aws_kendra_index.aws_kendra_index.freshness
}
output "index_statistics" {
  description = "Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below."
  value       = aws_kendra_index.aws_kendra_index.index_statistics
}
output "jwt_token_type_configuration" {
  description = "A block that specifies the information about the JWT token type configuration.A json_token_type_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.jwt_token_type_configuration
}
output "rank_order" {
  description = "Determines how values should be interpreted. For more information, refer to RankOrder."
  value       = aws_kendra_index.aws_kendra_index.rank_order
}
output "description" {
  description = "Description of the Index."
  value       = aws_kendra_index.aws_kendra_index.description
}
output "displayable" {
  description = "Determines whether the field is returned in the query response. The default is true."
  value       = aws_kendra_index.aws_kendra_index.displayable
}
output "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed.A faq_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.text_document_statistics
}
output "indexed_text_bytes" {
  description = "Total size, in bytes, of the indexed documents."
  value       = aws_kendra_index.aws_kendra_index.indexed_text_bytes
}
output "json_token_type_configuration" {
  description = "A block that specifies the information about the JSON token type configuration."
  value       = aws_kendra_index.aws_kendra_index.json_token_type_configuration
}
output "tags" {
  description = "Metadata that helps organize the Indices you create.A capacity_units block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.tags
}
output "type" {
  description = "Data type of the index field. Valid values are STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE.A relevance block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.type
}
output "user_group_resolution_configuration" {
  description = "A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below."
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_configuration
}
output "values_importance_map" {
  description = "A list of values that should be given a different boost when they appear in the result list. For more information, refer to ValueImportanceMap.A search block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.values_importance_map
}
output "capacity_units" {
  description = "Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.capacity_units
}
output "facetable" {
  description = "Whether the field can be used to create search facets, a count of results for each value in the field. The default is false."
  value       = aws_kendra_index.aws_kendra_index.facetable
}
output "searchable" {
  description = "Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is true for string fields and false for number and date fields."
  value       = aws_kendra_index.aws_kendra_index.searchable
}
output "status" {
  description = "Current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.status
}
output "user_token_configurations" {
  description = "A block that specifies the user token configuration. Documented below."
  value       = aws_kendra_index.aws_kendra_index.user_token_configurations
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.error_message
}
output "relevance" {
  description = "Block that provides manual tuning parameters to determine how the field affects the search results. Documented below."
  value       = aws_kendra_index.aws_kendra_index.relevance
}
output "key_location" {
  description = "Location of the key. Valid values are URL or SECRET_MANAGER"
  value       = aws_kendra_index.aws_kendra_index.key_location
}
output "updated_at" {
  description = "Unix datetime that the index was last updated."
  value       = aws_kendra_index.aws_kendra_index.updated_at
}
output "user_group_resolution_mode" {
  description = "The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are AWS_SSO or NONE.A user_token_configurations block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_mode
}
output "claim_regex" {
  description = "Regular expression that identifies the claim."
  value       = aws_kendra_index.aws_kendra_index.claim_regex
}
output "id" {
  description = "Identifier of the Index."
  value       = aws_kendra_index.aws_kendra_index.id
}
output "user_name_attribute_field" {
  description = "The user name attribute field.A jwt_token_type_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.user_name_attribute_field
}
output "arn" {
  description = "ARN of the Index."
  value       = aws_kendra_index.aws_kendra_index.arn
}
output "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.A text_document_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_question_answers_count
}
output "sortable" {
  description = "Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is false.A index_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.sortable
}
output "url" {
  description = "Signing key URL."
  value       = aws_kendra_index.aws_kendra_index.url
}
output "group_attribute_field" {
  description = "The group attribute field."
  value       = aws_kendra_index.aws_kendra_index.group_attribute_field
}
output "indexed_text_documents_count" {
  description = "The number of text documents indexed.A server_side_encryption_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_text_documents_count
}
output "kms_key_id" {
  description = "Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.A user_group_resolution_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.kms_key_id
}
output "search" {
  description = "Block that provides information about how the field is used during a search. Documented below."
  value       = aws_kendra_index.aws_kendra_index.search
}
output "secrets_manager_arn" {
  description = "ARN of the secret."
  value       = aws_kendra_index.aws_kendra_index.secrets_manager_arn
}
output "server_side_encryption_configuration" {
  description = "A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below."
  value       = aws_kendra_index.aws_kendra_index.server_side_encryption_configuration
}
output "user_context_policy" {
  description = "User context policy. Valid values are ATTRIBUTE_FILTER or USER_TOKEN"
  value       = aws_kendra_index.aws_kendra_index.user_context_policy
}
output "created_at" {
  description = "Unix datetime that the index was created."
  value       = aws_kendra_index.aws_kendra_index.created_at
}
output "issuer" {
  description = "Issuer of the token."
  value       = aws_kendra_index.aws_kendra_index.issuer
}
output "importance" {
  description = "Relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10."
  value       = aws_kendra_index.aws_kendra_index.importance
}
output "name" {
  description = "Name of the index field. Minimum length of 1. Maximum length of 30."
  value       = aws_kendra_index.aws_kendra_index.name
}
output "query_capacity_units" {
  description = "The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to QueryCapacityUnits."
  value       = aws_kendra_index.aws_kendra_index.query_capacity_units
}
output "role_arn" {
  description = "An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the BatchPutDocument API to index documents from an Amazon S3 bucket."
  value       = aws_kendra_index.aws_kendra_index.role_arn
}
output "storage_capacity_units" {
  description = "The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.A document_metadata_configuration_updates block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.storage_capacity_units
}
output "document_metadata_configuration_updates" {
  description = "One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.document_metadata_configuration_updates
}
output "faq_statistics" {
  description = "Block that specifies the number of question and answer topics in the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.faq_statistics
}
output "error_message" {
  description = "When the Status field value is FAILED, this contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.error_message
}
output "indexed_question_answers_count" {
  description = "The total number of FAQ questions and answers contained in the index.A text_document_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_question_answers_count
}
output "relevance" {
  description = "Block that provides manual tuning parameters to determine how the field affects the search results. Documented below."
  value       = aws_kendra_index.aws_kendra_index.relevance
}
output "role_arn" {
  description = "An AWS Identity and Access Management (IAM) role that gives Amazon Kendra permissions to access your Amazon CloudWatch logs and metrics. This is also the role you use when you call the BatchPutDocument API to index documents from an Amazon S3 bucket."
  value       = aws_kendra_index.aws_kendra_index.role_arn
}
output "secrets_manager_arn" {
  description = "ARN of the secret."
  value       = aws_kendra_index.aws_kendra_index.secrets_manager_arn
}
output "capacity_units" {
  description = "Block that sets the number of additional document storage and query capacity units that should be used by the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.capacity_units
}
output "document_metadata_configuration_updates" {
  description = "One or more blocks that specify the configuration settings for any metadata applied to the documents in the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.document_metadata_configuration_updates
}
output "index_statistics" {
  description = "Block that provides information about the number of FAQ questions and answers and the number of text documents indexed. Documented below."
  value       = aws_kendra_index.aws_kendra_index.index_statistics
}
output "server_side_encryption_configuration" {
  description = "A block that specifies the identifier of the AWS KMS customer managed key (CMK) that's used to encrypt data indexed by Amazon Kendra. Amazon Kendra doesn't support asymmetric CMKs. Documented below."
  value       = aws_kendra_index.aws_kendra_index.server_side_encryption_configuration
}
output "url" {
  description = "Signing key URL."
  value       = aws_kendra_index.aws_kendra_index.url
}
output "user_name_attribute_field" {
  description = "The user name attribute field.A jwt_token_type_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.user_name_attribute_field
}
output "user_token_configurations" {
  description = "A block that specifies the user token configuration. Documented below."
  value       = aws_kendra_index.aws_kendra_index.user_token_configurations
}
output "arn" {
  description = "ARN of the Index."
  value       = aws_kendra_index.aws_kendra_index.arn
}
output "facetable" {
  description = "Whether the field can be used to create search facets, a count of results for each value in the field. The default is false."
  value       = aws_kendra_index.aws_kendra_index.facetable
}
output "user_group_resolution_mode" {
  description = "The identity store provider (mode) you want to use to fetch access levels of groups and users. AWS Single Sign-On is currently the only available mode. Your users and groups must exist in an AWS SSO identity source in order to use this mode. Valid Values are AWS_SSO or NONE.A user_token_configurations block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_mode
}
output "values_importance_map" {
  description = "A list of values that should be given a different boost when they appear in the result list. For more information, refer to ValueImportanceMap.A search block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.values_importance_map
}
output "displayable" {
  description = "Determines whether the field is returned in the query response. The default is true."
  value       = aws_kendra_index.aws_kendra_index.displayable
}
output "user_group_resolution_configuration" {
  description = "A block that enables fetching access levels of groups and users from an AWS Single Sign-On identity source. Documented below."
  value       = aws_kendra_index.aws_kendra_index.user_group_resolution_configuration
}
output "kms_key_id" {
  description = "Identifier of the AWS KMScustomer master key (CMK). Amazon Kendra doesn't support asymmetric CMKs.A user_group_resolution_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.kms_key_id
}
output "searchable" {
  description = "Determines whether the field is used in the search. If the Searchable field is true, you can use relevance tuning to manually tune how Amazon Kendra weights the field in the search. The default is true for string fields and false for number and date fields."
  value       = aws_kendra_index.aws_kendra_index.searchable
}
output "query_capacity_units" {
  description = "The amount of extra query capacity for an index and GetQuerySuggestions capacity. For more information, refer to QueryCapacityUnits."
  value       = aws_kendra_index.aws_kendra_index.query_capacity_units
}
output "status" {
  description = "Current status of the index. When the value is ACTIVE, the index is ready for use. If the Status field value is FAILED, the error_message field contains a message that explains why."
  value       = aws_kendra_index.aws_kendra_index.status
}
output "tags" {
  description = "Metadata that helps organize the Indices you create.A capacity_units block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.tags
}
output "user_context_policy" {
  description = "User context policy. Valid values are ATTRIBUTE_FILTER or USER_TOKEN"
  value       = aws_kendra_index.aws_kendra_index.user_context_policy
}
output "importance" {
  description = "Relative importance of the field in the search. Larger numbers provide more of a boost than smaller numbers. Minimum value of 1. Maximum value of 10."
  value       = aws_kendra_index.aws_kendra_index.importance
}
output "key_location" {
  description = "Location of the key. Valid values are URL or SECRET_MANAGER"
  value       = aws_kendra_index.aws_kendra_index.key_location
}
output "faq_statistics" {
  description = "Block that specifies the number of question and answer topics in the index. Documented below."
  value       = aws_kendra_index.aws_kendra_index.faq_statistics
}
output "freshness" {
  description = "How \"fresh\" a document is. For more information, refer to Freshness."
  value       = aws_kendra_index.aws_kendra_index.freshness
}
output "json_token_type_configuration" {
  description = "A block that specifies the information about the JSON token type configuration."
  value       = aws_kendra_index.aws_kendra_index.json_token_type_configuration
}
output "jwt_token_type_configuration" {
  description = "A block that specifies the information about the JWT token type configuration.A json_token_type_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.jwt_token_type_configuration
}
output "type" {
  description = "Data type of the index field. Valid values are STRING_VALUE, STRING_LIST_VALUE, LONG_VALUE, DATE_VALUE.A relevance block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.type
}
output "updated_at" {
  description = "Unix datetime that the index was last updated."
  value       = aws_kendra_index.aws_kendra_index.updated_at
}
output "duration" {
  description = "Time period that the boost applies to. For more information, refer to Duration."
  value       = aws_kendra_index.aws_kendra_index.duration
}
output "edition" {
  description = "Amazon Kendra edition for the index."
  value       = aws_kendra_index.aws_kendra_index.edition
}
output "description" {
  description = "Description of the Index."
  value       = aws_kendra_index.aws_kendra_index.description
}
output "group_attribute_field" {
  description = "The group attribute field."
  value       = aws_kendra_index.aws_kendra_index.group_attribute_field
}
output "issuer" {
  description = "Issuer of the token."
  value       = aws_kendra_index.aws_kendra_index.issuer
}
output "search" {
  description = "Block that provides information about how the field is used during a search. Documented below."
  value       = aws_kendra_index.aws_kendra_index.search
}
output "sortable" {
  description = "Determines whether the field can be used to sort the results of a query. If you specify sorting on a field that does not have Sortable set to true, Amazon Kendra returns an exception. The default is false.A index_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.sortable
}
output "storage_capacity_units" {
  description = "The amount of extra storage capacity for an index. A single capacity unit provides 30 GB of storage space or 100,000 documents, whichever is reached first. Minimum value of 0.A document_metadata_configuration_updates block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.storage_capacity_units
}
output "claim_regex" {
  description = "Regular expression that identifies the claim."
  value       = aws_kendra_index.aws_kendra_index.claim_regex
}
output "created_at" {
  description = "Unix datetime that the index was created."
  value       = aws_kendra_index.aws_kendra_index.created_at
}
output "indexed_text_documents_count" {
  description = "The number of text documents indexed.A server_side_encryption_configuration block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.indexed_text_documents_count
}
output "name" {
  description = "Name of the index field. Minimum length of 1. Maximum length of 30."
  value       = aws_kendra_index.aws_kendra_index.name
}
output "rank_order" {
  description = "Determines how values should be interpreted. For more information, refer to RankOrder."
  value       = aws_kendra_index.aws_kendra_index.rank_order
}
output "text_document_statistics" {
  description = "A block that specifies the number of text documents indexed.A faq_statistics block supports the following attributes:"
  value       = aws_kendra_index.aws_kendra_index.text_document_statistics
}
output "id" {
  description = "Identifier of the Index."
  value       = aws_kendra_index.aws_kendra_index.id
}
output "indexed_text_bytes" {
  description = "Total size, in bytes, of the indexed documents."
  value       = aws_kendra_index.aws_kendra_index.indexed_text_bytes
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
}
