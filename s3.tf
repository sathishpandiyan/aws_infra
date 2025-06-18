resource "aws_s3_bucket" "example" {
  bucket = "your-unique-bucket-name"

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}