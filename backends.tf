terraform {
  backend "s3" {
    bucket = "cicd-terraform-state-testing"
    key    = "global/s3/terraform.tfstate"
    region = "us-west-2"

    dynamodb_table = "terraform-state"
    encrypt        = true
  }
}