variable "private_subnet_count" {
  type    = number
  default = 6

}

variable "public_subnet_count" {
  type    = number
  default = 6

}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b", "us-east-1c", "us-east-1d", "us-east-1e", "us-east-1f"]

}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default = [
    "10.90.1.0/24",
    "10.90.2.0/24",
    "10.90.3.0/24",
    "10.90.4.0/24",
    "10.90.5.0/24",
    "10.90.6.0/24"
  ]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default = [
    "10.90.200.0/24",
    "10.90.201.0/24",
    "10.90.202.0/24",
    "10.90.203.0/24",
    "10.90.204.0/24",
    "10.90.205.0/24"
  ]
}

variable "ec2_instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Running EC2 instance"

}
variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  default = {
    size = 10
    type = "gp3"
  }
}

variable "my_ip" {
  description = "My public IP address for SSH access"
  type        = string
  default     = "0.0.0.0/32" # Replace with your IP
}

