resource "aws_instance" "instance" {
  ami           = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance-sg.id]
  user_data     = <<-EOF
                  #!/bin/bash
                  yum update
                  yum install -y httpd
                  echo "Hello World" > /var/www/html/index.html
                  systemctl start httpd
                  systemctl enable httpd
                  EOF
  tags           = {
            Name = "terraform-example" 
  } 
       
}
