variable "description" {
  default = "Allow TLS inbound traffic"
}

variable "sg_name" {
  default = "securoity_groupname"
}

variable "ingress_rules" {
  
  default = [
    {
    description      = "allow port no"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    {
    description      = "allow port no"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    },
    {
    description      = "allow port no"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
}