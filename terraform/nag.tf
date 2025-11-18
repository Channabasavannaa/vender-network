resource "aws_nat_gateway" "natgw_1" {
    allocation_id = aws_eip.nat_eip_1.id
    subnet_id     = aws_subnet.public_1.id

    depends_on = [ aws_internet_gateway.igw ]

    tags = {
        Name = "${var.app_name}-natgw-1"
    }
}

resource "aws_nat_gateway" "natgw_2" {
    allocation_id = aws_eip.nat_eip_2.id
    subnet_id     = aws_subnet.public_2.id

    depends_on = [ aws_internet_gateway.igw ]

    tags = {
        Name = "${var.app_name}-natgw-2"
    }
}