resource "aws_instance" "example" {
    ami        = var.instance
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_list.id]

    tags = var.tag_name
}

resource "aws_security_group" "allow_list" {
    name         = var.sg_name
    description  = var.sg_description

    egress {
        from_port  = var.sg_from_port
        to_port    = var.sg_to_port
        protocol   = "-1"
        cidr_blocks = var.cidr_blocks
    }

    ingress {
        from_port  = var.sg_from_port
        to_port    = var.sg_to_port
        protocol   = "-1"
        cidr_blocks = var.cidr_blocks
        
    }

    tags = {
        Name = "allow_all_list"
    }
}