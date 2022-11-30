datasource "aws_iam_openid_connect_provider" "aws_iam_openid_connect_provider" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "client_id_list" {
  description = "List of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the client_id parameter on OAuth requests.)"
  value       = aws_iam_openid_connect_provider.aws_iam_openid_connect_provider.client_id_list
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "thumbprint_list" {
  description = "List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s)."
  value       = aws_iam_openid_connect_provider.aws_iam_openid_connect_provider.thumbprint_list
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
}
