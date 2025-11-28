
output "instance_id" {
  value = aws_instance.instance1.id
}

output "public_ip" {
  value = aws_instance.instance1.public_ip
}
