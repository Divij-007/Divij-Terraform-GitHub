variable "sns_display_name" {
  description = "Display name of the SNS topic"
  type = string
}

variable "email" {
  description = "Email ID for receiving alerts"
  type = string
}

variable "protocol" {
  description = "Mention Protocols such as Email, Endpoints ..."
  type = string
}