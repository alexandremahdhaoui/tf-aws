resource "aws_lightsail_instance" "aws_lightsail_instance" {
  bundle_id              = var.bundle_id
  ca-central-1:          = var.ca-central-1: 
  us-east-1:             = var.us-east-1: 
  us-east-2:             = var.us-east-2: 
  ap-southeast-2:        = var.ap-southeast-2: 
  private_ip_address     = var.private_ip_address
  public_ip_address      = var.public_ip_address
  id                     = var.id
  ap-northeast-2{a,c}    = var.ap-northeast-2{a,c}
  eu-west-1:             = var.eu-west-1: 
  ipv6_address           = var.ipv6_address
  medium_                = var.medium_
  tags                   = var.tags
  ap-northeast-1:        = var.ap-northeast-1: 
  ipv6_addresses         = var.ipv6_addresses
  large_                 = var.large_
  eu-west-3:             = var.eu-west-3: 
  ap-southeast-2{a,b,c}  = var.ap-southeast-2{a,b,c}
  availability_zone      = var.availability_zone
  cpu_count              = var.cpu_count
  eu-central-1:          = var.eu-central-1: 
  eu-west-2{a,b,c}       = var.eu-west-2{a,b,c}
  key_pair_name          = var.key_pair_name
  name                   = var.name
  ap-south-1:            = var.ap-south-1: 
  user_data              = var.user_data
  username               = var.username
  us-east-2{a,b,c}       = var.us-east-2{a,b,c}
  ap-southeast-1:        = var.ap-southeast-1: 
  arn                    = var.arn
  created_at             = var.created_at
  eu-central-1{a,b,c}    = var.eu-central-1{a,b,c}
  eu-west-1{a,b,c}       = var.eu-west-1{a,b,c}
  eu-west-2:             = var.eu-west-2: 
  ram_size               = var.ram_size
  ap-south-1{a,b}        = var.ap-south-1{a,b}
  small_                 = var.small_
  blueprint_id           = var.blueprint_id
  ca-central-1{a,b}      = var.ca-central-1{a,b}
  eu-west-3{a,b,c}       = var.eu-west-3{a,b,c}
  nano_                  = var.nano_
  us-east-1{a,b,c,d,e,f} = var.us-east-1{a,b,c,d,e,f}
  us-west-2{a,b,c}       = var.us-west-2{a,b,c}
  ap-northeast-1{a,c,d}  = var.ap-northeast-1{a,c,d}
  ap-northeast-2:        = var.ap-northeast-2: 
  ap-southeast-1{a,b,c}  = var.ap-southeast-1{a,b,c}
  is_static_ip           = var.is_static_ip
  micro_                 = var.micro_
  us-west-2:             = var.us-west-2: 
  xlarge_                = var.xlarge_
  2xlarge_               = var.2xlarge_
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "micro_" {
  description = ""
  type        = string
}
variable "us-west-2: " {
  description = "2_0In addition to all arguments above, the following attributes are exported:"
  type        = string
}
variable "xlarge_" {
  description = ""
  type        = string
}
variable "2xlarge_" {
  description = "SuffixA Bundle ID ends with one of the following suffixes depending on Availability Zone:"
  type        = string
}
variable "ap-northeast-2: " {
  description = "2_0"
  type        = string
}
variable "ap-southeast-1{a,b,c}" {
  description = ""
  type        = string
}
variable "is_static_ip" {
  description = "A Boolean value indicating whether this instance has a static IP assigned to it."
  type        = string
}
variable "us-east-2: " {
  description = "2_0"
  type        = string
}
variable "ap-southeast-2: " {
  description = "2_2"
  type        = string
}
variable "bundle_id" {
  description = "(Required) The bundle of specification information (see list below)"
  type        = string
}
variable "ca-central-1: " {
  description = "2_0"
  type        = string
}
variable "us-east-1: " {
  description = "2_0"
  type        = string
}
variable "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  type        = string
}
variable "private_ip_address" {
  description = "The private IP address of the instance."
  type        = string
}
variable "public_ip_address" {
  description = "The public IP address of the instance."
  type        = string
}
variable "medium_" {
  description = ""
  type        = string
}
variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Availability ZonesLightsail currently supports the following Availability Zones (e.g., us-east-1a):"
  type        = string
  default     = ""
}
variable "ap-northeast-1: " {
  description = "2_0"
  type        = string
}
variable "ap-northeast-2{a,c}" {
  description = ""
  type        = string
}
variable "eu-west-1: " {
  description = "2_0"
  type        = string
}
variable "ipv6_address" {
  description = "(strongDeprecated) The first IPv6 address of the Lightsail instance. Use ipv6_addresses attribute instead."
  type        = string
}
variable "eu-west-3: " {
  description = "2_0"
  type        = string
}
variable "ipv6_addresses" {
  description = "List of IPv6 addresses for the Lightsail instance."
  type        = string
}
variable "large_" {
  description = ""
  type        = string
}
variable "eu-central-1: " {
  description = "2_0"
  type        = string
}
variable "eu-west-2{a,b,c}" {
  description = ""
  type        = string
}
variable "key_pair_name" {
  description = "aws_key_pair at this time)"
  type        = string
}
variable "name" {
  description = "(Required) The name of the Lightsail Instance. Names be unique within each AWS Region in your Lightsail account."
  type        = string
}
variable "ap-south-1: " {
  description = "2_1"
  type        = string
}
variable "ap-southeast-2{a,b,c}" {
  description = ""
  type        = string
}
variable "availability_zone" {
  description = ""
  type        = string
}
variable "cpu_count" {
  description = "The number of vCPUs the instance has."
  type        = string
}
variable "us-east-2{a,b,c}" {
  description = ""
  type        = string
}
variable "user_data" {
  description = "(Optional) launch script to configure server with additional user data"
  type        = string
  default     = ""
}
variable "username" {
  description = "The user name for connecting to the instance (e.g., ec2-user)."
  type        = string
}
variable "eu-central-1{a,b,c}" {
  description = ""
  type        = string
}
variable "eu-west-1{a,b,c}" {
  description = ""
  type        = string
}
variable "eu-west-2: " {
  description = "2_0"
  type        = string
}
variable "ram_size" {
  description = "The amount of RAM in GB on the instance (e.g., 1.0)."
  type        = string
}
variable "ap-south-1{a,b}" {
  description = ""
  type        = string
}
variable "ap-southeast-1: " {
  description = "2_0"
  type        = string
}
variable "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  type        = string
}
variable "created_at" {
  description = "The timestamp when the instance was created."
  type        = string
}
variable "small_" {
  description = ""
  type        = string
}
variable "nano_" {
  description = ""
  type        = string
}
variable "us-east-1{a,b,c,d,e,f}" {
  description = ""
  type        = string
}
variable "us-west-2{a,b,c}" {
  description = "BundlesLightsail currently supports the following Bundle IDs (e.g., an instance in ap-northeast-1 would use small_2_0):PrefixA Bundle ID starts with one of the below size prefixes:"
  type        = string
}
variable "ap-northeast-1{a,c,d}" {
  description = ""
  type        = string
}
variable "blueprint_id" {
  description = "(Required) The ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: aws lightsail get-blueprints"
  type        = string
}
variable "ca-central-1{a,b}" {
  description = ""
  type        = string
}
variable "eu-west-3{a,b,c}" {
  description = ""
  type        = string
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
output "key_pair_name" {
  description = "aws_key_pair at this time)"
  value       = aws_lightsail_instance.aws_lightsail_instance.key_pair_name
}
output "name" {
  description = "(Required) The name of the Lightsail Instance. Names be unique within each AWS Region in your Lightsail account."
  value       = aws_lightsail_instance.aws_lightsail_instance.name
}
output "ap-south-1: " {
  description = "2_1"
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-south-1: 
}
output "ap-southeast-2{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-southeast-2{a,b,c}
}
output "availability_zone" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.availability_zone
}
output "cpu_count" {
  description = "The number of vCPUs the instance has."
  value       = aws_lightsail_instance.aws_lightsail_instance.cpu_count
}
output "eu-central-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-central-1: 
}
output "eu-west-2{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-2{a,b,c}
}
output "us-east-2{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.us-east-2{a,b,c}
}
output "user_data" {
  description = "(Optional) launch script to configure server with additional user data"
  value       = aws_lightsail_instance.aws_lightsail_instance.user_data
}
output "username" {
  description = "The user name for connecting to the instance (e.g., ec2-user)."
  value       = aws_lightsail_instance.aws_lightsail_instance.username
}
output "eu-west-2: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-2: 
}
output "ram_size" {
  description = "The amount of RAM in GB on the instance (e.g., 1.0)."
  value       = aws_lightsail_instance.aws_lightsail_instance.ram_size
}
output "ap-south-1{a,b}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-south-1{a,b}
}
output "ap-southeast-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-southeast-1: 
}
output "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  value       = aws_lightsail_instance.aws_lightsail_instance.arn
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_instance.aws_lightsail_instance.created_at
}
output "eu-central-1{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-central-1{a,b,c}
}
output "eu-west-1{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-1{a,b,c}
}
output "small_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.small_
}
output "us-west-2{a,b,c}" {
  description = "BundlesLightsail currently supports the following Bundle IDs (e.g., an instance in ap-northeast-1 would use small_2_0):PrefixA Bundle ID starts with one of the below size prefixes:"
  value       = aws_lightsail_instance.aws_lightsail_instance.us-west-2{a,b,c}
}
output "ap-northeast-1{a,c,d}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-northeast-1{a,c,d}
}
output "blueprint_id" {
  description = "(Required) The ID for a virtual private server image. A list of available blueprint IDs can be obtained using the AWS CLI command: aws lightsail get-blueprints"
  value       = aws_lightsail_instance.aws_lightsail_instance.blueprint_id
}
output "ca-central-1{a,b}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ca-central-1{a,b}
}
output "eu-west-3{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-3{a,b,c}
}
output "nano_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.nano_
}
output "us-east-1{a,b,c,d,e,f}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.us-east-1{a,b,c,d,e,f}
}
output "xlarge_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.xlarge_
}
output "2xlarge_" {
  description = "SuffixA Bundle ID ends with one of the following suffixes depending on Availability Zone:"
  value       = aws_lightsail_instance.aws_lightsail_instance.2xlarge_
}
output "ap-northeast-2: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-northeast-2: 
}
output "ap-southeast-1{a,b,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-southeast-1{a,b,c}
}
output "is_static_ip" {
  description = "A Boolean value indicating whether this instance has a static IP assigned to it."
  value       = aws_lightsail_instance.aws_lightsail_instance.is_static_ip
}
output "micro_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.micro_
}
output "us-west-2: " {
  description = "2_0In addition to all arguments above, the following attributes are exported:"
  value       = aws_lightsail_instance.aws_lightsail_instance.us-west-2: 
}
output "ap-southeast-2: " {
  description = "2_2"
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-southeast-2: 
}
output "bundle_id" {
  description = "(Required) The bundle of specification information (see list below)"
  value       = aws_lightsail_instance.aws_lightsail_instance.bundle_id
}
output "ca-central-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.ca-central-1: 
}
output "us-east-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.us-east-1: 
}
output "us-east-2: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.us-east-2: 
}
output "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  value       = aws_lightsail_instance.aws_lightsail_instance.id
}
output "private_ip_address" {
  description = "The private IP address of the instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.private_ip_address
}
output "public_ip_address" {
  description = "The public IP address of the instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.public_ip_address
}
output "ap-northeast-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-northeast-1: 
}
output "ap-northeast-2{a,c}" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.ap-northeast-2{a,c}
}
output "eu-west-1: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-1: 
}
output "ipv6_address" {
  description = "(strongDeprecated) The first IPv6 address of the Lightsail instance. Use ipv6_addresses attribute instead."
  value       = aws_lightsail_instance.aws_lightsail_instance.ipv6_address
}
output "medium_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.medium_
}
output "tags" {
  description = "(Optional) A map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level.Availability ZonesLightsail currently supports the following Availability Zones (e.g., us-east-1a):"
  value       = aws_lightsail_instance.aws_lightsail_instance.tags
}
output "eu-west-3: " {
  description = "2_0"
  value       = aws_lightsail_instance.aws_lightsail_instance.eu-west-3: 
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses for the Lightsail instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.ipv6_addresses
}
output "large_" {
  description = ""
  value       = aws_lightsail_instance.aws_lightsail_instance.large_
}
output "private_ip_address" {
  description = "The private IP address of the instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.private_ip_address
}
output "public_ip_address" {
  description = "The public IP address of the instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.public_ip_address
}
output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_lightsail_instance.aws_lightsail_instance.tags_all
}
output "created_at" {
  description = "The timestamp when the instance was created."
  value       = aws_lightsail_instance.aws_lightsail_instance.created_at
}
output "id" {
  description = "The ARN of the Lightsail instance (matches arn)."
  value       = aws_lightsail_instance.aws_lightsail_instance.id
}
output "ipv6_address" {
  description = "(strongDeprecated) The first IPv6 address of the Lightsail instance. Use ipv6_addresses attribute instead."
  value       = aws_lightsail_instance.aws_lightsail_instance.ipv6_address
}
output "ipv6_addresses" {
  description = "List of IPv6 addresses for the Lightsail instance."
  value       = aws_lightsail_instance.aws_lightsail_instance.ipv6_addresses
}
output "is_static_ip" {
  description = "A Boolean value indicating whether this instance has a static IP assigned to it."
  value       = aws_lightsail_instance.aws_lightsail_instance.is_static_ip
}
output "username" {
  description = "The user name for connecting to the instance (e.g., ec2-user)."
  value       = aws_lightsail_instance.aws_lightsail_instance.username
}
output "arn" {
  description = "The ARN of the Lightsail instance (matches id)."
  value       = aws_lightsail_instance.aws_lightsail_instance.arn
}
output "cpu_count" {
  description = "The number of vCPUs the instance has."
  value       = aws_lightsail_instance.aws_lightsail_instance.cpu_count
}
output "ram_size" {
  description = "The amount of RAM in GB on the instance (e.g., 1.0)."
  value       = aws_lightsail_instance.aws_lightsail_instance.ram_size
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
      "kind/name"                   = "aws_lightsail_instance"
      "kind/version"                = "v0.1.0"
    }
  }
}
