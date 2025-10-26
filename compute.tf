resource "aws_instance" "jenkins_server" {
  ami                         = "ami-0360c520857e3138f" #Ubuntu 24.04 image
  instance_type               = var.ec2_instance_type
  subnet_id                   = aws_subnet.public_subnet[0].id
  vpc_security_group_ids      = [aws_security_group.jenkins_sg.id]
  key_name                    = aws_key_pair.jenkins_key.key_name
  monitoring                  = true
  root_block_device {
    delete_on_termination = true
    volume_size           = var.ec2_volume_config.size
    volume_type           = var.ec2_volume_config.type

  }
  lifecycle {
    create_before_destroy = true
  }

  user_data = file("${path.module}/install-jenkins.sh")

  tags = merge(local.common_tags, {
    Name = "Jenkins-Server"

  })
}