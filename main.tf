#create ec2 instances

resource "aws_instance" "web" {
  ami           = "ami-04b70fa74e45c3917"  
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "github_repository" "example" {
  name        = "my_nice_github_repo"
  description = "This resource was created using terraform"

  visibility = "public"
}