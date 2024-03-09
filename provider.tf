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
  access_key = var.AWS_ACCESS_KEY_ID
  secret_key = var.AWS_SECRET_ACCESS_KEY
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