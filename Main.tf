provider "aws" {
  region     = "eu-west-1"
 
}

module "s3_bucket" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-s3-bucket.git"
  bucket = "my-s3-bucket"
  acl    = "private"

  versioning = {
    enabled = true
  }

}
