variable "region" {
  type        = string
  description = "The AWS region to deploy the infrastructure to"
}

variable "vpc_cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  type        = list(string)
  description = "The CIDR blocks for the subnets"
}

variable "allowed_cidr_blocks" {
  type        = list(string)
  description = "The CIDR blocks for the subnets"
}

variable "availability_zones" {
  type        = list(string)
  description = "The availability zones to deploy the subnets to"
  default     = ["ap-southeast-1a", "ap-southeast-1b"]
}

variable "db_name" {
  type        = string
  description = "The name of the database"
}

variable "db_instance_class" {
  type        = string
  description = "The instance class of the RDS instance"
  default     = "db.t2.micro"
}

variable "db_engine" {
  type        = string
  description = "The database engine type"
  default     = "postgres"
}

variable "db_engine_version" {
  type        = string
  description = "The database engine version"
  default     = "12.14"
}

variable "db_username" {
  type        = string
  description = "The username for the database"
  default     = "myuser"
}

variable "db_password" {
  type        = string
  description = "The password for the database"
  default     = "mypassword"
}

variable "db_port" {
  type        = number
  description = "The port number for the database"
  default     = 5432
}

variable "db_multi_az" {
  type        = bool
  description = "Whether to enable Multi-AZ deployment for the RDS instance"
  default     = true
}

variable "db_instance_identifier" {
  type        = string
  description = "The identifier for the RDS instance"
  default     = "mydatabaseinstance"
}

variable "db_allocated_storage" {
  type        = number
  description = "The amount of storage to allocate for the RDS instance"
  default     = 20
}
