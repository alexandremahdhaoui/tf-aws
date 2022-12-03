datasource "aws_sagemaker_prebuilt_ecr_image" "aws_sagemaker_prebuilt_ecr_image" {
  region          = var.region
  registry_id     = var.registry_id
  repository_name = var.repository_name
  dns_suffix      = var.dns_suffix
  image_tag       = var.image_tag
}
variable "provider_region" {
  description = "Region where the provider should be executed."
  type        = string
}
variable "dns_suffix" {
  description = "(Optional) DNS suffix to use in the registry path. If not specified, the AWS provider sets it to the DNS suffix for the current region."
  type        = string
  default     = ""
}
variable "image_tag" {
  description = "(Optional) Image tag for the Docker image. If not specified, the AWS provider sets the value to 1, which for many repositories indicates the latest version. Some repositories, such as XGBoost, do not support 1 or latest and specific version must be used."
  type        = string
  default     = ""
}
variable "region" {
  description = " (Optional) - Region to use in the registry path. If not specified, the AWS provider sets it to the current region.The following attributes are exported:"
  type        = string
  default     = ""
}
variable "registry_id" {
  description = "Account ID containing the image. For example, 469771592824."
  type        = string
}
variable "repository_name" {
  description = "(Required) Name of the repository, which is generally the algorithm or library. Values include blazingtext, factorization-machines, forecasting-deepar, image-classification, ipinsights, kmeans, knn, lda, linear-learner, mxnet-inference-eia, mxnet-inference, mxnet-training, ntm, object-detection, object2vec, pca, pytorch-inference-eia, pytorch-inference, pytorch-training, randomcutforest, sagemaker-scikit-learn, sagemaker-sparkml-serving, sagemaker-xgboost, semantic-segmentation, seq2seq, tensorflow-inference-eia, tensorflow-inference, tensorflow-training, huggingface-tensorflow-training, huggingface-tensorflow-inference, huggingface-pytorch-training, and huggingface-pytorch-inference."
  type        = string
}
output "repository_name" {
  description = "(Required) Name of the repository, which is generally the algorithm or library. Values include blazingtext, factorization-machines, forecasting-deepar, image-classification, ipinsights, kmeans, knn, lda, linear-learner, mxnet-inference-eia, mxnet-inference, mxnet-training, ntm, object-detection, object2vec, pca, pytorch-inference-eia, pytorch-inference, pytorch-training, randomcutforest, sagemaker-scikit-learn, sagemaker-sparkml-serving, sagemaker-xgboost, semantic-segmentation, seq2seq, tensorflow-inference-eia, tensorflow-inference, tensorflow-training, huggingface-tensorflow-training, huggingface-tensorflow-inference, huggingface-pytorch-training, and huggingface-pytorch-inference."
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.repository_name
}
output "dns_suffix" {
  description = "(Optional) DNS suffix to use in the registry path. If not specified, the AWS provider sets it to the DNS suffix for the current region."
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.dns_suffix
}
output "image_tag" {
  description = "(Optional) Image tag for the Docker image. If not specified, the AWS provider sets the value to 1, which for many repositories indicates the latest version. Some repositories, such as XGBoost, do not support 1 or latest and specific version must be used."
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.image_tag
}
output "region" {
  description = " (Optional) - Region to use in the registry path. If not specified, the AWS provider sets it to the current region.The following attributes are exported:"
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.region
}
output "registry_id" {
  description = "Account ID containing the image. For example, 469771592824."
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.registry_id
}
output "registry_id" {
  description = "Account ID containing the image. For example, 469771592824."
  value       = aws_sagemaker_prebuilt_ecr_image.aws_sagemaker_prebuilt_ecr_image.registry_id
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
