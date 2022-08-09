# provider "aws" {
#   region     = "us-east-1"
# }
terraform {
  backend "s3" {
    bucket = "mskrishna2808"
    key    = "tfstate/test_terraform.tfstate"
    region = "us-east-1"
  }
}
