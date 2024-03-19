resource "aws_instance" "ismgroup_ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  security_group_ids = var.security_group_ids
  tags          = var.tags
}