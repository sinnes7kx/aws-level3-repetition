
variable "ami_id" {
  description = "AMI for the EC2 instance"
  type        = string
}

variable "ec2_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet where EC2 will run"
  type        = string
}

variable "keypair" {
  description = "SSH key pair name"
  type        = string
}

variable "main_sg_id" {
  description = "Existing security group ID"
  type        = string
}

variable "ec2_name" {
  description = "Name tag for EC2"
  type        = string
}
