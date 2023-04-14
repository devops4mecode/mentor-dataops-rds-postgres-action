resource "aws_db_subnet_group" "rds" {
  name       = "rdsubgrp"
  subnet_ids = [aws_subnet.db1.id, aws_subnet.db2.id]

  tags = {
    Name = "rdsubgrp"
  }
}

resource "aws_db_instance" "rds" {
  identifier           = "rds"
  engine               = "postgres"
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  db_name              = var.db_name
  username             = var.db_username
  password             = var.db_password
  allocated_storage    = var.db_allocated_storage
  db_subnet_group_name = aws_db_subnet_group.rds.name
  publicly_accessible  = true
  vpc_security_group_ids = [
    aws_security_group.db.id,
  ]
  multi_az = true
  skip_final_snapshot  = true
  tags = {
    Name = var.db_name
  }
}
