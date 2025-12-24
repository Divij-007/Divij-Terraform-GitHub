module "sns" {
  source = "./modules/sns"
  
  sns_display_name = var.sns_display_name
  email = var.email
  protocol = var.protocol
}

variable "sns_display_name" {
  description = "Display name of the SNS topic"
  type = string
}

variable "email" {
  description = "Email ID for receiving alerts"
  default = "divijdivij007@gmail.com"
  type = string
}

variable "protocol" {
  description = "Mention Protocols such as Email, Endpoints ..."
  type = string
}