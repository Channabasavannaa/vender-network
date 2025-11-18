resource "aws_eip" "nat_eip_1" {
    depends_on = [ aws_internet_gateway.igw ]
  
}

resource "aws_eip" "nat_eip_2" {
    depends_on = [ aws_internet_gateway.igw ]
  
}