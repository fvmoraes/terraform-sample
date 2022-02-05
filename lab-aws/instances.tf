resource "aws_instance" "develop_instance-ue1" {
    provider = aws.aws_us-east-1
    count = 2
    ami = var.ami_us-east-1["ubuntu_20-04"]
    instance_type = "t2.micro"
    key_name = "franklin_pop-os"
    vpc_security_group_ids = ["${aws_security_group.allow_ssh-ue1.id}"]
    tags = {
        Name = "develop_instance-ue1-${count.index}"
        Project = var.project_name
    }
    depends_on = [aws_s3_bucket.develop_bucket-ue1, aws_security_group.allow_ssh-ue1, aws_dynamodb_table.develop_dynamodb-ue1]
}

resource "aws_instance" "develop_instance-ue2" {
    provider = aws.aws_us-east-2
    count = 2
    ami = var.ami_us-east-2["amazon_linux_2"]
    instance_type = "t2.micro"
    key_name = "franklin_pop-os"
    vpc_security_group_ids = ["${aws_security_group.allow_ssh-ue2.id}"]
    tags = {
        Name = "develop_instance-ue2-${count.index}"
        Project = var.project_name
    }
    depends_on = [aws_s3_bucket.develop_bucket-ue2, aws_security_group.allow_ssh-ue2]
}
