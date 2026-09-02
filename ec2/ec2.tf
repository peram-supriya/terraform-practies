resource "aws_instance" "example" {
    ami        = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_list.id]

    tags = {
        Name = "Roboshop"
    }
}

resource "aws_security_group" "allow_list" {
    name         = "allow_all_terraform"
    description  = "Allow all traffic"

    egress {
        from_port  = 0
        to_port    = 0
        protocol   = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port  = 0
        to_port    = 0
        protocol   = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        
    }

    tags = {
        Name = "allow_all_list"
    }
}