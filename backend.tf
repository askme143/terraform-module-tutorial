terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket  = "learn-terraform-module"
    key     = "terraform.tfstate"
    region  = "ap-northeast-2"
    profile = "yeongil"
  }
}
