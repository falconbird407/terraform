terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# # Configure the AWS Remote Backend - S3 Vucket
# terraform {
#   backend "s3" {
#     bucket = "falconbird-bucket"
#     key    = "build/airflow/terraform.tfstate"
#     region = "eu-north-1"
#   }
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }