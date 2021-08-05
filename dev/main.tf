terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
    access_key = "AKIAQ3QN5LRT52YX7THE"
    secret_key = "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"
}

module "my_ec2" {
    source = "../modules/ec2"
}
