provider "aws" {
    
}

terraform {
  backend "s3" {
    bucket         = "tf-resources-githubactions"
    region         = "eu-north-1"
    key            = "github-actions/terraform.tfstate"
    encrypt = true
    dynamodb_table = "tf-resources-githubactions-lock"
  }
}