resource "aws_s3_bucket" "develop_bucket-ue1" {
  provider = aws.aws_us-east-1
  bucket = "labdevelopbucketue1"
  acl    = "private"
  tags = {
        Name = "lab-develop_bucket"
        Project = var.project_name
  }
}

resource "aws_s3_bucket" "develop_bucket-ue2" {
  provider = aws.aws_us-east-2
  bucket = "labdevelopbucketue2"
  acl    = "private"
  tags = {
        Name = "lab-develop_bucket"
        Project = var.project_name
  }
}
