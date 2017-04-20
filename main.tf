resource "aws_dynamodb_table" "table" {
  name           = "${var.table}"
  read_capacity  = "${var.table_read_capacity}"
  write_capacity = "${var.table_write_capacity}"
  tags           = "${var.tags}"

  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.bucket}"
  acl    = "private"
  tags   = "${var.tags}"

  lifecycle {
    prevent_destroy = true
  }

  versioning {
    enabled = true
  }
}
