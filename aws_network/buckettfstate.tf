terraform {
  backend "s3" {
    bucket         = "prokopenko-artsiom-terraform-bucket"
    key            = "dev/network/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "prokopenko-artsiom-terraform-bucket"
    encrypt        = true

  }
}
