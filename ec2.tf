provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myec2" {
  ami = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  key_name = "devops-nabster"
  tags = {
    Name = "ec2-ciscko"
  }
}
