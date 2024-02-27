terraform {
  backend "s3" {
    bucket = "falconbirds3bucket"
    key    = "build/airflow/terraform.tfstate"
    region = "eu-north-1"
  }
}
