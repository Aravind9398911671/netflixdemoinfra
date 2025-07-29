provider "aws" {
region = "us-east-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-0a7d80731ae1b2435"
instance_type = "t2.medium"
key_name = "Aravindkey"
vpc_security_group_ids = ["sg-0626ba5fb30e73154"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
