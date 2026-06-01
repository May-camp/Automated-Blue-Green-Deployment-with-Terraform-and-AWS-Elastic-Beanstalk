# Upload Blue code zip (v1) to S3
resource "aws_s3_object" "v1-zip" {
  bucket = aws_s3_bucket.gb-bucket.id
  key    = "app-v1.zip"
source = "./app-v1.zip"
}

resource "aws_elastic_beanstalk_application_version" "v1" {
  name        = "tf-test-version-label"
  application = aws_elastic_beanstalk_application.gb-app.name
  description = "application version created by terraform"
  bucket      = aws_s3_bucket.gb-bucket.id
  key         = aws_s3_object.v1-zip.key
}

# Upload Blue code zip (v2) to S3
resource "aws_s3_object" "v2-zip" {
  bucket = aws_s3_bucket.gb-bucket.id
  key    = "app-v2.zip"
 source = "./app-v2.zip"
}

resource "aws_elastic_beanstalk_application_version" "v2" {
  name        = "tf-test-version-label-v2"
  application = aws_elastic_beanstalk_application.gb-app.name
  description = "application version created by terraform"
  bucket      = aws_s3_bucket.gb-bucket.id
  key         = aws_s3_object.v2-zip.key
}


