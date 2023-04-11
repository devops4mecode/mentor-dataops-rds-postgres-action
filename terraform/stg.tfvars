region = "ap-southeast-1"

vpc_cidr_block = "10.1.0.0/16"

subnet_cidr_blocks = [
  "10.1.1.0/24",
  "10.1.2.0/24"
]

availability_zones = [
  "ap-southeast-1a",
  "ap-southeast-1b"
]

db_instance_identifier = "my-db-instance-stg"
db_username            = "stg_user"
db_password            = "stg_password"
db_name                = "rds-postgres-stg"
allowed_cidr_blocks = [
  "10.0.0.0/8",
  "172.16.0.0/12",
  "192.168.0.0/16"
]
