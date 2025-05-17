provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "statebucket29" {
  bucket = "statebucket29"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "statebucket29"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}