# VPC #
output "vpc_id" {
  value = aws_vpc.ismgroupvpc.id
}

# Private Subnet #
output "privatesubnet_id" {
  value = aws_subnet.ismgroup_privatesubnet.id
}

# Puplic Subnet #
output "publicsubnet_id" {
  value = aws_subnet.ismgroup_publicsubnet.id
}

