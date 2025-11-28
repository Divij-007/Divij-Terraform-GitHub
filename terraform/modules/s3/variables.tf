variable "bucket_name" {
  description = "Name of the S3 bucket"
}

variable "versioning_enabled" {
  description = "Enable versioning"
  type        = bool
  default     = true
}
