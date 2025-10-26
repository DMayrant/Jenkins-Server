resource "tls_private_key" "jenkins_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create an AWS key pair using the generated public key
resource "aws_key_pair" "jenkins_key" {
  key_name   = "jenkins-prod"
  public_key = tls_private_key.jenkins_key.public_key_openssh
}