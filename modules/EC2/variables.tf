variable "instance_type" {
  description = "The type of EC2 instance to launch"
}

variable "ami" {
  description = "The AMI ID to use for the EC2 instance"
}

variable "subnet_id" {
  description = "The ID of the subnet in which to launch the EC2 instance"
}

variable "security_group_ids" {
  description = "A list of security group IDs to associate with the EC2 instance"
}

variable "tags" {
  description = "A map of tags to apply to the EC2 instance"
  default     = {}
}
