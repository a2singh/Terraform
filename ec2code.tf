provider "aws" {
    version = "~> 2.65"
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
    
}

resource "aws_instance" "ap-instance" {
    ami = "ami-026b57f3c383c2eec"
    instance_type = var.my_instance_type
    subnet_id = "subnet-0028ab80d7e013683"  
}
variable "access_key" {}
variable "secret_key" {}

variable "my_instance_type" {
    type = string
    description = "my instance type"
    default = "t2.micro"
}
