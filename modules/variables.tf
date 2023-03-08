variable "server_port" {
  description = " The server connects to this port"
  type = number
  default = 8080
}
variable "any_ip" {
  description = "all cidr ranges"
  type = list
  default = ["0.0.0.0/0"]
}
