variable "environment" {
    default = "prod"
}

variable "instance" {
    type = string
    default = "ami-0220d79f3f480ecf5"
}

variable "instance_type" {
    type = string
    default = "t3.micro"
}

variable "tag_name" {
    type = map(string)
    default = {
        Name = "veriable-demo"
        project = "roboshop"
        Terraform = "true"
    }
   
}

variable "sg_name" {
    type = string
    default = "allow_all_terraform"
}

variable "sg_description" {
    type = string
    default = "Allow all traffic"
}

variable "sg_from_port" {
    default = 0
    type = number
}

variable "sg_to_port" {
    default = 0
    type = number
}

variable "cidr_blocks" {
    default = ["0.0.0.0/0"]
    type = list(string)
}

variable "sg_tag" {
    type = map(string)
    default = {
        Name = "terraform"
        Project = "roboshop"
    }
}