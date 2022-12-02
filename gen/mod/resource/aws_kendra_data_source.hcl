resource "aws_kendra_data_source" "aws_kendra_data_source" {
  max_content_size_per_page_in_mega_bytes  = var.max_content_size_per_page_in_mega_bytes
  type                                     = var.type
  data_source_id                           = var.data_source_id
  pre_extraction_hook_configuration        = var.pre_extraction_hook_configuration
  proxy_configuration                      = var.proxy_configuration
  SUBDOMAINS                               = var.SUBDOMAINS
  condition_document_attribute_key         = var.condition_document_attribute_key
  max_urls_per_minute_crawl_rate           = var.max_urls_per_minute_crawl_rate
  seed_urls                                = var.seed_urls
  string_list_value                        = var.string_list_value
  language_code                            = var.language_code
  condition                                = var.condition
  delete                                   = var.delete
  inline_configurations                    = var.inline_configurations
  date_value                               = var.date_value
  key_path                                 = var.key_path
  access_control_list_configuration        = var.access_control_list_configuration
  created_at                               = var.created_at
  credentials                              = var.credentials
  s3_bucket                                = var.s3_bucket
  site_maps                                = var.site_maps
  urls                                     = var.urls
  HOST_ONLY                                = var.HOST_ONLY
  condition_on_value                       = var.condition_on_value
  operator                                 = var.operator
  configuration                            = var.configuration
  index_id                                 = var.index_id
  url_exclusion_patterns                   = var.url_exclusion_patterns
  inclusion_patterns                       = var.inclusion_patterns
  long_value                               = var.long_value
  seed_url_configuration                   = var.seed_url_configuration
  target                                   = var.target
  arn                                      = var.arn
  custom_document_enrichment_configuration = var.custom_document_enrichment_configuration
  error_message                            = var.error_message
  invocation_condition                     = var.invocation_condition
  port                                     = var.port
  document_content_deletion                = var.document_content_deletion
  documents_metadata_configuration         = var.documents_metadata_configuration
  id                                       = var.id
  target_document_attribute_value          = var.target_document_attribute_value
  web_crawler_mode                         = var.web_crawler_mode
  description                              = var.description
  role_arn                                 = var.role_arn
  tags                                     = var.tags
  lambda_arn                               = var.lambda_arn
  schedule                                 = var.schedule
  s3_prefix                                = var.s3_prefix
  site_maps_configuration                  = var.site_maps_configuration
  update                                   = var.update
  authentication_configuration             = var.authentication_configuration
  bucket_name                              = var.bucket_name
  exclusion_patterns                       = var.exclusion_patterns
  target_document_attribute_value_deletion = var.target_document_attribute_value_deletion
  updated_at                               = var.updated_at
  host                                     = var.host
  max_links_per_page                       = var.max_links_per_page
  target_document_attribute_key            = var.target_document_attribute_key
  string                                   = var.string
  web_crawler_configuration                = var.web_crawler_configuration
  basic_authentication                     = var.basic_authentication
  crawl_depth                              = var.crawl_depth
  create                                   = var.create
  post_extraction_hook_configuration       = var.post_extraction_hook_configuration
  s3_configuration                         = var.s3_configuration
  status                                   = var.status
  tags_all                                 = var.tags_all
  url_inclusion_patterns                   = var.url_inclusion_patterns
  EVERYTHING                               = var.EVERYTHING
  inclusion_prefixes                       = var.inclusion_prefixes
  name                                     = var.name
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "invocation_condition" {
  description = "(Optional) A block that specifies the condition used for when a Lambda function should be invoked. For example, you can specify a condition that if there are empty date-time values, then Amazon Kendra should invoke a function that inserts the current date-time. See Document Attribute Condition."
  type        = string
  default     = ""
}
variable "port" {
  description = "(Required) The port number of the website host you want to connect to via a web proxy server. For example, the port for https://a.example.com/page1.html is 443, the standard port for HTTPS.urlsThe urls configuration block supports the following arguments:"
  type        = string
}
variable "document_content_deletion" {
  description = "(Optional) TRUE to delete content if the condition used for the target attribute is met."
  type        = string
  default     = ""
}
variable "documents_metadata_configuration" {
  description = "(Optional) A block that defines the Ddcument metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document. Detailed below."
  type        = string
  default     = ""
}
variable "id" {
  description = "The unique identifiers of the Data Source and index separated by a slash (/)."
  type        = string
  default     = ""
}
variable "target_document_attribute_value" {
  description = "(Optional) The target value you want to create for the target attribute. For example, 'Finance' could be the target value for the target attribute key 'Department'.\nSee Document Attribute Value."
  type        = string
  default     = ""
}
variable "web_crawler_mode" {
  description = "(Optional) The default mode is set to HOST_ONLY"
  type        = string
  default     = ""
}
variable "description" {
  description = "(Optional) A description for the Data Source connector."
  type        = string
  default     = ""
}
variable "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a role with permission to run pre_extraction_hook_configuration and post_extraction_hook_configuration for altering document metadata and content during the document ingestion process. For more information, see IAM roles for Amazon Kendra.inline_configurationsThe inline_configurations configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configurationThe configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "lambda_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of a Lambda Function that can manipulate your document metadata fields or attributes and content."
  type        = string
}
variable "schedule" {
  description = "(Optional) Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the StartDataSourceSyncJob API to update the index."
  type        = string
  default     = ""
}
variable "s3_prefix" {
  description = "(Optional) A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use s3_prefix to include only the desired metadata files.web_crawler_configurationThe web_crawler_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "site_maps_configuration" {
  description = "(Optional) A block that specifies the configuration of the sitemap URLs of the websites you want to crawl. Only URLs belonging to the same website host names are crawled. You can list up to 3 sitemap URLs. Detailed below.The seed_url_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "authentication_configuration" {
  description = "(Optional) A block with the configuration information required to connect to websites using authentication. You can connect to websites using basic authentication of user name and password. You use a secret in AWS Secrets Manager to store your authentication credentials. You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is \"a.example.com\" and the port is 443, the standard port for HTTPS. Detailed below."
  type        = string
  default     = ""
}
variable "bucket_name" {
  description = "(Required) The name of the bucket that contains the documents."
  type        = string
}
variable "exclusion_patterns" {
  description = "(Optional) A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to Exclusion Patterns for more examples."
  type        = string
  default     = ""
}
variable "target_document_attribute_value_deletion" {
  description = "(Optional) TRUE to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to TRUE. To create a target value (TargetDocumentAttributeValue), set this to FALSE.hook_configurationThe hook_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "updated_at" {
  description = "The Unix timestamp of when the Data Source was last updated."
  type        = string
  default     = ""
}
variable "host" {
  description = "(Required) The name of the website host you want to connect to via a web proxy server. For example, the host name of https://a.example.com/page1.html is \"a.example.com\"."
  type        = string
}
variable "max_links_per_page" {
  description = "(Optional) The maximum number of URLs on a webpage to include when crawling a website. This number is per webpage. As a website’s webpages are crawled, any URLs the webpages link to are also crawled. URLs on a webpage are crawled in order of appearance. The default maximum links per page is 100. Minimum value of 1. Maximum value of 1000."
  type        = string
  default     = ""
}
variable "target_document_attribute_key" {
  description = "(Optional) The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents."
  type        = string
  default     = ""
}
variable "string" {
  description = "(Optional) A string, such as \"department\".In addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "web_crawler_configuration" {
  description = "(Required if type is set to WEBCRAWLER) A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.s3_configurationThe s3_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "basic_authentication" {
  description = "(Optional) The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.The basic_authentication configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "crawl_depth" {
  description = "(Optional) Specifies the number of levels in a website that you want to crawl. The first level begins from the website seed or starting point URL. For example, if a website has 3 levels – index level (i.e. seed in this example), sections level, and subsections level – and you are only interested in crawling information up to the sections level (i.e. levels 0-1), you can set your depth to 1. The default crawl depth is set to 2. Minimum value of 0. Maximum value of 10."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "post_extraction_hook_configuration" {
  description = "(Optional) A block that specifies the configuration information for invoking a Lambda function in AWS Lambda on the structured documents with their metadata and text extracted. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see Advanced data manipulation. Detailed below."
  type        = string
  default     = ""
}
variable "s3_configuration" {
  description = "(Required if type is set to S3) A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below."
  type        = string
  default     = ""
}
variable "status" {
  description = "The current status of the Data Source. When the status is ACTIVE the Data Source is ready to use. When the status is FAILED, the error_message field contains the reason that the Data Source failed."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  type        = string
  default     = ""
}
variable "url_inclusion_patterns" {
  description = "(Optional) A list of regular expression patterns to include certain URLs to crawl. URLs that match the patterns are included in the index. URLs that don't match the patterns are excluded from the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 150."
  type        = string
  default     = ""
}
variable "EVERYTHING" {
  description = " – crawl the website host names with subdomains and other domains that the webpages link to.The site_maps_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "inclusion_prefixes" {
  description = "(Optional) A list of S3 prefixes for the documents that should be included in the index.access_control_list_configurationThe access_control_list_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "name" {
  description = "(Required) A name for your Data Source connector."
  type        = string
}
variable "max_content_size_per_page_in_mega_bytes" {
  description = "(Optional) The maximum size (in MB) of a webpage or attachment to crawl. Files larger than this size (in MB) are skipped/not crawled. The default maximum size of a webpage or attachment is set to 50 MB. Minimum value of 1.0e-06. Maximum value of 50."
  type        = string
  default     = ""
}
variable "type" {
  description = "(Required, Forces new resource) The type of data source repository. For an updated list of values, refer to Valid Values for Type."
  type        = string
}
variable "data_source_id" {
  description = "The unique identifiers of the Data Source."
  type        = string
  default     = ""
}
variable "pre_extraction_hook_configuration" {
  description = "(Optional) Configuration information for invoking a Lambda function in AWS Lambda on the original or raw documents before extracting their metadata and text. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see Advanced data manipulation. Detailed below."
  type        = string
  default     = ""
}
variable "proxy_configuration" {
  description = "(Optional) Configuration information required to connect to your internal websites via a web proxy. You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is \"a.example.com\" and the port is 443, the standard port for HTTPS. Web proxy credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in AWS Secrets Manager. Detailed below."
  type        = string
  default     = ""
}
variable "SUBDOMAINS" {
  description = " – crawl the website host names with subdomains. For example, if the seed URL is \"abc.example.com\", then \"a.abc.example.com\" and \"b.abc.example.com\" are also crawled."
  type        = string
  default     = ""
}
variable "condition_document_attribute_key" {
  description = "(Required) The identifier of the document attribute used for the condition. For example, _source_uri could be an identifier for the attribute or metadata field that contains source URIs associated with the documents. Amazon Kendra currently does not support _document_body as an attribute key used for the condition."
  type        = string
}
variable "max_urls_per_minute_crawl_rate" {
  description = "(Optional) The maximum number of URLs crawled per website host per minute. The default maximum number of URLs crawled per website host per minute is 300. Minimum value of 1. Maximum value of 300."
  type        = string
  default     = ""
}
variable "seed_urls" {
  description = "(Required) The list of seed or starting point URLs of the websites you want to crawl. The list can include a maximum of 100 seed URLs. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 2048."
  type        = string
}
variable "string_list_value" {
  description = "(Optional) A list of strings."
  type        = string
  default     = ""
}
variable "language_code" {
  description = "(Optional) The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  type        = string
  default     = ""
}
variable "condition" {
  description = "(Optional) Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See Document Attribute Condition."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Default 30m)"
  type        = string
  default     = ""
}
variable "inline_configurations" {
  description = "(Optional) Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Kendra. Minimum number of 0 items. Maximum number of 100 items. Detailed below."
  type        = string
  default     = ""
}
variable "date_value" {
  description = "(Optional) A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, 2012-03-25T12:30:10+00:00."
  type        = string
  default     = ""
}
variable "key_path" {
  description = "(Optional) Path to the AWS S3 bucket that contains the ACL files.documents_metadata_configurationThe documents_metadata_configuration configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "access_control_list_configuration" {
  description = "(Optional) A block that provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see Access control for S3 data sources. Detailed below."
  type        = string
  default     = ""
}
variable "created_at" {
  description = "The Unix timestamp of when the Data Source was created."
  type        = string
  default     = ""
}
variable "credentials" {
  description = "(Optional) Your secret ARN, which you can create in AWS Secrets Manager. The credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials."
  type        = string
  default     = ""
}
variable "s3_bucket" {
  description = "(Required) Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see Data contracts for Lambda functions.Document Attribute ConditionThe condition and invocation_condition configuration blocks supports the following arguments:"
  type        = string
}
variable "site_maps" {
  description = "(Required) The list of sitemap URLs of the websites you want to crawl. The list can include a maximum of 3 sitemap URLs.custom_document_enrichment_configurationThe custom_document_enrichment_configuration configuration block supports the following arguments:"
  type        = string
}
variable "urls" {
  description = "(Required) A block that specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl. You can include website subdomains. You can list up to 100 seed URLs and up to 3 sitemap URLs. You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when crawling a website, it could be that the website is blocked from crawling. When selecting websites to index, you must adhere to the Amazon Acceptable Use Policy and all other Amazon terms. Remember that you must only use Amazon Kendra Web Crawler to index your own webpages, or webpages that you have authorization to index. Detailed below.authentication_configurationThe authentication_configuration configuration block supports the following arguments:"
  type        = string
}
variable "HOST_ONLY" {
  description = " – crawl only the website host names. For example, if the seed URL is \"abc.example.com\", then only URLs with host name \"abc.example.com\" are crawled."
  type        = string
  default     = ""
}
variable "condition_on_value" {
  description = "(Optional) The value used by the operator. For example, you can specify the value 'financial' for strings in the _source_uri field that partially match or contain this value. See Document Attribute Value."
  type        = string
  default     = ""
}
variable "operator" {
  description = "(Required) The condition operator. For example, you can use Contains to partially match a string. Valid Values: GreaterThan | GreaterThanOrEquals | LessThan | LessThanOrEquals | Equals | NotEquals | Contains | NotContains | Exists | NotExists | BeginsWith.Document Attribute ValueThe condition_on_value and target_document_attribute_value configuration blocks supports the following arguments:"
  type        = string
}
variable "configuration" {
  description = "(Optional) A block with the configuration information to connect to your Data Source repository. You can't specify the configuration argument when the type parameter is set to CUSTOM. Detailed below."
  type        = string
  default     = ""
}
variable "index_id" {
  description = "(Required, Forces new resource) The identifier of the index for your Amazon Kendra data_source."
  type        = string
}
variable "url_exclusion_patterns" {
  description = "(Optional) A list of regular expression patterns to exclude certain URLs to crawl. URLs that match the patterns are excluded from the index. URLs that don't match the patterns are included in the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 150."
  type        = string
  default     = ""
}
variable "inclusion_patterns" {
  description = "(Optional) A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to Inclusion Patterns for more examples."
  type        = string
  default     = ""
}
variable "long_value" {
  description = "(Optional) A long integer value."
  type        = string
  default     = ""
}
variable "seed_url_configuration" {
  description = "(Optional) A block that specifies the configuration of the seed or starting point URLs of the websites you want to crawl. You can choose to crawl only the website host names, or the website host names with subdomains, or the website host names with subdomains and other domains that the webpages link to. You can list up to 100 seed URLs. Detailed below."
  type        = string
  default     = ""
}
variable "target" {
  description = "(Optional) Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.targetThe target configuration block supports the following arguments:"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Data Source."
  type        = string
  default     = ""
}
variable "custom_document_enrichment_configuration" {
  description = "(Optional) A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see Customizing document metadata during the ingestion process. Detailed below."
  type        = string
  default     = ""
}
variable "error_message" {
  description = "When the Status field value is FAILED, the ErrorMessage field contains a description of the error that caused the Data Source to fail."
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
output "long_value" {
  description = "(Optional) A long integer value."
  value       = aws_kendra_data_source.aws_kendra_data_source.long_value
}
output "seed_url_configuration" {
  description = "(Optional) A block that specifies the configuration of the seed or starting point URLs of the websites you want to crawl. You can choose to crawl only the website host names, or the website host names with subdomains, or the website host names with subdomains and other domains that the webpages link to. You can list up to 100 seed URLs. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.seed_url_configuration
}
output "target" {
  description = "(Optional) Configuration of the target document attribute or metadata field when ingesting documents into Amazon Kendra. You can also include a value. Detailed below.targetThe target configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.target
}
output "arn" {
  description = "ARN of the Data Source."
  value       = aws_kendra_data_source.aws_kendra_data_source.arn
}
output "custom_document_enrichment_configuration" {
  description = "(Optional) A block with the configuration information for altering document metadata and content during the document ingestion process. For more information on how to create, modify and delete document metadata, or make other content alterations when you ingest documents into Amazon Kendra, see Customizing document metadata during the ingestion process. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.custom_document_enrichment_configuration
}
output "error_message" {
  description = "When the Status field value is FAILED, the ErrorMessage field contains a description of the error that caused the Data Source to fail."
  value       = aws_kendra_data_source.aws_kendra_data_source.error_message
}
output "inclusion_patterns" {
  description = "(Optional) A list of glob patterns for documents that should be indexed. If a document that matches an inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to Inclusion Patterns for more examples."
  value       = aws_kendra_data_source.aws_kendra_data_source.inclusion_patterns
}
output "port" {
  description = "(Required) The port number of the website host you want to connect to via a web proxy server. For example, the port for https://a.example.com/page1.html is 443, the standard port for HTTPS.urlsThe urls configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.port
}
output "document_content_deletion" {
  description = "(Optional) TRUE to delete content if the condition used for the target attribute is met."
  value       = aws_kendra_data_source.aws_kendra_data_source.document_content_deletion
}
output "documents_metadata_configuration" {
  description = "(Optional) A block that defines the Ddcument metadata files that contain information such as the document access control information, source URI, document author, and custom attributes. Each metadata file contains metadata about a single document. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.documents_metadata_configuration
}
output "id" {
  description = "The unique identifiers of the Data Source and index separated by a slash (/)."
  value       = aws_kendra_data_source.aws_kendra_data_source.id
}
output "invocation_condition" {
  description = "(Optional) A block that specifies the condition used for when a Lambda function should be invoked. For example, you can specify a condition that if there are empty date-time values, then Amazon Kendra should invoke a function that inserts the current date-time. See Document Attribute Condition."
  value       = aws_kendra_data_source.aws_kendra_data_source.invocation_condition
}
output "web_crawler_mode" {
  description = "(Optional) The default mode is set to HOST_ONLY"
  value       = aws_kendra_data_source.aws_kendra_data_source.web_crawler_mode
}
output "description" {
  description = "(Optional) A description for the Data Source connector."
  value       = aws_kendra_data_source.aws_kendra_data_source.description
}
output "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of a role with permission to run pre_extraction_hook_configuration and post_extraction_hook_configuration for altering document metadata and content during the document ingestion process. For more information, see IAM roles for Amazon Kendra.inline_configurationsThe inline_configurations configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.role_arn
}
output "tags" {
  description = "(Optional) Key-value map of resource tags. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.configurationThe configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.tags
}
output "target_document_attribute_value" {
  description = "(Optional) The target value you want to create for the target attribute. For example, 'Finance' could be the target value for the target attribute key 'Department'.\nSee Document Attribute Value."
  value       = aws_kendra_data_source.aws_kendra_data_source.target_document_attribute_value
}
output "lambda_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of a Lambda Function that can manipulate your document metadata fields or attributes and content."
  value       = aws_kendra_data_source.aws_kendra_data_source.lambda_arn
}
output "schedule" {
  description = "(Optional) Sets the frequency for Amazon Kendra to check the documents in your Data Source repository and update the index. If you don't set a schedule Amazon Kendra will not periodically update the index. You can call the StartDataSourceSyncJob API to update the index."
  value       = aws_kendra_data_source.aws_kendra_data_source.schedule
}
output "site_maps_configuration" {
  description = "(Optional) A block that specifies the configuration of the sitemap URLs of the websites you want to crawl. Only URLs belonging to the same website host names are crawled. You can list up to 3 sitemap URLs. Detailed below.The seed_url_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.site_maps_configuration
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.update
}
output "authentication_configuration" {
  description = "(Optional) A block with the configuration information required to connect to websites using authentication. You can connect to websites using basic authentication of user name and password. You use a secret in AWS Secrets Manager to store your authentication credentials. You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is \"a.example.com\" and the port is 443, the standard port for HTTPS. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.authentication_configuration
}
output "bucket_name" {
  description = "(Required) The name of the bucket that contains the documents."
  value       = aws_kendra_data_source.aws_kendra_data_source.bucket_name
}
output "exclusion_patterns" {
  description = "(Optional) A list of glob patterns for documents that should not be indexed. If a document that matches an inclusion prefix or inclusion pattern also matches an exclusion pattern, the document is not indexed. Refer to Exclusion Patterns for more examples."
  value       = aws_kendra_data_source.aws_kendra_data_source.exclusion_patterns
}
output "s3_prefix" {
  description = "(Optional) A prefix used to filter metadata configuration files in the AWS S3 bucket. The S3 bucket might contain multiple metadata files. Use s3_prefix to include only the desired metadata files.web_crawler_configurationThe web_crawler_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.s3_prefix
}
output "updated_at" {
  description = "The Unix timestamp of when the Data Source was last updated."
  value       = aws_kendra_data_source.aws_kendra_data_source.updated_at
}
output "host" {
  description = "(Required) The name of the website host you want to connect to via a web proxy server. For example, the host name of https://a.example.com/page1.html is \"a.example.com\"."
  value       = aws_kendra_data_source.aws_kendra_data_source.host
}
output "max_links_per_page" {
  description = "(Optional) The maximum number of URLs on a webpage to include when crawling a website. This number is per webpage. As a website’s webpages are crawled, any URLs the webpages link to are also crawled. URLs on a webpage are crawled in order of appearance. The default maximum links per page is 100. Minimum value of 1. Maximum value of 1000."
  value       = aws_kendra_data_source.aws_kendra_data_source.max_links_per_page
}
output "target_document_attribute_key" {
  description = "(Optional) The identifier of the target document attribute or metadata field. For example, 'Department' could be an identifier for the target attribute or metadata field that includes the department names associated with the documents."
  value       = aws_kendra_data_source.aws_kendra_data_source.target_document_attribute_key
}
output "target_document_attribute_value_deletion" {
  description = "(Optional) TRUE to delete the existing target value for your specified target attribute key. You cannot create a target value and set this to TRUE. To create a target value (TargetDocumentAttributeValue), set this to FALSE.hook_configurationThe hook_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.target_document_attribute_value_deletion
}
output "web_crawler_configuration" {
  description = "(Required if type is set to WEBCRAWLER) A block that provides the configuration information required for Amazon Kendra Web Crawler. Detailed below.s3_configurationThe s3_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.web_crawler_configuration
}
output "basic_authentication" {
  description = "(Optional) The list of configuration information that's required to connect to and crawl a website host using basic authentication credentials. The list includes the name and port number of the website host. Detailed below.The basic_authentication configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.basic_authentication
}
output "crawl_depth" {
  description = "(Optional) Specifies the number of levels in a website that you want to crawl. The first level begins from the website seed or starting point URL. For example, if a website has 3 levels – index level (i.e. seed in this example), sections level, and subsections level – and you are only interested in crawling information up to the sections level (i.e. levels 0-1), you can set your depth to 1. The default crawl depth is set to 2. Minimum value of 0. Maximum value of 10."
  value       = aws_kendra_data_source.aws_kendra_data_source.crawl_depth
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.create
}
output "string" {
  description = "(Optional) A string, such as \"department\".In addition to all arguments above, the following attributes are exported:"
  value       = aws_kendra_data_source.aws_kendra_data_source.string
}
output "s3_configuration" {
  description = "(Required if type is set to S3) A block that provides the configuration information to connect to an Amazon S3 bucket as your data source. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.s3_configuration
}
output "status" {
  description = "The current status of the Data Source. When the status is ACTIVE the Data Source is ready to use. When the status is FAILED, the error_message field contains the reason that the Data Source failed."
  value       = aws_kendra_data_source.aws_kendra_data_source.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_data_source.aws_kendra_data_source.tags_all
}
output "url_inclusion_patterns" {
  description = "(Optional) A list of regular expression patterns to include certain URLs to crawl. URLs that match the patterns are included in the index. URLs that don't match the patterns are excluded from the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 150."
  value       = aws_kendra_data_source.aws_kendra_data_source.url_inclusion_patterns
}
output "EVERYTHING" {
  description = " – crawl the website host names with subdomains and other domains that the webpages link to.The site_maps_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.EVERYTHING
}
output "inclusion_prefixes" {
  description = "(Optional) A list of S3 prefixes for the documents that should be included in the index.access_control_list_configurationThe access_control_list_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.inclusion_prefixes
}
output "name" {
  description = "(Required) A name for your Data Source connector."
  value       = aws_kendra_data_source.aws_kendra_data_source.name
}
output "post_extraction_hook_configuration" {
  description = "(Optional) A block that specifies the configuration information for invoking a Lambda function in AWS Lambda on the structured documents with their metadata and text extracted. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see Advanced data manipulation. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.post_extraction_hook_configuration
}
output "max_content_size_per_page_in_mega_bytes" {
  description = "(Optional) The maximum size (in MB) of a webpage or attachment to crawl. Files larger than this size (in MB) are skipped/not crawled. The default maximum size of a webpage or attachment is set to 50 MB. Minimum value of 1.0e-06. Maximum value of 50."
  value       = aws_kendra_data_source.aws_kendra_data_source.max_content_size_per_page_in_mega_bytes
}
output "data_source_id" {
  description = "The unique identifiers of the Data Source."
  value       = aws_kendra_data_source.aws_kendra_data_source.data_source_id
}
output "pre_extraction_hook_configuration" {
  description = "(Optional) Configuration information for invoking a Lambda function in AWS Lambda on the original or raw documents before extracting their metadata and text. You can use a Lambda function to apply advanced logic for creating, modifying, or deleting document metadata and content. For more information, see Advanced data manipulation. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.pre_extraction_hook_configuration
}
output "proxy_configuration" {
  description = "(Optional) Configuration information required to connect to your internal websites via a web proxy. You must provide the website host name and port number. For example, the host name of https://a.example.com/page1.html is \"a.example.com\" and the port is 443, the standard port for HTTPS. Web proxy credentials are optional and you can use them to connect to a web proxy server that requires basic authentication. To store web proxy credentials, you use a secret in AWS Secrets Manager. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.proxy_configuration
}
output "type" {
  description = "(Required, Forces new resource) The type of data source repository. For an updated list of values, refer to Valid Values for Type."
  value       = aws_kendra_data_source.aws_kendra_data_source.type
}
output "SUBDOMAINS" {
  description = " – crawl the website host names with subdomains. For example, if the seed URL is \"abc.example.com\", then \"a.abc.example.com\" and \"b.abc.example.com\" are also crawled."
  value       = aws_kendra_data_source.aws_kendra_data_source.SUBDOMAINS
}
output "condition_document_attribute_key" {
  description = "(Required) The identifier of the document attribute used for the condition. For example, _source_uri could be an identifier for the attribute or metadata field that contains source URIs associated with the documents. Amazon Kendra currently does not support _document_body as an attribute key used for the condition."
  value       = aws_kendra_data_source.aws_kendra_data_source.condition_document_attribute_key
}
output "max_urls_per_minute_crawl_rate" {
  description = "(Optional) The maximum number of URLs crawled per website host per minute. The default maximum number of URLs crawled per website host per minute is 300. Minimum value of 1. Maximum value of 300."
  value       = aws_kendra_data_source.aws_kendra_data_source.max_urls_per_minute_crawl_rate
}
output "seed_urls" {
  description = "(Required) The list of seed or starting point URLs of the websites you want to crawl. The list can include a maximum of 100 seed URLs. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 2048."
  value       = aws_kendra_data_source.aws_kendra_data_source.seed_urls
}
output "string_list_value" {
  description = "(Optional) A list of strings."
  value       = aws_kendra_data_source.aws_kendra_data_source.string_list_value
}
output "condition" {
  description = "(Optional) Configuration of the condition used for the target document attribute or metadata field when ingesting documents into Amazon Kendra. See Document Attribute Condition."
  value       = aws_kendra_data_source.aws_kendra_data_source.condition
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.delete
}
output "inline_configurations" {
  description = "(Optional) Configuration information to alter document attributes or metadata fields and content when ingesting documents into Amazon Kendra. Minimum number of 0 items. Maximum number of 100 items. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.inline_configurations
}
output "language_code" {
  description = "(Optional) The code for a language. This allows you to support a language for all documents when creating the Data Source connector. English is supported by default. For more information on supported languages, including their codes, see Adding documents in languages other than English."
  value       = aws_kendra_data_source.aws_kendra_data_source.language_code
}
output "key_path" {
  description = "(Optional) Path to the AWS S3 bucket that contains the ACL files.documents_metadata_configurationThe documents_metadata_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.key_path
}
output "access_control_list_configuration" {
  description = "(Optional) A block that provides the path to the S3 bucket that contains the user context filtering files for the data source. For the format of the file, see Access control for S3 data sources. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.access_control_list_configuration
}
output "created_at" {
  description = "The Unix timestamp of when the Data Source was created."
  value       = aws_kendra_data_source.aws_kendra_data_source.created_at
}
output "credentials" {
  description = "(Optional) Your secret ARN, which you can create in AWS Secrets Manager. The credentials are optional. You use a secret if web proxy credentials are required to connect to a website host. Amazon Kendra currently support basic authentication to connect to a web proxy server. The secret stores your credentials."
  value       = aws_kendra_data_source.aws_kendra_data_source.credentials
}
output "date_value" {
  description = "(Optional) A date expressed as an ISO 8601 string. It is important for the time zone to be included in the ISO 8601 date-time format. As of this writing only UTC is supported. For example, 2012-03-25T12:30:10+00:00."
  value       = aws_kendra_data_source.aws_kendra_data_source.date_value
}
output "site_maps" {
  description = "(Required) The list of sitemap URLs of the websites you want to crawl. The list can include a maximum of 3 sitemap URLs.custom_document_enrichment_configurationThe custom_document_enrichment_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.site_maps
}
output "urls" {
  description = "(Required) A block that specifies the seed or starting point URLs of the websites or the sitemap URLs of the websites you want to crawl. You can include website subdomains. You can list up to 100 seed URLs and up to 3 sitemap URLs. You can only crawl websites that use the secure communication protocol, Hypertext Transfer Protocol Secure (HTTPS). If you receive an error when crawling a website, it could be that the website is blocked from crawling. When selecting websites to index, you must adhere to the Amazon Acceptable Use Policy and all other Amazon terms. Remember that you must only use Amazon Kendra Web Crawler to index your own webpages, or webpages that you have authorization to index. Detailed below.authentication_configurationThe authentication_configuration configuration block supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.urls
}
output "HOST_ONLY" {
  description = " – crawl only the website host names. For example, if the seed URL is \"abc.example.com\", then only URLs with host name \"abc.example.com\" are crawled."
  value       = aws_kendra_data_source.aws_kendra_data_source.HOST_ONLY
}
output "condition_on_value" {
  description = "(Optional) The value used by the operator. For example, you can specify the value 'financial' for strings in the _source_uri field that partially match or contain this value. See Document Attribute Value."
  value       = aws_kendra_data_source.aws_kendra_data_source.condition_on_value
}
output "operator" {
  description = "(Required) The condition operator. For example, you can use Contains to partially match a string. Valid Values: GreaterThan | GreaterThanOrEquals | LessThan | LessThanOrEquals | Equals | NotEquals | Contains | NotContains | Exists | NotExists | BeginsWith.Document Attribute ValueThe condition_on_value and target_document_attribute_value configuration blocks supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.operator
}
output "s3_bucket" {
  description = "(Required) Stores the original, raw documents or the structured, parsed documents before and after altering them. For more information, see Data contracts for Lambda functions.Document Attribute ConditionThe condition and invocation_condition configuration blocks supports the following arguments:"
  value       = aws_kendra_data_source.aws_kendra_data_source.s3_bucket
}
output "configuration" {
  description = "(Optional) A block with the configuration information to connect to your Data Source repository. You can't specify the configuration argument when the type parameter is set to CUSTOM. Detailed below."
  value       = aws_kendra_data_source.aws_kendra_data_source.configuration
}
output "index_id" {
  description = "(Required, Forces new resource) The identifier of the index for your Amazon Kendra data_source."
  value       = aws_kendra_data_source.aws_kendra_data_source.index_id
}
output "url_exclusion_patterns" {
  description = "(Optional) A list of regular expression patterns to exclude certain URLs to crawl. URLs that match the patterns are excluded from the index. URLs that don't match the patterns are included in the index. If a URL matches both an inclusion and exclusion pattern, the exclusion pattern takes precedence and the URL file isn't included in the index. Array Members: Minimum number of 0 items. Maximum number of 100 items. Length Constraints: Minimum length of 1. Maximum length of 150."
  value       = aws_kendra_data_source.aws_kendra_data_source.url_exclusion_patterns
}
output "data_source_id" {
  description = "The unique identifiers of the Data Source."
  value       = aws_kendra_data_source.aws_kendra_data_source.data_source_id
}
output "status" {
  description = "The current status of the Data Source. When the status is ACTIVE the Data Source is ready to use. When the status is FAILED, the error_message field contains the reason that the Data Source failed."
  value       = aws_kendra_data_source.aws_kendra_data_source.status
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.TimeoutsConfiguration options:"
  value       = aws_kendra_data_source.aws_kendra_data_source.tags_all
}
output "id" {
  description = "The unique identifiers of the Data Source and index separated by a slash (/)."
  value       = aws_kendra_data_source.aws_kendra_data_source.id
}
output "update" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.update
}
output "updated_at" {
  description = "The Unix timestamp of when the Data Source was last updated."
  value       = aws_kendra_data_source.aws_kendra_data_source.updated_at
}
output "arn" {
  description = "ARN of the Data Source."
  value       = aws_kendra_data_source.aws_kendra_data_source.arn
}
output "create" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.create
}
output "created_at" {
  description = "The Unix timestamp of when the Data Source was created."
  value       = aws_kendra_data_source.aws_kendra_data_source.created_at
}
output "delete" {
  description = "(Default 30m)"
  value       = aws_kendra_data_source.aws_kendra_data_source.delete
}
output "error_message" {
  description = "When the Status field value is FAILED, the ErrorMessage field contains a description of the error that caused the Data Source to fail."
  value       = aws_kendra_data_source.aws_kendra_data_source.error_message
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
      "kind/name"                   = "aws_kendra_data_source"
      "kind/version"                = "v0.1.0"
    }
  }
}
