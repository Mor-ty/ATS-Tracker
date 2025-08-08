provider "aws" {
  region = "us-west-1"
}
resource "aws_instance" "jenkins" {
  ami           = "ami-0d1891272a8f97fb4" # Example AMI, replace with a valid one
  instance_type = "t3.micro"

  tags = {
    Name = "TF-Instance"
  }
}