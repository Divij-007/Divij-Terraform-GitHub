
terraform {
  backend "s3" {
    bucket = "divij-terraform-state-bucket"   
    key    = "terraform/terraform.tfstate" # Path inside the bucket
    region = "us-east-1"
  }
}
