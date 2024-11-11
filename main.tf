# AWS Provider Configuration
provider "aws" {
  region = "us-east-1"  # Set your preferred AWS region
}

# EC2 Instance Configuration
resource "aws_instance" "my_ec2" {
  ami           = "ami-0984f4b9e98be44bf"  # Use a real AMI ID for your region
  instance_type = "t2.micro"              # Free-tier eligible instance
  tags = {
    Name = "MyEC2Instance"
  }
}

# S3 Bucket Configuration
resource "aws_s3_bucket" "my_bucket" {
  bucket = "graded"  # Use a globally unique bucket name
  acl    = "private"
}

