variable "instance" {
    default = "ami-0220d79f3f480ecf5"
    type = string
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "tag_name" {
    default = {
        Name = "terraform"
        Project = "roboshop"
        Environment = "dev"
    }
    type = map(string)
}

variable "sg_name" {
    default = "allow_all_terraform"
    type = string
}

variable "sg_description" {
    default = "Allow all traffic"
    type = string
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
    default = {
        Name = "allow_all_terraform"
        Project = "roboshop"
    }
    type = map(string)
}