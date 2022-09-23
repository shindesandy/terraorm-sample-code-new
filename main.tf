provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = "t2.small"
 # key_name = "sandeep-import"
  tags = {
    Name = lower (var.name)
    env = upper (var.env)
    owner = upper ("Techlanders")
    dept = "Eng"
    client = "vodafone"
  }
}
