terraform {
  backend "s3" {
    bucket         = "do4m-dataops-tf"
    dynamodb_table = "do4m-dataops-tbl"
    key            = "LockID"
    region         = "ap-southeast-1"
  }
}