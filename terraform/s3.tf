module "s3_bucket" {
  source            = "./modules/s3"
  bucket_name       = "divij-terraform-state-bucket"  # Hardcoded here. Now couldn't able to pass variable, because this bucket contains the tfstate file.
  versioning_enabled = true
}
