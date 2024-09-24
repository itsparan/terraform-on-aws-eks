# Terraform Settings Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.68"
    }
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "~> 2.32"
    }   
  }
}
