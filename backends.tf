terraform {
  backend "s3" {
    bucket = "cicd-pipeline-for-terraform"
    key    = "global/s3/terraform.tfstate"
    region = "us-west-2"

    dynamodb_table = "terraform-state"
    encrypt        = true
  }
}