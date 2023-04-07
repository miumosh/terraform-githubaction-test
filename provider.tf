terraform {
  #required_version = "1.4.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "myk-tfstate-bucket"
    key    = "path/to/my/key"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region  = "ap-northeast-1"
  #version = "2.49.0"
}