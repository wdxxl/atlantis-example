provider "aws" {
  version                 = "~> 3.0"
  region                  = "cn-northwest-1"
  shared_credentials_file = "/Users/wdxxl/.aws/credentials"
  profile                 = "meican-sandbox"
}

resource "aws_db_instance" "wdxxl" {
  name                 = "wdxxl"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "PostgreSQL"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
}

