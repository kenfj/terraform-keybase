provider "aws" {
  version = "~> 1.49"
  region  = "ap-northeast-1"
}

terraform {
  required_version = "0.11.10"

  # backend "s3" {
  #   bucket = "some-bucket"
  #   key    = "terraform/terraform_tfstate"
  #   region = "ap-northeast-1"
  # }
}
