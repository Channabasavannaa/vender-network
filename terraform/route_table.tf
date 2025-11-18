
// public rt 1
resource "aws_route_table" "public_rt_1" {
    vpc_id = aws_vpc.vpc.id

    tags ={
        Name = "${var.app_name}-public-rt-1"
    }

}

resource "aws_route" "public_rt_1_route" {
    route_table_id         = aws_route_table.public_rt_1.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_rt_1_assoc" {
    subnet_id      = aws_subnet.public_1.id
    route_table_id = aws_route_table.public_rt_1.id
}

// public rt 2

resource "aws_route_table" "public_rt_2" {
    vpc_id = aws_vpc.vpc.id

    tags ={
        Name = "${var.app_name}-public-rt-2"
    }

}

resource "aws_route" "public_rt_2_route" {
    route_table_id         = aws_route_table.public_rt_2.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "public_rt_2_assoc" {
    subnet_id      = aws_subnet.public_2.id
    route_table_id = aws_route_table.public_rt_2.id
}

//private rt 1
resource "aws_route_table" "private_rt_1" {
    vpc_id = aws_vpc.vpc.id

    tags ={
        Name = "${var.app_name}-private-rt-1"
    }

}

resource "aws_route" "private_rt_1_route" {
    route_table_id         = aws_route_table.private_rt_1.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_nat_gateway.natgw_1.id
}

resource "aws_route_table_association" "private_rt_1_assoc" {
    subnet_id      = aws_subnet.private_1.id
    route_table_id = aws_route_table.private_rt_1.id
}

//private rt 2

resource "aws_route_table" "private_rt_2" {
    vpc_id = aws_vpc.vpc.id

    tags ={
        Name = "${var.app_name}-private-rt-2"
    }

}

resource "aws_route" "private_rt_2_route" {
    route_table_id         = aws_route_table.private_rt_2.id
    destination_cidr_block = "0.0.0.0/0"
    gateway_id             = aws_nat_gateway.natgw_2.id
}

resource "aws_route_table_association" "private_rt_2_assoc" {
    subnet_id      = aws_subnet.private_2.id
    route_table_id = aws_route_table.private_rt_2.id
}