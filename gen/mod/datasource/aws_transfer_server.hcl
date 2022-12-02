datasource "aws_transfer_server" "aws_transfer_server" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "certificate" {
  description = "ARN of any certificate."
  value       = aws_transfer_server.aws_transfer_server.certificate
}
output "identity_provider_type" {
  description = "The mode of authentication enabled for this service. The default value is SERVICE_MANAGED, which allows you to store and access SFTP user credentials within the service. API_GATEWAY indicates that user authentication requires a call to an API Gateway endpoint URL provided by you to integrate an identity provider of your choice."
  value       = aws_transfer_server.aws_transfer_server.identity_provider_type
}
output "arn" {
  description = "ARN of Transfer Server."
  value       = aws_transfer_server.aws_transfer_server.arn
}
output "domain" {
  description = " The domain of the storage system that is used for file transfers."
  value       = aws_transfer_server.aws_transfer_server.domain
}
output "endpoint" {
  description = "Endpoint of the Transfer Server (e.g., s-12345678.server.transfer.REGION.amazonaws.com)."
  value       = aws_transfer_server.aws_transfer_server.endpoint
}
output "endpoint_type" {
  description = "Type of endpoint that the server is connected to."
  value       = aws_transfer_server.aws_transfer_server.endpoint_type
}
output "invocation_role" {
  description = "ARN of the IAM role used to authenticate the user account with an identity_provider_type of API_GATEWAY."
  value       = aws_transfer_server.aws_transfer_server.invocation_role
}
output "logging_role" {
  description = "ARN of an IAM role that allows the service to write your SFTP users’ activity to your Amazon CloudWatch logs for monitoring and auditing purposes."
  value       = aws_transfer_server.aws_transfer_server.logging_role
}
output "protocols" {
  description = "File transfer protocol or protocols over which your file transfer protocol client can connect to your server's endpoint."
  value       = aws_transfer_server.aws_transfer_server.protocols
}
output "security_policy_name" {
  description = "The name of the security policy that is attached to the server."
  value       = aws_transfer_server.aws_transfer_server.security_policy_name
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
