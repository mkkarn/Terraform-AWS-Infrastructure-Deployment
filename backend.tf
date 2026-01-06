terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-manish-demo"
    key            = "ec2-s3/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
  }
}
