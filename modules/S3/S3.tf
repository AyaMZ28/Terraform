resource "aws_s3_bucket" "ismgroup_s3_bucket" {
  bucket = var.bucket

  tags = {
    Name        = "ismgroup_s3_bucket"
    Environment = "Dev"
  }
}
