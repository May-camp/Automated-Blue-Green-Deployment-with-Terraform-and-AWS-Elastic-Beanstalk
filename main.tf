resource "aws_s3_bucket" "gb-bucket" {
  bucket = "may-gb-bucket"
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "block" {
  bucket = aws_s3_bucket.gb-bucket.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}

# Base Elastic Beanstalk Application container
resource "aws_elastic_beanstalk_application" "gb-app" {
  name        = "greenblue-app"
  description = "Elastic Beanstalk Application for GB"
}