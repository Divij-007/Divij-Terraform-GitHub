module "sns" {
  source = "./modules/sns"
  
  sns_display_name = "Web-Server Alert"
  email = "divijdivij007@gmail.com"
  protocol = "email"
}