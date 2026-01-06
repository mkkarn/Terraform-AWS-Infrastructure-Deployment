provider "aws" {
  region = "ap-south-1"
  }
resource "aws_instance" "demo-project" {
  ami = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
  tags = {
    Name = "Jenkins-Terraform-EC2"
    }
  }

  resource "aws_s3_bucket" "demo-s3-bucket" {
    bucket = "jenkins-terraform-demo-bucket"
    acl = "private"
  }
