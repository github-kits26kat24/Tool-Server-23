# Creating A Subnet 
# Resource: aws_subnet
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/subnet

resource "aws_subnet" "toolserver" {
  vpc_id                  = aws_vpc.toolserver.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"

  # AZ for the subnet.

  availability_zone = "eu-west-1a"
  tags = {
    Name = "Tool-Server"
  }
}