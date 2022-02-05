resource "aws_dynamodb_table" "develop_dynamodb-ue1" {
  provider = aws.aws_us-east-1
  name           = "lab-develop_dynamodb-ue1"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "lab-hash-key"
  range_key      = "lab-range-key"

  attribute {
    name = "lab-hash-key"
    type = "S"
  }

  attribute {
    name = "lab-range-key"
    type = "S"
  }

  tags = {
    Name        = "lab-dynamodb-develop"
    Environment = "develop"
    Project = var.project_name
  }
}
