# VPC #
resource "aws_vpc" "ismgroupvpc" {
  vpc_cidr_block = var.vpc_cidr_block
  availability_zone = var.AZ

  tags = {
    Name = "ismgroupvpc"
  }
}

# Private Subnet #
resource "aws_subnet" "ismgroup_privatesubnet" {
  vpc_id     = var.vpc_id
  private_cidr_block = var.private_cidr_block
  availability_zone = var.AZ

  tags = {
    Name = "ismgroup_privatesubnet"
  }
}

# Internet Gatway #
resource "aws_internet_gateway" "ismgroup_gw" {
  vpc_id = var.vpc_id

  tags = {
    Name = "ismgroup_gw"
  }
}

# Public Subnet #
resource "aws_subnet" "ismgroup_publicsubnet" {
  vpc_id            = var.vpc_id
  public_cidr_block = var.public_cidr_block
  availability_zone = var.AZ

  tags = {
    Name = "ismgroup_publicsubnet"
  }
}

# Route Table for the public subnet #
resource "aws_route_table" "ismgroup_public_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block_RT = var.cidr_block_RT
    gateway_id = aws_internet_gateway.ismgroup_gw.id
  }

  tags = {
    Name = "ismgroup_public_route_table"
  }
}

# Associate the public subnet with route table #
resource "aws_route_table_association" "ismgroup_public_subnet_association" {
  subnet_id      = aws_subnet.ismgroup_publicsubnet.id
  route_table_id = aws_route_table.ismgroup_public_route_table.id
}

# Route Table Association with Internet Gatway #
resource "aws_route_table_association" "ismgroup_internet_gatway_association" {
  gateway_id     = aws_internet_gateway.ismgroup_gw.id
  route_table_id = aws_route_table.ismgroup_public_route_table.id
}