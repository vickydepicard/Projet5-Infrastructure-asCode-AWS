provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name          = var.name
    Environnement = var.environnement
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name          = "Mom_tst"
    Environnement = "dev"
  }
}

resource "aws_s3_bucket" "mon-bucket-suphotio-2025" {
  bucket = "mon-bucket-suphotio-2025"

  tags = {
    Name          = "mon-bucket-suphotio-terraform"
    Environnement = "dev"
  }
}

