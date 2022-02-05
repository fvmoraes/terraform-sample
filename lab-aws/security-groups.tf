resource "aws_security_group" "allow_ssh-ue1" {
    provider = aws.aws_us-east-1
    name = "lab-allow_ssh-ue1"
    description = "Allow SSH inbound traffic"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.allowed_cidr
    }
    tags = {
        Name = "Allow_SSH-SG"
        Project = var.project_name
    }
}

resource "aws_security_group" "allow_ssh-ue2" {
    provider = aws.aws_us-east-2
    name = "lab-allow_ssh-ue2"
    description = "Allow SSH inbound traffic"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = var.allowed_cidr
    }
    tags = {
        Name = "Allow_SSH-SG"
        Project = var.project_name
    }
}
