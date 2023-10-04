terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "dinosaur_vpc" {
  cidr_block = "10.0.0.0/16"
}

backend "s3" {
  bucket = "diplomatic-dinosaur-state"
  key    = "terraform-state"
  region = "eu-west-2"
}

