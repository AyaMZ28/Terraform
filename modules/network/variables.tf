variable "vpc_id" {
  description = "The vpc_id "
}

variable "AZ" {
  description = "Availability Zone"
}

# VPC Resource #
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

# Private Subnet #
variable "private_cidr_block" {
  description = "The Private subnet cidr_block the Private Subnet"
}

# Route Table #
variable "cidr_block_RT" {
  description = "The CIDR block for the Public Subnet"
}

# Public Subnet #
variable "public_cidr_block" {
  description = "The CIDR block for the Public Subnet"
}

