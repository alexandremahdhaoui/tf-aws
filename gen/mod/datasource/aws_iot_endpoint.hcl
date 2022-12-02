datasource "aws_iot_endpoint" "aws_iot_endpoint" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "No " {
  description = "endpoint_type: Either iot:Data or iot:Data-ATS depending on region"
  value       = aws_iot_endpoint.aws_iot_endpoint.No 
}
output "endpoint_address" {
  description = "Endpoint based on endpoint_type"
  value       = aws_iot_endpoint.aws_iot_endpoint.endpoint_address
}
output "iot:CredentialsProvider" {
  description = ": IDENTIFIER.credentials.iot.REGION.amazonaws.com"
  value       = aws_iot_endpoint.aws_iot_endpoint.iot:CredentialsProvider
}
output "iot:Data" {
  description = ": IDENTIFIER.iot.REGION.amazonaws.com"
  value       = aws_iot_endpoint.aws_iot_endpoint.iot:Data
}
output "iot:Data-ATS" {
  description = ": IDENTIFIER-ats.iot.REGION.amazonaws.com"
  value       = aws_iot_endpoint.aws_iot_endpoint.iot:Data-ATS
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
