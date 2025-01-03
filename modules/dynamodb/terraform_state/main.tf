resource "aws_dynamodb_table" "terraform_state_lock" {
  name = "terraform_state_lock"
  read_capacity = 5
  write_capacity = 5
  hash_key = "LockID"
  attribute {
    name = "LockID"
    type = "5"
  }
  tags = {
    "Environment" = "Global"
  }
}
