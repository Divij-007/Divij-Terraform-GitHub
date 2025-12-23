output "instances" {
  value = {
    for k, i in aws_instance.instance1 :
    k => {
      id   = i.id
      name = i.tags["Name"]
    }
  }
}