resource "aws_s3_bucket" "example" {
  bucket = "your-unique-bucket-name"
  acl    = "private" # Or other ACL like "public-read"

  tags = {
    Name        = "My S3 Bucket"
    Environment = "Dev"
  }
}