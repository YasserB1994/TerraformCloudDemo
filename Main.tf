provider "aws" {
  region     = "eu-west-1"
 
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = "my-s3-bucket-790298567567998329923"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
