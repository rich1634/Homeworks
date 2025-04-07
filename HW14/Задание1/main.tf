provider "aws" {
  region = var.region
}

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "vpc-${var.environment}"
    Environment = var.environment
  }
}

# Добавьте здесь другие ресурсы (подсети, шлюзы и т.д.)
# которые могут отличаться для разных сред
