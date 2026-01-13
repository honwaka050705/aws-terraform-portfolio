output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value = aws_instance.level1_ec2.public_ip
}

output "ec2_instance_id" {
  description = "ID of the EC2 instance"
  value = aws_instance.level1_ec2.id
}

output "ssh_command" {
  description = "SSH command to connect to the instance"
  value = "ssh -i ~/aws/aws-terraform-key.pem ec2-user@${aws_instance.level1_ec2.public_ip}"
}
