datasource "aws_mq_broker" "aws_mq_broker" {
  broker_id = var.broker_id
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "broker_id" {
  description = "(Optional) Unique id of the mq broker."
  type        = string
  default     = ""
}
output "broker_id" {
  description = "(Optional) Unique id of the mq broker."
  value       = aws_mq_broker.aws_mq_broker.broker_id
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
