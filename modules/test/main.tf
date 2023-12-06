resource "aws_s3_bucket" "my_bucket" {
  for_each = toset(var.bucket_names)

  bucket = "my-bucket-name-${each.key}"
  acl    = "private"
}

variable "bucket_names" {
  type    = list(string)
  default = ["my-bucket-name"]
}
