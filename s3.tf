resource "aws_s3_bucket" "example" {
  bucket = "tf-sas"

  tags = {
    Name        = "tf_sas"
    Environment = "Dev"
  }
}