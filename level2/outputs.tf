output "ec2_public_ip" {
  description = "EC2パブリック"
  value = aws_instance.main.public_ip
}

output "vpc_id" {
  description = "VPC ID"
  value = aws_vpc.main.id
}
