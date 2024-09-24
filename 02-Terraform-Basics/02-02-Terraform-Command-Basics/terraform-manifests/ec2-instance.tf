# Terraform Settings Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 5.31" # Optional but recommended in production
    }
  }
}

# Provider Block
provider "aws" {
  profile = "default" # AWS Credentials Profile configured on your local desktop terminal  $HOME/.aws/credentials
  region  = "us-east-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-096ea6a12ea24a797" # Amazon Linux in us-east-1, update as per your region
  instance_type = "t3.micro"
  key_name      = "kopsctl"                 # Replace with your key pair name

  # Tag for EC2 instance
  tags = {
    Name = "My-EC2-Instance"
  }

  # Security Group for EC2 instance
  security_groups = ["default"]

}
