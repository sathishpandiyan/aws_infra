resource "aws_s3_bucket" "example" {
  bucket = "tf_sas"

  tags = {
    Name        = "tf_sas"
    Environment = "Dev"
  }
}