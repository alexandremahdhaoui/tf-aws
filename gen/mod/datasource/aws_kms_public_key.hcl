datasource "aws_kms_public_key" "aws_kms_public_key" {
  encryption_algorithms    = var.encryption_algorithms
  grant_tokens             = var.grant_tokens
  key_id                   = var.key_id
  key_usage                = var.key_usage
  public_key               = var.public_key
  Alias ARN - E.g. -       = var.Alias ARN - E.g. - 
  Key ID. E.g -            = var.Key ID. E.g - 
  arn                      = var.arn
  customer_master_key_spec = var.customer_master_key_spec
  id                       = var.id
  public_key_pem           = var.public_key_pem
  Alias name. E.g. -       = var.Alias name. E.g. - 
  Key ARN. E.g. -          = var.Key ARN. E.g. - 
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "key_id" {
  description = "(Required) Key identifier which can be one of the following format:\n"
  type        = string
}
variable "key_usage" {
  description = "Permitted use of the public key. Valid values are ENCRYPT_DECRYPT or SIGN_VERIFY"
  type        = string
}
variable "public_key" {
  description = "Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in RFC 5280. The value is Base64-encoded."
  type        = string
}
variable "Alias ARN - E.g. - " {
  description = "arn:aws:kms:us-east-1:111122223333:alias/my-key"
  type        = string
}
variable "Key ID. E.g - " {
  description = "1234abcd-12ab-34cd-56ef-1234567890ab"
  type        = string
}
variable "encryption_algorithms" {
  description = "Encryption algorithms that AWS KMS supports for this key. Only set when the key_usage of the public key is ENCRYPT_DECRYPT."
  type        = string
}
variable "grant_tokens" {
  description = "(Optional) List of grant tokensIn addition to all arguments above, the following attributes are exported:"
  type        = string
  default     = ""
}
variable "id" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  type        = string
}
variable "public_key_pem" {
  description = "Exported public key. The value is Privacy Enhanced Mail (PEM) encoded."
  type        = string
}
variable "Alias name. E.g. - " {
  description = "alias/my-key"
  type        = string
}
variable "Key ARN. E.g. - " {
  description = "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
  type        = string
}
variable "arn" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  type        = string
}
variable "customer_master_key_spec" {
  description = "Type of the public key that was downloaded."
  type        = string
}
output "key_id" {
  description = "(Required) Key identifier which can be one of the following format:\n"
  value       = aws_kms_public_key.aws_kms_public_key.key_id
}
output "key_usage" {
  description = "Permitted use of the public key. Valid values are ENCRYPT_DECRYPT or SIGN_VERIFY"
  value       = aws_kms_public_key.aws_kms_public_key.key_usage
}
output "public_key" {
  description = "Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in RFC 5280. The value is Base64-encoded."
  value       = aws_kms_public_key.aws_kms_public_key.public_key
}
output "Alias ARN - E.g. - " {
  description = "arn:aws:kms:us-east-1:111122223333:alias/my-key"
  value       = aws_kms_public_key.aws_kms_public_key.Alias ARN - E.g. - 
}
output "Key ID. E.g - " {
  description = "1234abcd-12ab-34cd-56ef-1234567890ab"
  value       = aws_kms_public_key.aws_kms_public_key.Key ID. E.g - 
}
output "encryption_algorithms" {
  description = "Encryption algorithms that AWS KMS supports for this key. Only set when the key_usage of the public key is ENCRYPT_DECRYPT."
  value       = aws_kms_public_key.aws_kms_public_key.encryption_algorithms
}
output "grant_tokens" {
  description = "(Optional) List of grant tokensIn addition to all arguments above, the following attributes are exported:"
  value       = aws_kms_public_key.aws_kms_public_key.grant_tokens
}
output "id" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.id
}
output "public_key_pem" {
  description = "Exported public key. The value is Privacy Enhanced Mail (PEM) encoded."
  value       = aws_kms_public_key.aws_kms_public_key.public_key_pem
}
output "Alias name. E.g. - " {
  description = "alias/my-key"
  value       = aws_kms_public_key.aws_kms_public_key.Alias name. E.g. - 
}
output "Key ARN. E.g. - " {
  description = "arn:aws:kms:us-east-1:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"
  value       = aws_kms_public_key.aws_kms_public_key.Key ARN. E.g. - 
}
output "arn" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.arn
}
output "customer_master_key_spec" {
  description = "Type of the public key that was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.customer_master_key_spec
}
output "arn" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.arn
}
output "customer_master_key_spec" {
  description = "Type of the public key that was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.customer_master_key_spec
}
output "encryption_algorithms" {
  description = "Encryption algorithms that AWS KMS supports for this key. Only set when the key_usage of the public key is ENCRYPT_DECRYPT."
  value       = aws_kms_public_key.aws_kms_public_key.encryption_algorithms
}
output "id" {
  description = "Key ARN of the asymmetric CMK from which the public key was downloaded."
  value       = aws_kms_public_key.aws_kms_public_key.id
}
output "key_usage" {
  description = "Permitted use of the public key. Valid values are ENCRYPT_DECRYPT or SIGN_VERIFY"
  value       = aws_kms_public_key.aws_kms_public_key.key_usage
}
output "public_key" {
  description = "Exported public key. The value is a DER-encoded X.509 public key, also known as SubjectPublicKeyInfo (SPKI), as defined in RFC 5280. The value is Base64-encoded."
  value       = aws_kms_public_key.aws_kms_public_key.public_key
}
output "public_key_pem" {
  description = "Exported public key. The value is Privacy Enhanced Mail (PEM) encoded."
  value       = aws_kms_public_key.aws_kms_public_key.public_key_pem
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
