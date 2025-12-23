output "instance" {
  value = {
    id   = aws_instance.instance1.id
    name = aws_instance.instance1.tags["Name"]
  }
}