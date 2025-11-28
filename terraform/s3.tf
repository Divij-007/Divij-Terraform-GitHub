module "s3_bucket" {
  source            = "./modules/s3"
  bucket_name       = "divij-terraform-state-bucket"
  versioning_enabled = true
}
