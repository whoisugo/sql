terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.56.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
resource "aws_db_instance" "example" {
    identifier = "hoo-prod-ue1-rds-feebilling-adv"
    engine = "sqlserver-ee"
    instance_class = "db.r5.2xlarge"
    allocated_storage = "1024"
    storage_type = "io1"
   # db_subnet_group_name = "hoo-c01-ue1-sub-dtb-0"
    #vpc_security_group_ids = "hoo-c01-ue1-vpc"
    #security_group_names = "hoo-c01-ue1-sgp-peering"
    publicly_accessible = false
    username = "admin"
    password = "Password"
    license_model = "license-included"
    timezone = "Pacific Standard Time"
    iops = "5000"
    skip_final_snapshot = true
    
}