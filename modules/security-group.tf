resource "aws_security_group" "instance-sg" {
  name = "instance-sg"
  
  ingress {
    from_port  = var.server_port
    to_port    = var.server_port
    protocol   = "tcp"
    cidr_blocks = var.any_ip
  }
}
