resource "aws_security_group" "db" {
  name_prefix = "pgdbsg"
  vpc_id      = aws_vpc.rdsvpc.id

  ingress {
    from_port = 5432
    to_port   = 5432
    protocol  = "tcp"
    cidr_blocks = [
      aws_subnet.db1.cidr_block,
      aws_subnet.db2.cidr_block,
    ]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
