provider "aws" {
  # profile    = "default"
  region     = var.region
  # Allow any 2.x version of the AWS provider
  version = "~> 2.0"
}