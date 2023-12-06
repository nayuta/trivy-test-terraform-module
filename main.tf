
provider "aws" {
  region = "us-west-2"
}

module "aws_provider" {
  source = "./modules/test/"
  # version = "2.0.0"

  # region = "us-west-2"
}
