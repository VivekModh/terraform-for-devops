variable "aws_region" {
  description = "AWS region where resources will be provisioned"
  default     = "ap-south-1"
}

variable "ec2_ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0f918f7e67a3323f0"
  type        = string
}

variable "ec2_instance_type" {
  description = "Instance type for the EC2 instance"
  default     = "t2.micro"
  type        = string
}

variable "my_enviroment" {
  description = "Instance type for the EC2 instance"
  default     = "dev"
}

variable "ec2_default_root_storage_size" {
  default = 10
  type    = number
}

variable "env" {
  default = "prd"
  type    = string
}

