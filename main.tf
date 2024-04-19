provider "aws" {
  region = "eu-north-1" # Stockholm
}

terraform {
  backend "s3" {
    bucket = "terraform-up-and-running-state-today2"
    key    = "global/s3/terraform.tfstate"
    region = "eu-north-1"
  }
}

resource "aws_instance" "test6" {
  ami           = "ami-0a21495336008e0d6" # Updated AMI ID
  instance_type = "m5.large"  # Change to the desired instance type
  tags = {
    Name = "sundayexample-instances"
  }
}


