resource "aws_comprehend_document_classifier" "aws_comprehend_document_classifier" {
  annotation_data_s3_uri  = var.annotation_data_s3_uri
  create                  = var.create
  data_format             = var.data_format
  update                  = var.update
  vpc_config              = var.vpc_config
  input_data_config       = var.input_data_config
  language_code           = var.language_code
  version_name            = var.version_name
  attribute_names         = var.attribute_names
  kms_key_id              = var.kms_key_id
  label_delimiter         = var.label_delimiter
  s3_uri                  = var.s3_uri
  security_group_ids      = var.security_group_ids
  arn                     = var.arn
  document_type           = var.document_type
  mode                    = var.mode
  version_name_prefix     = var.version_name_prefix
  augmented_manifests     = var.augmented_manifests
  model_kms_key_id        = var.model_kms_key_id
  source_documents_s3_uri = var.source_documents_s3_uri
  data_access_role_arn    = var.data_access_role_arn
  delete                  = var.delete
  subnets                 = var.subnets
  test_s3uri              = var.test_s3uri
  split                   = var.split
  tags                    = var.tags
  name                    = var.name
  output_data_config      = var.output_data_config
  output_s3_uri           = var.output_s3_uri
  tags_all                = var.tags_all
  volume_kms_key_id       = var.volume_kms_key_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "split" {
  description = "(Optional, Default: TRAINTRAIN or TEST.output_data_config Configuration Block"
  type        = string
  default     = ""
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags Configuration Block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = string
  default     = ""
}
variable "volume_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}
variable "name" {
  description = "-)."
  type        = string
}
variable "output_data_config" {
  description = "output_data_config Configuration Block section below."
  type        = string
  default     = ""
}
variable "output_s3_uri" {
  description = "(Computed) Full path for the output documents."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_document_classifier provides the following Timeouts configuration options:"
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "vpc_config Configuration Block section below.input_data_config Configuration Block"
  type        = string
  default     = ""
}
variable "annotation_data_s3_uri" {
  description = "(Optional) Location of annotation files."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Optional, Default: 60m)"
  type        = string
  default     = ""
}
variable "data_format" {
  description = "(Optional, Default: COMPREHEND_CSVCOMPREHEND_CSV or AUGMENTED_MANIFEST."
  type        = string
  default     = ""
}
variable "update" {
  description = "(Optional, Default: 60m)"
  type        = string
  default     = ""
}
variable "input_data_config" {
  description = "(Required) Configuration for the training and testing data.\nSee the input_data_config Configuration Block section below."
  type        = string
}
variable "language_code" {
  description = "en, es, fr, it, de, or pt."
  type        = string
}
variable "security_group_ids" {
  description = "(Required) List of security group IDs."
  type        = string
}
variable "version_name" {
  description = "\"\"-version_name_prefix."
  type        = string
  default     = ""
}
variable "attribute_names" {
  description = "(Required) The JSON attribute that contains the annotations for the training documents."
  type        = string
}
variable "kms_key_id" {
  description = "(Optional) KMS Key used to encrypt the output documents.\nCan be a KMS Key ID, a KMS Key ARN, a KMS Alias name, or a KMS Alias ARN."
  type        = string
  default     = ""
}
variable "label_delimiter" {
  description = "|, ~, !, @, #, $, %, ^, *, -, _, +, =, \\, :, ;, >, ?, /, <space>, and <tab>|."
  type        = string
  default     = ""
}
variable "s3_uri" {
  description = "output_s3_uri.vpc_config Configuration Block"
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Document Classifier version."
  type        = string
  default     = ""
}
variable "document_type" {
  description = "(Optional, Default: PLAIN_TEXT_DOCUMENTPLAIN_TEXT_DOCUMENT or SEMI_STRUCTURED_DOCUMENT."
  type        = string
  default     = ""
}
variable "mode" {
  description = "(Optional, Default: MULTI_CLASSMULTI_CLASS or MULTI_LABELMULTI_CLASS is also known as \"Single Label\" in the AWS Console."
  type        = string
  default     = ""
}
variable "version_name_prefix" {
  description = "-version_name."
  type        = string
  default     = ""
}
variable "augmented_manifests" {
  description = "(Optional) List of training datasets produced by Amazon SageMaker Ground Truth.\nUsed if data_format is AUGMENTED_MANIFESTaugmented_manifests Configuration Block section below."
  type        = string
  default     = ""
}
variable "model_kms_key_id" {
  description = ""
  type        = string
  default     = ""
}
variable "source_documents_s3_uri" {
  description = "(Optional) Location of source PDF files."
  type        = string
  default     = ""
}
variable "data_access_role_arn" {
  description = "(Required) The ARN for an IAM Role which allows Comprehend to read the training and testing data."
  type        = string
}
variable "delete" {
  description = "(Optional, Default: 30m)"
  type        = string
  default     = ""
}
variable "subnets" {
  description = "(Required) List of VPC subnets.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "test_s3uri" {
  description = "(Optional) Location of test documents.augmented_manifests Configuration Block"
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
output "split" {
  description = "(Optional, Default: TRAINTRAIN or TEST.output_data_config Configuration Block"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.split
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags Configuration Block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.tags
}
output "volume_kms_key_id" {
  description = ""
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.volume_kms_key_id
}
output "name" {
  description = "-)."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.name
}
output "output_data_config" {
  description = "output_data_config Configuration Block section below."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.output_data_config
}
output "output_s3_uri" {
  description = "(Computed) Full path for the output documents."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.output_s3_uri
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_document_classifier provides the following Timeouts configuration options:"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.tags_all
}
output "vpc_config" {
  description = "vpc_config Configuration Block section below.input_data_config Configuration Block"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.vpc_config
}
output "annotation_data_s3_uri" {
  description = "(Optional) Location of annotation files."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.annotation_data_s3_uri
}
output "create" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.create
}
output "data_format" {
  description = "(Optional, Default: COMPREHEND_CSVCOMPREHEND_CSV or AUGMENTED_MANIFEST."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.data_format
}
output "update" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.update
}
output "input_data_config" {
  description = "(Required) Configuration for the training and testing data.\nSee the input_data_config Configuration Block section below."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.input_data_config
}
output "language_code" {
  description = "en, es, fr, it, de, or pt."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.language_code
}
output "security_group_ids" {
  description = "(Required) List of security group IDs."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.security_group_ids
}
output "version_name" {
  description = "\"\"-version_name_prefix."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.version_name
}
output "attribute_names" {
  description = "(Required) The JSON attribute that contains the annotations for the training documents."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.attribute_names
}
output "kms_key_id" {
  description = "(Optional) KMS Key used to encrypt the output documents.\nCan be a KMS Key ID, a KMS Key ARN, a KMS Alias name, or a KMS Alias ARN."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.kms_key_id
}
output "label_delimiter" {
  description = "|, ~, !, @, #, $, %, ^, *, -, _, +, =, \\, :, ;, >, ?, /, <space>, and <tab>|."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.label_delimiter
}
output "s3_uri" {
  description = "output_s3_uri.vpc_config Configuration Block"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.s3_uri
}
output "arn" {
  description = "ARN of the Document Classifier version."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.arn
}
output "document_type" {
  description = "(Optional, Default: PLAIN_TEXT_DOCUMENTPLAIN_TEXT_DOCUMENT or SEMI_STRUCTURED_DOCUMENT."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.document_type
}
output "mode" {
  description = "(Optional, Default: MULTI_CLASSMULTI_CLASS or MULTI_LABELMULTI_CLASS is also known as \"Single Label\" in the AWS Console."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.mode
}
output "version_name_prefix" {
  description = "-version_name."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.version_name_prefix
}
output "augmented_manifests" {
  description = "(Optional) List of training datasets produced by Amazon SageMaker Ground Truth.\nUsed if data_format is AUGMENTED_MANIFESTaugmented_manifests Configuration Block section below."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.augmented_manifests
}
output "model_kms_key_id" {
  description = ""
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.model_kms_key_id
}
output "source_documents_s3_uri" {
  description = "(Optional) Location of source PDF files."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.source_documents_s3_uri
}
output "data_access_role_arn" {
  description = "(Required) The ARN for an IAM Role which allows Comprehend to read the training and testing data."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.data_access_role_arn
}
output "delete" {
  description = "(Optional, Default: 30m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.delete
}
output "subnets" {
  description = "(Required) List of VPC subnets.In addition to all arguments above, the following attributes are exported:"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.subnets
}
output "test_s3uri" {
  description = "(Optional) Location of test documents.augmented_manifests Configuration Block"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.test_s3uri
}
output "arn" {
  description = "ARN of the Document Classifier version."
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.arn
}
output "create" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.create
}
output "delete" {
  description = "(Optional, Default: 30m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.delete
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_document_classifier provides the following Timeouts configuration options:"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.tags_all
}
output "update" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_document_classifier.aws_comprehend_document_classifier.update
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
      "kind/name"                   = "aws_comprehend_document_classifier"
      "kind/version"                = "v0.1.0"
    }
  }
}
