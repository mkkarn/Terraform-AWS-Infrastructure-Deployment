terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket121"
    key            = "ec2-s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
  }
}
