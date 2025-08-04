terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = "us-east-1"
    access_key = "test"
    secret_key = "test"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    skip_requesting_account_id  = true
    endpoints {
        s3 = "http://172.17.0.1:4566" # or localhost if running from host
        # add other services as needed
    }
}

# resource "aws_instance" "web-server" {
#     ami = ""
#     instance_type = "t2.micro"
#     count = 1
#     tags = {
#         Name = "web-server-${count.index}"
#     }
# }

resource "aws_s3_bucket" "s3-bucket" {
  bucket = "my-test-bucket"
}