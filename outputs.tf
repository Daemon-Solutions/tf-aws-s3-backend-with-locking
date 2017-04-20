output "bucket_arn" {
  description = "The ARN of the bucket."
  value = "${aws_s3_bucket.bucket.arn}"
}

output "bucket_id" {
  description = "The name of the bucket."
  value = "${aws_s3_bucket.bucket.id}"
}

output "table_arn" {
  description = "The ARN of the table."  
  value = "${aws_dynamodb_table.table.arn}"
}

output "table_id" {
  description = "The name of the table."  
  value = "${aws_dynamodb_table.table.id}"
}
