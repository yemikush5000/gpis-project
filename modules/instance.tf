resource "aws_instance" "instance" {
  ami           = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"
}
