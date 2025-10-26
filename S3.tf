resource "random_string" "random" {
  length  = 10
  special = false
  upper   = false # This ensures uppercase letters are included
  lower   = true  # This ensures lowercase letters are included
  numeric = true  # This ensures numbers are included
}

resource "aws_s3_bucket" "jenkins_artifacts" {
  bucket = "jenkins-artifacts-${random_string.random.result}-bucket"
  
  tags = merge(local.common_tags, {
    Name = "Jenkins Artifacts Bucket"
  
  }) # A unique bucket name using the random string
}


resource "aws_s3_bucket_public_access_block" "jenkins_artifacts_access_block" {
  bucket = aws_s3_bucket.jenkins_artifacts.bucket

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

}