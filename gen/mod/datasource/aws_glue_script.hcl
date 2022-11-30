datasource "aws_glue_script" "aws_glue_script" {
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "id" {
  description = "AWS Region."
  value       = aws_glue_script.aws_glue_script.id
}
output "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
output "python_script" {
  description = "Python script generated from the DAG when the language argument is set to PYTHON."
  value       = aws_glue_script.aws_glue_script.python_script
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
