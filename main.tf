terraform {
  required_version = ">= 1.9"
  backend "s3" {
    bucket = "advisory-state"
    key    = "advisory.tfstate"
    region = "eu-west-1"
  }
}
provider "aws" { region = "eu-west-1" }
resource "aws_s3_bucket" "advisory" { bucket = "advisory-bucket" }
resource "aws_sqs_queue" "advisory" { name = "advisory-queue" }
