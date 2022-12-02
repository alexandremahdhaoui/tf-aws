resource "aws_comprehend_entity_recognizer" "aws_comprehend_entity_recognizer" {
  document_type           = var.document_type
  entity_types            = var.entity_types
  source_documents_s3_uri = var.source_documents_s3_uri
  tags_all                = var.tags_all
  version_name_prefix     = var.version_name_prefix
  annotation_data_s3_uri  = var.annotation_data_s3_uri
  data_access_role_arn    = var.data_access_role_arn
  tags                    = var.tags
  s3_uri                  = var.s3_uri
  subnets                 = var.subnets
  create                  = var.create
  model_kms_key_id        = var.model_kms_key_id
  split                   = var.split
  update                  = var.update
  volume_kms_key_id       = var.volume_kms_key_id
  vpc_config              = var.vpc_config
  attribute_names         = var.attribute_names
  augmented_manifests     = var.augmented_manifests
  language_code           = var.language_code
  name                    = var.name
  type                    = var.type
  version_name            = var.version_name
  entity_list             = var.entity_list
  input_data_config       = var.input_data_config
  documents               = var.documents
  input_format            = var.input_format
  delete                  = var.delete
  annotations             = var.annotations
  arn                     = var.arn
  test_s3uri              = var.test_s3uri
  data_format             = var.data_format
  security_group_ids      = var.security_group_ids
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "split" {
  description = "(Optional, Default: TRAINTRAIN or TEST.documents Configuration Block"
  type        = string
  default     = ""
}
variable "update" {
  description = "(Optional, Default: 60m)"
  type        = string
  default     = ""
}
variable "volume_kms_key_id" {
  description = "(Optional) ID or ARN of a KMS Key used to encrypt storage volumes during job processing."
  type        = string
  default     = ""
}
variable "vpc_config" {
  description = "(Optional) Configuration parameters for VPC to contain Entity Recognizer resources.\nSee the vpc_config Configuration Block section below.input_data_config Configuration Block"
  type        = string
  default     = ""
}
variable "attribute_names" {
  description = "(Required) The JSON attribute that contains the annotations for the training documents."
  type        = string
}
variable "augmented_manifests" {
  description = "(Optional) List of training datasets produced by Amazon SageMaker Ground Truth.\nUsed if data_format is AUGMENTED_MANIFESTaugmented_manifests Configuration Block section below."
  type        = string
  default     = ""
}
variable "create" {
  description = "(Optional, Default: 60m)"
  type        = string
  default     = ""
}
variable "model_kms_key_id" {
  description = "(Optional) The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers."
  type        = string
  default     = ""
}
variable "type" {
  description = "\\n), carriage return (\\r), or tab (\\t).vpc_config Configuration Block"
  type        = string
  default     = ""
}
variable "version_name" {
  description = "\"\"-version_name_prefix."
  type        = string
  default     = ""
}
variable "entity_list" {
  description = "(Optional) Specifies location of the entity list data.\nSee the entity_list Configuration Blockentity_list or annotations is required."
  type        = string
  default     = ""
}
variable "input_data_config" {
  description = "input_data_config Configuration Block section below."
  type        = string
}
variable "language_code" {
  description = "en, es, fr, it, de, or pt."
  type        = string
}
variable "name" {
  description = "-)."
  type        = string
}
variable "documents" {
  description = "(Optional) Specifies a collection of training documents.\nUsed if data_format is COMPREHEND_CSVdocuments Configuration Block section below."
  type        = string
  default     = ""
}
variable "input_format" {
  description = "(Optional, Default: ONE_DOC_PER_LINEONE_DOC_PER_LINE or ONE_DOC_PER_FILE."
  type        = string
  default     = ""
}
variable "delete" {
  description = "(Optional, Default: 30m)"
  type        = string
  default     = ""
}
variable "annotations" {
  description = "(Optional) Specifies location of the document annotation data.\nSee the annotations Configuration Blockannotations or entity_list is required."
  type        = string
  default     = ""
}
variable "arn" {
  description = "ARN of the Entity Recognizer version."
  type        = string
  default     = ""
}
variable "data_format" {
  description = "(Optional, Default: COMPREHEND_CSVCOMPREHEND_CSV or AUGMENTED_MANIFEST."
  type        = string
  default     = ""
}
variable "security_group_ids" {
  description = "(Required) List of security group IDs."
  type        = string
}
variable "test_s3uri" {
  description = "(Optional) Location of test documents.entity_list Configuration Block"
  type        = string
  default     = ""
}
variable "source_documents_s3_uri" {
  description = "(Optional) Location of source PDF files."
  type        = string
  default     = ""
}
variable "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_entity_recognizer provides the following Timeouts configuration options:"
  type        = string
  default     = ""
}
variable "version_name_prefix" {
  description = "(Optional) Creates a unique version name beginning with the specified prefix.\nHas a maximum length of 37 characters.\nCan contain upper- and lower-case letters, numbers, and hypen (-version_name."
  type        = string
  default     = ""
}
variable "annotation_data_s3_uri" {
  description = "(Optional) Location of annotation files."
  type        = string
  default     = ""
}
variable "data_access_role_arn" {
  description = "(Required) The ARN for an IAM Role which allows Comprehend to read the training and testing data."
  type        = string
}
variable "document_type" {
  description = "(Optional, Default: PLAIN_TEXT_DOCUMENTPLAIN_TEXT_DOCUMENT or SEMI_STRUCTURED_DOCUMENT."
  type        = string
  default     = ""
}
variable "entity_types" {
  description = "entity_types Configuration Block section below.annotations Configuration Block"
  type        = string
  default     = ""
}
variable "s3_uri" {
  description = "(Required) Location of entity list.entity_types Configuration Block"
  type        = string
}
variable "subnets" {
  description = "(Required) List of VPC subnets.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags Configuration Block present, tags with matching keys will overwrite those defined at the provider-level."
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
output "version_name" {
  description = "\"\"-version_name_prefix."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.version_name
}
output "entity_list" {
  description = "(Optional) Specifies location of the entity list data.\nSee the entity_list Configuration Blockentity_list or annotations is required."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.entity_list
}
output "input_data_config" {
  description = "input_data_config Configuration Block section below."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.input_data_config
}
output "language_code" {
  description = "en, es, fr, it, de, or pt."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.language_code
}
output "name" {
  description = "-)."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.name
}
output "type" {
  description = "\\n), carriage return (\\r), or tab (\\t).vpc_config Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.type
}
output "documents" {
  description = "(Optional) Specifies a collection of training documents.\nUsed if data_format is COMPREHEND_CSVdocuments Configuration Block section below."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.documents
}
output "input_format" {
  description = "(Optional, Default: ONE_DOC_PER_LINEONE_DOC_PER_LINE or ONE_DOC_PER_FILE."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.input_format
}
output "delete" {
  description = "(Optional, Default: 30m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.delete
}
output "annotations" {
  description = "(Optional) Specifies location of the document annotation data.\nSee the annotations Configuration Blockannotations or entity_list is required."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.annotations
}
output "arn" {
  description = "ARN of the Entity Recognizer version."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.arn
}
output "data_format" {
  description = "(Optional, Default: COMPREHEND_CSVCOMPREHEND_CSV or AUGMENTED_MANIFEST."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.data_format
}
output "security_group_ids" {
  description = "(Required) List of security group IDs."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.security_group_ids
}
output "test_s3uri" {
  description = "(Optional) Location of test documents.entity_list Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.test_s3uri
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_entity_recognizer provides the following Timeouts configuration options:"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.tags_all
}
output "version_name_prefix" {
  description = "(Optional) Creates a unique version name beginning with the specified prefix.\nHas a maximum length of 37 characters.\nCan contain upper- and lower-case letters, numbers, and hypen (-version_name."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.version_name_prefix
}
output "annotation_data_s3_uri" {
  description = "(Optional) Location of annotation files."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.annotation_data_s3_uri
}
output "data_access_role_arn" {
  description = "(Required) The ARN for an IAM Role which allows Comprehend to read the training and testing data."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.data_access_role_arn
}
output "document_type" {
  description = "(Optional, Default: PLAIN_TEXT_DOCUMENTPLAIN_TEXT_DOCUMENT or SEMI_STRUCTURED_DOCUMENT."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.document_type
}
output "entity_types" {
  description = "entity_types Configuration Block section below.annotations Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.entity_types
}
output "source_documents_s3_uri" {
  description = "(Optional) Location of source PDF files."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.source_documents_s3_uri
}
output "s3_uri" {
  description = "(Required) Location of entity list.entity_types Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.s3_uri
}
output "subnets" {
  description = "(Required) List of VPC subnets.In addition to all arguments above, the following attributes are exported:"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.subnets
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags Configuration Block present, tags with matching keys will overwrite those defined at the provider-level."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.tags
}
output "update" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.update
}
output "volume_kms_key_id" {
  description = "(Optional) ID or ARN of a KMS Key used to encrypt storage volumes during job processing."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.volume_kms_key_id
}
output "vpc_config" {
  description = "(Optional) Configuration parameters for VPC to contain Entity Recognizer resources.\nSee the vpc_config Configuration Block section below.input_data_config Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.vpc_config
}
output "attribute_names" {
  description = "(Required) The JSON attribute that contains the annotations for the training documents."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.attribute_names
}
output "augmented_manifests" {
  description = "(Optional) List of training datasets produced by Amazon SageMaker Ground Truth.\nUsed if data_format is AUGMENTED_MANIFESTaugmented_manifests Configuration Block section below."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.augmented_manifests
}
output "create" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.create
}
output "model_kms_key_id" {
  description = "(Optional) The ID or ARN of a KMS Key used to encrypt trained Entity Recognizers."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.model_kms_key_id
}
output "split" {
  description = "(Optional, Default: TRAINTRAIN or TEST.documents Configuration Block"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.split
}
output "arn" {
  description = "ARN of the Entity Recognizer version."
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.arn
}
output "create" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.create
}
output "delete" {
  description = "(Optional, Default: 30m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.delete
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.Timeoutsaws_comprehend_entity_recognizer provides the following Timeouts configuration options:"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.tags_all
}
output "update" {
  description = "(Optional, Default: 60m)"
  value       = aws_comprehend_entity_recognizer.aws_comprehend_entity_recognizer.update
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
      "kind/name"                   = "aws_comprehend_entity_recognizer"
      "kind/version"                = "v0.1.0"
    }
  }
}
