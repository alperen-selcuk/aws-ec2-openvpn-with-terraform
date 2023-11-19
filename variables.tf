variable "region" {
  description = "AWS region"
  default     = "eu-west-2" # Varsayılan olarak us-east-1 kullanabilirsiniz, istediğiniz bir bölgeyi seçebilirsiniz.
}

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  default     = "10.0.2.0/24"
}

variable "key_name" {
  description = "ec2 key pair"
  default = "dod"
}
