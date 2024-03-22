terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" 
      version = "5.16.2"
    }
  }
  
  # This backend configuration instructs Terraform to store its state in an S3 bucket.
  backend "s3" {
    bucket         = "falconbirds3bucket"  # Name of the S3 bucket where the state will be stored.
    key            = "App10/terraform.tfstate" # Path within the bucket where the state will be read/written.
    region         = "eu-north-1" # AWS region of the S3 bucket.
    dynamodb_table = "terraform-lock" # DynamoDB table used for state locking.
    encrypt        = true  # Ensures the state is encrypted at rest in S3.
  }
}

# Configuration for the AWS provider.
provider "aws" {
  region  = "eu-north-1"          # AWS region where resources will be provisioned.
  profile = "nima"      # AWS CLI profile to use for authentication.
}