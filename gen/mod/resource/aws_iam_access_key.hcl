resource "aws_iam_access_key" "aws_iam_access_key" {
  create_date                    = var.create_date
  encrypted_secret               = var.encrypted_secret
  id                             = var.id
  key_fingerprint                = var.key_fingerprint
  secret                         = var.secret
  status                         = var.status
  encrypted_ses_smtp_password_v4 = var.encrypted_ses_smtp_password_v4
  pgp_key                        = var.pgp_key
  user                           = var.user
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "encrypted_ses_smtp_password_v4" {
  description = "Encrypted SES SMTP password, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line, for example: terraform output -raw encrypted_ses_smtp_password_v4 | base64 --decode | keybase pgp decrypt."
  type        = string
}
variable "pgp_key" {
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists, for use in the encrypted_secret output attribute. If providing a base-64 encoded PGP public key, make sure to provide the \"raw\" version and not the \"armored\" one (e.g. avoid passing the -a option to gpg --export)."
  type        = string
  default     = ""
}
variable "user" {
  description = "(Required) IAM user to associate with this access key.In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "create_date" {
  description = "Date and time in RFC3339 format that the access key was created."
  type        = string
}
variable "encrypted_secret" {
  description = "Encrypted secret, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line, for example: terraform output -raw encrypted_secret | base64 --decode | keybase pgp decrypt."
  type        = string
}
variable "id" {
  description = "Access key ID."
  type        = string
}
variable "key_fingerprint" {
  description = "Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources."
  type        = string
}
variable "secret" {
  description = "Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a pgp_key instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation."
  type        = string
}
variable "status" {
  description = "(Optional) Access key status to apply. Defaults to Active. Valid values are Active and Inactive."
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
output "secret" {
  description = "Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a pgp_key instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation."
  value       = aws_iam_access_key.aws_iam_access_key.secret
}
output "status" {
  description = "(Optional) Access key status to apply. Defaults to Active. Valid values are Active and Inactive."
  value       = aws_iam_access_key.aws_iam_access_key.status
}
output "create_date" {
  description = "Date and time in RFC3339 format that the access key was created."
  value       = aws_iam_access_key.aws_iam_access_key.create_date
}
output "encrypted_secret" {
  description = "Encrypted secret, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line, for example: terraform output -raw encrypted_secret | base64 --decode | keybase pgp decrypt."
  value       = aws_iam_access_key.aws_iam_access_key.encrypted_secret
}
output "id" {
  description = "Access key ID."
  value       = aws_iam_access_key.aws_iam_access_key.id
}
output "key_fingerprint" {
  description = "Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources."
  value       = aws_iam_access_key.aws_iam_access_key.key_fingerprint
}
output "encrypted_ses_smtp_password_v4" {
  description = "Encrypted SES SMTP password, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line, for example: terraform output -raw encrypted_ses_smtp_password_v4 | base64 --decode | keybase pgp decrypt."
  value       = aws_iam_access_key.aws_iam_access_key.encrypted_ses_smtp_password_v4
}
output "pgp_key" {
  description = "(Optional) Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists, for use in the encrypted_secret output attribute. If providing a base-64 encoded PGP public key, make sure to provide the \"raw\" version and not the \"armored\" one (e.g. avoid passing the -a option to gpg --export)."
  value       = aws_iam_access_key.aws_iam_access_key.pgp_key
}
output "user" {
  description = "(Required) IAM user to associate with this access key.In addition to all arguments above, the following attributes are exported:"
  value       = aws_iam_access_key.aws_iam_access_key.user
}
output "id" {
  description = "Access key ID."
  value       = aws_iam_access_key.aws_iam_access_key.id
}
output "key_fingerprint" {
  description = "Fingerprint of the PGP key used to encrypt the secret. This attribute is not available for imported resources."
  value       = aws_iam_access_key.aws_iam_access_key.key_fingerprint
}
output "secret" {
  description = "Secret access key. This attribute is not available for imported resources. Note that this will be written to the state file. If you use this, please protect your backend state file judiciously. Alternatively, you may supply a pgp_key instead, which will prevent the secret from being stored in plaintext, at the cost of preventing the use of the secret key in automation."
  value       = aws_iam_access_key.aws_iam_access_key.secret
}
output "ses_smtp_password_v4" {
  description = "Secret access key converted into an SES SMTP password by applying AWS's documented Sigv4 conversion algorithm. This attribute is not available for imported resources. As SigV4 is region specific, valid Provider regions are ap-south-1, ap-southeast-2, eu-central-1, eu-west-1, us-east-1 and us-west-2. See current AWS SES regions."
  value       = aws_iam_access_key.aws_iam_access_key.ses_smtp_password_v4
}
output "create_date" {
  description = "Date and time in RFC3339 format that the access key was created."
  value       = aws_iam_access_key.aws_iam_access_key.create_date
}
output "encrypted_secret" {
  description = "Encrypted secret, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted secret may be decrypted using the command line, for example: terraform output -raw encrypted_secret | base64 --decode | keybase pgp decrypt."
  value       = aws_iam_access_key.aws_iam_access_key.encrypted_secret
}
output "encrypted_ses_smtp_password_v4" {
  description = "Encrypted SES SMTP password, base64 encoded, if pgp_key was specified. This attribute is not available for imported resources. The encrypted password may be decrypted using the command line, for example: terraform output -raw encrypted_ses_smtp_password_v4 | base64 --decode | keybase pgp decrypt."
  value       = aws_iam_access_key.aws_iam_access_key.encrypted_ses_smtp_password_v4
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
      "kind/name"                   = "aws_iam_access_key"
      "kind/version"                = "v0.1.0"
    }
  }
}
