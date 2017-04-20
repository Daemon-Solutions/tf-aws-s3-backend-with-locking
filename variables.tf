variable "bucket" {
  description = "The name of the S3 bucket."
  type = "string"
}

variable "table" {
  description = "The name of the DynamoDB table."
  type = "string"
}

variable "table_read_capacity" {
  description = "The read capacity of the table."
  default = 10
}

variable "table_write_capacity" {
  description = "The write capacity of the table."
  default = 10
}

variable "tags" {
  description = "Tags to be set on the bucket and table."
  default = {}
}
